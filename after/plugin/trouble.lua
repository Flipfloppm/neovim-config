require('trouble').setup({
                position = "right",
                width = 50,
                cycle_results = false,
                auto_preview = false,
                multiline = true,
                signs = {
                    error = "E",
                    warning = "W",
                    hint = "H",
                    information = "I"
                },
                use_diagnostic_signs = false,
                action_keys = {
                    close = "<esc>",
                    cancel = "q",
                },
            })
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
