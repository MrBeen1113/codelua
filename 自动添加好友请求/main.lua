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


for i=0 ,1000000000000,1 do

	mSleep(2000);
	--ipad mini2 
	x,y = findMultiColorInRegionFuzzy( 0x06be04, "-31|-15|0x06bf04,-3|-16|0x06bf04,28|-16|0x06bf04,-32|18|0x06bb04,-1|18|0x06bb04,29|18|0x06bb04", 90, 1400, 0, 1520, 0);
	if x ~= -1 and y ~= -1 then --如果在指定区域找到某图片符合条件
		wLog("WXQF","添加图片位置("..(x)..","..(y)..")");
		mSleep(500);

		touchDU(x + 10,y + 10); 

		mSleep(3000);

		touchDU(40,90);

	else
		-- touchDU(40,90);  
		mSleep(1000);
		MouveDU(200,1000,500,20); 

	end
end 

