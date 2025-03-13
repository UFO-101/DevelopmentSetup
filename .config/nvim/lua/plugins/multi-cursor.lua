return {
  "vscode-neovim/vscode-multi-cursor.nvim",
  event = "VeryLazy",
  vscode = true,
  cond = not not vim.g.vscode,
  opts = {
    default_mappings = true,
  },
  keys = function(_, _)
    local cursors = require("vscode-multi-cursor")
    local state = require("vscode-multi-cursor.state")
    local k = vim.keymap.set
    local function custom_change_command()
      if #state.cursors == 0 then
        -- If no cursors are active, use the normal "c" command
        return "c"
      else
        -- Otherwise, use the custom cursor command
        return cursors.start_left_edge()
      end
    end
    k({ "n", "x" }, "c", custom_change_command, { expr = true, desc = "Start cursors on the left edge" })
  end,
}
