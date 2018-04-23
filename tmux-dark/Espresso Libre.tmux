
# Espresso Libre -- Dark
set -g status-style bg='#2a211c',fg='#b8a898'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#2a211c'
set -g window-status-current-style bg=colour8,fg='#2a211c',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
