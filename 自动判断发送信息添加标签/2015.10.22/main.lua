init("0",0);
luaExitIfCall(true)
mSleep(1700);

--/////////////////////////
 function touchDU(x,y)  
        wLog("WX","touchDU点击:"..(x)..","..(y)..")")
        touchDown(1,x,y)
        mSleep(30)
        touchUp(1,x,y)
end
--/////////////////////////////////////
function isColor(x,y,c,s)
     local fl,abs = math.floor,math.abs
     s = fl(0xff*(100-s)*0.01)
     local r,g,b = fl(c/0x10000),fl(c%0x10000/0x100),fl(c%0x100)
     local rr,gg,bb = getColorRGB(x,y)
     if abs(r-rr)<s and abs(g-gg)<s and abs(b-bb)<s then
        return true
     end
  end
--///////////////////////////////
function  zhantie()
	 mSleep(500);
	 --点击输入框 
	 touchDown(1,200,1990);
	 mSleep(200);
     touchUp(1,200,1990);  
	 --点击输入框 
 
     mSleep(500);
	 --长按输入框
	  touchDown(1, 200, 1360)
	 mSleep(200);
	 touchUp(1, 200, 1360);
	 --点击粘贴
	 mSleep(500);
 	 touchDown(1,150,1260);        
	 mSleep(20); 
     touchUp(1,150,1260);
	 --点击发送
	 mSleep(500);
     touchDown(1,1400,1720);         --点击输入框获取焦点（假设输入框坐标已知）
     mSleep(20);
     touchUp(1,1400,1720);
	 
end
--设置标签
function  djbq()
 --点击小人 
	 mSleep(500);
	 
	 touchDU(1477,86);
	 
	 mSleep(900);
	x,y = findMultiColorInRegionFuzzy( 0x06bf04, "30|-3|0xffffff,58|-2|0x06bf04,90|2|0xb0ebaf,113|2|0x06bf04,136|1|0xffffff,161|0|0xffffff,179|9|0x06be04", 90, 660, 500, 900, 1800)
     if x ~= -1 and y ~= -1 then
     --if (isColor( 668,  843, 0x06bf04, 85) and isColor( 696,  842, 0xffffff, 85) and isColor( 735,  841, 0xffffff, 85) and isColor( 766,  846, 0x06bf04, 85) and isColor( 778,  839, 0xffffff, 85) and isColor( 818,  843, 0x06bf04, 85)) then
         
		 wLog("WX","判断为公众号");
		
		for i = 1, 2, 1 do    --使用 for 循环使两只手指同时分离
	
		         touchDU(80,85); 
				 
                 mSleep(300);
          end

     else
	     x,y = findMultiColorInRegionFuzzy( 0xffffff, "3|4|0x38373c,55|4|0xd1d1d2,61|25|0xffffff,99|24|0x3e3e42,108|15|0x949396,137|32|0x414144,137|22|0xa6a6a8", 90, 620, 60, 900, 110) 
		 if x ~= -1 and y ~= -1 then
	     --if (isColor( 755,   67, 0xffffff, 85) and isColor( 753,  102, 0x6f6e71, 85) and isColor( 769,   97, 0xffffff, 85) and isColor( 769,   79, 0xc1c1c3, 85) and isColor( 801,   66, 0xffffff, 85) and isColor( 804,  100, 0xffffff, 85)) then
             mSleep(200);
            wLog("WX","判断为微信群");
		
		     for i = 1, 2, 1 do    --使用 for 循环使两只手指同时分离
		         touchDU(80,85);  
                 mSleep(400);
             end
		 else  
	--点击图像 
	       mSleep(400);
	      touchDU(90,230); 
