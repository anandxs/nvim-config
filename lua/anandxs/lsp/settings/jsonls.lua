-- Find more schemas here: https://www.schemastore.org/json/
local default_schemas = nil
local schemas = {
    {
	description = "TypeScript compiler configuration file",
	fileMatch = {
	    "tsconfig.json",
	    "tsconfig.*.json",
	},
	url = "https://json.schemastore.org/tsconfig.json",
    },
    {
	description = "Prettier config",
	fileMatch = {
	    ".prettierrc",
	    ".prettierrc.json",
	    "prettier.config.json",
	},
	url = "https://json.schemastore.org/prettierrc",
    },
    {
	description = "Packer template JSON configuration",
	fileMatch = {
	    "packer.json",
	},
	url = "https://json.schemastore.org/packer.json",
    },
    {
	description = "NPM configuration file",
	fileMatch = {
	    "package.json",
	},
	url = "https://json.schemastore.org/package.json",
    },
}

local function extend(tab1, tab2)
    for _, value in ipairs(tab2 or {}) do
	table.insert(tab1, value)
    end
    return tab1
end

local extended_schemas = extend(schemas, default_schemas)

local opts = {
    settings = {
	json = {
	    schemas = extended_schemas,
	},
    },
    setup = {
	commands = {
	    Format = {
		function()
		    vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line "$", 0 })
		end,
	    },
	},
    },
}

return opts
