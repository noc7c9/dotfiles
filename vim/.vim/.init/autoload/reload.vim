" Define a helper function that creates a command that will reload a script

function! reload#script(name, scriptfile)
    exec 'command! Reload' . a:name . ' source ' . a:scriptfile
endfunction
