
# AtomOneLight -- Dark
set -g status-style bg='#f9f9f9',fg='#2a2c33'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#f9f9f9'
set -g window-status-current-style bg=colour8,fg='#f9f9f9',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
