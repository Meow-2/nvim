return function()
    require('bqf').setup({
        auto_enable = true,
        auto_resize_height = false,
        filter = {
            fzf = {
                action_for = {
                    ['ctrl-c'] = 'closeall',
                    ['ctrl-q'] = 'signtoggle',
                    ['ctrl-t'] = 'tabedit',
                    ['ctrl-v'] = 'vsplit',
                    ['ctrl-x'] = 'split',
                },
                extra_opts = { '--bind', 'ctrl-o:toggle-all' },
            },
        },
        func_map = {
            drop = 'O',
            filter = 'zn',
            filterr = 'zN',
            fzffilter = 'zf',
            lastleave = '\'"',
            nextfile = '<C-n>',
            nexthist = '>',
            open = '<CR>',
            openc = 'o',
            prevfile = '<C-p>',
            prevhist = '<',
            pscrolldown = '<C-d>',
            pscrollorig = 'zo',
            pscrollup = '<C-u>',
            ptoggleauto = 'P',
            ptoggleitem = 'p',
            ptogglemode = 'zp',
            sclear = 'z<Tab>',
            split = '<C-x>',
            stogglebuf = "'<Tab>",
            stoggledown = '<Tab>',
            stoggleup = '<S-Tab>',
            stogglevm = '<Tab>',
            tab = 't',
            tabb = 'T',
            tabc = '<C-t>',
            tabdrop = '',
            vsplit = '<C-v>',
        },
        magic_window = true,
        preview = {
            auto_preview = true,
            border_chars = { '│', '│', '─', '─', '┌', '┐', '└', '┘', '█' },

            delay_syntax = 50,
            win_height = 15,
            win_vheight = 15,
            winblend = 0,
            wrap = false,
        },
    })
end
