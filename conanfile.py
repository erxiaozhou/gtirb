import os
import re

from conans import CMake, ConanFile, tools


def get_gtirb_version():
    with open(os.path.join(os.environ["CI_PROJECT_DIR"], "version.txt")) as f:
        s = f.read()
        match = re.search(
            r"VERSION_MAJOR(\s+)(\S+)(\s+)"
            r"VERSION_MINOR(\s+)(\S+)(\s+)"
            r"VERSION_PATCH(\s+)(\S+)(\s+)",
            s,
        )
        if match:
            major = match.group(2)
            minor = match.group(5)
            patch = match.group(8)
            return major + "." + minor + "." + patch
        else:
            return "<ERROR: no version found>"


class Properties:
    name = "gtirb"
    version = get_gtirb_version()
    rel_url = "rewriting/gtirb"

    @property
    def description(self):
        return "%s library" % self.name

    @property
    def url(self):
        return "https://git.grammatech.com/%s" % self.rel_url

    @property
    def conan_ref(self):
        return "%s/stable" % self.rel_url.replace("/", "+")

    @property
    def conan_recipe(self):
        return "%s/%s@%s" % (self.name, self.version, self.conan_ref)


class GtirbConan(Properties, ConanFile):
    boost_version = "1.69.0"
    protobuf_version = "3.9.1"
    requires = (
        "boost/{0}@conan/stable".format(boost_version),
        "protobuf/{0}@bincrafters/stable".format(protobuf_version),
        "protoc_installer/{0}@bincrafters/stable".format(protobuf_version),
    )
    settings = "os", "build_type"
    generators = "cmake"

    def source(self):
        project_dir = os.environ["CI_PROJECT_DIR"]
        self.run("git clone %s %s" % (project_dir, self.name))

    def build_requirements(self):
        if self.settings.os == "Windows":
            self.build_requires("ninja_installer/1.9.0@bincrafters/stable")

    def build(self):
        if self.settings.os == "Windows":
            with tools.vcvars(
                self.settings, force=True, filter_known_paths=False
            ):
                self.build_cmake()
        else:
            self.build_cmake()

    def build_cmake(self):
        # Note: Only build the C++ API
        defs = {
            "CMAKE_VERBOSE_MAKEFILE:BOOL": "ON",
            "ENABLE_CONAN:BOOL": "ON",
            "GTIRB_CXX_API:BOOL": "ON",
            "GTIRB_PY_API:BOOL": "OFF",
            "GTIRB_CL_API:BOOL": "OFF",
            "GTIRB_JAVA_API:BOOL": "OFF",
        }
        if self.settings.os == "Windows":
            cmake = CMake(self, generator="Ninja")
            defs.update(
                {
                    k: os.environ.get(k)
                    for k in ["BOOST_ROOT", "CMAKE_PREFIX_PATH", "PYTHON"]
                }
            )
        else:
            cmake = CMake(self, generator=None)
            defs.update(
                {
                    "CMAKE_CXX_COMPILER": "g++-7",
                    "GTIRB_STRIP_DEBUG_SYMBOLS:BOOL": "ON",
                }
            )
        cmake.configure(
            source_folder=self.name, defs=defs,
        )
        cmake.build()
        cmake.test(output_on_failure=True)
        cmake.install()

    def package(self):
        pass

    def package_info(self):
        pass
