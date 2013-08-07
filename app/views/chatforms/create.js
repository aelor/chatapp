$("#texts").append("<%= escape_javascript render(@chatform) %>");
$("#new_chatform")[0].reset();
