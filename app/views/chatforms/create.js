<% publish_to "/chatforms" do %>
$("#texts").append("<%= escape_javascript render(@chatform) %>");
<% end %>
$("#new_chatform")[0].reset();
