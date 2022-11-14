# dotfiles
A few conf files and little snippets to make the linux life better.

- `.tmux.conf`: clean tmux configuration to have mouse enabled, base-index 1, vi keys. Not a huge fan of C-a, therefore I keep C-b. Also, some
graphical tuning like colors, date in yyyy-mm-dd (the only right way to write a date), etc. Some nice active window "highlighting" and a
different status-bar color to quickly identify SSH connections.

- `.zshrc`: standard zshrc file that relies on oh-my-zsh and p10k. Vim editor, alias to show public ip to set up dns in router and tkill to kill tmux server.
Finally couple of functions, one to compile files .tex and clean up from additional files created, and one to create a 3-pane session in tmux with htop on top,
julia bottom-left and terminal bottom-right.
