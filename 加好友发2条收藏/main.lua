--作者：赵鹏
--tjzhaopeng@hotmail.com
init("0",0);
luaExitIfCall(true)
mSleep(1700);

--/////////////////////////
function touchDU(x,y)  
	wLog("WX","touchDU点击:"..(x)..","..(y)..")")
	touchDown(1,x,y)
	mSleep(30)
	touchUp(1,x,y)
end
--/////////////////////////////////////
function isColor(x,y,c,s)
	local fl,abs = math.floor,math.abs
	s = fl(0xff*(100-s)*0.01)
	local r,g,b = fl(c/0x10000),fl(c%0x10000/0x100),fl(c%0x100)
	local rr,gg,bb = getColorRGB(x,y)
	if abs(r-rr)<s and abs(g-gg)<s and abs(b-bb)<s then
		return true
	end
end
--竖直滑动函数
function MouveDU(tx,ty,cd,bc)
	touchDown(1, tx, ty); --在 (150, 550) 按下
	for i = 0, cd, bc do   --使用for循环从起始点连续横向移动到终止点
		touchMove(1, tx , ty - i );    
		mSleep(40);        --延迟
	end
	touchUp(1, tx, ty - cd)
	mSleep(300)
end
--横向滑动函数
function MouveHU(tx,ty,cd,bc)
	touchDown(1, tx, ty); --在 (150, 550) 按下
	for i = 0, cd, bc do   --使用for循环从起始点连续横向移动到终止点
		touchMove(1, tx - i, ty );    
		mSleep(40);        --延迟
	end
	touchUp(1, tx - cd, ty );
	mSleep(300)
end

--发送2条收藏消息
function sendshoucang(x)
	
	mSleep(1500);
	 touchDU(1470,1988);--点击加号
	mSleep(1500);
	 touchDU(1270,1870);--进去收藏
	 mSleep(2000);
	 touchDU(450,380);--点击分享1内容
	 mSleep(1500);
	x,y = findMultiColorInRegionFuzzy( 0xa0d793, "9|-3|0xc4e3b4,8|7|0x40b93c,4|17|0xaedca0,25|13|0x37b734,33|14|0x5ac255,39|4|0x1aad19,45|-8|0x78cd73,44|18|0x37b735,44|13|0xeff6e5", 90, 760, 960, 1060, 1600) 
     touchDU(x + 10, y + 10);--点击发送
     mSleep(1200);
	
	 touchDU(1270,1870);--进去收藏
	 mSleep(2000);
	 touchDU(450,750);--点击分享2内容
	 mSleep(1500);
	 x,y = findMultiColorInRegionFuzzy( 0xa0d793, "9|-3|0xc4e3b4,8|7|0x40b93c,4|17|0xaedca0,25|13|0x37b734,33|14|0x5ac255,39|4|0x1aad19,45|-8|0x78cd73,44|18|0x37b735,44|13|0xeff6e5", 90, 760, 960, 1060, 1600) 
     touchDU(x + 10, y + 10);--点击发送
     mSleep(1500); 

	 touchDU(80,85);
end
---////////////////////////////////////

function fatwocang(q)
	mSleep(1200);
x,y = findMultiColorInRegionFuzzy( 0xffffff, "-16|-5|0x1aad19,-13|24|0x1aad19,16|12|0x2ab329,29|19|0x4cbf4b,34|27|0x1aad19,36|14|0xebf8eb,43|6|0xffffff,40|-6|0x1aad19,40|-12|0x1aad19", 90, 1400, 120, 1535, 2047);
if x ~= -1 and y ~= -1 then        --如果在指定区域找到某图片符合条件
	touchDU(x + 10, y + 10);--点击接受
     mSleep(3500);
	
	x,y = findMultiColorInRegionFuzzy( 0xffffff, "-4|17|0x93d993,-3|42|0x1aad19,3|28|0x1aad19,6|23|0x95d995,17|22|0x1aad19,30|20|0x1faf1e,36|25|0x1aad19,33|22|0xffffff,39|22|0xc5eac5", 90, 40, 880, 1366, 985);
	if x ~= -1 and y ~= -1 then        --如果在指定区域找到某图片符合条件
	     mSleep(600); 
		 touchDU(x + 10, y + 10);--点击发信息
		 touchDU(x + 5, y + 5);--点击发信息 
         mSleep(1200);
		 sendshoucang(1);--
         mSleep(1200); 
		 touchDU(655, 2000);--点击
		 mSleep(1200); 
		 touchDU(300, 260);--点击 
		 mSleep(500);
    else
	    mSleep(500);
	    x,y = findMultiColorInRegionFuzzy( 0x007aff, "6|12|0x007aff,5|27|0x007aff,16|19|0x007aff,39|12|0x007aff,40|2|0x007aff,55|21|0x4b9ef9,47|21|0x77b3f6,47|5|0x007aff,54|26|0x007aff", 90, 500, 1060, 766, 1150)
	    mSleep(300);
		touchDU(x + 10, y + 10);--点击取消
		mSleep(1200);
		touchDU(760, 20);--点击
		mSleep(200);
		touchDU(760, 20);--点击
		mSleep(2000);
	end
 else
	 mSleep(1200); 
	 MouveDU(200,1208,400,40);
	 mSleep(1200);  
  end
end

initLog("WX",0); --记录日志
for i=0 ,6000000000,1 do
	fatwocang(1);
	
 end

closeLog("WX");