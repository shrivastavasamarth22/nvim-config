-- LSP Zero Configuration
local lsp_zero = require('lsp-zero')

-- Keymapping setup
lsp_zero.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}
  
  -- LSP Keymaps
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- Mason setup
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'pyright',        -- Python
    'ts_ls',       -- TypeScript
    'eslint',         -- JavaScript
    'html',           -- HTML
    'cssls',          -- CSS
    'tailwindcss',    -- Tailwind CSS
    'clangd',         -- C++
		'jsonls',         -- jsonls
		'emmet_ls',       -- emmet_ls
  },
  handlers = {
    lsp_zero.default_setup,
  },
})

-- nvim-cmp setup
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    
    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),
    
    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }),
  
  -- Enable autocomplete for all filetypes 
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  })
})

-- Tailwind CSS specific configuration
require('lspconfig').tailwindcss.setup {
  settings = {
    tailwindCSS = {
      experimental = {
        classRegex = {
          { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
          { "cx\\(([^)]*)\\)", "(?:'|\")([^\"'`]*)(?:'|\")" },
        },
      },
    },
  },
}
