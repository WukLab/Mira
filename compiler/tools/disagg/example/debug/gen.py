
for i in range(1, 33):
	mem = '["ref0", #amap{}, 256, "t0"],'.format(i)
	print(mem)
 
for i in range(0, 32):
    ofst = i * 512
    amap = '#amap{} = affine_map<(d0,d1,d2) -> (d2*512+d1+{})>'.format(i+1, ofst)
    print(amap)