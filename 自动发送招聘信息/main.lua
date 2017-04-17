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
	 mSleep(3000);
	 touchDU(1080,1900);--点击立即沟通
	 mSleep(1500);
	-------------------------------------------------------
	x,y = findMultiColorInRegionFuzzy( 0xade4e4, "116|0|0xade4e4,128|0|0xade4e4,204|0|0xade4e4,260|-20|0xade4e4,296|-32|0xade4e4", 90, 0, 1628, 1535, 1768)
	if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
		mSleep(300);
	    touchDU(220,230);--点击返回
		mSleep(1000);
		touchDU(220,230);--点击返回
	    mSleep(2000);
		MouveDU(200,1208,770,40);
        mSleep(2000);
	else
		touchDU(1310,1900);--点击加号
	     mSleep(2000);
	     touchDU(1030,1750);--点击快捷回复 
	     mSleep(2000); 
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
