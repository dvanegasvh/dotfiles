require('flow').setup {
  output = {
    buffer = false,
    split_cmd = '40split',
  },

  -- add/override the default command used for a perticular filetype
  -- the "%s" you see in the below example is interpolated by the contents of
  -- the file you are trying to run
  -- Format { <filetype> = <command> }
  filetype_cmd_map = {
    python = "python3 <<-EOF\n%s\nEOF",
    typescript = "ts-node <<-EOF\n%s\nEOF"
  }
}
