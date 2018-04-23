
# PencilDark -- Dark
set -g status-style bg='#212121',fg='#f1f1f1'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#212121'
set -g window-status-current-style bg=colour8,fg='#212121',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
