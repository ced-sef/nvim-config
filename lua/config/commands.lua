-- :Cp  copies the file path relative to the working directory.
-- :Cp! copies the absolute path.
vim.api.nvim_create_user_command("Cp", function(opts)
  local modifier = opts.bang and ":p" or ":."
  local path = vim.fn.expand("%" .. modifier)

  if path == "" then
    vim.notify("This buffer has no file name", vim.log.levels.WARN)
    return
  end

  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, {
  bang = true,
  desc = "Copy the file path (add ! for absolute path)",
})

-- takes arguments
vim.api.nvim_create_user_command("Greet", function(opts)
  print("Hello, " .. opts.args)
end, { nargs = 1, desc = "Greet"})

