
# Red Sands -- Dark
set -g status-style bg='#7a251e',fg='#d7c9a7'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#7a251e'
set -g window-status-current-style bg=colour8,fg='#7a251e',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
