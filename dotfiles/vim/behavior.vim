" appearance & behavior
		" reduce delays
		set ttimeoutlen=5
		
	    " allow us to use Ctrl-s and Ctrl-q as keybinds
		silent !stty -ixon

		set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyukop[]asdfgihjl\\;'zxcvbnm\\,.~QWERTYUKOP{}ASDFGIHJL:\\"ZXCVBNM<>
		imap х <esc>

		" enable syntax highlighting
		filetype plugin on
		syntax on

        " spell check
		set spelllang=en_us,ru 
		
		" use line number for every file opened
		set number

		" remove annoyng warning of existing swap files
		set shortmess+=A

		" set current command combination
		set showcmd

		" enable mouse wheel scrollin
		set mouse=a

		" system clipboard configuration
		set clipboard=unnamedplus

		" store swap files separately
		set backupdir=/tmp//
		set directory=/tmp//

        set showbreak=^

		" set tab to spaces
		set tabstop=4

		" left lines before/after cursor when scrolling
		set scrolloff=8

		" enable multiline edit
		set virtualedit=all

		highlight Search ctermbg=7*
