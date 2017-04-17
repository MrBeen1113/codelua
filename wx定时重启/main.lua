
local sz = require("sz");
local json = sz.json;

MyTable = {
	["style"] = "default",
	["width"] = 500,
	["height"] = 900,
	["config"] = "config.dat",
	["timer"] = 30,
	views = {
		{
			["type"] = "Label",
			["text"] = "year",
			["size"] = 20,
			["align"] = "center",
			["color"] = "255,0,0"
		},
		{
			["type"] = "Edit",
			["prompt"] = "输入年份",
			["text"] = 2015,
			["size"] = 15,
			["align"] = "center",
			["color"] = "0,0,0"
		},
		{
			["type"] = "Label",
			["text"] = "month",
			["size"] = 20,
			["align"] = "center",
			["color"] = "255,0,0"
		},
		{
			["type"] = "Edit",
			["prompt"] = "输入月份",
			["text"] = 1,
			["size"] = 15,
			["align"] = "center",
			["color"] = "0,0,0"
		},
		{
			["type"] = "Label",
			["text"] = "day",
			["size"] = 20,
			["align"] = "center",
			["color"] = "255,0,0"
		},
		{
			["type"] = "Edit",
			["prompt"] = "输入日子",
			["text"] = 1,
			["size"] = 15,
			["align"] = "center",
			["color"] = "0,0,0"
		},
		{
			["type"] = "Label",
			["text"] = "hour",
			["size"] = 20,
			["align"] = "center",
			["color"] = "255,0,0"
		},
		{
			["type"] = "Edit",
			["prompt"] = "输入小时",
			["text"] = 0,
			["size"] = 15,
			["align"] = "center",
			["color"] = "0,0,0"
		},
		{
			["type"] = "Label",
			["text"] = "min",
			["size"] = 20,
			["align"] = "center",
			["color"] = "255,0,0"
		},
		{
			["type"] = "Edit",
			["prompt"] = "分钟",
			["text"] = 0,
			["size"] = 15,
			["align"] = "center",
			["color"] = "0,0,0"
		},
		{
			["type"] = "Label",
			["text"] = "sec",
			["size"] = 20,
			["align"] = "center",
			["color"] = "255,0,0"
		},
		{
			["type"] = "Edit",
			["prompt"] = "秒",
			["text"] = 0,
			["size"] = 15,
			["align"] = "center",
			["color"] = "0,0,0"
		},

	}
}
local MyJsonString = json.encode(MyTable);
ret,input1,input2,input3,input4,input5,input6 = showUI(MyJsonString);--返回值ret是一个table

while (true) do
	

	time1 = getNetTime();--当前网络时间

	local tab = {year = input1, month = input2, day = input3, hour = input4,min= input5,sec= input6,isdst=false}

	time = os.time(tab) 

	if time1 > time then
		dialog("脚本开始运行", 3);

		r = runApp("com.tencent.xin"); --启动应用
		mSleep(8 * 1000);
		if r == 0 then
			dialog("微信运行", 3); 
			 lua_exit();
		else
			dialog("启动失败",3);
		end 
     
	end

end