return {
    {
        -- FIX: Require jdk or open-jdk and eclipse was installed.
        -- DESC: A mirror of the VIM files from Eclim to support quick and convenient installation via various plugin managers.
        "dansomething/vim-eclim",
        enabled = false,
        ft = {
            "java",
            --"class",
            --"jar",
            "war",
            "ear",
            "jsp",
            "jspx",
            --"properties",
        },
    },
}
