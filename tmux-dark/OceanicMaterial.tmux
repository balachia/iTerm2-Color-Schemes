
# OceanicMaterial -- Dark
set -g status-style bg='#1c262b',fg='#c2c8d7'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#1c262b'
set -g window-status-current-style bg=colour8,fg='#1c262b',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
