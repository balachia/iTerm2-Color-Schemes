
# Blazer -- Dark
set -g status-style bg='#0d1926',fg='#d9e6f2'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#0d1926'
set -g window-status-current-style bg=colour8,fg='#0d1926',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
