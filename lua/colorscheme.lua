-- ===========
-- Colorscheme
-- ===========

local M = {}

function M.colors()
  return {
    -- bg = '#2c323c',
    bg = '#1e2127',
    fg = '#bbc2cf',
    yellow = '#ECBE7B',
    cyan = '#008080',
    darkblue = '#081633',
    green = '#98be65',
    orange = '#FF8800',
    violet = '#a9a1e1',
    magenta = '#c678dd',
    blue = '#51afef';
    red = '#ec5f67';
  }
end

local colors = M.colors()

vim.o.termguicolors = true
vim.cmd('colorscheme onedark')

vim.cmd('autocmd ColorScheme * hi StatusLine guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE')

-- Errors in red
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsVirtualTextError guifg='..colors.red)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsError guifg='..colors.red)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsErrorSign guifg='..colors.red)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsErrorFloating guifg='..colors.red)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsUnderlineError guisp='..colors.red..' cterm=undercurl gui=undercurl')
vim.fn.sign_define('LspDiagnosticsSignError', { text = "", texthl = "LspDiagnosticsError", linehl="", numhld="" })

-- Warnings in yellow
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsVirtualTextWarning guifg='..colors.yellow)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsWarning guifg='..colors.yellow)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsWarningSign guifg='..colors.yellow)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsWarningFloating guifg='..colors.yellow)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsUnderlineWarning guisp='..colors.yellow..' cterm=undercurl gui=undercurl')
vim.fn.sign_define('LspDiagnosticsSignWarning', { text = "", texthl = "LspDiagnosticsWarning", linehl="", numhl="" })

-- Hints in cyan
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsVirtualTextHint guifg='..colors.cyan)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsHint guifg='..colors.cyan)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsHintSign guifg='..colors.cyan)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsHintFloating guifg='..colors.cyan)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsUnderlineHint guisp='..colors.cyan..' cterm=undercurl gui=undercurl')
vim.fn.sign_define('LspDiagnosticsSignInformation', { text = "", texthl = "LspDiagnosticsInformation", linehl="", numhl="" })

-- Info in blue
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsVirtualTextInformation guifg='..colors.blue)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsInformation guifg='..colors.blue)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsInformationSign guifg='..colors.blue)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsInformationFloatting guifg='..colors.blue)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsUnderlineInformation guisp='..colors.blue..' cterm=undercurl gui=undercurl')
vim.fn.sign_define('LspDiagnosticsSignHint', { text = "", texthl = "LspDiagnosticsHint", linehl="", numhl="" })

return M
