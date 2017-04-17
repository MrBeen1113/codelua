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

function tianjiahaoyou()

--	mSleep(1000);
--	touchDU(600,1900);--点击通讯录1X
--touchDU(680,1450);--点击通讯录2X
	--mSleep(1500);
	--touchDU(560,600);--点击新的朋友1X
--touchDU(560,810);--点击新的朋友2X

	while( 1 )
	do

		--寻找 等待验证 四个字
		mSleep(1200);
		--x,y = findMultiColorInRegionFuzzy( 0xcecece, "12|19|0xb8b8b8,23|46|0xd0d0d0,78|5|0xb8b8b8,83|39|0xbababa,115|21|0xb5b5b5,136|19|0xcdcdcd,141|45|0xe3e3e3,191|3|0xb3b3b3,190|41|0xb3b3b3", 90, 1100, 1770, 1360, 1970);
		--寻找接受按钮
		x,y = findMultiColorInRegionFuzzy( 0xd7f5d7, "-4|15|0xcdf2cd,-9|11|0xe4f8e4,-16|7|0x06be04,-18|11|0xe1f7e1,29|9|0xffffff,19|15|0x58d356,19|18|0x2ec72c,16|17|0x76db75,11|20|0xffffff", 90, 1400, 0, 1510, 2047)
		if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件

			--break;--跳出循环
			mSleep(200)
            touchDU(x + 10,y + 10);
			
		else
			--mSleep(1200);
			--查找 添加 两个字 
			--x,y = findMultiColorInRegionFuzzy( 0x454545, "2|17|0x9e9e9e,6|32|0x4b4b4b,24|40|0x464646,32|19|0xd6d6d6,62|10|0x454545,85|8|0x636363,79|33|0x5b5b5b,86|44|0x656565,96|28|0xf6f6f6", 90, 1180, 350, 1330, 1960); 
			--x,y = findMultiColorInRegionFuzzy( 0x484848, "3|19|0x4d4d4d,3|37|0x818181,30|21|0xf6f6f6,26|0|0x525252,39|13|0x656565,62|32|0x454545,83|24|0x6b6b6b,96|8|0x515151,92|39|0x4f4f4f", 90, 1180, 350, 1330, 1960); 
			--if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
			--   mSleep(300);
			--   touchDU(x + 10,y + 20);   
			
			--else


			--end 

		end
	end

end

initLog("WXQF",0); --记录日志
 

   tianjiahaoyou();

