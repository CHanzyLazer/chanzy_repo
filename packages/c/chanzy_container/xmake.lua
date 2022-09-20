package("chanzy_container")
    set_kind("library", {headeronly = true})
    set_description("The chanzy_container package")
    set_license("MIT")

    add_urls("https://github.com/CHanzyLazer/chanzy_container.git main")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
