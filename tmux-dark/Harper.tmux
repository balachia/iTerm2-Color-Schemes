
# Harper -- Dark
set -g status-style bg='#010101',fg='#a8a49d'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#010101'
set -g window-status-current-style bg=colour8,fg='#010101',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
