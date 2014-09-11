let g:chordMarker = "|"

function! AddChordLine()
	:s/^/                                                           \r/g 
	:noh
endfunction

function! Chord(chordstr)
	:let chordLen = strlen(a:chordstr)
	:normal "kk"
	:while chordLen > 0
	:	execute ":normal x"
	: let chordLen -= 1
	:endwhile
	:execute ":normal i" . a:chordstr . g:chordMarker
endfunction

function! ChordCopy()
	:let g:numCLines = line("'>") - line("'<") + 1
	:let g:CLines = s:get_visual_selection() . "\n"
endfunction

function! ChordPaste()
	:let copyLines = g:numCLines - 1
	:execute ":normal i" . g:CLines
	:while copyLines > 0
	:	execute ":normal dd"
	:	execute ":normal " . copyLines . "k"
	:	execute ":normal Pjddj"
	:	let copyLines -= 2
	:	execute ":normal " . copyLines . "j"
	:endwhile
endfunction

function! RaiseHalf()
	:execute ":silent %s/A" . g:chordMarker . "/A#--" . g:chordMarker . "/ge"	
	:execute ":silent %s/A#" . g:chordMarker . "/B--" . g:chordMarker . "/ge"	
	:execute ":silent %s/B" . g:chordMarker . "/C--" . g:chordMarker . "/ge"	
	:execute ":silent %s/C" . g:chordMarker . "/C#--" . g:chordMarker . "/ge"	
	:execute ":silent %s/C#" . g:chordMarker . "/D--" . g:chordMarker . "/ge"	
	:execute ":silent %s/D" . g:chordMarker . "/D#--" . g:chordMarker . "/ge"	
	:execute ":silent %s/D#" . g:chordMarker . "/E--" . g:chordMarker . "/ge"	
	:execute ":silent %s/E" . g:chordMarker . "/F--" . g:chordMarker . "/ge"	
	:execute ":silent %s/F" . g:chordMarker . "/F#--" . g:chordMarker . "/ge"	
	:execute ":silent %s/F#" . g:chordMarker . "/G--" . g:chordMarker . "/ge"	
	:execute ":silent %s/G" . g:chordMarker . "/G#--" . g:chordMarker . "/ge"	
	:execute ":silent %s/G#" . g:chordMarker . "/A--" . g:chordMarker . "/ge"	
	:execute ":silent %s/--//ge" 
	:execute ":silent %s/Am" . g:chordMarker . "/A#m--" . g:chordMarker . "/ge"	
	:execute ":silent %s/A#m" . g:chordMarker . "/Bm--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Bm" . g:chordMarker . "/Cm--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Cm" . g:chordMarker . "/C#m--" . g:chordMarker . "/ge"	
	:execute ":silent %s/C#m" . g:chordMarker . "/Dm--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Dm" . g:chordMarker . "/D#m--" . g:chordMarker . "/ge"	
	:execute ":silent %s/D#m" . g:chordMarker . "/Em--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Em" . g:chordMarker . "/Fm--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Fm" . g:chordMarker . "/F#m--" . g:chordMarker . "/ge"	
	:execute ":silent %s/F#m" . g:chordMarker . "/Gm--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Gm" . g:chordMarker . "/G#m--" . g:chordMarker . "/ge"	
	:execute ":silent %s/G#m" . g:chordMarker . "/Am--" . g:chordMarker . "/ge"	
	:execute ":silent %s/--//ge" 
endfunction

function! DropHalf()
	:execute ":silent %s/A" . g:chordMarker . "/G#--" . g:chordMarker . "/ge"	
	:execute ":silent %s/A#" . g:chordMarker . "/A--" . g:chordMarker . "/ge"	
	:execute ":silent %s/B" . g:chordMarker . "/A#--" . g:chordMarker . "/ge"	
	:execute ":silent %s/C" . g:chordMarker . "/B--" . g:chordMarker . "/ge"	
	:execute ":silent %s/C#" . g:chordMarker . "/C--" . g:chordMarker . "/ge"	
	:execute ":silent %s/D" . g:chordMarker . "/C#--" . g:chordMarker . "/ge"	
	:execute ":silent %s/D#" . g:chordMarker . "/D--" . g:chordMarker . "/ge"	
	:execute ":silent %s/E" . g:chordMarker . "/D#--" . g:chordMarker . "/ge"	
	:execute ":silent %s/F" . g:chordMarker . "/E--" . g:chordMarker . "/ge"	
	:execute ":silent %s/F#" . g:chordMarker . "/F--" . g:chordMarker . "/ge"	
	:execute ":silent %s/G" . g:chordMarker . "/F#--" . g:chordMarker . "/ge"	
	:execute ":silent %s/G#" . g:chordMarker . "/G--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Am" . g:chordMarker . "/G#m--" . g:chordMarker . "/ge"	
	:execute ":silent %s/A#m" . g:chordMarker . "/Am--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Bm" . g:chordMarker . "/A#m--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Cm" . g:chordMarker . "/Bm--" . g:chordMarker . "/ge"	
	:execute ":silent %s/C#m" . g:chordMarker . "/Cm--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Dm" . g:chordMarker . "/C#m--" . g:chordMarker . "/ge"	
	:execute ":silent %s/D#m" . g:chordMarker . "/Dm--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Em" . g:chordMarker . "/D#m--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Fm" . g:chordMarker . "/Em--" . g:chordMarker . "/ge"	
	:execute ":silent %s/F#m" . g:chordMarker . "/Fm--" . g:chordMarker . "/ge"	
	:execute ":silent %s/Gm" . g:chordMarker . "/F#m--" . g:chordMarker . "/ge"	
	:execute ":silent %s/G#m" . g:chordMarker . "/Gm--" . g:chordMarker . "/ge"	
	:execute ":silent %s/--//ge" 
endfunction

function! LaunchViMusic()
	:command! -nargs=1 Ch call Chord(<f-args>)
	:command! -nargs=0 Co call ChordCopy()
	:command! -nargs=0 Pa call ChordPaste()
	:command! -nargs=0 Sp call SpaceLyrics()
	map <leader>c :call ChordCopy()<cr>
	map <leader>p :call ChordPaste()<cr>
	map <leader>s :call SpaceLyrics()<cr>
	map + :call RaiseHalf()<cr>
	map - :call DropHalf()<cr>
endfunction


"This function was taken from xolox of StackOverflow. Major props for this very useful function
function! s:get_visual_selection()
  " Why is this not a built-in Vim script function?!
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][col1 - 1:]
  return join(lines, "\n")
endfunction

