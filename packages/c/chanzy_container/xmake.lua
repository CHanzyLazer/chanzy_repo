package("chanzy_container")
    set_kind("library", {headeronly = true})
    set_description("The chanzy_container package")
    set_license("MIT")

    add_urls("https://github.com/CHanzyLazer/chanzy_container.git")

    -- install this handeronly package manually to avoid some unexpected bugs
    on_install(function (package)
        os.mkdir(path.join(package:installdir("include"), "chanzy"))
        os.cp("**.h", path.join(package:installdir("include"), "chanzy"))
        os.cp("**.hpp", path.join(package:installdir("include"), "chanzy"))
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
