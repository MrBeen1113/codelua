  init("com.hpbr.bosszhipin",0);
   mSleep(1000);
   luaExitIfCall(true)
--/////////////////////////////////
	function touchDU(x,y)  
        wLog("WXLQ","touchDU点击:"..(x)..","..(y)..")")
        touchDown(1,x,y)
        mSleep(30)
        touchUp(1,x,y)
     end
--///////////////////////////////////////
function MouveDU(tx,ty,cd,bc)

	     touchDown(1, tx, ty); --在 (150, 550) 按下
        for i = 0, cd, bc do   --使用for循环从起始点连续横向移动到终止点
        touchMove(1, tx , ty - i );    
        
        mSleep(40);        --延迟
        end
         touchUp(1, tx, ty - cd)
        mSleep(100)
end


for i=0 ,6000000,1 do
		 
     touchDU(500,900);--点击程序员卡片
	 mSleep(2500);
	 touchDU(980,1900);--点击立即沟通
	 mSleep(1500);
	-------------------------------------------------------
	x,y = findMultiColorInRegionFuzzy( 0x067ffb, "-13|52|0x0881fa,49|23|0x0e86f6,82|26|0x007aff,119|9|0x2398e9,147|27|0x30a3e0,181|16|0x007aff,192|35|0x0982f9,228|36|0x007aff,295|24|0x1e94ec", 90, 240, 940, 1535, 2047);
	if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
		mSleep(300);
	    touchDU(220,230);--点击返回
		mSleep(1000);
		touchDU(220,230);--点击返回
	    mSleep(2000);
		MouveDU(200,1208,770,40);
        mSleep(2000);
	else
		---touchDU(1310,1900);--点击加号
		 touchDU(240,1900);--点击常用语
	     mSleep(1000);
	    -- touchDU(1030,1750);--点击快捷回复   20161010
		 touchDU(600,990);--点击第一条常用语
	     mSleep(1000); 
         touchDU(1000,1400);--点击发送
         mSleep(1000);
     	 touchDU(220,230);--点击返回
         mSleep(1000);
    	 touchDU(220,230);--点击返回
    	 mSleep(2000);
	 
	     MouveDU(200,1208,770,40);
        mSleep(2000);
	
	end
	  
end
