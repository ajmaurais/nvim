return {
    {
        "sindrets/diffview.nvim",
        -- Optional: file-type icons in the file panel. Requires a Nerd Font in the terminal.
        dependencies = { "nvim-tree/nvim-web-devicons" },
        -- Load on first use of any Diffview command.
        cmd = {
            "DiffviewOpen",
            "DiffviewClose",
            "DiffviewToggleFiles",
            "DiffviewFocusFiles",
            "DiffviewRefresh",
            "DiffviewFileHistory",
            "DiffviewLog",
        },
        opts = {},
    },
}
