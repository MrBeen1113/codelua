--init("com.renrenxing.JDB",1);
mSleep(1000);
luaExitIfCall(true);
--点击函数
function touchDU(x,y)
        wLog("jdb","touchDU点击:"..(x)..","..(y)..")");
        touchDown(1,x,y);
        mSleep(30);
        touchUp(1,x,y);
     end
--滑动函数	
function MouveDU(tx,ty,cd,bc)
	
	
	     touchDown(1, tx, ty); --在 (150, 550) 按下
        for i = 0, cd, bc do   --使用for循环从起始点连续横向移动到终止点
        touchMove(1, tx , ty - i );    
        
        mSleep(40);        --延迟
        end
         touchUp(1, tx, ty - cd)
        mSleep(500)
end

	     ---MouveDU(200,319,220,10);
    
    for i=0 ,10000,1 do
		 
		 mSleep(500);
		 touchDU(400,400);
		
		
		 mSleep(800); 
		 touchDU(720,1860);
		
		
		 mSleep(800); 
		 touchDU(760,840);
		
		
		  mSleep(1200); 
		 touchDU(190,230); 
		
		
		 mSleep(600);
		 
		 MouveDU(200,399,299,10);
		
		
	end
	