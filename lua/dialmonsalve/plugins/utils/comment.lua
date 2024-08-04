return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    -- import comment plugin safely
    local comment = require("Comment")

    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    -- enable comment
    comment.setup({
      -- for commenting tsx, jsx, svelte, html files
      pre_hook = ts_context_commentstring.create_pre_hook(),
       padding = false,
       sticky= false,
       ignore="",
       mappings = {
         extra = false,
         basic = false
       },
       toggler = {
         line="",
         block=""
       },
       opleader = {
         ---Line-comment keymap
         line = 'gc',
         ---Block-comment keymap
         block = 'gb',
     },
       extra = {
         ---Add comment on the line above
         above = 'gcO',
         ---Add comment on the line below
         below = 'gco',
         ---Add comment at the end of line
         eol = 'gcA',
       },
       post_hook = function (_)
       end
    })
  end,
}
