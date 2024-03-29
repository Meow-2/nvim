local keymap = {}
local opts = {}

function opts:new(instance)
    instance = instance
        or {
            options = {
                silent = false,
                nowait = false,
                expr = false,
                noremap = false,
            },
        }
    setmetatable(instance, self)
    self.__index = self
    return instance
end

function keymap.silent(opt)
    return function()
        opt.silent = true
    end
end

function keymap.noremap(opt)
    return function()
        opt.noremap = true
    end
end

function keymap.expr(opt)
    return function()
        opt.expr = true
    end
end

function keymap.remap(opt)
    return function()
        opt.remap = true
    end
end

function keymap.nowait(opt)
    return function()
        opt.nowait = true
    end
end

function keymap.buffer(bufnr)
    return bufnr
end

function keymap.new_opts(...)
    local args = { ... }
    local o = opts:new()

    if #args == 0 then
        return o.options
    end

    for _, arg in pairs(args) do
        if type(arg) == 'number' then
            o.options.buffer = arg
        elseif type(arg) == 'string' then
            o.options.desc = arg
        else
            arg(o.options)()
        end
    end
    return o.options
end

function keymap.cmd(str)
    return '<cmd>' .. str .. '<CR>'
end

-- visual
function keymap.cu(str)
    return '<C-u><cmd>' .. str .. '<CR>'
end

--@private
local keymap_set = function(mode, tbl)
    vim.validate({
        tbl = { tbl, 'table' },
    })
    local len = #tbl
    if len < 2 then
        vim.notify('keymap must has rhs')
        return
    end

    local options = len == 3 and tbl[3] or keymap.new_opts()

    vim.keymap.set(mode, tbl[1], tbl[2], options)
end

local function map(mod)
    return function(tbl)
        vim.validate({
            tbl = { tbl, 'table' },
        })

        if type(tbl[1]) == 'table' and type(tbl[2]) == 'table' then
            for _, v in pairs(tbl) do
                keymap_set(mod, v)
            end
        else
            keymap_set(mod, tbl)
        end
    end
end

keymap.nmap = map('n')
keymap.imap = map('i')
keymap.cmap = map('c')
keymap.vmap = map('v')
keymap.tmap = map('t')
keymap.omap = map('o')
keymap.xmap = map('x')
keymap.smap = map('s')
keymap.tmap = map('t')

local delmap = function(mod, key)
    if vim.fn.maparg(key, mod) ~= '' then
        vim.keymap.del(mod, key)
        print('del ' .. ' mod:' .. mod .. ' key:' .. key)
    end
end

keymap.dmap = function(tbl)
    vim.validate({
        tbl = { tbl, 'table' },
    })
    if type(tbl[1]) == 'table' and type(tbl[2]) == 'table' then
        for _, v in pairs(tbl) do
            delmap(v[1], v[2])
        end
    else
        delmap(tbl[1], tbl[2])
    end
end
return keymap
