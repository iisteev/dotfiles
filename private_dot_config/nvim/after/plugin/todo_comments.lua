local todo_comments = require("todo-comments")

todo_comments.setup()

-- TODO: I probably should put the nnmap in a function
vim.keymap.set("n", "]t", function()
  todo_comments.jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  todo_comments.jump_prev()
end, { desc = "Previous todo comment" })
