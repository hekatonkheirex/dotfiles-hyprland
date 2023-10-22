require('dashboard').setup({
  theme = 'doom',
  config = {
    header = {
      '⠘⢗⡘⠄⠙⡄⠸⣵⣯⣿⣿⣿⣿⣿⡿⠃⠂⢸            ',
      '⣶⡯⢳⣆⠄⠄⠄⠄⣍⡛⠿⢿⡿⢋⠄⠄⠄⢜⣿⡿⡟⢿        ',
      '⣿⠿⣸⠟⠄⠄⠠⡄⠢⣉⣁⢀⣼⣿⡿⢅⣾⣎⠈⠃⠋⢸⣿       ',
      '⡟⣾⣿⡲⣷⡀⠄⢟⣂⡀⢙⣰⣭⣾⣿⣿⣿⣿⣆⠄⠄⠠⣬⠛⢿     ',
      '⣿⣿⣿⣿⠈⣧⠠⢈⣿⣿⣿⡿⢿⣿⢰⢟⣯⣷⣿⣿⣿⣿⣷⣶⣤⡉⠻   ',
      '⣾⣿⣿⠟⠄⣿⣇⠄⠄⢻⣿⣷⣦⣬⡘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠘⣿ ',
      '⠉⠄⠄⠄⢰⣿⣿⡆⠄⠄⠙⢿⣿⣿⣿⣿⣎⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠸ ',
      '⠄⠄⠄⠄⣿⣿⣿⡇⠄⠄⠄⠄⠙⢿⣿⣿⣿⣧⢹⣿⣿⣿⣿⣿⣿⡿⠃⠄⢀⣿',
      '⢀⠄⠄⠄⣿⣿⣿⡇⠄⠄⠄⠄⠄⠄⠙⢿⣿⣿⠄⣿⣿⣿⡿⠟⠋⠄⠄⢀  ',
      '⣰⠄⠄⠄⢿⣿⣿⣇⠄⠄⠄⠄⠄⠄⠄⠄⠉⠛⠐⠛⠝⠃⠄⠄⠄⣀    ',
      '⢻⠄⠄⠄⠈⢿⣿⣿⡀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣠      ',
      '⣿⣄⠁⠄⠄⠄⠉⠛⠓⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣠⣾       ',
      '                              ',
      '                                                       ',
      '                                                       ',
      ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
      ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
      ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
      ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
      ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
      ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
      '                                                       ',
      '                                                       ',
    },
    center = {
      {
        icon = '  ',
        icon_hi = 'Title',
        desc = 'Recently opened files                           ',
        desc_hi = 'String',
        key = 'fh',
        keymap = 'SPC f h',
        action = 'Telescope oldfiles',
      },
      {
        icon = '  ',
        icon_hi = 'Title',
        desc = 'Find File                           ',
        desc_hi = 'String',
        key = 'ff',
        keymap = 'SPC f f',
        aciton = 'Telescope find_files find_command=rg',
      },
      {
        icon = '  ',
        icon_hi = 'Title',
        desc = 'Config                ',
        desc_hi = 'String',
        key = 'fd',
        keymap = 'SPC f d',
        action = 'edit ~/.config/nvim/init.lua',
      },
    },
    footer = { "hekatonkheirex's neovim config" },
  },
})
