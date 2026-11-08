local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- highlight text after yank
autocmd("TextYankPost", {
  group = augroup("config_highlight_yank", { clear = true}),
  desc = "Highlighted yanked text",
  
  callback = function()
   vim.hl.on_yank()
  end,
})

-- jump to last cursor when reopened 
autocmd("BufReadPost", {
  group = augroup("config_retore_cursor", { clear = true}),
  desc = "Restore the last cursor position",
  
  callback = function(args)
    local filetype = vim.bo[args.buf].filetype

    if filetype == "gitcommit" or filetype == "gitrebase" then
      return
    end

    local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
    local last_line = vim.api.nvim_buf_line_count(args.buf)
    if mark[1] > 0 and mark[1] <= last_line then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- close read-only helpers with q
autocmd("Filetype", {
  group = augroup("config_close_with_q", { clear = true}),
  pattern = { "help", "qf", "man", "checkhealth" },
  desc = "Close helpers buffers with q",

  callback = function(args)
    vim.keymap.set("n", "q", "<Cmd>close<CR>", {
      buffer = args.buf,
      silent = true,
      desc = "Close this window"
    })
  end,
})

-- equalize splits
autocmd("VimResized", {
  group = augroup("config_equalize_splits", { clear = true }),
  command = "wincmd =",
})
