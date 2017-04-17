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
---

function tianjiahaoyou()

	mSleep(1000);
	touchDU(600,1900);--点击通讯录1X
--touchDU(680,1450);--点击通讯录2X
	mSleep(1500);
	touchDU(560,600);--点击新的朋友1X
--touchDU(560,810);--点击新的朋友2X

	while( 1 )
	do

		--寻找 添加 四个字
		mSleep(1000);
		x,y = findMultiColorInRegionFuzzy( 0x454545, "2|17|0x9e9e9e,6|32|0x4b4b4b,24|40|0x464646,32|19|0xd6d6d6,62|10|0x454545,85|8|0x636363,79|33|0x5b5b5b,86|44|0x656565,96|28|0xf6f6f6", 90, 1180, 350, 1330, 1960); 
		--x,y = findMultiColorInRegionFuzzy( 0xcecece, "12|19|0xb8b8b8,23|46|0xd0d0d0,78|5|0xb8b8b8,83|39|0xbababa,115|21|0xb5b5b5,136|19|0xcdcdcd,141|45|0xe3e3e3,191|3|0xb3b3b3,190|41|0xb3b3b3", 90, 1100, 1770, 1360, 1970);
		if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件

			break;--跳出循环

		else
			mSleep(1000);
			--查找 等待验证 两个字 
			x,y = findMultiColorInRegionFuzzy( 0xcecece, "12|19|0xb8b8b8,23|46|0xd0d0d0,78|5|0xb8b8b8,83|39|0xbababa,115|21|0xb5b5b5,136|19|0xcdcdcd,141|45|0xe3e3e3,191|3|0xb3b3b3,190|41|0xb3b3b3", 90, 1100, 350, 1360, 1970);
			--x,y = findMultiColorInRegionFuzzy( 0x454545, "2|17|0x9e9e9e,6|32|0x4b4b4b,24|40|0x464646,32|19|0xd6d6d6,62|10|0x454545,85|8|0x636363,79|33|0x5b5b5b,86|44|0x656565,96|28|0xf6f6f6", 90, 1180, 350, 1330, 1960); 
			
			if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
				mSleep(500);
			
                 MouveHU( x , y ,300,10);
				
				 mSleep(1000);
				 touchDU(1260,y); 
				 
				mSleep(1000);

			else

				mSleep(500);
				MouveDU(200,550,230,10);
			end 

		end
	end

end

initLog("WXQF",0); --记录日志
--循环点击    
for j=0 ,5,1 do
	for i=0 ,4,1 do

		touchDU(240 + 350*i,250 + 330*j); 
		mSleep(1000);

		for n=0 ,3,1 do
			for m=0 ,3,1 do
                mSleep(2000);
				touchDU(410 + 360*m,663 + 326*n);
				mSleep(3000); 
				--运行的主函数

				tianjiahaoyou();

				--返回主屏幕
				mSleep(2000); 
				pressHomeKey(0); --按下 Home 键
				pressHomeKey(1); --抬起 Home 键    	
			end
		end  
		--返回主屏幕
		mSleep(1000);  
		pressHomeKey(0); --按下 Home 键
		pressHomeKey(1); --抬起 Home 键 
	end 

end
lua_exit()--退出脚本

closeLog("WXQF"); 