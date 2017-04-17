init("com.tencent.xin",0);
  mSleep(1500);
  luaExitIfCall(true);
  w, h = getScreenSize(); --获取屏幕分辨率函数
if w == 1536 and h == 2048 then --获取的屏幕分辨率如果满足W.H 则。
  --iPad 3,4,5，mini2，mini3，air，air2
 else--如都不满足
       dialog("该脚本不支持此分辨率的设备,仅支持iPad 3,4,5，mini2，mini3，air，air2",5)--提示
       lua_exit()--退出脚本
 end
 
--  ///////////////点击函数
	function touchDU(x,y)  
        wLog("WX@","touchDU点击:"..(x)..","..(y)..")")
        touchDown(1,x,y)
        mSleep(30)
        touchUp(1,x,y)
     end
--//////////////////////滑动函数
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
--修改公告
function xiugaigonggao()
     mSleep(2000);
	 touchDU(1490,96); --点击右上脚小人 		    
	--思享小管家为群主继续运行程序
	 mSleep(2000);
	 MouveDU(200,2007,1500,100);
     mSleep(2000);
	--查找群主管理权转让
	 x,y = findMultiColorInRegionFuzzy( 0x1c1c1c, "37|-1|0x101010,68|6|0x868686,97|-1|0x000000,112|0|0x000000,131|3|0x010101,165|7|0xa0a0a0,197|2|0x191919,213|-6|0x000000,199|10|0x000000", 90, 27, 1700, 1535, 2047)
	 if x ~= -1 and y ~= -1 then 	 
	 --思享小管家为群主继续运行程序
	     mSleep(1000);
	     x,y = findMultiColorInRegionFuzzy( 0x000000, "26|-9|0x7a7a7a,59|-16|0x000000,75|-14|0x000000,94|-17|0x656565,127|-17|0x000000,143|3|0x151515,123|8|0x7b7b7b,105|1|0x000000,75|1|0x000000", 90, 10, 190, 280, 420);
		 touchDU(x,y); 
	     mSleep(1000);
	     
		 for i=1,1000,1 do
			 mSleep(1000); 
			--判断是否为最后一个 
	         x,y = findMultiColorInRegionFuzzy( 0xffffff, "0|13|0xffffff,-2|26|0xffffff,1|32|0xffffff,3|42|0xffffff,-7|51|0xffffff,1|59|0xffffff,-5|67|0xffffff,18|45|0xffffff,44|58|0xffffff", 100, 30, 345, 101, 426);
	         if x ~= -1 and y ~= -1 then
	             mSleep(300);
		         touchDU(77,77); 
		         mSleep(800);
				 touchDU(77,77); 
				 mSleep(800);
				 touchDU(77,77); 
		         break; 
	        else 
	        	 mSleep(1000); 
                 MouveHU(1180,280,1000,300);
                 mSleep(1200);
                 touchDU(1460,280);
	             mSleep(500);  
	         end
         end
		 
		 mSleep(1000);
		
	 else
			         mSleep(1000);			
			         touchDU(70,77); --点击返回			
			         mSleep(1000);			
			         touchDU(70,77); --点击返回		 
		             mSleep(1000);	
	 end	
end

--
initLog("WX@",0); --记录日志

		mSleep(1000);
		MouveDU(200,207,100,10);
		
		for i=0 ,10000,1 do
			
			x,y = findMultiColorInRegionFuzzy( 0xfefefe, "21|-5|0xfefefe,30|19|0xfefefe,11|42|0xfefefe,41|42|0xfefefe,57|38|0xfefefe,70|23|0xfefefe,39|55|0xfefefe", 100, 0, 1500, 200, 2047)
			 if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
		      wLog("WX@","添加图片位置("..(x)..","..(y)..")")
			 --  
		         for j=0,13,1 do
				  
		              mSleep(100);
			   
			         local  m = 0 ;
			          m = 180 + j*130;
			         mSleep(100);
			
		              touchDU(180,m);
			          mSleep(500);
					 --引用修改公告函数  
		               xiugaigonggao();
			          
			     end
			     lua_exit(); 
			else
			     mSleep(1000);
			
		         touchDU(180,180);
			     --引用修改公告函数
                 xiugaigonggao()
				 -- 
		         MouveDU(200,257,150,10); 
		    end
	     end 
        mSleep(1000);
        lua_exit();          --退出脚本
  
	closeLog("WX@"); 