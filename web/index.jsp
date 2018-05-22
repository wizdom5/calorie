<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="views/common/header.jsp"%>
<br>
<div class="gallery-container">
	<ul id="gallery" class="gallery-images">
		<li><a href=""><img src="image/mImg1.jpg" alt="" title="1번"/></a></li>
		<li><a href=""><img src="image/mImg2.jpg" alt="" title="2번"/></a></li>
		<li><a href=""><img src="image/mImg3.jpg" alt="" title="3번"/></a></li>
		<li><a href=""><img src="image/mImg4.jpg" alt="" title="4번"/></a></li>
	</ul>
	<div class="gallery-thumbs-container">
		<ul id="gallery-thumbs" class="gallery-thumbs-list">
			<li class="thumb-item">
				<div class="thumb pager-active">
					<a href=""><img src="image/mImg1.jpg" alt="" /></a>
				</div>
			</li>
			<li class="thumb-item">
				<div class="thumb">
					<a href=""><img src="image/mImg2.jpg" alt="" /></a>
				</div>
			</li>
			<li class="thumb-item">
				<div class="thumb">
					<a href=""><img src="image/mImg3.jpg" alt="" /></a>
				</div>
			</li>
			<li class="thumb-item">
				<div class="thumb">
					<a href=""><img src="image/mImg4.jpg" alt="" /></a>
				</div>
			</li>
		</ul>
	</div>
</div>
<script>
	if ($('#gallery-thumbs').length > 0) {
		var thumb = $('#gallery-thumbs').find('.thumb');
		var visibleThumbs = 5;
		var gallerySlider = $('#gallery').bxSlider({
			controls: true,
			pager: false,
			easing: 'easeInOutQuint',
			infiniteLoop: true,
			speed: 500,
			auto: true,
			captions:true,
			onSlideAfter: function (currentSlideNumber) {
				var currentSlideNumber = gallerySlider.getCurrentSlide();
				thumb.removeClass('pager-active');
				thumb.eq(currentSlideNumber).addClass('pager-active');
			},

			onSlideNext: function () {
				var currentSlideNumber = gallerySlider.getCurrentSlide();
				slideThumbs(currentSlideNumber, visibleThumbs);
			},

			onSlidePrev: function () {
				var currentSlideNumber = gallerySlider.getCurrentSlide();
				slideThumbs(currentSlideNumber, visibleThumbs);
				}
			});

			thumb.click(function (e) {
				gallerySlider.goToSlide($(this).closest('.thumb-item').index());
				e.preventDefault();
			});

			var thumbsSlider = $('#gallery-thumbs').bxSlider({
				controls: true,
				pager: false,
				easing: 'easeInOutQuint',
				infiniteLoop: false,
				minSlides: 4,
				maxSlides: 4,
				slideWidth: 460,
				slideMargin: 10
			});

			function slideThumbs(currentSlideNumber, visibleThumbs) {
				var m = Math.floor(currentSlideNumber / visibleThumbs);
				var slideTo = m * visibleThumbs;
				thumbsSlider.goToSlide(m);
			}

			$('#gallery-thumbs').find('.thumb').click(function () {
				$('#gallery-thumbs').find('.thumb').removeClass('pager-active');
				$(this).addClass('pager-active');
			});
		}
</script>
<%@ include file="views/common/footer.jsp"%>