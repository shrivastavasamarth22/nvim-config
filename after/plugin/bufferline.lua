-- Setup bufferline
-- Setup bufferline with custom colors from your theme
require('bufferline').setup {
  options = {
    -- Show buffer numbers
    numbers = "none",  -- or "ordinal", "buffer_id", "both"
    -- Indicator style for the active buffer
    indicator_icon = '▎',
    -- Enable/Disable the close button on buffers
    close_icon = '',
    -- Show buffer icons
    show_buffer_icons = true,
    -- Always show bufferline, even if only one buffer is open
    always_show_bufferline = true,
    -- Separator style
    separator_style = "slant",  -- other options: "thin", "thick", "slant"
    -- Highlight inactive buffers
    highlight_inactive = true,
    -- Set the style for the active and inactive buffer highlights
    highlights = {
      fill = { guifg = "#868690", guibg = "#0F1014" },
      background = { guifg = "#575861", guibg = "#1F2124" },
      buffer_visible = { guifg = "#b8b8b8", guibg = "#2A2A2A" },
      -- Add underline to selected bufferline
      buffer_selected = { 
        guifg = "#e8b246",  -- #e8b246 from your theme (IncSearch/WarningMsg)
        guibg = "#131317",  -- Dark background for selected buffer
        gui = "underline",   -- Underline for selected buffer
      },
      separator = { guifg = "#43444D", guibg = "#43444D" },
      separator_selected = { guifg = "#e8b246", guibg = "#131317" },
    },
  }
}
vim.api.nvim_set_keymap('n', '<C-c>', ':bd<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Left>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
