<% if @class == "C1" %>
	$("#C2").empty()
					.append("<%= escape_javascript(options_from_collection_for_select(@sections, :id, :description)) %>");
	$("#C3").empty();

<% end %>

<% if @class == "C2" %>
	$("#C3").empty()
					.append("<%= escape_javascript(options_from_collection_for_select(@devices, :id, :name)) %>");
<% end %>

<% if @class == "C4" %>
	$("#C5").empty()
					.append("<%= escape_javascript(options_from_collection_for_select(@sections, :id, :description)) %>");
	$("#C6").empty();

<% end %>

<% if @class == "C5" %>
	$("#C6").empty()
					.append("<%= escape_javascript(options_from_collection_for_select(@devices, :id, :name)) %>");
<% end %>
