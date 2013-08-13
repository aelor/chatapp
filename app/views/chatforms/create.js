<% publish_to "/chatforms" do %>
$("#texts").append("<%= escape_javascript render(@chatform) %>").emoticonize();
$('title').text('New message');
$("li:first").slideUp("normal", function() { 
					       	$(this).remove(); 
					    	});
<% end %>
$("#new_chatform")[0].reset();