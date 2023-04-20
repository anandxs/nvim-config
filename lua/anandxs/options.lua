local options = {
    number = true,
    relativenumber = true,
    cursorline = true,
    shiftwidth = 4,
    wrap = false,
    scrolloff = 8,
    sidescrolloff = 8
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
