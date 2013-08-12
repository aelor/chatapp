<% publish_to "/chatforms/new" do %>
$("#textsnew").append("<%= escape_javascript render(@chatform) %>");
$("#new_chatform")[0].reset();
<% end %>