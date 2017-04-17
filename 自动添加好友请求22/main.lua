init("0",0);
luaExitIfCall(true)
mSleep(1700);
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
--/////////////////////

MouveDU(200,417,287,10);
  for i=0 ,10000000,1 do

     mSleep(1000);
	  mSleep(300)
	  touchDU(1475,175)
	--ipad mini2 
		 mSleep(3000);
			
		 touchDU(40,90);
		mSleep(500) 
	 MouveDU(200,248,120,10) 
	
  end 
 
