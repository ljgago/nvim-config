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
vim.cmd('colorscheme onedark-night')

-- vim.o.background = "dark"

-- To enable transparency
-- vim.g.solarized_termtrans = 1
-- vim.cmd('colorscheme solarized8_flat')

-- vim.g.gruvbox_colors = 'dark0_soft'
-- vim.cmd('colorscheme gruvbox-flat')
-- require('solarized').set()


vim.cmd('autocmd ColorScheme * hi StatusLine guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE')

-- nvim 0.5.x
-- Errors in red
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsError guifg='..colors.red)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsVirtualTextError guifg='..colors.red)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsErrorSign guifg='..colors.red)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsErrorFloating guifg='..colors.red)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsUnderlineError guisp='..colors.red..' cterm=undercurl gui=undercurl')
vim.fn.sign_define('LspDiagnosticsSignError', { text = "", texthl = "LspDiagnosticsError", linehl="", numhld="" })

-- Warnings in yellow
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsWarn guifg='..colors.yellow)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsVirtualTextWarning guifg='..colors.yellow)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsWarningSign guifg='..colors.yellow)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsWarningFloating guifg='..colors.yellow)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsUnderlineWarning guisp='..colors.yellow..' cterm=undercurl gui=undercurl')
vim.fn.sign_define('LspDiagnosticsSignWarning', { text = "", texthl = "LspDiagnosticsWarning", linehl="", numhl="" })

-- Hints in cyan
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsHint guifg='..colors.cyan)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsVirtualTextHint guifg='..colors.cyan)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsHintSign guifg='..colors.cyan)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsHintFloating guifg='..colors.cyan)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsUnderlineHint guisp='..colors.cyan..' cterm=undercurl gui=undercurl')
vim.fn.sign_define('LspDiagnosticsSignHint', { text = "", texthl = "LspDiagnosticsHint", linehl="", numhl="" })

-- Info in blue
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsInformation guifg='..colors.blue)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsVirtualTextInformation guifg='..colors.blue)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsInformationSign guifg='..colors.blue)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsInformationFloatting guifg='..colors.blue)
vim.cmd('autocmd ColorScheme * hi LspDiagnosticsUnderlineInformation guisp='..colors.blue..' cterm=undercurl gui=undercurl')
vim.fn.sign_define('LspDiagnosticsSignInformation', { text = "", texthl = "LspDiagnosticsInformation", linehl="", numhl="" })

-- nvim 0.6.x
-- Errors in red
vim.cmd('hi DiagnosticError guifg='..colors.red)
vim.cmd('hi DiagnosticUnderlineError guisp='..colors.red..' cterm=undercurl gui=undercurl')
vim.fn.sign_define('DiagnosticSignError', { text = "", texthl = "DiagnosticError", linehl="", numhl="" })

-- Warnings in yellow
vim.cmd('hi DiagnosticWarn guifg='..colors.yellow)
vim.cmd('hi DiagnosticUnderlineWarn guisp='..colors.yellow..' cterm=undercurl gui=undercurl')
vim.fn.sign_define('DiagnosticSignWarn', { text = "", texthl = "DiagnosticWarn", linehl="", numhl="" })

-- Hints in cyan
vim.cmd('hi DiagnosticHint guifg='..colors.cyan)
vim.cmd('hi DiagnosticUnderlineHint guisp='..colors.cyan..' cterm=undercurl gui=undercurl')
vim.fn.sign_define('DiagnosticSignHint', { text = "", texthl = "DiagnosticHint", linehl="", numhl="" })

-- Info in blue
vim.cmd('hi DiagnosticInfo guifg='..colors.blue)
vim.cmd('hi DiagnosticUnderlineInfo guisp='..colors.blue..' cterm=undercurl gui=undercurl')
vim.fn.sign_define('DiagnosticSignInfo', { text = "", texthl = "DiagnosticInfo", linehl="", numhl="" })

-- gray
vim.cmd('hi CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080')
-- blue
vim.cmd('hi CmpItemAbbrMatch guibg=NONE guifg=#569CD6')
vim.cmd('hi CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6')
-- light blue
vim.cmd('hi CmpItemKindVariable guibg=NONE guifg=#9CDCFE')
vim.cmd('hi CmpItemKindInterface guibg=NONE guifg=#9CDCFE')
vim.cmd('hi CmpItemKindText guibg=NONE guifg=#9CDCFE')
-- pink
vim.cmd('hi CmpItemKindFunction guibg=NONE guifg=#C586C0')
vim.cmd('hi CmpItemKindMethod guibg=NONE guifg=#C586C0')
-- front
vim.cmd('hi CmpItemKindKeyword guibg=NONE guifg=#D4D4D4')
vim.cmd('hi CmpItemKindProperty guibg=NONE guifg=#D4D4D4')
vim.cmd('hi CmpItemKindUnit guibg=NONE guifg=#D4D4D4')

return M
