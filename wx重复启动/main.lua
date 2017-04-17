init("com.tencent.xin",0);
mSleep(1500);

for i=1,100000000000,1 do
	r = runApp("com.tencent.xin"); --启动应用
	mSleep(55 * 1000);
	if r == 0 then
		closeApp("com.tencent.xin"); --退出应用
	else
		dialog("启动失败",3);
	end 
    mSleep(1000);

end