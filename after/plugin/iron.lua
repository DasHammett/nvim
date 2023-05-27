local iron = require("iron.core")
local view = require("iron.view")

iron.setup {
  config = {
    -- Whether a repl should be discarded or not
    scratch_repl = true,
    -- Your repl definitions come here
    repl_definition = {
      sh = {
        -- Can be a table or a function that
        -- returns a table (see below)
        command = {"sh"}
      }
    },
    -- How the repl window will be displayed
    -- See below for more information
    --repl_open_cmd = require('iron.view').bottom(40),
	repl_open_cmd = view.split.vertical.botright(120)
},
  -- Iron doesn't set keymaps by default anymore.
  -- You can set them here or manually add keymaps to the functions in iron.core
  keymaps = {
    send_motion = "<ññ>m",
    visual_send = "<space>",
    send_file = "<ññ>sf",
    --send_line = "<space>",
    send_mark = "<ññ>sm",
    mark_motion = "<ññ>mc",
    mark_visual = "<ññ>mc",
    remove_mark = "<ññ>md",
    cr = "<ññ>s<cr>",
    interrupt = "<ññ>s<ññ>",
    exit = "<ññ>sq",
    clear = "<ññ>cl",
  },
  -- If the highlight is on, you can change how it looks
  -- For the available options, check nvim_set_hl
  highlight = {
    italic = false
  },
  ignore_blank_lines = false, -- ignore blank lines when sending visual select lines
}

