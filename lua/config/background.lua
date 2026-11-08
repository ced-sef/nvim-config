-- background transparency

local groups = {
	"Normal",
	"NormalNC",
	"SignColumn",
	"EndOfBuffer",
	"LineNr",
	"FoldColumn",
}

for _, group in ipairs(groups) do
	vim.cmd.highlight(group .. " guibg=NONE ctermbg=NONE")
end


