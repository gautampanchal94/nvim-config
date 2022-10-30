local status_ok, configs = pcall(require,"nvim-treesitter.configs")

if not status_ok then
    return
end

configs.setup{
    -- A list of parser names, or "all"
    ensure_installed = { "c", "lua", "go"},

    -- Install parser synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    auto_install = true,

    -- List of parsers to ignore installing (for 'all')
    ignore_install = { "" },

    highlight = {
        enable = true, -- false will diable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
    },

    indent = { enable = true, disable = { ""} },

}
