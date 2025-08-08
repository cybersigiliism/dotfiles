return{
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
    ft = "rust",
    config = function ()
      local mason_registry = require('mason-registry')
      local codelldb_path = vim.fn.expand("$MASON/packages/codelldb/extension/adapter/codelldb")
      local liblldb_path = vim.fn.expand("$MASON/packages/codelldb/extension/lldb/lib/liblldb.so")
	-- If you are on Linux, replace the line above with the line below:
	-- local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
      local cfg = require('rustaceanvim.config')

      vim.g.rustaceanvim = {
        dap = {
          adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
        },
      }
    end
  }
