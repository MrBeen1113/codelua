init("com.tencent.xin",0);
mSleep(1500);
luaExitIfCall(true)
w, h = getScreenSize(); --获取屏幕分辨率函数
if w == 1536 and h == 2048 then --获取的屏幕分辨率如果满足W.H 则。
	--iPad 3,4,5，mini2，mini3，air，air2
else--如都不满足
	dialog("该脚本不支持此分辨率的设备,仅支持iPad 3,4,5，mini2，mini3，air，air2",5)--提示
	lua_exit()--退出脚本
end
--点击函数
function touchDU(x,y)  
	wLog("WXQF","touchDU点击:"..(x)..","..(y)..")")
	touchDown(1,x,y)
	mSleep(30)
	touchUp(1,x,y)
end
--///////////////////////////////////////
--滑动函数
function MouveDU(tx,ty,cd,bc)

	touchDown(1, tx, ty); --在 (150, 550) 按下
	for i = 0, cd, bc do   --使用for循环从起始点连续横向移动到终止点
		touchMove(1, tx , ty - i );      
		mSleep(40);        --延迟
	end
	touchUp(1, tx, ty - cd)
	mSleep(100)
end


function tianjiabeizhu()
	-- body
	--点击设置备注
	mSleep(1000)
	touchDU(1478,83);
	mSleep(1000)
	touchDU(120,200);

	--点击备注
	mSleep(1000);
	touchDU(40,240);  
     mSleep(800);
	 string = readPasteboard();  --读出剪贴板内容
     mSleep(500);                --延迟 0.5 秒
     inputText(string);          --写出字符串
	 mSleep(1000);
	--点击保存
	touchDU(1477,86);
	--点击返回
	mSleep(500);
	touchDU(80,85);  
	mSleep(500); 
	touchDU(80,85); 
	mSleep(500); 
	touchDU(80,85); 
	mSleep(600);
end

-------------------------------------------------------------------
initLog("WXQF",0); --记录日志
while( 1 )
do

--寻找 等待验证 四个字
mSleep(1200);
--x,y = findMultiColorInRegionFuzzy( 0xcecece, "12|19|0xb8b8b8,23|46|0xd0d0d0,78|5|0xb8b8b8,83|39|0xbababa,115|21|0xb5b5b5,136|19|0xcdcdcd,141|45|0xe3e3e3,191|3|0xb3b3b3,190|41|0xb3b3b3", 90, 1100, 1770, 1360, 1970);
--寻找接受按钮
x,y = findMultiColorInRegionFuzzy( 0xd7f5d7, "-4|15|0xcdf2cd,-9|11|0xe4f8e4,-16|7|0x06be04,-18|11|0xe1f7e1,29|9|0xffffff,19|15|0x58d356,19|18|0x2ec72c,16|17|0x76db75,11|20|0xffffff", 90, 1400, 0, 1510, 2047)
if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件

	--break;--跳出循环
	mSleep(500)
	touchDU(x + 10,y + 10);
	mSleep(1500);
	tianjiabeizhu();
	mSleep(400);
	MouveDU(200,237,140,10);
else
	mSleep(1200);

	MouveDU(200,237,200,10);

end
--end

end
closeLog("WXLQ"); 