
# PencilLight -- Dark
set -g status-style bg='#f1f1f1',fg='#424242'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#f1f1f1'
set -g window-status-current-style bg=colour8,fg='#f1f1f1',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
