return function()
    require('todo-comments').setup({
        keywords = {
            FIX = {
                icon = '󰃤 ',
                color = '#DC2626',
                alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE', '!' },
            },
            TODO = { icon = ' ', color = '#2563EB' },
            HACK = { icon = ' ', color = '#7C3AED' },
            WARN = { icon = ' ', color = '#FBBF24', alt = { 'WARNING', 'XXX' } },
            PERF = {
                icon = '󰅒 ',
                color = '#FC9868',
                alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' },
            },
            NOTE = { icon = '󰍨 ', color = '#10B981', alt = { 'INFO' } },
        },
    })
end
