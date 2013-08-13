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
//= require private_pub
//= require turbolinks
//= require_tree .


function welcomeMessage()
			  {
			    var now = new Date();
			    var hours = now.getHours();
			    var msg;
			    if(hours<12)
			      msg = "<h3>Good Morning</h3>";
			    else if(hours<18)
			      msg = "<h3>Good Afternoon</h3>";
			    else
			      msg = "Good Evening";
			  $('.message').html(msg);  //add message to the element with class message
			}
			

function toggleSlider() {
    if ($("#chatTopBar").is(":visible")) {
        $("#sometext").animate(
            {
                opacity: "0"
            },
            600,
            function(){
                $("#chatTopBar").slideUp();
            }
        );
    }
    else {
        $("#chatTopBar").slideDown(600, function(){
            $("#sometext").animate(
                {
                    opacity: "1"
                },
                600
            );
        });
    }   
}