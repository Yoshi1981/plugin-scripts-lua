local fh = filehelpers.new()
fh:touch("/tmp/.luaplayer")

	local streamUrl = arg[2]
	if  not vPlay  and streamUrl then
		vPlay  =  video.new()
	end

	if vPlay and streamUrl then
		local title = "Play file " .. streamUrl
		vPlay:setSinglePlay(true)
		vPlay:PlayFile(title,streamUrl,streamUrl)
		vPlay:channelRezap()
	end
