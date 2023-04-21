local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("anandxs.lsp.mason")
require("anandxs.lsp.handlers").setup()
