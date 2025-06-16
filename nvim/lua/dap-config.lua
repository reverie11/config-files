--	SETUP
local dap, dapui = require('dap'), require("dapui")

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

dapui.setup()

-- ADAPTERS
dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = '/home/reverie/programs/nvim-dap-files/extension/debugAdapters/bin/OpenDebugAD7',
}
dap.adapters.lldb = {
	id = 'lldb', 
	type = 'executable',
	command = 'lldb-dap',
}

dap.adapters.codelldb = {
	type = "server",
	port = "${port}",
    executable = {
        command = "codelldb",
        args = { "--port", "${port}" },
    },
}
-- CONFIG
dap.configurations.cpp = {
{
    name = "Debug main (local:lldb)",
    type = "lldb",
    request = "launch",
	program = "main",
    cwd = '${workspaceFolder}',
    stopAtEntry = false,
  },

  {
    name = "Debug main (server:codelldb)",
    type = "codelldb",
    request = "launch",
	program = "main",
    cwd = '${workspaceFolder}',
    stopAtEntry = false,
  },
  {
    name = "Launch file (cppdbg)",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:1234',
    miDebuggerPath = '/usr/bin/gdb',
    cwd = '${workspaceFolder}',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
  },
}

vim.g.mapleader = ","
vim.keymap.set('n', '<F4>', function() 
	require('dap').terminate() 
	require('dap').close() 
end)
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F6>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F7>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F8>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
  require('dap.ui.widgets').hover()
end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
  require('dap.ui.widgets').preview()
end)
vim.keymap.set('n', '<Leader>df', function()
  local widgets = require('dap.ui.widgets')
  local my_sidebar = widgets.sidebar(widgets.frames)
	my_sidebar.open()
end)
vim.keymap.set('n', '<Leader>ds', function()
  local widgets = require('dap.ui.widgets')
  local my_sidebar = widgets.sidebar(widgets.scopes)
	my_sidebar.open()
end)

