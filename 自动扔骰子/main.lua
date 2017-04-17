init("com.tencent.xin",0);
mSleep(1500);
luaExitIfCall(true)
w, h = getScreenSize(); --获取屏幕分辨率函数
if w == 1536 and h == 2048 then --获取的屏幕分辨率如果满足W.H 则。
	--iPad 3,4,5，mini2，mini3，air，air2
else
--if w == 640 and h == 1136 then --获取的屏幕分辨率如果满足W.H 则。
	--iPad 3,4,5，mini2，mini3，air，air2
--else--如都不满足
	dialog("该脚本不支持此分辨率的设备,仅支持iPad 3,4,5，mini2，mini3，air，air2",5)--提示
	lua_exit()--退出脚本
end
--点击函数
function touchDU(x,y)  
	wLog("WXQF","touchDU点击:"..(x)..","..(y)..")")
	touchDown(1,x,y)
	mSleep(30)
	touchUp(1,x,y)
end

function reng1()
	-- body
	touchDU(65,777);
	mSleep(100);
	touchDU(315,1100);
	mSleep(100);
	touchDU(390,790);
end
function reng2()
	-- body
	touchDU(150,777);
	mSleep(100);
	touchDU(315,1100);
	mSleep(100);
	touchDU(390,790);
end
function reng3()
	-- body
	touchDU(230,777);
	mSleep(100);
	touchDU(315,1100);
	mSleep(100);
	touchDU(390,790);
end
function reng4()
	-- body
	touchDU(320,777);
	mSleep(100);
	touchDU(315,1100);
	mSleep(100);
	touchDU(390,790);
end
function reng5()
	-- body
	touchDU(400,777);
	mSleep(100);
	touchDU(315,1100);
	mSleep(100);
	touchDU(390,790);
end
function reng6()
	-- body
	touchDU(490,777);
	mSleep(100);
	touchDU(315,1100);
	mSleep(100);
	touchDU(390,790);
end
-----------------------------------------------
local sz = require("sz");
local json = sz.json;
local w,h = getScreenSize();
MyTable = {
	["style"] = "default",
  	["width"] = w,
  	["height"] = h,
  	["config"] = "config.dat",
  	["timer"] = 10,
  	views = {
        {
            ["type"] = "Label",
            ["text"] = "骰子控制器",
            ["size"] = 24,
            ["align"] = "center",
            ["color"] = "0,0,255"
	    },
        {
            ["type"] = "Edit",
            ["prompt"] = "请输入数字",
            ["text"] = 123456,
            ["size"] = 15,
            ["align"] = "center",
            ["color"] = "0,0,225"
		},
        {
            ["type"] = "Edit",
            ["prompt"] = "延时：毫秒",
            ["text"] = 100,
            ["size"] = 15,
            ["align"] = "center",
            ["color"] = "0,0,225"
		},
    
}
}
local MyJsonString = json.encode(MyTable);
ret,input1,input2 = showUI(MyJsonString);--返回值ret是一个table


touchDU(530,1088);
mSleep(100);


	