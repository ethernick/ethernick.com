$(document).ready(function(){
		girlify();

		/*
		$(window).scroll(function() {
		    if($(window).scrollTop() % 60 == 0) {
		        girlify();
		    }
		})
		*/

		cheet('left', function () {
		   girlify();
		});

		cheet('right', function () {
		   girlify();
		});

		$("svg").on( "click", function() {
		   girlify();
		});

		$(".refresh").on( "click", function() {
		   girlify();
		});

		$(".ether .fa-question-circle").on("click", function() {
		   ether_pos = (ether_pos>=2?0:ether_pos + 1);
		   $(".ether em").html(ether_text[ether_pos])
		});

		$(".nick .fa-question-circle").on("click", function() {
		   nick_pos = (nick_pos>=4?0:nick_pos + 1);
		   $(".nick em").html(nick_text[nick_pos])
		});
});

function girlify() {
		bg = (arguments[0]?arguments[0]:$.xcolor.random());
		bodybg = $.xcolor.lighten(bg,7);
		opp = $.xcolor.complementary(bg);
		font = ($.xcolor.readable('#000000', opp)?'#000000':'#FFFFFF');
		link = ($.xcolor.readable(opp,"#FFFFFF")?opp:bg);
		$(".jumbotron").css("background-color",bg);
		$(".minitron").css("background-color", bg);
		$("body").css("border-top-color",bg);
		$("body").css("background-color",bodybg);
		$("a").css("color",link);
		$(".minitron a").css("color", opp);
		$(".refresh").css("color",font);
		$(".jumbotron").css("color",opp);
		$(".line:eq(0)").css("stroke",$.xcolor.darken(bg,2));
		$(".line:eq(1)").css("stroke",opp);
		$(".line:eq(2)").css("stroke",$.xcolor.darken(bg,3));
		$(".line:eq(3)").css("stroke",$.xcolor.lighten(bg,1));
		$(".line:eq(4)").css("stroke",$.xcolor.lighten(bg,4));
}