--判断是否已添加标签         
		  mSleep(1500);
         x,y = findMultiColorInRegionFuzzy( 0xa2a2a2, "1|12|0x353535,-4|20|0x444444,20|18|0x363636,31|14|0x9b9b9b,38|3|0x353535,39|20|0x363636,46|25|0x353535", 90, 26, 400, 90, 430);
		 -- x, y = findImageInRegionFuzzy("weijiabiaoqian.png", 100, 20,  390, 90,  440, 0xffffff);
         if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
         --if (isColor(  32,  346, 0x8a8a8a, 85) and isColor(  47,  363, 0x888888, 85) and isColor(  44,  353, 0x888888, 85) and isColor(  52,  353, 0x888888, 85) and isColor(  77,  352, 0xc5c5c5, 85) and isColor(  76,  339, 0xacacac, 85) and isColor(  76,  349, 0xa7a7a7, 85) and isColor(  79,  346, 0x909090, 85)) then
             wLog("WX","判断为已添加标签");
			     mSleep(200);
	             for i = 1, 3, 1 do    --使用 for 循环使两只手指同时分离
	
		          touchDU(80,85); 
				  
                  mSleep(300); 
				 
			     end
	
	     else
         --点击三个圆点
             mSleep(500);
             touchDU(1473,82);  
	
         --点击设置备注及标签
              mSleep(800);
	         touchDU(160,200);  
	 
             --点击通过标签给联系人进行分类
             mSleep(800)
	         touchDU(120,420);  
	
          --选择标签 
             mSleep(700);
	         touchDU(50,335);  
	
          --点击保存
             mSleep(700);
	         touchDU(1477,86);  

          --退回到主界面
              mSleep(500);
             for i = 1, 7, 1 do    --使用 for 循环使两只手指同时分离
	
		      touchDU(80,85);  
	
              mSleep(300);  
             end

	       end
	     end
	 end
end 
  --///////////////////////////////
  --//判断是否为新用户并且为新用户添加标签
function pdxhy()	
	 mSleep(900)
	 --判断是否有绿色的添加标签 
     x,y = findMultiColorInRegionFuzzy( 0x6dd36c, "0|47|0x69d068,73|46|0x03b701,73|2|0x06c004,17|15|0xf8fdf7,25|30|0xffffff,53|30|0xffffff,44|14|0xb3ecb2", 90, 1430, 160, 1520, 220);
     if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
		 wLog("WX","添加图片位置("..(x)..","..(y)..")")
		 mSleep(600);
		 
		 touchDU(x + 20, y + 20);   --那么单击该图片
		 
		  mSleep(1200);--增加添加好友后的延迟时间，2015.9.20修改
		  
		  zhantie();--粘贴信息并发送
		 
		  mSleep(500); 
		   
	 	  djbq();--添加标签
		
	 else 
		  --mSleep(500);--增加添加好友后的延迟时间，2015.9.20修改
		  
		  --zhantie();--粘贴信息并发送
		  
		  mSleep(200);   
		  
		  djbq();--添加标签
		  
     end
end
  
--//////////////////
--判断是否有未读信息
function tjsz()
     mSleep(200);
	 -- 判断当前页面是否有未读信息
     x,y = findMultiColorInRegionFuzzy( 0xf43530, "0|-19|0xfdd1d0,8|-4|0xf63f3a,1|12|0xffffff", 90, 70, 128, 240, 1949);
     if x ~= -1 and y ~= -1 then        --如果在指定区域找到某图片符合条件	
		 
		 wLog("WX","找到未读信息");
		 
	     mSleep(20);
		 touchDown(0,x + 10,y + 10);
		 mSleep(20);
		 touchUp(0,x + 10,y + 10);
		 
         mSleep(200);
	     --调用函数 
	     pdxhy();
		
     else 
		 mSleep(200);
		 --判断微信是否还有未读信息
		  x,y = findMultiColorInRegionFuzzy( 0x827c1b, "5|-18|0xff3b30,3|-7|0xff3b30,8|3|0xff3b30", 90, 407, 1949, 526, 2005)
          if x ~= -1 and y ~= -1 then 
			
	 mSleep(100)

     touchDown(6,447,2023)
     mSleep(99)
     touchUp(6,446,2018)
     mSleep(168)

     touchDown(6,448,2003)
     mSleep(49)
     touchUp(6,447,2002)

      mSleep(300)

     touchDU(300,220)
	 
	 mSleep(100);
	 
     pdxhy();

		  end
	
     end
end
--///////

initLog("WX",0); --记录日志
     repeat
     tjsz();
	 
	 mSleep(100);
	 touchDU(20,20);
	 mSleep(1000);
     until 
 
closeLog("WX"); 