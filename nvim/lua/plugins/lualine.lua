local transparent = { bg = "NONE" }

return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = true,

		theme = "auto",

        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },

        globalstatus = true,
      },

      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch"},
        lualine_c = { "filename" },
		lualine_x = {'filetype'},
		lualine_y = {},
		lualine_z = {}
      },

      inactive_sections = {
        lualine_c = { "filename" },
        lualine_x = { "location" },
      },
    },
  },
}
