local utils = require('dashboard.utils')
local package_manager_stats = utils.get_package_manager_stats()

require("dashboard").setup {
  theme = 'doom',
  config = {
    header = {
      '',
         [[      ^!          :^        ]],
         [[    ^?YY7.        ~Y?^      ]],
         [[  :7YYYJJJ^       ^YYY?^    ]],
         [[  ~77?YYJJJJ!.     ^YYYYY7  ]],
         [[  ~7777JJ??JJ?:    ^YJJJY7  ]],
         [[  ~7!!!!7??????~   ^JJJJJ7  ]],
         [[  ~!!!!!:^??????7. :JJJJJ7  ]],
         [[  ~!!!!!: .!??????^:J???J7  ]],
         [[  ^!!!!!:   ~??????7?????!  ]],
         [[  ^!!!!!:    :7?????J????!  ]],
         [[  ^!~~~!:      ~??7?JJ???!  ]],
         [[   :^~~~.       :77???J7^   ]],
         [[    .^~.        .~??7^      ]],
         [[      ..          ^^        ]],

      -- [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ]],
      -- [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║ ]],
      -- [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ]],
      -- [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ]],
      -- [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ]],
      -- [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ]],
      '',
      '',
      '',
    },
    icon_hl = 'Title',
    center = {
      {
        icon = '  ',
        icon_hl = 'Title',
        desc = 'New Buffer',
        key = 'n',
        keymap = 'SPC b',
        key_hl = 'Number',
        action = 'enew'
      },
      {
        icon = '󰱼  ',
        icon_hl = 'Title',
        desc = 'Open File',
        key = 'f',
        keymap = 'SPC f f',
        key_hl = 'Number',
        action = 'Telescope find_files'
      },
      {
        icon = '  ',
        icon_hl = 'Title',
        desc = 'Find Dotfiles',
        key = 'd',
        keymap = 'SPC f d',
        key_hl = 'Number',
        action = 'lua print(3)'
      },
      {
        icon = '󰚰  ',
        icon_hl = 'Title',
        desc = 'Update Plugins',
        key = 'u',
        key_hl = 'Number',
        action = 'Lazy update'
      },
      {
        icon = '󰋖  ',
        icon_hl = 'Title',
        desc = 'Open Cheat Sheet',
        key = 'c',
        keymap = 'SPC c h',
        key_hl = 'Number',
        action = 'NvCheatsheet'
      }

    },
    footer = {
      "",
      package_manager_stats.count .. ' plugins loaded in ' .. package_manager_stats.time .. ' ms',
      "",
      "󰌠  󱘗  󰢱  󰌝"
    }  --your footer
  }
  }
