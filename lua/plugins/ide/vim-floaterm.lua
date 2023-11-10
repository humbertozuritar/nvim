return {
   -- DESC: Use (neo)vim terminal in the floating/popup window.
   "voldikss/vim-floaterm",
   cmd = "FloatermNew",
   keys = {
       {"<Space>tt", mode = "n", "<cmd>FloatermNew --height=0.8 --width=0.8 --wintype=float<cr>", desc = "Abrir terminal flotante"},
   },
}
