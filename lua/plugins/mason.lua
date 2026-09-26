-- Customize Mason

---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        -- JavaScript, TypeScript и фронтенд
        "vtsls",
        "eslint-lsp",
        "html-lsp",
        "css-lsp",
        "tailwindcss-language-server",
        "vue-language-server",
        "svelte-language-server",
        "astro-language-server",
        "prettier",

        -- PHP и Laravel
        "intelephense",
        "blade-formatter",

        -- Go
        "gopls",
        "gofumpt",

        -- Python
        "basedpyright",
        "ruff",

        -- JSON, YAML, TOML, SQL, Markdown
        "json-lsp",
        "yaml-language-server",
        "taplo",
        "sqls",
        "sqlfluff",
        "marksman",

        -- Docker и shell
        "dockerfile-language-server",
        "docker-compose-language-service",
        "bash-language-server",
        "shellcheck",
        "shfmt",

        -- Конфигурация Neovim
        "lua-language-server",
        "stylua",
        "tree-sitter-cli",

        -- Отладчики
        "js-debug-adapter",
        "php-debug-adapter",
        "delve",
        "debugpy",
      },
    },
  },
}
