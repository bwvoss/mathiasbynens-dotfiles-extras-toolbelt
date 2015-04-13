#########################
#Vim
#########################

function add_to_vimrc() {
	echo "$1" >> ~/.vimrc
}

function add_vim_package() {
	git clone "$1" ~/.vim/bundle/"$2"
}

function install_pathogen() {
	rm -rf ~/.vim/autoload ~/.vim/bundle/ && \
	mkdir -p ~/.vim/autoload ~/.vim/bundle/ && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

install_pathogen

#Install vim packages
add_vim_package "https://github.com/kchmck/vim-coffee-script.git" "vim-coffee-script"
add_vim_package "https://github.com/scrooloose/nerdtree.git" "nerdtree"
add_vim_package "https://github.com/tpope/vim-fugitive" "vim-fugitive"

#Add pathogen to .vimrc
add_to_vimrc "execute pathogen#infect()"
add_to_vimrc "filetype plugin indent on"

#Write and Quit using leader instead of colon
add_to_vimrc "noremap <leader>w :w<CR>"
add_to_vimrc "noremap <leader>q :q<CR>"

#Leader space shortcut for :noh
add_to_vimrc "noremap <leader><Space> :noh<CR>"

#leader n for NERDTree toggling
add_to_vimrc "noremap <leader>n :NERDTreeToggle<CR>"

#Move lines up and down a row with leader j/k
add_to_vimrc "nnoremap <C-j> :m .+1<CR>=="
add_to_vimrc "nnoremap <C-k> :m .-2<CR>=="

#Move lines up and down a row with leader j/k in visual mode/multiple lines
add_to_vimrc "vnoremap <C-j> :m '>+1<CR>gv=gv"
add_to_vimrc "vnoremap <C-k> :m '<-2<CR>gv=gv"

#Search and replace with the current word
add_to_vimrc "vmap <leader>s :s/<C-R>//"
add_to_vimrc "map <leader>s :s/<C-R>//"

#Ack the current word
add_to_vimrc "nnoremap K :!ack \"<C-R><C-W>\"<Enter>"

#Normalize tabs
add_to_vimrc "set shiftwidth=2"
add_to_vimrc "set tabstop=2"

# Make sure solarized is set to the right termcolors
add_to_vimrc "let g:solarized_termcolors:256"
