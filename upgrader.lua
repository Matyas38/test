local x, y = term.getSize();
local title = "Matyas' CC Upgrader V1";

local tArgs = {...};

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
	term.setCursorPos(1, 10);

	print(tArgs[1]);

	local content = http.get("https://raw.githubusercontent.com/Matyas38/test/master/".. program ..".lua");
	local file = fs.open("/".. program ..".lua", "w");
	file.write(content.readAll());
	file.close();
end

main();