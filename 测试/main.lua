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
		 
     touchDU(600,900);--点击用户
	mSleep(100);
	touchDU(600,943);--点击用户
	 mSleep(1500);
	 touchDU(760,1860);--点击揭榜
	 mSleep(2000);
	 
     x,y = findMultiColorInRegionFuzzy( 0xfff8ec, "1|15|0xffbf5a,15|33|0xfff5e4,55|9|0xfff2dd,69|0|0xfff6e7,141|7|0xfff3e0,188|20|0xfffbf4,131|26|0xffce80,128|3|0xffb541,103|24|0xffcb79", 90,500,1698,960,1861);
	if x ~= -1 and y ~= -1 then
		mSleep(1000);
		touchDU(760,1780);
		mSleep(1000);
		touchDU(320,450);
		mSleep(1000);             --延迟 1 秒以便获取焦点

        inputText("诚信收米，微信，宝号 15122397728 可以长期合作！");
         mSleep(1000); 
        touchDU(1250,1900);
		 mSleep(1000); 
		 touchDU(780,1500);
		mSleep(1000);
		touchDU(210,240);
		mSleep(1000);
	else
		mSleep(1000);
		touchDU(210,240);
		mSleep(800);
		touchDU(210,240);
		mSleep(500);
	
end
mSleep(1000); 
      MouveDU(200,1100,450,30);
	mSleep(1000);  

	 end

