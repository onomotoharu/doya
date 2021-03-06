// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
	$("#new_user").validate({
		rules:{
			"user[password_digest]":{
				require:true,
				minlength:8
			},
			"user[password_digest]":{
				required: true,
	            equalTo: "#signup-password"
			}
		}
	});

	$(".header-home-button").click(function(){
		// console.log(location.hostname);
		document.location = location.host;
	});

	// $(".thumnail").hover(function(){
	// 	console.log("in");
	// 	$(".thumnail-option").fadeTo(1000,1);

	// },
	// function(){
	// 	console.log("out");
	// 	$(".thumnail-option").fadeTo(1000,0);
	// });
});
