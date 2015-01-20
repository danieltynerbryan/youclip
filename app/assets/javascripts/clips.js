function getVideo() {
	videoURL = $('#video-id').val();
	regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
	match = videoURL.match(regExp);
	videoID = match[7];
	if (videoID != '') {
		window.location.href = 'youtube/'+videoID;
	}
}