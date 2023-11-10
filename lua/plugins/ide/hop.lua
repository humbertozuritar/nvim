return {
   -- DESC: Hop is an EasyMotion-like plugin allowing you to jump anywhere
   --       in a document with as few keystrokes as possible.
   'phaazon/hop.nvim',
   branch = 'v2', -- NOTE: optional but strongly recommended
   config = function()
       ---- DESC: you can configure Hop the way you like here; see :h hop-config
       require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
   end,
   keys = {
       {"<Space>hw", mode = "n", "<cmd>HopWord<cr>", desc = "Go to any word in the current buffer"},
       --{"<Space>ha", mode = "n", "<cmd>HopAnywhere<cr>", desc = "Go to anywhere"},
       {"<Space>hl", mode = "n", "<cmd>HopLine<cr>", desc = "Go to any line and any line start"},
       {"<Space>ha", mode = "n", "<cmd>HopAnywhereCurrentLine<cr>", desc = "Go to anywhere at the current line"},
       {"<Space>hp", mode = "n", "<cmd>HopPattern<cr>", desc = "Go to any pattern"},
   },
}
