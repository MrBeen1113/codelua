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
---

for i=0 ,1000000000000000000000,1 do
	mSleep(1000);
	x,y = findMultiColorInRegionFuzzy( 0x1294cd, "-8|24|0x028dca,-6|28|0xffffff,-4|50|0xffffff,-4|58|0xfefefe,-10|54|0x018cc9,10|48|0x008cc9,2|78|0x058eca,38|42|0x058eca,-40|36|0x51b0da", 90, 1200, 130, 1310, 1948)
	if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
		mSleep(300);
	    touchDU(x + 10,y + 20); 	
	else
        mSleep(500);
		touchDU( 200, 900); 
		 mSleep(500);
		touchDU( 43, 85); 
         mSleep(1500);
	end 
	
end