
# Solarized Darcula -- Light
set -g status-style bg='#3d3f41',fg='#d2d8d9'
set -g window-status-style bg=colour15,fg=colour8
#set -g window-status-style bg=colour7,fg=colour8
#set -g window-status-style bg=colour7,fg='#d2d8d9'
set -g window-status-current-style bg=colour8,fg='#3d3f41',bold
set -g window-status-format " #[fg=colour7]#I:#[default]#W#[fg=colour7]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
#set -g window-status-format " #[fg=colour15]#I:#[default]#W#[fg=colour15]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
