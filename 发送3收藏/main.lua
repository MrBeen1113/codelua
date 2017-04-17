init("com.tencent.xin",0);
mSleep(1500);
luaExitIfCall(true)

	function touchDU(x,y)  
        wLog("WXQF","touchDU点击:"..(x)..","..(y)..")")
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
--/////////////////////
function  fasongfenxiangfuzhi(q)
	  mSleep(1500);
	 touchDU(1470,1988);--点击加号
	 mSleep(1500);
	 touchDU(1270,1870);--进去收藏
	 mSleep(2000);
	 touchDU(450,300);--点击分享1文字内容
	 mSleep(1500);
	x,y = findMultiColorInRegionFuzzy( 0xa0d793, "9|-3|0xc4e3b4,8|7|0x40b93c,4|17|0xaedca0,25|13|0x37b734,33|14|0x5ac255,39|4|0x1aad19,45|-8|0x78cd73,44|18|0x37b735,44|13|0xeff6e5", 90, 760, 960, 1060, 1600) 
     mSleep(300); 
	 touchDU(x + 10, y + 10);--点击发送
     mSleep(2000);
	
	 touchDU(1270,1870);--进去收藏
	 mSleep(2000);
	 touchDU(450,650);--点击分享2文字内容
	 mSleep(1500);
	 x,y = findMultiColorInRegionFuzzy( 0xa0d793, "9|-3|0xc4e3b4,8|7|0x40b93c,4|17|0xaedca0,25|13|0x37b734,33|14|0x5ac255,39|4|0x1aad19,45|-8|0x78cd73,44|18|0x37b735,44|13|0xeff6e5", 90, 760, 960, 1060, 1600) 
     mSleep(300); 
	 touchDU(x + 10, y + 10);--点击发送
	 
     mSleep(2000); 
	touchDU(1270,1870);--进去收藏
	 mSleep(2000);
	 touchDU(450,900);--点击分享3图片内容
	 mSleep(1500);
	 x,y = findMultiColorInRegionFuzzy( 0xa0d793, "9|-3|0xc4e3b4,8|7|0x40b93c,4|17|0xaedca0,25|13|0x37b734,33|14|0x5ac255,39|4|0x1aad19,45|-8|0x78cd73,44|18|0x37b735,44|13|0xeff6e5", 90, 760, 960, 1060, 1600) 
     mSleep(300); 
	 touchDU(x + 10, y + 10);--点击发送
     mSleep(2000);  

	 mSleep(1500);
	
	 touchDU(80,85);	 
end
--


initLog("WXQF",0); --记录日志

		 mSleep(1000);
		 
		 MouveDU(200,207,100,10);
		
		for i=0 ,10000,1 do
			 --判断是否有空白的区域
			  x,y = findMultiColorInRegionFuzzy( 0xfefefe, "21|-5|0xfefefe,30|19|0xfefefe,11|42|0xfefefe,41|42|0xfefefe,57|38|0xfefefe,70|23|0xfefefe,39|55|0xfefefe", 100, 0, 1500, 200, 2047)
			 if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
		      wLog("WXQF","添加图片位置("..(x)..","..(y)..")")
			 --  
		      for j=0,13,1 do
				  
		       mSleep(100);
			   
			  local  m = 0 ;
			     m = 180 + j*130;
			     mSleep(100);
			
		        touchDU(180,m);
			    mSleep(1000);
		        fasongfenxiangfuzhi(1);
			    mSleep(1500);
			 end
			  lua_exit();
	     else
			  mSleep(100);
			
		     touchDU(180,180);
			 mSleep(500);
		     fasongfenxiangfuzhi();
		     mSleep(3500);
		     MouveDU(200,257,150,10); 
			 mSleep(1500); 
		 end
	   end
	 
        mSleep(1000);
   
        lua_exit();          --退出脚本
 
	closeLog("WXQF"); 