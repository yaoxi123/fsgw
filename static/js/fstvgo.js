$(function () {
    var topSwiper = new Swiper('#topSwiper', {
        pagination: '.swiper-pagination',
        slidesPerView: 1,
        paginationClickable: true,
        spaceBetween: 30,
        loop: true,
        autoplay: 1000,
        // effect: 'coverflow',
    });





    var mustbuySwiper = new Swiper('#buySwiper', {
        pagination: '.swiper-pagination',
        effect: 'flip',
        grabCursor: true,
		autoplay: 3000,
    });
})

