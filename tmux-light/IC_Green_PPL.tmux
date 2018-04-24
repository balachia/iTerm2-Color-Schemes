
# IC_Green_PPL -- Light
set -g status-style bg='#3a3d3f',fg='#d9efd3'
set -g window-status-style bg=colour15,fg=colour8
#set -g window-status-style bg=colour7,fg=colour8
#set -g window-status-style bg=colour7,fg='#d9efd3'
set -g window-status-current-style bg=colour7,fg='#3a3d3f',bold
set -g window-status-format " #[fg=colour7]#I:#[default]#W#[fg=colour7]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
#set -g window-status-format " #[fg=colour15]#I:#[default]#W#[fg=colour15]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
