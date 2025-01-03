-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 通过conda设置python环境
if vim.loop.os_uname().sysname == "Darwin" then
  -- macOS 环境
  vim.g.python_host_prog = '/opt/anaconda3/envs/nvim/bin/python'
  vim.g.python3_host_prog = '/opt/anaconda3/envs/nvim/bin/python'
elseif vim.loop.os_uname().sysname == "Windows_NT" then
  -- Windows 环境
  vim.g.python_host_prog = 'C:\\Users\\ZOU\\anaconda3\\envs\\nvim\\python.exe'
  vim.g.python3_host_prog = 'C:\\Users\\ZOU\\anaconda3\\envs\\nvim\\python.exe'
else
  -- Ubuntu 环境
  vim.g.python_host_prog = '/home/zou/anaconda3/envs/nvim/bin/python'
  vim.g.python3_host_prog = '/home/zou/anaconda3/envs/nvim/bin/python'
end
