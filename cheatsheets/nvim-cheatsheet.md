# Neovim Navigation Cheat Sheet

## NERDTree
- `:NERDTree` - Open NERDTree
- `:NERDTreeToggle` - Toggle NERDTree open/close
- `:NERDTreeFind` - Open NERDTree and find the file in the current buffer
- `C` - Set the selected directory as the root of the NERDTree

## Window Management
- `:split` or `:sp` - Open a new window horizontally
- `:vsplit` or `:vsp` - Open a new window vertically
- `Ctrl-w h` - Move to the window on the left
- `Ctrl-w j` - Move to the window below
- `Ctrl-w k` - Move to the window above
- `Ctrl-w l` - Move to the window on the right
- `Ctrl-w r` - Rotate windows right
- `Ctrl-w R` - Rotate windows left
- `Ctrl-w =` - Make all windows the same size
- `:q` - Close the current window (and quit Neovim if it's the last window)
- `Ctrl-w >` - Increase the width of the current window by one column.
- `Ctrl-w <` - Decrease the width of the current window by one column.
- `Ctrl-w +` - Increase the height of the current window by one row.
- `Ctrl-w -` - Decrease the height of the current window by one row.

## File Navigation
- `:edit <file>` or `:e <file>` - Open a file
- `:edit` or `:e` - Reloads your file (no file included)
- `:bnext` or `:bn` - Go to the next buffer
- `:bprev` or `:bp` - Go to the previous buffer
- `:bdelete` or `:bd` - Delete a buffer (close a file)

## Sessions
- `:mksession ~/.config/nvim/sessions/my-session.vim`
- `:source ~/.config/nvim/sessions/my-session.vim`
- `nvim -S ~/.config/nvim/sessions/my-session.vim`

## Plug plugin manager
- `:PlugStatus` - List all plugins with their installation status
- `:PlugUpdate` - updates and install plugins
- `:PlugClean` - removes unused plugins

## Lua
- `:luafile %` - Source your ~/.config/nvim/init.lua

## Terminal
- `:terminal` - Open a new terminal in a split window.
- `:q` - Close the active window.
- `:hide` - Hide the active window but keep the process running.
- `:buffer <number>` - Switch to the buffer with the given number.

## Git
- `:Git branch` - show local branches
- `:Telescope git_branches` - Open a list of branches and checkout the selected branch.
- `:Glog` - Show a list of commits.
- `Enter` - Open the highlighted commit in the :Glog window.

## Practice
- `:VimBeGood whackamole`