return {
    -- FIX: require a ctags implementation: this plugin recommended Universal ctags
    -- DESC: Vim plugin that displays tags in a window, ordered by scope
    "preservim/tagbar",
    enabled = false,
    event = "VeryLazy",
    cmd = "TagbarToggle",
}
