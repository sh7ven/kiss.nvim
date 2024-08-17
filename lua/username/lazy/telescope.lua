return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')

		-- trigger Telescope
        vim.keymap.set('n', '<C-e>', builtin.find_files, { })
    end
}
