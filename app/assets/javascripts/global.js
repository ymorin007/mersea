$(function(){
	$('a').imgPreview({
	    containerID: 'imgPreviewWithStyles',
	    imgCSS: {
	        // Limit preview size:
	        //height: 200
	    },
	    // When container is shown:
	    onShow: function(link){
	        //$('<span>' + this.attr("rel") + '</span>').appendTo(this);
	    },
	    // When container hides: 
	    onHide: function(link){
	        $('span', this).remove();
	    }
	});	
});