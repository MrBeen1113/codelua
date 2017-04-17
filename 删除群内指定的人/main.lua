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
	--//发送复制
function fuzhi()
	 mSleep(2000);
	
	 touchDU(200,188);--点击输入框
	
	 mSleep(1000);

	 string = readPasteboard();  --读出剪贴板内容
	 
     mSleep(1000); --延迟 0.5 秒
	
     inputText(string);          --写出字符串
	  
	 mSleep(2000);  
	
	 touchDU(200,300);--点击发送
	
	 mSleep(1000);
	 x,y = findMultiColorInRegionFuzzy( 0x2b902d, "18|2|0x365139,17|-3|0x22c322,32|-1|0x23bf23,63|10|0x26b027,52|4|0x27aa28,41|-2|0x2f7232,78|-1|0x27a827,80|-7|0x22c222", 90, 1413, 64, 1516, 102);
	 if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
		 touchDU(1480,85);
	
	     mSleep(1000);
	
	     x,y = findMultiColorInRegionFuzzy( 0x007aff, "-1|13|0x007aff,16|23|0x007aff,23|13|0x007aff,42|9|0x057dff,51|26|0x1584fd,54|5|0x7eb5f3,54|3|0x007aff,36|15|0x007aff", 90, 868, 1067, 940, 1500);
	 
	     mSleep(500); 
	     touchDU(x + 20,y + 20);
		 
	     mSleep(10000);
		
	 else
		  
		 touchDU(70,80); --点击返回	  
	
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
				
		         touchDU(180,180);
			  mSleep(2000);
			
			 touchDU(1490,96); --点击右上脚小人 
			--//判断思享小管家是否为群主
			 mSleep(2000);
			 x,y = findMultiColorInRegionFuzzy( 0x2076fd, "5|-15|0x2076fd,6|3|0x2076fd,16|16|0x2076fd,27|0|0x4b90ea,33|-18|0x80abdc,42|-18|0xabcadc,43|-7|0x5b98db,46|5|0xa7dafc,43|24|0x4596e7", 90, 0, 0, 153, 319);
			 if x ~= -1 and y ~= -1 then 
			     --思享小管家为群主继续运行程序
				 mSleep(1000);
			      x,y = findMultiColorInRegionFuzzy( 0xcccccc, "11|-1|0xd6d6d6,15|1|0xcccccc,44|2|0xdfdfdf,31|1|0xcccccc,12|-6|0xffffff,3|34|0xffffff,-11|7|0xffffff,2|6|0xffffff", 90, 1387, 1893, 1511, 2014);
			     if x ~= -1 and y ~= -1 then
					mSleep(1000);
					 touchDU(x,y);
					mSleep(1000);
					 
					 fuzhi(); 
					 
					 mSleep(1000);			
			         touchDU(70,77); --点击返回			
			          mSleep(1000);			
			         touchDU(70,77); --点击返回		 
		             mSleep(1000);	 
				 else
					 mSleep(1000);			
			         touchDU(70,77); --点击返回			
			         mSleep(1000);			
			         touchDU(70,77); --点击返回		 
		             mSleep(1000);	 
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
			  lua_exit(); 
			else
			  mSleep(1000);
			
		      touchDU(180,180);
			  mSleep(2000);
			
			 touchDU(1490,96); --点击右上脚小人 
			--//判断思享小管家是否为群主
			 mSleep(2000);
			 x,y = findMultiColorInRegionFuzzy( 0x2076fd, "5|-15|0x2076fd,6|3|0x2076fd,16|16|0x2076fd,27|0|0x4b90ea,33|-18|0x80abdc,42|-18|0xabcadc,43|-7|0x5b98db,46|5|0xa7dafc,43|24|0x4596e7", 90, 0, 0, 153, 319);
			 if x ~= -1 and y ~= -1 then 
			     --思享小管家为群主继续运行程序
				 mSleep(1000);
			      x,y = findMultiColorInRegionFuzzy( 0xcccccc, "11|-1|0xd6d6d6,15|1|0xcccccc,44|2|0xdfdfdf,31|1|0xcccccc,12|-6|0xffffff,3|34|0xffffff,-11|7|0xffffff,2|6|0xffffff", 90, 1387, 1893, 1511, 2014);
			     if x ~= -1 and y ~= -1 then
					mSleep(1000);
					 touchDU(x,y);
					mSleep(1000);
					 
					 fuzhi(); 
					 
					 mSleep(1000);			
			         touchDU(70,77); --点击返回			
			          mSleep(1000);			
			         touchDU(70,77); --点击返回		 
		             mSleep(1000);	 
				 else
					 mSleep(1000);			
			         touchDU(70,77); --点击返回			
			         mSleep(1000);			
			         touchDU(70,77); --点击返回		 
		             mSleep(1000);	 
				 end
				 mSleep(1000);
			     
		     else
			     mSleep(1000);			
			     touchDU(70,77); --点击返回			
			     mSleep(1000);			
			     touchDU(70,77); --点击返回		 
		         mSleep(1000);	
			 end

		      MouveDU(200,257,150,10); 
		   end
	     end 
        mSleep(1000);
        lua_exit();          --退出脚本
  
	closeLog("WX@"); 