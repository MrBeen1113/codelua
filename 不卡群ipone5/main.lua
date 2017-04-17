init("com.tencent.xin",0);
mSleep(1500);
luaExitIfCall(true);

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

for var= 1, 10000000000000000000000000000 do

     mSleep(500);
--点击加号
     touchDU(588,86);
	 mSleep(500);
--点击发起群聊
     touchDU(470,200);
	  mSleep(900);
--点击两个好友

     touchDU(200,570);
	 mSleep(40);
     touchDU(200,670);
	 mSleep(200);
--点击确定
     mSleep(1500);
	 x,y = findMultiColorInRegionFuzzy( 0x20d81f, "-1|8|0x20d81f,6|19|0x21b821,20|8|0x20ad20,41|-3|0x20d81f,41|5|0x20d81f,52|19|0x20d81f,33|14|0x20d81f,28|19|0x20d81f,22|7|0x1fcf1e", 90, 0, 0, 639, 120); 
    -- x,y = findMultiColorInRegionFuzzy( 0x007700, "-3|7|0x1b5330,-3|11|0x095b13,9|11|0x407541,20|8|0x3d4140,27|-3|0x159524,34|5|0x294b32,33|17|0x297131,48|7|0x29683b,70|0|0x22bb22", 90, 510, 60, 620, 110);
	 if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
		mSleep(60); 
	 	touchDU(x,y);
	 end
	 mSleep(2500);
--点击双小人
     touchDU(587,90);
 
	 mSleep(1000); 
--判断是否为不卡群
    mSleep(1000);
	x,y = findMultiColorInRegionFuzzy( 0xffffff, "-4|12|0xffffff,9|12|0xffffff,4|21|0xffffff,20|1|0xd8e8ff,14|11|0xffffff,26|11|0xffffff,21|20|0xffffff,34|5|0xcbe0ff,41|20|0x83b5ff", 100, 202, 187, 200, 222);
	if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
		mSleep(1000); 
		touchDU(70,84);
		mSleep(800);
		touchDU(70,84);
		mSleep(500);
	else
		toast("没有001");
		mSleep(1000);
		
		MouveDU(200,1050,900,90);
		
		mSleep(500);
		touchDU(220,1080);
		mSleep(500);
		touchDU(220,970);
		mSleep(500);
	end
end