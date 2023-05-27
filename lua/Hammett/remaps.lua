vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "r",
    callback = function()
		vim.g.mapleader = "\\"
	vim.keymap.set("n", "<Space>", "<Plug>RDSendLine")
	vim.keymap.set("v", "<Space>", "<Plug>RDSendSelection")
	end}
)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("v","<Tab>", ">gv")
vim.keymap.set("v","<S-Tab>", "<gv")
vim.keymap.set("n", "za", "zA")
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("x", "<leader>pp", [["_dP]])
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("t", "<Esc>","<C-\\><C-n>",{silent = true})
vim.keymap.set({"n","t", "i"}, "<C-j>", "<C-\\><C-n><C-w>h")
vim.keymap.set({"n", "t", "i"}, "<C-k>", "<C-\\><C-n><C-w>l")
vim.api.nvim_create_autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 100,
        })
    end,
})
vim.keymap.set('n', '<leader>rs', '<cmd>IronRepl<cr>')
vim.keymap.set('n', '<leader>rr', '<cmd>IronRestart<cr>')
vim.keymap.set('n', '<leader>rf', '<cmd>IronFocus<cr>')
vim.keymap.set('n', '<leader>rh', '<cmd>IronHide<cr>')
vim.keymap.set("n", "<space>", function()
	local last_line = vim.fn.line('$')
    local pos = vim.api.nvim_win_get_cursor(0)
    require('iron.core').send_line()
    vim.api.nvim_win_set_cursor(0, { math.min(pos[1] + 1, last_line), pos[2] })
end)
