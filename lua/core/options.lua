-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT
local cache_dir = os.getenv('HOME') .. '/.cache/nvim/'

vim.opt.termguicolors = true
vim.opt.mouse = 'nv'
vim.opt.errorbells = true
vim.opt.visualbell = true
vim.opt.hidden = true
vim.opt.fileformats = 'unix,mac,dos'
vim.opt.magic = true
vim.opt.virtualedit = 'block'
vim.opt.encoding = 'utf-8'
-- vim.opt.viewoptions = 'folds,cursor,curdir,slash,unix'
-- vim.opt.sessionoptions = 'curdir,help,tabpages,winsize'
vim.opt.wildignorecase = true
vim.opt.wildignore =
  '.git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**'
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.directory = cache_dir .. 'swag/'
vim.opt.undodir = cache_dir .. 'undo/'
vim.opt.backupdir = cache_dir .. 'backup/'
vim.opt.viewdir = cache_dir .. 'view/'
vim.opt.spellfile = cache_dir .. 'spell/en.uft-8.add'
vim.opt.history = 2000
vim.opt.shada = "!,'300,<50,@100,s10,h"
vim.opt.backupskip = '/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim'
vim.opt.smarttab = true
vim.opt.shiftround = true
vim.opt.timeout = true
vim.opt.ttimeout = true
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 50
vim.opt.updatetime = 100
vim.opt.redrawtime = 1500
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.infercase = true
vim.opt.incsearch = true
vim.opt.wrapscan = true
vim.opt.complete = '.,w,b,k'
vim.opt.inccommand = 'nosplit'
vim.opt.grepformat = '%f:%l:%c:%m'
vim.opt.grepprg = 'rg --hidden --vimgrep --smart-case --'
vim.opt.breakat = [[\ \	;:,!?]]
vim.opt.startofline = false
vim.opt.whichwrap = '<,>,[,],~'
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.switchbuf = 'useopen'
vim.opt.backspace = 'indent,eol,start'
vim.opt.diffopt = 'filler,iwhite,internal,algorithm:patience'
vim.opt.completeopt = 'menu,menuone,noselect'
vim.opt.jumpoptions = 'stack'
vim.opt.showmode = false
vim.opt.shortmess = 'aoOTIcF'
vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 5
vim.opt.ruler = false
vim.opt.list = true
vim.opt.showtabline = 2
vim.opt.winwidth = 30
vim.opt.winminwidth = 10
vim.opt.pumheight = 15
vim.opt.helpheight = 12
vim.opt.previewheight = 12
vim.opt.showcmd = true
-- just for nightly
vim.opt.cmdheight = 1
vim.opt.cmdwinheight = 5
vim.opt.equalalways = false
vim.opt.laststatus = 2
vim.opt.display = 'lastline'
vim.opt.showbreak = '↳  '
vim.opt.listchars = 'tab:»·,nbsp:+,trail:·,extends:→,precedes:←'
vim.opt.pumblend = 10
vim.opt.winblend = 10
vim.opt.undofile = true
vim.opt.synmaxcol = 2500
vim.opt.formatoptions = '1jcroql'
vim.opt.textwidth = 80
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = -1
vim.opt.breakindentopt = 'shift:4,min:20'
vim.opt.wrap = false
vim.opt.linebreak = true
vim.opt.number = true
vim.opt.signcolumn = 'yes'
vim.opt.conceallevel = 2
vim.opt.concealcursor = 'niv'

vim.opt.foldenable = true
vim.opt.foldmethod = 'marker'
vim.opt.foldmarker = '{{{,}}}'
vim.opt.foldminlines = 1


-- vim.g.remoteSession = os.getenv($SSH_TTY) ~= "" and true or false
vim.g.python_host_prog = '/usr/bin/python'
vim.g.python3_host_prog = '/usr/bin/python3'

vim.opt.guifont = [[FiraCode Nerd Font Mono:h15]]
-- vim.opt.guifont = [[Hack Nerd Font Mono:h15]]
-- vim.opt.guifont = [[JetBrainsMono Nerd Font:h15]]

if vim.loop.os_uname().sysname == 'Darwin' then
  vim.g.clipboard = {
    name = 'macOS-clipboard',
    copy = {
      ['+'] = 'pbcopy',
      ['*'] = 'pbcopy',
    },
    paste = {
      ['+'] = 'pbpaste',
      ['*'] = 'pbpaste',
    },
    cache_enabled = 0,
  }
  vim.g.python_host_prog = '/usr/bin/python'
  vim.g.python3_host_prog = '/usr/bin/python3'
  vim.g.barbaric_ime = 'fcitx5'
end
