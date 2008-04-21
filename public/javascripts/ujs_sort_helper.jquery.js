
jQuery(document).ready(function() {
	jQuery('a.sort_link').livequery('click', function(e) {
		jQuery('#surveys-grid').load(e.target.href + " table#surveys-grid"); 
		return false;
	});
	
	jQuery('div.pagination a').livequery('click', function(e) {
		jQuery('#surveys-grid').load(e.target.href + " table#surveys-grid"); 
		return false;
	});
});

