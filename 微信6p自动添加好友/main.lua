init("com.tencent.xin",0);
mSleep(1500);
luaExitIfCall(true)
w, h = getScreenSize(); --获取屏幕分辨率函数
if w == 1242 and h == 2208 then --获取的屏幕分辨率如果满足W.H 则。
	--iPad 3,4,5，mini2，mini3，air，air2
else--如都不满足
	dialog("该脚本不支持此分辨率的设备,仅支持ipone6s plus",5)--提示
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
	mSleep(100)
end
--横向滑动函数
function MouveHU(tx,ty,cd,bc)


	touchDown(1, tx, ty); --在 (150, 550) 按下
	for i = 0, cd, bc do   --使用for循环从起始点连续横向移动到终止点
		touchMove(1, tx - i, ty );    

		mSleep(40);        --延迟
	end
	touchUp(1, tx - cd, ty );
	mSleep(100)
end
---

	while( 1 )
	do
		--寻找 添加 四个字
		mSleep(1100); --3.4 22.55
		x,y = findMultiColorInRegionFuzzy( 0x454545, "8|17|0xb0b0b0,9|27|0xd6d6d6,17|22|0x5c5c5c,55|14|0x545454,63|7|0xcecece,49|1|0xa3a3a3,42|30|0x454545,69|28|0x454545,71|30|0x595959", 90, 1020, 300, 1241, 2207);
		--x,y = findMultiColorInRegionFuzzy( 0xcecece, "12|19|0xb8b8b8,23|46|0xd0d0d0,78|5|0xb8b8b8,83|39|0xbababa,115|21|0xb5b5b5,136|19|0xcdcdcd,141|45|0xe3e3e3,191|3|0xb3b3b3,190|41|0xb3b3b3", 90, 1100, 1770, 1360, 1970);
		if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
			mSleep(200);
            touchDU(x + 10,y + 10);      
			mSleep(1100); --3.4 22.55
			--如果有发消息
			x,y = findMultiColorInRegionFuzzy( 0xbababb, "0|-23|0x49484d,60|-8|0xeaeaeb,90|-1|0xffffff,130|-7|0xffffff,150|-23|0x37363b,162|-14|0x6c6c70,146|4|0xa8a8aa,134|22|0xddddde,111|19|0xffffff", 90, 500, 80, 760, 180);
			--x,y = findMultiColorInRegionFuzzy( 0x06bf04, "55|2|0x06bf04,89|4|0x56d455,132|6|0x06bf04,176|11|0x06bf04,168|26|0xffffff,143|20|0x75db74,122|-23|0x06bf04,84|0|0x0ec10c,80|19|0x06bf04", 90, 300, 500, 1241, 2207);
			if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
                 mSleep(200);
				touchDU(160,128);  
				mSleep(200);
			else
			    mSleep(400);
                 touchDU(1150,130); 
		     	mSleep(500);
			
			end 
		
		else
			mSleep(1200); --3.4 22.55
			--查找 已添加 两个字 
			x,y = findMultiColorInRegionFuzzy( 0xd0d0d0, "14|15|0xc8c8c8,16|32|0xb3b3b3,42|12|0xb3b3b3,59|1|0xb3b3b3,58|30|0xb3b3b3,69|14|0xc6c6c6,90|0|0xb3b3b3,82|32|0xb3b3b3,111|29|0xe0e0e0", 90, 1050, 250, 1241, 2207)
			--查找 等待验证 两个字
			--x,y = findMultiColorInRegionFuzzy( 0xb3b3b3, "6|15|0xbdbdbd,40|22|0xc4c4c4,50|10|0xb3b3b3,62|28|0xbebebe,88|2|0xe4e4e4,86|16|0xc7c7c7,95|22|0xb3b3b3,103|31|0xb3b3b3,126|16|0xd2d2d2", 90, 1000, 180, 1241, 2207);
			--x,y = findMultiColorInRegionFuzzy( 0x454545, "2|17|0x9e9e9e,6|32|0x4b4b4b,24|40|0x464646,32|19|0xd6d6d6,62|10|0x454545,85|8|0x636363,79|33|0x5b5b5b,86|44|0x656565,96|28|0xf6f6f6", 90, 1180, 350, 1330, 1960); 
			
			if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
				mSleep(200); --3.4 22.55
			
                 MouveHU( x , y ,400,100);
				
				 mSleep(500);--3.4 22.55
				 
				 touchDU(1200,y + 10); --3.4 22.55
				 
				mSleep(800);

	      else
		        mSleep(1200); --3.4 22.55
			    --查找 等待验证 两个字
			    x,y = findMultiColorInRegionFuzzy( 0xb3b3b3, "6|15|0xbdbdbd,40|22|0xc4c4c4,50|10|0xb3b3b3,62|28|0xbebebe,88|2|0xe4e4e4,86|16|0xc7c7c7,95|22|0xb3b3b3,103|31|0xb3b3b3,126|16|0xd2d2d2", 90, 1000, 180, 1241, 2207);
                if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
				   mSleep(200); --3.4 22.55
			
                    MouveHU( x , y ,400,100);
			 	
			    	mSleep(500);	 --3.4 22.55		
				 
				   touchDU(1200,y + 10);  --3.4 22.55
				 
				   mSleep(500);

	             else
				   mSleep(200);
				   MouveDU(200,850,530,10);
				end
				
			end 

		end
	end


