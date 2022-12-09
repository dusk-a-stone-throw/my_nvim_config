require('nvim-treesitter.configs').setup {
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {'#218a28', '#243ebf', '#cde327', '#bc1ad9', '#FF7034', '#d91a1a'}, -- table of hex strings
  }
}

