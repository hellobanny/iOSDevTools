# ruby change6pto65 p
# 将 6p 的截屏缩小到 6和5，5s屏幕大小的截屏，读取的文件名应该为 6p-1.png,6p-2.png,6p-3.png,6p-4.png,6p-5.png
require 'fileutils'

if ARGV.size!=1 then
	print("p for portrait or l for landscape\n")
else 
	for i in 1..6 do 
		f5 = "5-"+i.to_s+".png"
		f6 = "6-"+i.to_s+".png"
		f6p = "6p-"+i.to_s+".png"
		if ARGV[0] == "p"
			FileUtils.cp f6p,f6
			system( "sips -z 1334 750 "+ f6)
			FileUtils.cp f6p,f5
			system( "sips -z 1136 640 "+ f5)
		else
			FileUtils.cp f6p,f6
			system( "sips -z 750 1334 "+ f6)
			FileUtils.cp f6p,f5
			system( "sips -z 640 1136 "+ f5)
		end
	end
end

