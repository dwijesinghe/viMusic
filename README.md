# viMusic

### Chords tab-writing plugin for Vim

This plugin can be triggered to enable a bunch of useful functions for adding chords to lyrics in Vim.

# Installation

## Install using Pathogen 

(These instructions are based on iVantage's current system, which uses Windows and gVim. For Linux change /vimfiles/ to /.vim/)

FileRefresh is packaged to be easily downloadable/updateable via the Pathogen plugin.

1. Install [pathogen.vim] into `~/.vim/autoload/` (see [pathogen's
   readme][install-pathogen] for more information.)

[pathogen.vim]: http://www.vim.org/scripts/script.php?script_id=2332
[install-pathogen]: https://github.com/tpope/vim-pathogen#installation

2. Enable pathogen in your vimrc:

   ```vim
   call pathogen#infect()
   ```

3. Create the directory `~/vimfiles/bundle/`:

        mkdir ~/vimfiles/bundle

4. Clone the `viMusic` repo into `~/vimfiles/bundle/`:

        git clone https://github.com/DWijesinghe/viMusic.git ~/vimfiles/bundle/viMusic/

To Update:
Run git pull from within ~/vimfiles/bundle/viMusic/

## Install using Zip file

The plugin can also be installed by downloading the zip file and copying the two vim files to your user directory. You can then enable the plugin on startup by adding the following two lines to your .vimrc file:
 
 ```vim
 :source ~/viMusic.vim
 ```

#Usage

Once you've written your lyrics (in Vim, because you're awesome!), you can launch viMusic with this creatively-named command:
```vim
:call LaunchViMusic() 
```

To add a blank chord line above a lyric line use this command (for all of these, replace '\' with whatever your leader key is):
```vim
\s
```

To add a chord at the cursor's current spot in the lyric line to the above chord line use this command (you must first add a chord line using the command above):
```vim
:C -desired chord-
```

For example:
```vim
:C F#m
```

To copy chord lines from one set of lyric lines to another, select the desired chord lines in a visual selection. Include the lyric lines in between the chord lines, but do not include the lyric line under the last copied chord line. Then type:
```vim
\c
```

To paste the copied chord lines, move the cursor to the start of the lyric lines you want to paste the chords to. Note that these do not need (and should not have) chord lines above them already. Then type:
```vim
\p
```

If you want to change the key of the song you're writing, use the +/- keys to raise all the Chords a half step.

## License 

(The MIT License)

Copyright (c) 2011

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
