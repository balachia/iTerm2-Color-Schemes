
# Nocturnal Winter -- Dark
set -g status-style bg='#0d0d17',fg='#e6e5e5'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#0d0d17'
set -g window-status-current-style bg=colour8,fg='#0d0d17',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
