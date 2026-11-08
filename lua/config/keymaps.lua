

local map = vim.keymap.set

map({ "n", "x"}, "<Space>", "<Nop>", { desc = "Leader (no-op)" })

map({ "n", "x"}, "<Down>", "v:count == 0 ? 'gj' : 'j'", {
  expr = true,
  silent = true,
  desc = "Down (display line)",
})
map({ "n", "x"}, "<Up>", "v:count == 0 ? 'gk' : 'k'", {
  expr = true,
  silent = true,
  desc = "Up (display line)",
})

map("x", "<", "<gv", { desc = "Indent left, keep selection" })
map("x", ">", ">gv", { desc = "Indent right, keep selection" })

-- tabs

-- splits
