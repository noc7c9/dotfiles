if env#is_win() && env#is_qt()
    " this uses a modified fzf vim plugin that runs this function before passing
    " the command to jobstart
    " it makes neovim directly run conemu (fullscreen with the fzf config)
    "
    " diff:
    "  - let cmd = 'start /wait cmd /c '.command
    "  + let cmd = FZF_rewrite_command(command)
    "    call jobstart(cmd, fzf)
    "
    function! FZF_rewrite_command(command)
        return "\"c:\\Program Files\\ConEmu\\ConEmu64.exe\" -fs -config fzf -run -cur_console:n " . a:command
    endfunction
endif
