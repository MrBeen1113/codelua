init("com.tencent.xin",0);
mSleep(1500);
luaExitIfCall(true)
w, h = getScreenSize(); --获取屏幕分辨率函数
if w == 1536 and h == 2048 then --获取的屏幕分辨率如果满足W.H 则。
	--iPad 3,4,5，mini2，mini3，air，air2
else--如都不满足
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
--///////////////////////////////////////
--滑动函数
function MouveDU(tx,ty,cd,bc)

	     touchDown(1, tx, ty); --在 (150, 550) 按下
        for i = 0, cd, bc do   --使用for循环从起始点连续横向移动到终止点
        touchMove(1, tx , ty - i );    
        
        mSleep(40);        --延迟
        end
         touchUp(1, tx, ty - cd)
        mSleep(100)
end
-----------------------------

initLog("WXQF",0); --记录日志

  for i=0 ,6000000000,1 do
    init("com.tencent.xin",0);
mSleep(1500);
luaExitIfCall(true)
w, h = getScreenSize(); --获取屏幕分辨率函数
if w == 1536 and h == 2048 then --获取的屏幕分辨率如果满足W.H 则。
	--iPad 3,4,5，mini2，mini3，air，air2
else--如都不满足
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
--///////////////////////////////////////
--滑动函数
function MouveDU(tx,ty,cd,bc)

	     touchDown(1, tx, ty); --在 (150, 550) 按下
        for i = 0, cd, bc do   --使用for循环从起始点连续横向移动到终止点
        touchMove(1, tx , ty - i );    
        
        mSleep(40);        --延迟
        end
         touchUp(1, tx, ty - cd)
        mSleep(100)
end
-----------------------------

initLog("WXQF",0); --记录日志

  for i=0 ,6000000000,1 do
     touchDU( 1200, 750);--点击程序员卡片
	 touchDU( 1200, 775);--点击程序员卡片
	 mSleep(1000);
	 touchDU( 524, 1900);--点击输入
	 mSleep(800);
	 string = readPasteboard();  --读出剪贴板内容
     mSleep(500);                --延迟 0.5 秒
     inputText(string);          --写出字符串
	 mSleep(1000);
	 touchDU(824,1900); --点击空格
	 mSleep(500); 
	 touchDU(1250,1900);--点击发送
	 mSleep(2000);
	 touchDU( 200, 230);--点击返回
	 mSleep(1500);
	 MouveDU(200,1208,570,40);
     mSleep(2000);   
 end
	closeLog("WXQF");  
	 mSleep(1000);
	 touchDU( 524, 1900);--点击输入
	 mSleep(800);
	 string = readPasteboard();  --读出剪贴板内容
     mSleep(500);                --延迟 0.5 秒
     inputText(string);          --写出字符串
	 mSleep(1000);
	 touchDU(824,1900); --点击空格
	 mSleep(500); 
	 touchDU(1250,1900);--点击发送
	 mSleep(2000);
	 touchDU( 200, 230);--点击返回
	 mSleep(1500);
	 MouveDU(200,1608,1300,40);
     mSleep(2000);   
 end
	closeLog("WXQF");  