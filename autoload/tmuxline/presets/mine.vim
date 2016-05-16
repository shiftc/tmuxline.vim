fun! tmuxline#presets#mine#get()

  " tmux defaults:
  " status-right "#22T" %H:%M %d-%b-%y
  " status-left [#S]
  " windows #I:#W#F

  let bar = tmuxline#util#create_line_from_hash({
        \ 'a'   : '#S',
        \ 'win' : '#I:#W',
        \ 'cwin': '#W',
        \ 'x'   : '#H',
        \ 'y'   : '#(cut -d " " -f 1 /proc/loadavg)',
        \ 'z'   : '%D %H:%M',
        \ 'options': {
        \'status-justify': 'left'}
        \})

  return bar
endfun

