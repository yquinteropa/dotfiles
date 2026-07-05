return {
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').setup({})

      local languages = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'markdown', 'rust', 'bash', 'python' }
      
      require('nvim-treesitter').install(languages)

      vim.api.nvim_create_autocmd('FileType', {
        pattern = languages, 
        callback = function()
          -- syntax highlighting, provided by Neovim
          vim.treesitter.start()
          
          -- folds, provided by Neovim
          vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          vim.wo.foldmethod = 'expr'
          
          -- indentation, provided by nvim-treesitter
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end
  },
}
