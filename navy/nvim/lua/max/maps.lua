local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

local status, telescope = pcall(require, "telescope.builtin")
if status then
	-- Telescope
	map("n", ",ff", telescope.find_files)
	map("n", ",fg", telescope.live_grep)
	map("n", ",fb", telescope.buffers)
	map("n", ",fh", telescope.help_tags)
	map("n", "<leader>fs", telescope.git_status)
	map("n", "<leader>fc", telescope.git_commits)
else
	print("Telescope not found")
end

-- <leader> = the space key

-- Save
map("n", ",w", "<CMD>update<CR>")

-- Quit
map("n", ",q", "<CMD>q<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- Windows
map("n", ",n", "<CMD>vsplit<CR>")
map("n", ",p", "<CMD>split<CR>")

-- NeoTree
map("n", "<C-w>e", "<CMD>Neotree toggle<CR>")
map("n", "<C-w>o", "<CMD>Neotree focus<CR>")



-- Buffer
map("n", "<TAB>", "<CMD>bnext<CR>")
map("n", "<S-TAB>", "<CMD>bprevious<CR>")

-- Terminal
map("n", "th", "<CMD>ToggleTerm size=10 direction=horizontal<CR>")
map("n", ",tv", "<CMD>ToggleTerm size=80 direction=vertical<CR>")

-- Markdown Preview
map("n", ",m", "<CMD>MarkdownPreview<CR>")
map("n", ",mn", "<CMD>MarkdownPreviewStop<CR>")

-- Window Navigation
--map("n", "<C-h>", "<C-w>h")
--map("n", "<C-l>", "<C-w>l")
--map("n", "<C-k>", "<C-w>k")
--map("n", "<C-j>", "<C-w>j")

-- Resize Windows
--map("n", "<S-<>", "<C-w><")
--map("n", "<, "<C-w>>")
--map("n", "+", "<C-w>+")
--map("n", "<,->>>Down>", "<C-w>-")
