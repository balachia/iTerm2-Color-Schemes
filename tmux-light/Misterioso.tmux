
# Misterioso -- Light
set -g status-style bg='#2d3743',fg='#e1e1e0'
set -g window-status-style bg=colour7,fg=colour8
#set -g window-status-style bg=colour7,fg='#e1e1e0'
set -g window-status-current-style bg=colour15,fg='#e1e1e0',bold
set -g window-status-format " #[fg=colour15]#I:#[default]#W#[fg=colour15]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
