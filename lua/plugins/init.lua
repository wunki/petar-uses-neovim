-- only load Packer plugins in Neovim
if not vim.g.vscode then
    require('plugins.packer_compiled')
end
