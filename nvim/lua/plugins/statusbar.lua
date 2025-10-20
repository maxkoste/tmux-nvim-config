return {
  "christopher-francisco/tmux-status.nvim",
  lazy = true,
  opts = {},
  config = function()
    require("tmux-status").tmux_windows()
  end,
}
