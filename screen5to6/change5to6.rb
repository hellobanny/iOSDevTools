# ruby change5to6 p
# 将 5和 5s的截屏放大到 6和6+屏幕大小的截屏，读取的文件名应该为 5-1.png,5-2.png,5-3.png,5-4.png,5-5.png
require 'fileutils'

if ARGV.size!=1 then
	print("p for portrait or l for landscape\n")
else 
	for i in 1..6 do 
		f5 = "5-"+i.to_s+".png"
		f6 = "6-"+i.to_s+".png"
		f6p = "6p-"+i.to_s+".png"
		if ARGV[0] == "p"
			FileUtils.cp f5,f6
			system( "sips -z 1334 750 "+ f6)
			FileUtils.cp f5,f6p
			system( "sips -z 2208 1242 "+ f6p)
		else
			FileUtils.cp f5,f6
			system( "sips -z 750 1334 "+ f6)
			FileUtils.cp f5,f6p
			system( "sips -z 1242 2208 "+ f6p)
		end
	end
end

