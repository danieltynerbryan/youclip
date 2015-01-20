$('.new-video-button').click(function() {
		videoID = $('#video-id').val();
		if (videoID != '') {
			window.location.href = 'youtube/'+videoID;
		}
	})