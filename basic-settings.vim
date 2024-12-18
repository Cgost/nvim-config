" basic-settings.vim

" 初始化設定
set nocompatible               " 禁用兼容模式，啟用現代功能
filetype off                    " 禁用自動檢測文件類型，稍後手動啟用
set backspace=indent,eol,start  " 改善 backspace 行為
set encoding=utf-8              " 設定編碼為 UTF-8
set number                      " 顯示行號
"set relativenumber              " 顯示相對行號

" 顯示行尾空格和 TAB 符號
set list
set listchars=tab:»\ ,trail:·

" 開啟自動縮排和選擇顏色主題
set smartindent
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4

" 啟用語法高亮
syntax enable
