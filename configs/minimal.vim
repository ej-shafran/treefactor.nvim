set rtp+=.

let plugins = ["plenary.nvim"]
let locations = ["../%s", "~/.vim/plugged/%s", "~/.local/share/nvim/site/pack/packer/start/%s", "~/.local/share/lunarvim/site/pack/packer/start/%s", "~/.local/share/nvim/lazy/%s"]

for plugin in plugins
  for location in locations
    let rtp_path = printf(location, plugin)
    execute "set rtp+=" . rtp_path
  endfor
endfor

for plugin in plugins
  execute "runtime! plugin/" . plugin
endfor
