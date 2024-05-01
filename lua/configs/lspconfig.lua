-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd"}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

lspconfig.basedpyright.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    python = {
      pythonPath = "/Users/aarushagarwal/miniconda3/envs/MachineLearning/bin/python3",
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
        reportGeneralTypeIssues = false,
        typeCheckingMode = "basic",
        stubPath = "/Users/aarushagarwal/miniconda3/envs/MachineLearning/lib/python3.8/site-packages",
        reportUnknownArgumentType = false,
        reportUnknownCallType = false,
        reportUnknownVariableType = false,
      },
    },
  },
}

-- lspconfig.pyright.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
--   settings = {
--     python = {
--       pythonPath = "/Users/aarushagarwal/miniconda3/envs/MachineLearning/bin/python3",
--       analysis = {
--         autoSearchPaths = true,
--         diagnosticMode = "workspace",
--         useLibraryCodeForTypes = true,
--       },
--     },
--   },
-- }

-- lspconfig.pylsp.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
--   -- set python installation path to "/Users/aarushagarwal/miniconda3/envs/MachineLearning/bin/python3"
--   settings = {
--     pylsp = {
--       pythonPath = "/Users/aarushagarwal/miniconda3/envs/MachineLearning/bin/python3",
--       -- set options
--       plugins = {
--         pycodestyle = { enabled = false },
--         pyflakes = { enabled = false },
--         pylint = { enabled = true },
--         yapf = { enabled = false },
--         pyls_isort = { enabled = true },
--         pyls_mypy = {
--           enabled = true,
--           live_mode = false,
--           configuration = {
--             mypyArgs = {"--ignore=E501"}
--           }
--         }
--       },
--     }
--   }
-- }
