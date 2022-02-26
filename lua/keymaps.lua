vim.g.mapleader = " "
nmap(",v", ":vsplit<CR>")
nmap(",h", ":split<CR>")
nmap("<C-e>", ":set nomore <Bar> :ls <Bar> :set more <CR>:b<Space>")
nmap("<Enter>", "o<ESC>")
nmap("z", "dd")
nmap("<C-b>", ":NERDTreeFocus<CR>")
nmap("<C-n>", ":NERDTreeToggle<CR>")
nmap("<Leader>l", ":tabnext<CR>")
nmap("<Leader>h", ":tabprev<CR>")
nmap("<Leader>t", ":tabnew<CR>")
nmap("<Leader>x", ":tabclose<CR>")
nmap("K", ":Rg! <C-R><C-W><CR>")
nmap(";b", ":Buffers<CR>")
nmap(";f", ":Files<CR>")
nmap(";w", ":Windows<CR>")
nrmap("f", "<Plug>Lightspeed_s")
nrmap("F", "<Plug>Lightspeed_S")
nmap("tvv", ":FloatermNew --width=0.5 --wintype=vsplit<CR>")
nmap("thh", ":FloatermNew --width=0.5 --wintype=split<CR>")

