init("0",0);
luaExitIfCall(true)
mSleep(1700);
w, h = getScreenSize(); --获取屏幕分辨率函数
if w == 1536 and h == 2048 then --获取的屏幕分辨率如果满足W.H 则。
  --iPad 3,4,5，mini2，mini3，air，air2
 else--如都不满足
       dialog("该脚本不支持此分辨率的设备,仅支持iPad 3,4,5，mini2，mini3，air，air2",5)--提示
       lua_exit()--退出脚本
 end
 
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
	  mSleep(300);
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
	
		 --判断对方是否开启朋友验证
		x,y = findMultiColorInRegionFuzzy( 0x000000, "62|10|0x0c0c0c,74|14|0x000000,131|12|0x000000,158|4|0x424242,176|8|0x606060,221|9|0x000000,241|20|0x000000", 90, 600, 570, 930, 630) 
		if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件

			mSleep(300);

			touchDU(890, 860); --点击发送验证
			
			mSleep(1000);
			
			zhantie();--粘贴信息并发送

		else
			mSleep(200);--增加添加好友后的延迟时间，2015.9.20修改

			zhantie();--粘贴信息并发送


		end
		
	 else 
		  mSleep(500);--增加添加好友后的延迟时间，2015.9.20修改
		  
		  zhantie();--粘贴信息并发送
		  
		  
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
	     --调用判断是否是好友函数
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
	 
         --调用判断是否是好友函数
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