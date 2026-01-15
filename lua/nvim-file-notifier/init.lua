local M = {}

function M.setup()
  vim.api.nvim_create_autocmd("BufEnter", {
    pattern = { "*.lua" },
    callback = function(args)
      local filename = vim.api.nvim_buf_get_name(args.buf)
      print("The filename is: " .. vim.fs.basename(filename))
    end
  })
end

return M
