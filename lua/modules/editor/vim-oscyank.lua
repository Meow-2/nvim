return function()
    if vim.g.remoteSession then
        vim.g.clipboard = {}
    end
    vim.api.nvim_create_augroup('oscyank_post', { clear = true })
    vim.api.nvim_create_autocmd('TextYankPost', {
        group = 'oscyank_post',
        pattern = { '*' },
        callback = function()
            if vim.v.event.operator == 'y' and vim.v.event.regname == '+' then
                vim.cmd("execute 'OSCYankReg +'")
            end
        end,
    })
end
