
# Seafoam Pastel -- Dark
set -g status-style bg='#243435',fg='#d4e7d4'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#243435'
set -g window-status-current-style bg=colour8,fg='#243435',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
