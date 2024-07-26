-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")

vim.cmd([[
" Pastikan Neovim menggunakan latar belakang transparan
  hi Normal guibg=NONE ctermbg=NONE
  hi NonText guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
  hi StatusLine guibg=NONE ctermbg=NONE
  hi VertSplit guibg=NONE ctermbg=NONE
  hi NvimTreeNormalNC guibg=NONE ctermbg=NONE
  hi NvimTreeCursorLine guibg=#1e1e1e
]])
