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
	 mSleep(1200);
	
	 touchDU(200,590);--点击输入框
	
	 mSleep(500);

	 string = readPasteboard();  --读出剪贴板内容
	 
     mSleep(500); --延迟 0.5 秒
	
     inputText(string);          --写出字符串
	  
	 mSleep(1000);  
	
	 touchDU(1490,96);--点击完成
	
	 mSleep(1500);
	
	 touchDU(900,1100);--点击发送
	
	 mSleep(1000);
	
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
	 touchDU(1420,700); --点击未设置
			
			         mSleep(1500);
				     --判断是否已设置了群公告
				     -- x,y = findMultiColorInRegionFuzzy( 0x21cf20, "-3|15|0x20d81f,0|21|0x20d51f,19|7|0x23c222,19|25|0x2ca02c,33|21|0x20d81f,31|2|0x20d81f,50|0|0x20d81f,41|14|0x20d81f,50|19|0x20d81f", 90, 1455, 65, 1520, 99);
				     --查找编辑 
				     x,y = findMultiColorInRegionFuzzy( 0x336634, "0|9|0x20d11f,-1|19|0x308a31,15|3|0x25b425,18|17|0x308a31,35|6|0x2e8330,50|1|0x21cd20,46|9|0x21cc21,34|15|0x20d81f,52|16|0x22ca22", 90, 1400, 0, 1520, 110) 
				     if x ~= -1 and y ~= -1 then 
				     
					     mSleep(1500);
					     touchDU(1485,85); --点击编辑
					 
					     mSleep(1000);
	                     for i=0 ,200,1 do
					         mSleep(50);
						     touchDU(1460,1590); --点击删除按键
				         end
				
				          mSleep(1000);		 
		                 fuzhi();--调用复制函数	
					
                         mSleep(1000);			
			             touchDU(70,77); --点击返回			
			             mSleep(1000);			
			             touchDU(70,77); --点击返回
		                 mSleep(1000); 
				     else
					     mSleep(1000);		 
		                 fuzhi();--调用复制函数			
			  		     mSleep(1500);			
			             touchDU(70,77); --点击返回			
			             mSleep(1000);			
			             touchDU(70,77); --点击返回
		                 mSleep(1000); 			
				     end
				 
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