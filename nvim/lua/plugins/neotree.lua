local windowopts = {
	position = "left",
	width = 30,
	mapping_options = {noremap=true, nowait=true},
	mappings = {
		["d"] = "delete",
		["r"] = "rename",
		["m"] = "move",
		["c"] = "copy",
		["l"] = "open",
		["A"] = "add_directory",
		["a"] = "add",
		["h"] = "close_node",
		["H"] = "close_all_nodes",
		["s"] = "open_vsplit",
		["S"] = "open_split",
	}
}

local diropts = {
	{"indent"}, {"icon"}, {"current_filter"},
	{"container",
		content = {
			{ "diagnostics",
				errors_only = true,
				zindex = 20,
				align = "right",
				hide_when_expanded = false,
				symbols = {hint="", info="", warn="", error=""},
			},
			{"name", zindex=10}, {"file_size", zindex=10, align="right"}, {"type", zindex=10, align="right"}, {"last_modified", zindex=10, align="right"},
		},
	},
}

local fileopts = {
	{"indent"}, {"icon"},
	{ "container",
		content = {
			{ "diagnostics",
				zindex = 20,
				align = "right",
				symbols = {hint="", info="", warn="", error=""},
			},
			{ "git_status",
				zindex = 10,
				align = "right",
				symbols = {added="A", deleted="D", modified="M", renamed="R", untracked="U", ignored="I", conflict="C", unstaged="", staged=""}
			},
			{"name", zindex=10}, {"file_size", zindex=10, align="right"}, {"type", zindex=10, align="right"}, {"last_modified", zindex=10, align="right"},
		},
	},
}

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},

	config = function()
		local nt = require("neo-tree")

		nt.setup({
			filesystem = {
				hijack_netrw_behavior = "open_default",
				window = windowopts,
				filtered_items = {visible=false, hide_dotfiles=false, hide_gitignored=false, hide_by_name={".git"}}
			},
			default_component_configs = {
				indent = {with_markers=false, indent_size=2},
				modified = {symbol = "", highlight = "NeoTreeModified"},
			},
			renderers = {
				directory = diropts,
				file = fileopts,
				message = {{"indent", with_markers=false}, {"name", highlight = "NeoTreeMessage"}},
				terminal = {{"indent"}, {"icon"}, {"name"}, {"bufnr"}}
			},
		})
	end
}