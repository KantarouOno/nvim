local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

--local keymap = vim.keymap
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- 右端・左端に移動
keymap("n", "<S-h>", "1", opts)
keymap("v", "<S-h>", "1", opts)
keymap("n", "<S-l>", "$", opts)
keymap("v", "<S-l>", "$", opts)

-- Option + J (∆) / k (˚) で行を移動する
keymap("n", "∆", ":m .+1<CR>==", opts)
keymap("n", "˚", ":m .-2<CR>==", opts)
keymap("i", "∆", "<Esc>:m .+1<CR>==gi", opts)
keymap("i", "˚", "<Esc>:m .-2<CR>==gi", opts)
keymap("v", "∆", ":m '>+1<CR>gv=gv", opts)
keymap("v", "˚", ":m '<-2<CR>gv=gv", opts)


--最新の状態にする
keymap("n", "<C-s>", ":update<Return>", opts)

keymap("n", "<C-p>", ":bprevious<Return>", opts)
keymap("n", "<C-n>", ":bnext<Return>", opts)
keymap("n", "<C-w>", ":bd<Return>", opts)
keymap("n", "<C-q>", ":wq<Return>", opts)

-- 新しいタブを一番右に作る
keymap("n", "gn", ":tabnew<Return>", opts)
-- move tab
keymap("n", "gh", "gT", opts)
keymap("n", "gl", "gt", opts)

-- 画面を分割する
keymap("n", "sv", ":vsplit<Return><C-w>w", opts)

-- Select all
keymap("n", "<C-a>", "gg<S-v>G", opts)

keymap("n" ,  "<M-k>" , "ddkp",  opts)
keymap("n", "<M-j>", "ddp",  opts)

-- ヤンクしない
keymap("n", "x", "\"_x", opts)
keymap("n", "d", "\"_d", opts)
keymap("n", "D", "\"_D", opts)

--単語削除
keymap("n", "dw", 'vb"_d', opts)

-- 行の端に行く
keymap("n", "<Space>h", "^", opts)
keymap("n", "<Space>l", "$", opts)

-- ;でコマンド入力( ;と:を入れ替)
keymap("n", ";", ":", opts)

-- 行末までのヤンクにする
keymap("n", "Y", "y$", opts)

-- <Space>q で強制終了
keymap("n", "<Space>q", ":<C-u>q!<Return>", opts)

-- Insert --
-- Press jj fast to exit insert mode
keymap("i", "jj", "<ESC>", opts)
keymap("v", "jj", "<ESC>", opts)
-- コンマの後に自動的にスペースを挿入
keymap("i", ",", ",<Space>", opts)
-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- ビジュアルモード時vで行末まで選択
keymap("v", "v", "$h", opts)

-- 0番レジスタを使いやすくした
keymap("v", "<C-p>", '"0p', opts)

keymap("n", "<sf>", ":NvimTreeToggle<Return>", opts)

keymap("n", "fb", ":Telescope file_browser<Return>", opts)
keymap("n", "ff", ":Telescope find_files<Return>", opts)
keymap("n", "<Esc><Esc>", ":<C-u>set nohlsearch<Return>", opts)

