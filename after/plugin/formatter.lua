local util = require "formatter.util"

require("formatter").setup {
    logging = true,
    log_level = vim.log.levels.WARN,
    filetype = {
        require("formatter.filetypes.svelte").prettierd,
        svelte = {
                function()
                return {
                    exe = "prettierd",
                    args = { util.escape_path(util.get_current_buffer_file_path()) },
                    stdin = true,
                }
            end
        },
    }
}

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})

