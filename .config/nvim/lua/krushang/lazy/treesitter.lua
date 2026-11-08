return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local ts = require('nvim-treesitter')

    ts.setup {
      install_dir = vim.fn.stdpath('data') .. '/site',
    }

    local available = ts.get_available() -- every parser nvim-treesitter knows about

    vim.api.nvim_create_autocmd('FileType', {
      group = vim.api.nvim_create_augroup('TreesitterAutoInstall', { clear = true }),
      callback = function(args)
        local buf = args.buf
        local lang = vim.treesitter.language.get_lang(args.match)
        if not lang then return end

        local function start()
          if not vim.api.nvim_buf_is_valid(buf) then return end
          -- highlighting
          if pcall(vim.treesitter.start, buf, lang) then
            -- treesitter-based indent
            vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            -- optional: treesitter folds
            -- vim.wo[0][0].foldmethod = 'expr'
            -- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
          end
        end

        if vim.list_contains(ts.get_installed(), lang) then
          start()
        elseif vim.list_contains(available, lang) then
          -- install async, then start highlighting once it finishes
          ts.install(lang):await(function()
            vim.schedule(start)
          end)
        end
      end,
    })
  end,
}
