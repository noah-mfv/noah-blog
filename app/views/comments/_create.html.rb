<section class="container mt-5 p-2 bio">
  <%= form_with model:[@post, @post.comments.build], method: :post, local: true do |f| %>
    <%= f.label :text, "comment", class: "form-label fs-6" %><br>
    <%= f.text_area :text, size:"50x5", class: "form-control", placeholder: "Your comment goes here...", required: true %><br>

    <%= f.submit "Add Comment", data: {disable_with: "Adding..."}, class: "btn btn-primary my-3"%>
  <% end %>
  <%= render "likes/create" %>
</section>