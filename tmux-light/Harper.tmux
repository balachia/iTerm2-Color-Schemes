
# Harper -- Light
set -g status-style bg='#010101',fg='#a8a49d'
set -g window-status-style bg=colour7,fg=colour8
#set -g window-status-style bg=colour7,fg='#a8a49d'
set -g window-status-current-style bg=colour15,fg='#a8a49d',bold
set -g window-status-format " #[fg=colour15]#I:#[default]#W#[fg=colour15]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
