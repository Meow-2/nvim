nnoremap <F5> :lua require'dap'.continue()<cr>
nnoremap <F6> :lua require'dap'.toggle_breakpoint()<cr>
nnoremap <F8> :lua require'dap'.terminate()<cr>
nnoremap <F9> :lua require'dap'.run_last()<cr>
nnoremap <F10> :lua require'dap'.step_over()<cr>
nnoremap <F11> :lua require'dap'.step_into()<cr>
nnoremap <F12> :lua require'dap'.step_out()<cr>
" nnoremap <c-k> :lua require'dapui'.eval()<cr>

" keymap("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)

lua<<EOF
require('dapconf.di-cpp')
require('dapconf.nvim-dap-virtual-text')
require('dapconf.nvim-dap-ui')
EOF
