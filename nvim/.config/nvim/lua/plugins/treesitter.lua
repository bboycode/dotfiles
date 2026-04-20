return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("nvim-treesitter").setup({
            ensure_installed = {
                "lua", "vim", "vimdoc", "query",
                "python", "go", "c", "bash", "json", "yaml","java",
            },
            auto_install = false,
        })
    end,
}
