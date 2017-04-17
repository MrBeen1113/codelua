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
	mSleep(300)
end


for i= 1, 10000000000000000000000000000 do
     toast(i);
     mSleep(500);
--点击加号
     touchDU(1476,84);
	 mSleep(500);
--点击发起群聊
     
     touchDU(1377,200);
	  mSleep(900);
--点击两个好友

     touchDU(200,560);
	 mSleep(40);
     touchDU(200,960);
	 mSleep(1000);
--点击确定
     mSleep(400);
	 --x,y = findMultiColorInRegionFuzzy( 0x1fb81f, "-1|11|0x20d81f,5|14|0x20d81f,18|-1|0x20d81f,18|9|0x20ad20,21|9|0x20d31f,22|20|0x20c61f,14|15|0x244c26,16|10|0x218722,16|9|0x1fc51f", 80, 1400, 60, 1510, 110); 
    x,y = findMultiColorInRegionFuzzy( 0x20d81f, "1|7|0x29a828,4|8|0x20d81f,13|12|0x375d39,18|3|0x39423c,18|3|0x39423c,14|9|0x20d81f,11|17|0x403f42,41|14|0x317f33,44|21|0x20d81f", 90, 1400, 60, 1510, 110);
	 if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
		mSleep(60); 
		touchDU(x,y);
	 end
	 mSleep(2500);
--点击双小人
     touchDU(1478,87);
	 mSleep(1500); 
--判断是否为不卡群
     mSleep(1200);
	x,y = findMultiColorInRegionFuzzy( 0xffffff, "-4|12|0xffffff,9|12|0xffffff,4|21|0xffffff,20|1|0xd8e8ff,14|11|0xffffff,26|11|0xffffff,21|20|0xffffff,34|5|0xcbe0ff,41|20|0x83b5ff", 100, 721, 187, 776, 222);
	if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
		mSleep(1200); 
		touchDU(70,84);
		mSleep(1200);
		touchDU(70,84);
		mSleep(1200);
	else
		toast("没有001");
		mSleep(500);
		touchDU(770,2015);
		mSleep(500);
		touchDU(770,1100);
		mSleep(500);
	end
end