
function! _EscapeText_stata(text)
  let remove_comments = substitute(a:text, '///[^\n]*\n', ' ', 'g')
  let remove_comments = substitute(remove_comments, '/\*.\{-}\*/', '', 'g')
  let remove_comments = substitute(remove_comments, '//[^\n]*', '', 'g')
  let remove_comments = substitute(remove_comments, '\s//[^\n]*', '', 'g')
  return remove_comments
endfunction

