
# BlulocoLight -- Dark
set -g status-style bg='#f7f7f7',fg='#2a2c33'
set -g window-status-style bg=colour0,fg=colour7
#set -g window-status-style bg=colour0,fg='#f7f7f7'
set -g window-status-current-style bg=colour8,fg='#f7f7f7',bold
set -g window-status-format " #[fg=colour8]#I:#[default]#W#[fg=colour8]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
set -g window-status-current-format " #I:#W#[fg=colour6]#([[ '#F' != '' ]] && echo '#F' || echo ' ' )#[default] "
