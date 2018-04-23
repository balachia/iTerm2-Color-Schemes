
# SeaShells -- Dark
set -g status-style bg='#09141b',fg='#deb88d'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#09141b'
set -g window-status-current-style bg=colour8,fg='#09141b',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
