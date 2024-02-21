local status, vtext = pcall(require, "nvim-dap-virtual-text")
if not status then
	return
end

vtext.setup()
