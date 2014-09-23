# ruby makeicons.rb testicon.png

require 'fileutils'

if ARGV.size!=1 then
	print("Only input source image name!\n")

else 
	files = ["Icon.png","Icon@2x.png","Icon-Small.png","Icon-Small@2x.png","Icon-Small-50.png","Icon-Small-50@2x.png",
		"Icon-72.png","Icon-72@2x.png","Icon-40.png","Icon-40@2x.png","Icon-60.png","Icon-60@2x.png",
		"Icon-76.png","Icon-76@2x.png","Icon-Small@3x.png","Icon-40@3x.png","Icon-60@3x.png"];

	size =[57,114,29,58,50,100, 72,144,40,80,60,120, 76,152,87,120,180]

	for i in 0..files.size-1 do
		FileUtils.cp ARGV[0],files[i]
		system( "sips -z "+size[i].to_s+" "+ size[i].to_s + " "+ files[i])
	end
end


