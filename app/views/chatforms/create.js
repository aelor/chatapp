<% publish_to "/chatforms" do %>
$("#texts").append("<%= escape_javascript render(@chatform) %>");
$("li:first").slideUp("normal", function() { 
					    	$(this).remove(); 
					    	});
$("#new_chatform")[0].reset();
<% end %>