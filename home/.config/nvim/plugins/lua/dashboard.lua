local g = vim.g
local os = require("os")


g.dashboard_default_executive = 'telescope'
g.dashboard_diable_statusline = 1

local readlines = function(path)
    local lines = {}

    for line in io.lines(path) do
      table.insert(lines, line)
    end

    return lines
end

g.dashboard_custom_header = readlines(os.getenv("HOME") .. "/.config/nvim/ascii")

g.dashboard_custom_section = {
	a = { description = { 'RECENT FILES' }, command = 'Telescope oldfiles' },
	b = { description = { 'NEW FILE' }, command = 'DashboardNewFile' },
  c = { description = { 'FIND FILES' }, command = 'Telescope find_files' },
	d = { description = { 'UPDATE PLUGINS' }, command = 'PlugUpdate' },
	e = { description = { 'CLEANUP' }, command = 'PlugClean' },
  f = { description = { 'QUIT' }, command = 'quit' },
}

--       
g.dashboard_custom_footer = {
  'N E O V I M',
}
