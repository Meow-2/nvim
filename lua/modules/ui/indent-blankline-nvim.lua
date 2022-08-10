return function()
    -- vim.g.indent_blankline_char = "▏"
    -- vim.g.indent_blankline_context_char = "▏"
    require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    buftype_exclude = { "terminal" },
    filetype_exclude = { "dashboard" , "NvimTree", "vista"},
}
end