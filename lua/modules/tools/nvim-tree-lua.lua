return function()
    require('nvim-tree').setup({
        disable_netrw = true,
        sort_by = 'case_sensitive',
        auto_reload_on_write = true,
        hijack_cursor = false,
        hijack_unnamed_buffer_when_opening = false,
        ignore_buffer_on_setup = false,
        open_on_setup = false,
        open_on_setup_file = false,
        open_on_tab = false,
        sync_root_with_cwd = true,
        view = {
            adaptive_size = true,
            float = {
                enable = true,
                open_win_config = {
                    border = 'single',
                    width = 30,
                    height = 30,
                    row = 0,
                    col = 999,
                },
            },
            number = false,
            relativenumber = false,
            signcolumn = 'yes',
            hide_root_folder = false,
            preserve_window_proportions = false,
            mappings = {
                list = {
                    { key = { 'h' }, action = 'close_node' },
                    { key = { 'H' }, action = 'dir_up' },
                    { key = { 'l' }, action = 'edit' },
                    { key = { 'L' }, action = 'cd' },
                    { key = { 's' }, action = 'split' },
                    { key = { '<C-l>', 'v' }, action = 'vsplit' },
                    { key = { 'yp' }, action = 'copy_absolute_path' },
                    { key = { 'yn' }, action = 'copy_name' },
                    { key = { 'yy' }, action = 'copy' },
                    { key = { 'dd' }, action = 'cut' },
                    { key = { 'pp' }, action = 'paste' },
                    { key = { 'dD' }, action = 'trash' },
                    { key = { 'a', 'V', 'M' }, action = 'create' },
                    { key = { 'zh' }, action = 'toggle_dotfiles' },
                    { key = { 'zH' }, action = 'toggle_git_ignored' },
                    { key = { 'cw' }, action = 'rename' },
                    { key = { 'f' }, action = 'search_node' },
                },
            },
        },
        renderer = {
            indent_markers = { enable = false },
            icons = {
                git_placement = 'after',
                webdev_colors = true,
                glyphs = {
                    default = '',
                    symlink = '',
                    folder = {
                        default = '',
                        empty = '',
                        empty_open = '',
                        open = '',
                        symlink = '',
                        symlink_open = '',
                    },
                    git = {
                        unstaged = '✗',
                        staged = '✓',
                        unmerged = '',
                        renamed = '➜',
                        untracked = '?',
                        deleted = '',
                        ignored = '',
                    },
                },
            },
            special_files = { 'README.md', 'readme.md', 'plugins.lua' },
        },
        actions = {
            open_file = {
                quit_on_open = true,
                resize_window = false,
                window_picker = {
                    enable = true,
                    chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890',
                    exclude = {
                        filetype = {
                            'notify',
                            'packer',
                            'qf',
                            'diff',
                            'fugitive',
                            'fugitiveblame',
                        },
                        buftype = { 'nofile', 'terminal', 'help' },
                    },
                },
            },
        },
        update_focused_file = {
            enable = true,
            update_cwd = true,
            ignore_list = {},
        },
    })
    -- vim.api.nvim_set_hl(0, 'NvimTreeGitIgnored', { fg = '#73797e' })
    -- require('nvim-tree.events').on_file_created(function(file) vim.cmd("edit " .. file.fname) end)
end
