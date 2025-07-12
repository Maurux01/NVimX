-- Keymaps for better user experience
-- See `:help vim.keymap.set()`

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

-- Clear search with <esc>
keymap({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Better window navigation
keymap("n", "<C-w>h", "<C-w><C-h>", { desc = "Go to left window", remap = true })
keymap("n", "<C-w>j", "<C-w><C-j>", { desc = "Go to lower window", remap = true })
keymap("n", "<C-w>k", "<C-w><C-k>", { desc = "Go to upper window", remap = true })
keymap("n", "<C-w>l", "<C-w><C-l>", { desc = "Go to right window", remap = true })
keymap("n", "<C-w>v", "<C-w>v", { desc = "Vertical split", remap = true })
keymap("n", "<C-w>s", "<C-w>s", { desc = "Horizontal split", remap = true })
keymap("n", "<C-w>c", "<C-w>c", { desc = "Close window", remap = true })
keymap("n", "<C-w>o", "<C-w>o", { desc = "Close other windows", remap = true })

-- Resize with arrows
keymap("n", "<Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymap("n", "<Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymap("n", "<Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap("n", "<Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines
keymap("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
keymap("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
keymap("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
keymap("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
keymap("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
keymap("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Save with Ctrl+s
keymap({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Better indenting
keymap("v", "<", "<gv", { desc = "Better indent" })
keymap("v", ">", ">gv", { desc = "Better indent" })

-- Quickfix navigation
keymap("n", "<C-q>", "<cmd>cclose<cr>", { desc = "Close quickfix" })
keymap("n", "]q", "<cmd>cnext<cr>", { desc = "Next quickfix" })
keymap("n", "[q", "<cmd>cprev<cr>", { desc = "Previous quickfix" })

-- Location list navigation
keymap("n", "]l", "<cmd>lnext<cr>", { desc = "Next location" })
keymap("n", "[l", "<cmd>lprev<cr>", { desc = "Previous location" })

-- Buffer navigation (Improved)
keymap("n", "<C-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
keymap("n", "<C-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous buffer" })
keymap("n", "<leader>bd", "<cmd>BufferLinePickClose<cr>", { desc = "Close buffer" })
keymap("n", "<leader>bp", "<cmd>BufferLinePick<cr>", { desc = "Pick buffer" })
keymap("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>", { desc = "Go to buffer 1" })
keymap("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>", { desc = "Go to buffer 2" })
keymap("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>", { desc = "Go to buffer 3" })
keymap("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>", { desc = "Go to buffer 4" })
keymap("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>", { desc = "Go to buffer 5" })
keymap("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<cr>", { desc = "Go to buffer 6" })
keymap("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<cr>", { desc = "Go to buffer 7" })
keymap("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<cr>", { desc = "Go to buffer 8" })
keymap("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<cr>", { desc = "Go to buffer 9" })

-- Tab navigation
keymap("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "New tab" })
keymap("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close tab" })
keymap("n", "<leader>tl", "<cmd>tabnext<cr>", { desc = "Next tab" })
keymap("n", "<leader>th", "<cmd>tabprevious<cr>", { desc = "Previous tab" })

-- Telescope (File navigation)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })
keymap("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Old files" })
keymap("n", "<leader>fc", "<cmd>Telescope colorscheme<cr>", { desc = "Colorscheme" })
keymap("n", "<leader>fe", "<cmd>Telescope file_browser<cr>", { desc = "File browser" })
keymap("n", "<leader>fr", "<cmd>Telescope resume<cr>", { desc = "Resume last search" })

-- LSP
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Go to definition" })
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", { desc = "References" })
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Hover" })
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Code action" })
keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "Rename" })
keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<cr>", { desc = "Format" })

-- Sessions
keymap("n", "<leader>qs", "<cmd>lua require('persistence').load()<cr>", { desc = "Restore session" })
keymap("n", "<leader>ql", "<cmd>lua require('persistence').load({ last = true })<cr>", { desc = "Restore last session" })
keymap("n", "<leader>qd", "<cmd>lua require('persistence').stop()<cr>", { desc = "Don't save session" })

-- Noice
keymap("n", "<leader>snl", "<cmd>lua require('noice').cmd('last')<cr>", { desc = "Noice Last Message" })
keymap("n", "<leader>snh", "<cmd>lua require('noice').cmd('history')<cr>", { desc = "Noice History" })
keymap("n", "<leader>sna", "<cmd>lua require('noice').cmd('all')<cr>", { desc = "Noice All" })

-- Notifications
keymap("n", "<leader>un", "<cmd>lua require('noice').cmd('dismiss')<cr>", { desc = "Dismiss All Notifications" })

-- Theme switching
keymap("n", "<leader>ut", "<cmd>lua require('config.theme-toggle').toggle()<cr>", { desc = "Toggle Theme" })
keymap("n", "<leader>uN", "<cmd>lua require('config.theme-toggle').next()<cr>", { desc = "Next Theme" })
keymap("n", "<leader>up", "<cmd>lua require('config.theme-toggle').prev()<cr>", { desc = "Previous Theme" })
keymap("n", "<leader>u1", "<cmd>lua require('config.theme-toggle').set('tokyonight')<cr>", { desc = "Tokyo Night" })
keymap("n", "<leader>u2", "<cmd>lua require('config.theme-toggle').set('catppuccin')<cr>", { desc = "Catppuccin" })
keymap("n", "<leader>u3", "<cmd>lua require('config.theme-toggle').set('gruvbox')<cr>", { desc = "Gruvbox" })
keymap("n", "<leader>u4", "<cmd>lua require('config.theme-toggle').set('dracula')<cr>", { desc = "Dracula" })
keymap("n", "<leader>u5", "<cmd>lua require('config.theme-toggle').set('habamax')<cr>", { desc = "Habamax" })

-- Terminal
keymap("n", "<leader>t", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
keymap("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Horizontal terminal split" })
keymap("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Vertical terminal split" })
keymap("n", "<leader>tt", "<cmd>ToggleTerm direction=tab<cr>", { desc = "Terminal in new tab" })
keymap("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
keymap("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
keymap("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
keymap("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })

-- File explorer (Oil)
keymap("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Oil Explorer" })

-- Lazy
keymap("n", "<leader>E", "<cmd>Lazy<cr>", { desc = "Open Lazy (Plugin Manager)" })

-- File browser (Telescope) - Smart Open
keymap("n", "<leader>fe", "<cmd>Telescope file_browser<cr>", { desc = "Telescope File Browser" })

-- Surround
keymap("n", "ys", "<cmd>lua require('mini.surround').add()<cr>", { desc = "Add surround" })
keymap("n", "ds", "<cmd>lua require('mini.surround').delete()<cr>", { desc = "Delete surround" })
keymap("n", "cs", "<cmd>lua require('mini.surround').replace()<cr>", { desc = "Change surround" })

-- Comments
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<cr>", { desc = "Toggle comment line" })
keymap("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", { desc = "Toggle comment for selection" })

-- Emmet (Web development)
keymap("i", "<C-y>", "<cmd>Emmet<cr>", { desc = "Emmet expand" })

-- Prettier
keymap("n", "<leader>fp", "<cmd>Prettier<cr>", { desc = "Format with Prettier" })

-- Git
keymap("n", "<leader>gb", "<cmd>Git blame<cr>", { desc = "Git blame" })
keymap("n", "<leader>gd", "<cmd>Gvdiffsplit<cr>", { desc = "Git diff" })
keymap("n", "<leader>gs", "<cmd>Git<cr>", { desc = "Git status" })

-- Quick save and quit
keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
keymap("n", "<leader>W", "<cmd>wa<cr>", { desc = "Save all" })
keymap("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
keymap("n", "<leader>Q", "<cmd>qa!<cr>", { desc = "Quit all" })

-- Search and replace
keymap("n", "<leader>sr", ":%s/", { desc = "Search and replace" })
keymap("n", "<leader>sR", ":%s/<C-r><C-w>/", { desc = "Search and replace word under cursor" })

-- Yank to system clipboard
keymap({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to clipboard" })
keymap("n", "<leader>Y", '"+yg_', { desc = "Yank line to clipboard" })

-- Paste from system clipboard
keymap({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from clipboard" })
keymap({ "n", "v" }, "<leader>P", '"+P', { desc = "Paste from clipboard before" })

-- Clear highlights
keymap("n", "<leader>nh", "<cmd>nohl<cr>", { desc = "Clear highlights" })

-- Toggle options
keymap("n", "<leader>tw", "<cmd>set wrap!<cr>", { desc = "Toggle wrap" })
keymap("n", "<leader>tn", "<cmd>set number!<cr>", { desc = "Toggle number" })
keymap("n", "<leader>tr", "<cmd>set relativenumber!<cr>", { desc = "Toggle relative number" })
keymap("n", "<leader>ts", "<cmd>set spell!<cr>", { desc = "Toggle spell" })

-- Window management
keymap("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Vertical split" })
keymap("n", "<leader>sh", "<cmd>split<cr>", { desc = "Horizontal split" })
keymap("n", "<leader>se", "<cmd>wincmd =<cr>", { desc = "Equalize windows" })

-- Quick navigation
keymap("n", "<leader>gg", "<cmd>e#<cr>", { desc = "Go to previous file" })
keymap("n", "<leader>gl", "<cmd>lua vim.diagnostic.open_float()<cr>", { desc = "Show line diagnostics" })
keymap("n", "<leader>gj", "<cmd>lua vim.diagnostic.goto_next()<cr>", { desc = "Next diagnostic" })
keymap("n", "<leader>gk", "<cmd>lua vim.diagnostic.goto_prev()<cr>", { desc = "Previous diagnostic" })

-- Live Server (web dev)
local Terminal = require('toggleterm.terminal').Terminal
local live_server = nil
keymap("n", "<leader>ls", function()
  local file_dir = vim.fn.expand('%:p:h')
  if live_server == nil or not live_server:is_open() then
    live_server = Terminal:new({
      cmd = "live-server",
      dir = file_dir,
      direction = "horizontal",
      close_on_exit = false,
      size = 20,
    })
    live_server:toggle()
  else
    live_server:toggle()
  end
end, { desc = "Toggle Live Server" })

-- Code Capture and Recording
keymap("n", "<leader>ci", "<cmd>lua require('config.capture-utils').capture_buffer_as_image()<cr>", { desc = "Capture buffer as image" })
keymap("v", "<leader>ci", "<cmd>lua require('config.capture-utils').capture_selection_as_image()<cr>", { desc = "Capture selection as image" })
keymap("v", "<leader>cc", "<cmd>lua require('config.capture-utils').capture_code_block()<cr>", { desc = "Capture code block with syntax highlighting" })
keymap("v", "<leader>cb", "<cmd>lua require('config.capture-utils').create_ascii_box()<cr>", { desc = "Create ASCII box around selection" })
keymap("n", "<leader>cr", "<cmd>lua require('config.capture-utils').toggle_recording_mode()<cr>", { desc = "Toggle screen recording" })
keymap("n", "<leader>ct", "<cmd>Twilight<cr>", { desc = "Toggle Twilight (focus mode)" })

-- SnipRun (Code execution)
keymap("n", "<leader>cs", "<cmd>SnipRun<cr>", { desc = "Run code snippet" })
keymap("n", "<leader>cl", "<cmd>SnipReset<cr>", { desc = "Clear snippet output" })

-- Venn (ASCII art)
keymap("n", "<leader>cv", "<cmd>VBox<cr>", { desc = "Draw box around selection" })

-- AI Assistant and Code Suggestions
keymap("n", "<leader>ai", "<cmd>CopilotChatToggle<cr>", { desc = "Toggle Copilot Chat" })
keymap("n", "<leader>ae", "<cmd>CopilotChatExplain<cr>", { desc = "Explain code" })
keymap("n", "<leader>at", "<cmd>CopilotChatTests<cr>", { desc = "Generate tests" })
keymap("n", "<leader>af", "<cmd>CopilotChatFix<cr>", { desc = "Fix code" })
keymap("n", "<leader>ar", "<cmd>CopilotChatReview<cr>", { desc = "Review code" })

-- Refactoring
keymap("n", "<leader>rr", "<cmd>lua require('refactoring').select_refactor()<cr>", { desc = "Select Refactor" })
keymap("n", "<leader>rp", "<cmd>lua require('refactoring').debug.printf({below = false})<cr>", { desc = "Debug Print" })
keymap("n", "<leader>rv", "<cmd>lua require('refactoring').debug.print_var({normal = true})<cr>", { desc = "Debug Print Var" })
keymap("v", "<leader>rv", "<cmd>lua require('refactoring').debug.print_var({})<cr>", { desc = "Debug Print Var" })
keymap("n", "<leader>rc", "<cmd>lua require('refactoring').debug.cleanup({})<cr>", { desc = "Debug Cleanup" })
