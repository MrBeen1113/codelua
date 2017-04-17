   init("com.tencent.xin",0);
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
        mSleep(300)
end
--/////////////////////
	
	
	 touchDU(100,190);
	
	 mSleep(1000);
	
	 touchDU(80,350);
	
	 mSleep(1000);
	 
	
	 initLog("WXLQ",0); --记录日志

	
  for i=0 ,600,1 do
	 mSleep(600);
      x,y = findMultiColorInRegionFuzzy( 0xffffff, "13|7|0xffffff,24|7|0xffffff,24|7|0xffffff,43|5|0xffffff,43|5|0xffffff,61|4|0xffffff,55|7|0xffffff", 90, 90, 127, 162, 147)
	 if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
	
		 touchDU(40,180);
	 
		 mSleep(100);
		  
		 MouveDU(200,237,130,10);
	
	 else
         for j=0,16,1 do
				  
		       mSleep(100);
			   
			  local  m = 0 ;
			     m = 180 + j*110;
			     mSleep(100);
			
		         touchDU(40,m);
			     mSleep(500);
	
			 end
			  
			
			 touchDU(1473,86);
  
	         mSleep(1000);

	         touchDU(1440,86);
			 
			 lua_exit(); 
	 	
		end 
 
end
      
	  	closeLog("WXLQ"); 