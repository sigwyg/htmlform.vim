
" ChangeUL
function! ChangeUL() range
    let l:count = a:firstline

    while l:count <= a:lastline
        let l:str = getline(l:count)
        let l:out = substitute(l:str, '^\s\+\(.\+\)', '<li>\1<\/li>', '')
        call setline(l:count, l:out)
        let l:count = l:count + 1
    endwhile

    call append(a:lastline, '</ul>')
    call append(a:firstline - 1, '<ul>')
endfunction


" ChangeTable
function! ChangeTable() range
    let l:count = a:firstline

    while l:count <= a:lastline
        let l:str = getline(l:count)
        let l:out = substitute(l:str, '\s\{2,}', '</td><td>', '')
        let l:out = '<tr><td>' . l:out . '</td></tr>'
        call setline(l:count, l:out)
        let l:count = l:count + 1
    endwhile

    call append(a:lastline, '</table>')
    call append(a:firstline - 1, '<table>')
endfunction







