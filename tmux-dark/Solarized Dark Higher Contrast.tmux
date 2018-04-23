
# Solarized Dark Higher Contrast -- Dark
set -g status-style bg='#001e27',fg='#9cc2c3'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#001e27'
set -g window-status-current-style bg=colour8,fg='#001e27',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
