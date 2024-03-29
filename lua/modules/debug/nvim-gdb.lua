return function()
    -- NOTE: nvimgdb 依赖 gdb with python support
    -- 检查方式为: gdb --config
    -- 输出类似如下:
    --with-python=/usr
    --with-python-libdir=/usr/lib

    -- 如果不支持python, 需要从源码编译gdb:
    -- 1. 下载gdb源码: https://ftp.gnu.org/gnu/gdb/, 并解压
    -- 2. ./configure --with-python
    -- 3. make
    -- 4. make install
    local dmap = require('core.keymap').dmap
    vim.g.nvimgdb_disable_start_keymaps = 1
    vim.g.nvimgdb_use_find_executables = 0
    vim.g.nvimgdb_use_cmake_to_find_executables = 0
    vim.w.nvimgdb_termwin_command = 'rightbelow vnew'
    vim.w.nvimgdb_codewin_command = 'vnew'
    vim.g.nvimgdb_config_override = {
        ['key_next'] = '-n',
        ['key_step'] = '-s',
        ['key_finish'] = '-f',
        ['key_continue'] = '-c',
        ['key_until'] = '-u',
        ['key_breakpoint'] = '-b',
    }

    -- vim.cmd([[
    --   nnoremap <silent> <expr> <leader>dd ":GdbStart gdb -q " . input("debugee file path: ") . "\<ESC>"
    -- ]])

    local exists = function(file)
        local ok, err, code = os.rename(file, file)
        if not ok then
            if code == 13 then
                -- Permission denied, but it exists
                return true
            end
        end
        return ok, err
    end

    _G.GdbSessionInit = function()
        -- restore breakpoints if possible
        if exists('.bps.txt') then
            vim.defer_fn(function()
                vim.api.nvim_command(':Gdb source .bps.txt')
            end, 300)
        end

        -- create bt & info locals window
        vim.api.nvim_command(':belowright GdbCreateWatch thread apply all bt')
        vim.api.nvim_command(':wincmd h')
        vim.api.nvim_command(':belowright GdbCreateWatch info locals')

        -- move cursor back to gdb terminal
        vim.api.nvim_command(':wincmd k')
    end

    _G.StartGdbSession = function()
        dmap({ 'c', '<Tab>' })
        -- start gdb sessoin
        local exec_file = vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/build/', 'file')
        vim.api.nvim_command(':GdbStart gdb -q ' .. exec_file)
    end

    _G.CreateWatch = function()
        local watch_arg = vim.fn.input('Watch cmd: ')
        vim.api.nvim_command(':GdbCreateWatch ' .. watch_arg)
    end

    _G.CloseWatchBuffers = function()
        vim.defer_fn(function()
            vim.api.nvim_command(':bd! thread info')
        end, 10)
    end

    vim.api.nvim_create_augroup('nvim_gdb', { clear = true })
    vim.api.nvim_create_autocmd('User', {
        group = 'nvim_gdb',
        pattern = { 'NvimGdbStart' },
        callback = function()
            GdbSessionInit()
        end,
    })

    vim.api.nvim_create_autocmd('User', {
        group = 'nvim_gdb',
        pattern = { 'NvimGdbCleanup' },
        callback = function()
            CloseWatchBuffers()
        end,
    })
end
