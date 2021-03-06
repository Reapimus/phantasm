local Libraries = script.Parent.Parent.Libraries
local Util = require(Libraries.Util)

return {
	Properties = {
		FormatString = {
			Type = "string";
			Default = "%c";
		};
		Time = {
			Type = "number";
			Default = 0;
		};
	};
	ReturnType = "string";
	Category = "Time";
	Description = "Returns a formatted date string";
	Run = function(element, arguments)
		return os.date(arguments.FormatString, arguments.Time > 0 and arguments.Time or nil)
	end;
}