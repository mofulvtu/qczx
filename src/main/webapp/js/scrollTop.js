(function () {
    var curEle = null;
    var $nav_1 = $(".nav_1"),$nav = $(".nav"),$nav_2 = $(".nav_2");
    var $ad_header = $(".ad_header");
    function getWin(attr) {

        return document.documentElement[attr] || document.body[attr];
    }

    function scrollMove() {

        var winH = getWin("clientHeight"), curT = getWin("scrollTop");
        curEle.style.display = curT >= (winH / 2) ? "block" : "none";
        //alert(curT,winH)
    }

    window.onscroll = scrollMove;

    function scrollInit(selector, duration) {
        if(!selector){
            return
        }


        duration = duration || 1000;
        curEle = document.getElementById(selector);

        curEle.onclick = function () {
            curEle.style.display = "none";
            window.onscroll = null;

            var target = getWin("scrollTop"), interval = 10, step = (target / duration) * interval;
            var timer = window.setInterval(function () {
                if (target <= 10) {
                    navUp();


                    window.clearInterval(timer);
                    window.onscroll = scrollMove;
                    return;
                } else {
                    navDown();
                }
                target -= step;
                document.documentElement.scrollTop = target;
                document.body.scrollTop = target;
                window.pageYOffset = target;

            }, interval);
        };
    }

    /*头部导航,滚动收放效果*/
    var p=0,t=0;
    function navDown(){


        $nav.removeClass("p-header-show");
        $nav.addClass("p-header-hide");
        $ad_header.removeClass("p-header-show2");
        $ad_header.addClass("p-header-hide2");
        $nav_2.removeClass("second-nav-large");
        $nav_2.addClass("second-nav-small");

    }
    function navUp(){
        if($nav.hasClass("abc_l")){

            $nav.removeClass("p-header-hide");
            $nav.addClass("p-header-show3");
            $ad_header.removeClass("p-header-hide2");
            $ad_header.addClass("p-header-show2");
            $nav_2.removeClass("second-nav-small");
            $nav_2.addClass("second-nav-large");

        }else{

            $nav.removeClass("p-header-hide");
            $nav.addClass("p-header-show");
            $ad_header.removeClass("p-header-hide2");
            $ad_header.addClass("p-header-show2");
            $nav_2.removeClass("second-nav-small");
            $nav_2.addClass("second-nav-large");

        }

    }
    $(window).scroll( function() {
        // var p=$(window).scrollTop();
        var p=document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop


        /*向下*/
        if(t<p){
            navDown();
            // alert("下")
        }else{
            /*向上*/

            navUp();
            //  alert("上")
        }

        if(getWin("scrollTop")<=10){

            navUp();
        }
        setTimeout(function(){t=p},0)
    });



    window.scrollInit = scrollInit;
})();
scrollInit('back',500);