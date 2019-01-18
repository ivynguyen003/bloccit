 <%= form_for @topic do |f| %>
  <% if topic.errors.any? %>
    <div class="alert alert-danger">
      <h4><%= pluralize(topic.errors.count, "error")%>.</h4>
      <ul>
      <% topic.errors.full_messages.each do |msg| %>
        <li><%= msg %></li>
      <% end %>
      </ul>
   </div>
  <% end %>

  <%= form_group_tag(topic.errors[:name]) do %>
    <%= f.label :name %>
    <%= f.text_field :name, class: 'form-control', placeholder: "Enter topic name" %>
  <% end %>
  <%= form_group_tag(topic.errors[:description]) do %>
    <%= f.label :description %>
    <%= f.text_area :description, rows: 8, class: 'form-control', placeholder: "Enter topic description" %>
  <% end %>
  <div class="form-group">
    <%= f.label :public, class: 'checkbox' do %>
      <%= f.check_box :public %> Public topic
    <% end %>
  </div>
  <%= f.submit "Save", class: 'btn btn-success' %>
<% end %>