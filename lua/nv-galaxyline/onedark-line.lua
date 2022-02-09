local gl = require('galaxyline')
local condition = require('galaxyline.condition')
local gls = gl.section
local colors = require("colorscheme").colors()

gl.short_line_list = {'NvimTree', 'vista', 'dbui', 'packer'}

-- path_short returns the last 3 folders or less of the path tree
-- unused
local function path_short(path)
  local list = {}
  local short = {}
  local result = ""
  -- (.{1,5})\s
  for p in path:gmatch("([^/]*)") do
    if p ~= "" then
      table.insert(list, p)
    end
  end
  if #list > 2 then
    short[1], short[2], short[3] = unpack(list, #list-2, #list)
  else
    short = list
  end
  return table.concat(short, "/")
end

local function file_readonly()
  if vim.bo.filetype == 'help' then
    return ''
  end
  if vim.bo.readonly == true then
    return "  "
  end
  return ''
end

local function custom_file_name_alone()
  local file = vim.fn.expand('%:t')
  if vim.fn.empty(file) == 1 then return '' end
  if string.len(file_readonly()) ~= 0 then
    return file .. file_readonly()
  end
  if vim.bo.modifiable then
    if vim.bo.modified then
      vim.cmd('hi GalaxyCustomFileNameAlone guifg='..colors.red)
      vim.cmd('hi GalaxyCustomSFileNameAlone guifg='..colors.red)
      return '  ' .. file
    else
    end
  end
  vim.cmd('hi GalaxyCustomFileNameAlone guifg='..colors.fg)
  vim.cmd('hi GalaxyCustomSFileNameAlone guifg='..colors.fg)
  return file
end

local function custom_file_path()
  local path = vim.fn.expand('%:.:h')
  if vim.fn.empty(path) == 1 then return '' end
  if path == '.' then return '' end
  -- path = path_short(path)
  if vim.bo.modifiable then
    if vim.bo.modified then
      vim.cmd('hi GalaxyCustomFilePath guifg='..colors.red)
      return '  ' .. path .. '/'
    end
  end
  vim.cmd('hi GalaxyCustomFilePath guifg='..colors.green)
  return path .. '/'
end

local function custom_file_name()
  local file = vim.fn.expand('%:t')
  if vim.fn.empty(file) == 1 then return '' end
  if string.len(file_readonly()) ~= 0 then
    return file .. file_readonly()
  end
  if vim.bo.modifiable then
    if vim.bo.modified then
      vim.cmd('hi GalaxyCustomFileName guifg='..colors.red)
      vim.cmd('hi GalaxyCustomSFileName guifg='..colors.red)
      return file
    else
    end
  end
  vim.cmd('hi GalaxyCustomFileName guifg='..colors.fg)
  vim.cmd('hi GalaxyCustomSFileName guifg='..colors.fg)
  return file
end


gls.left[1] = {
  RainbowLeft = {
    provider = function() return '▎ ' end,
    highlight = {colors.blue,colors.bg}
  },
}

gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {
        n = colors.green,
        i = colors.blue,
        v = colors.magenta,
        [''] = colors.magenta,
        V = colors.magenta,
        c = colors.red,
        no = colors.red,
        s = colors.orange,
        S = colors.orange,
        [''] = colors.orange,
        ic = colors.yellow,
        R = colors.violet,
        Rv = colors.violet,
        cv = colors.red,
        ce=colors.red,
        r = colors.cyan,
        rm = colors.cyan,
        ['r?'] = colors.cyan,
        ['!']  = colors.red,
        t = colors.red
      }
      vim.cmd('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return '  '
    end,
    highlight = {colors.red,colors.bg,'bold'},
  },
}

gls.left[3] = {
  FileSize = {
    provider = 'FileSize',
    condition = condition.buffer_not_empty,
    separator = '  ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.fg,colors.bg},
  }
}

gls.left[4] = {
  CustomFilePath = {
    provider = custom_file_path,
    condition = condition.buffer_not_empty,
    highlight = {colors.green,colors.bg,'bold'},
  }
}

gls.left[5] = {
  CustomFileName = {
    provider = custom_file_name,
    condition = condition.buffer_not_empty,
    separator = '   ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.fg,colors.bg,'bold'},
  }
}

gls.left[6] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.fg,colors.bg}
  },
}

gls.left[7] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.fg,colors.bg,'bold'}
  }
}

gls.left[8] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}
gls.left[9] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow,colors.bg},
  }
}

gls.left[10] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {colors.cyan,colors.bg},
  }
}

gls.left[11] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}


gls.right[1] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.green,colors.bg},
  }
}

gls.right[2] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {colors.orange,colors.bg},
  }
}

gls.right[3] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.red,colors.bg},
  }
}

gls.right[4] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    icon = ' ',
    highlight = {colors.violet,colors.bg,'bold'},
  }
}

gls.right[5] = {
  ShowLspClient = {
    provider = 'GetLspClient',
    condition = function ()
      local tbl = {['dashboard'] = true, [''] = true}
      if tbl[vim.bo.filetype] then
        return false
      end
      return true
    end,
    -- icon = ' LSP: ',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.yellow,colors.bg,'bold'}
  }
}

gls.right[6] = {
  FileEncode = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.green,colors.bg,'bold'}
  }
}

gls.right[7] = {
  FileFormat = {
    provider = 'FileFormat',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.green,colors.bg,'bold'}
  }
}

gls.right[8] = {
  FileTypeName = {
    provider = 'FileTypeName',
    condition = condition.buffer_not_empty,
    separator = '  ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.blue,colors.bg,'bold'}
  }
}

gls.right[9] = {
  FileIconRight = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    separator = '  ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.fg,colors.bg},
  },
}

gls.right[10] = {
  RainbowRight = {
    provider = function() return ' ' end,
    highlight = {colors.blue,colors.bg}
  },
}


gls.short_line_left[1] = {
  CustomSFileNameSpace = {
    provider = function() return ' ' end,
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,colors.bg,'bold'},
  }
}

gls.short_line_left[2] = {
  CustomSFileName = {
    provider = custom_file_name,
    condition = condition.buffer_not_empty,
    highlight = {colors.yellow,colors.bg,'bold'},
  }
}


gls.short_line_right[1] = {
  BufferType = {
    provider = 'FileTypeName',
    condition = condition.buffer_not_empty,
    highlight = {colors.blue,colors.bg,'bold'}
  }
}

gls.short_line_right[2] ={
  FileIconShortLine = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    separator = '  ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.fb,colors.bg},
  },
}

gls.short_line_right[3] = {
  RainbowSortRight = {
    provider = function() return ' ' end,
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,colors.bg}
  },
}
