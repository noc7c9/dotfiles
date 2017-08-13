if env#is_qt()
    " this uses a modified fzf.vim that runs this function before writing the
    " command to the batch file, meaning fzf will directly run conemu
    function! FZF_rewrite_command(command)
        let prefix = "\"c:\\Program Files\\ConEmu\\ConEmu64.exe\" -nocloseconfirm -quitonclose -fs -config fzf -run"
        let command = substitute(a:command, '\^"', '', 'g')
        let command = prefix . " \"-cur_console:n " . command "\""
        return command
    endfunction
endif
