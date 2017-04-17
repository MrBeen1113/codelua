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
--/////////////////////
function  fasongfenxiangfuzhi()
	 mSleep(1500);
 
	 touchDU(1470,1988);--点击加号
	
	 mSleep(1000);
	
	 touchDU(880,1860);--进去收藏
	
	 mSleep(2000);
	
	 touchDU(450,380);--点击分享内容
	 
	 mSleep(1500);
	------------------------------------------------
	 x,y = findMultiColorInRegionFuzzy( 0x0ebc0c, "9|6|0x09bb07,11|13|0x75d675,22|7|0x12bd10,57|27|0x8bdb8a,49|26|0x09bb07,35|14|0x26c225,53|12|0x55ce53", 90, 870, 1050, 1000, 1320);
     touchDU(x + 10, y + 10);--点击发送
	 
     mSleep(1200);
	
	 touchDU(215,1460);--点击输入框
	
	 mSleep(500);
	
	 string = readPasteboard();  --读出剪贴板内容
     mSleep(500);                --延迟 0.5 秒
     inputText(string);          --写出字符串
	  
	 mSleep(1000);  
	
	 touchDU(815,1981); --点击空格
	
	 mSleep(1000); 
	 
	 touchDU(1416,1722);--点击发送
	 
	 mSleep(1000);
	 
	 touchDU(80,85);
	 
end
--
function fasongfenxiang()
	 mSleep(1500);
 
	 touchDU(1470,1988);--点击加号
	
	 mSleep(1200);
	
	 --touchDU(420,1860);--进去分享
	 touchDU(880,1860);--进去收藏 
	
	 mSleep(2000);
	
	 touchDU(450,380);--点击分享内容
	
	 mSleep(1500);
	------------------------------------------------
	 x,y = findMultiColorInRegionFuzzy( 0x0ebc0c, "9|6|0x09bb07,11|13|0x75d675,22|7|0x12bd10,57|27|0x8bdb8a,49|26|0x09bb07,35|14|0x26c225,53|12|0x55ce53", 90, 870, 1150, 1000, 1220)
	
     touchDU(x + 10, y + 10);--点击发送
	 
     mSleep(1000);
	
	 touchDU(80,85);--点击返回
	 
end
	--
	
function fasongfuzhi()
	 mSleep(1200);
	
	 touchDU(200,1990);--点击输入框
	
	 mSleep(500);
	
	 string = readPasteboard();  --读出剪贴板内容
     mSleep(500);                --延迟 0.5 秒
     inputText(string);          --写出字符串
	  
	 mSleep(1000);  
	
	 touchDU(815,1981); --点击空格
	
	 mSleep(1000); 
	
	 touchDU(1416,1722);--点击发送
	
	 mSleep(1000);
	 
	 touchDU(80,85);

end
--

initLog("WXQF",0); --记录日志

	choice = dialogRet("请选择功能：", "发送收藏复制", "发送复制", "发送收藏", 0);
    if choice == 0 then      --男
        dialog("发送收藏复制。",0);
		 mSleep(1000);
		 
		 MouveDU(200,207,100,10);
		
		for i=0 ,10000,1 do
			 --判断是否有空白的区域
		--	x,y = findMultiColorInRegionFuzzy( 0xfefefe, "21|-5|0xfefefe,30|19|0xfefefe,11|42|0xfefefe,41|42|0xfefefe,57|38|0xfefefe,70|23|0xfefefe,39|55|0xfefefe", 90, 0, 0, 0, 0) 
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
			    mSleep(500);
		        fasongfenxiangfuzhi();
			    mSleep(1000);
			 end
			  lua_exit();
	     else
			  mSleep(100);
			
		     touchDU(180,180);
			 mSleep(500);
		     fasongfenxiangfuzhi();
		     mSleep(1000);
		     MouveDU(200,257,150,10); 
		 end
	   end
	 
        mSleep(1000);
    elseif choice == 1 then  --
        dialog("发送复制",0);
		 mSleep(1000);
		MouveDU(200,207,100,10);
		
		for i=0 ,10000,1 do
			
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
			    mSleep(500);
		        fasongfuzhi();
			    mSleep(1000);
			 end
			  lua_exit(); 
			else
			  mSleep(500);
			
		      touchDU(180,180);
			  mSleep(500);
			 
		      fasongfuzhi();
		 
		      mSleep(1000);
		  
		      MouveDU(200,257,150,10); 
		   end
	     end 
		
        mSleep(1000);
    else                     --
        dialog("发送收藏",0);
        mSleep(1000);
		MouveDU(200,207,100,10);
		
		for i=0 ,10000,1 do
			mSleep(500);
			
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
			    mSleep(500);
		        fasongfenxiang();
			    mSleep(1000);
			  end
			    lua_exit();
			else
		         touchDU(180,180);
		
			     mSleep(500);
			
		         fasongfenxiang();
		 
		          mSleep(1000);
		  
		         MouveDU(200,257,150,10); 
		     end
	     end 
		fasongfenxiang();
        lua_exit();          --退出脚本
    end
	
	closeLog("WXQF"); 