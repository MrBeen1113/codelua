init("com.tencent.xin",0);
mSleep(1500);

local sz = require("sz");
local json = sz.json;

MyTable = {
	["style"] = "default",
  	["width"] = 500,
  	["height"] = 600,
  	["config"] = "config.dat",
  	["timer"] = 30,
  	views = {
        {
            ["type"] = "Label",
            ["text"] = "输入几秒",
            ["size"] = 20,
            ["align"] = "center",
            ["color"] = "0,0,255"
	    },
        {
            ["type"] = "Edit",
            ["prompt"] = "秒",
            ["text"] = 20,
            ["size"] = 15,
            ["align"] = "center",
            ["color"] = "255,0,0"
		},
    
}
}
local MyJsonString = json.encode(MyTable);
ret ,input1 = showUI(MyJsonString)--返回值ret是一个table

  while (1) do
	r = runApp("com.tencent.xin"); --启动应用
	mSleep(input1 * 1000);
	if r == 0 then
		closeApp("com.tencent.xin"); --退出应用
	else
		dialog("启动失败",1);
	end 
    mSleep(1000);

end