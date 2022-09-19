local x, y = term.getSize();
local title = "Matyas' CC Upgrader V1";

local args = {...};

print(args);
local program = "upgrader";

term.clear();

function printTitle()
	local line = 2;
	term.setCursorPos(1, line);
	for i = 2, x, 1 do write("-") end
	term.setCursorPos((x-title: len())/2, line+1);
	print(title);
	for i = 2, x, 1 do write("-") end
end

function main()
	printTitle();

	local content = http.get("https://raw.githubusercontent.com/Matyas38/test/master/".. program ..".lua");
	local file = fs.open("/upgrader.lua", "w");
	file.write(content.readAll());
	file.close();
end

main();