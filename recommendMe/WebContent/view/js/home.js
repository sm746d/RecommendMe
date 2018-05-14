jQuery('#loginButton').click(function(){
	$.ajax({
		type : 'post', 
		url : '../reco/login',
		data : {
			emailId : jQuery('#userName').val(),
			pwd: jQuery('#pwdId').val(),
			caseId: '1'
		},
		datatype : 'text',
		success : function(responseText) {
			console.log("value=>"+responseText);
			var num = Number(responseText)
			if(num>0)
				jQuery('#loginFormId').submit();
			else
				alert("Wrong password");
		}
	});
});


class StickyNavigation {

	constructor() {
		this.currentId = null;
		this.currentTab = null;
		this.tabContainerHeight = 70;
		let self = this;
		$('.tab-header').click(function() {
			self.onTabClick(event, $(this));
		});
		$(window).scroll(() => { this.onScroll(); });
		$(window).resize(() => { this.onResize(); });
	}

	onTabClick(event, element) {
		event.preventDefault();
		let scrollTop = $(element.attr('href')).offset().top - this.tabContainerHeight + 1;
		$('html, body').animate({ scrollTop: scrollTop }, 600);
	}

	onScroll() {
		this.checkTabContainerPosition();
    this.findCurrentTabSelector();
	}

	onResize() {
		if(this.currentId) {
			this.setSliderCss();
		}
	}

	checkTabContainerPosition() {
		let offset = $('.home-tabs').offset().top + $('.home-tabs').height() - this.tabContainerHeight;
		if($(window).scrollTop() > offset) {
			$('.tab-container').addClass('tab-container-top');
		}
		else {
			$('.tab-container').removeClass('tab-container-top');
		}
	}

	findCurrentTabSelector(element) {
		let newCurrentId;
		let newCurrentTab;
		let self = this;
		$('.tab-header').each(function() {
			let id = $(this).attr('href');
			let offsetTop = $(id).offset().top - self.tabContainerHeight;
			let offsetBottom = $(id).offset().top + $(id).height() - self.tabContainerHeight;
			if($(window).scrollTop() > offsetTop && $(window).scrollTop() < offsetBottom) {
				newCurrentId = id;
				newCurrentTab = $(this);
			}
		});
		if(this.currentId != newCurrentId || this.currentId === null) {
			this.currentId = newCurrentId;
			this.currentTab = newCurrentTab;
			this.setSliderCss();
		}
	}

	setSliderCss() {
		let width = 0;
		let left = 0;
		if(this.currentTab) {
			width = this.currentTab.css('width');
			left = this.currentTab.offset().left;
		}
		$('.tab-slide').css('width', width);
		$('.tab-slide').css('left', left);
	}

}

new StickyNavigation();
