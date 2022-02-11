# Simple Ruby On Rails Blog App
This for learning purpose and just for fun, there's no real business logic in this project, just a simple blog app.

## My Note
this is my note for remember something like design pattern or "best practice" for **Ruby On Rails**

### Form Rendering
Rails can create form by model it self, example 
```erbruby
<%= form_with model: [ @article, @article.comments.build ] do |form| %>
  <p>
    <%= form.label :commenter %><br />
    <%= form.text_field :commenter %>
  </p>

  <p>
    <%= form.label :body %><br />
    <%= form.text_area :body %>
  </p>

  <div>
    <%= form.label :status %>
    <%= form.select :status, %w[public private archived] %>
  </div>

  <p>
    <%= form.submit %>
  </p>
<% end %>
```
`article/` is absolute path of views, 
if your page on same folder of your component, 
we can call name as well instead of write absolute path.

### Partials Page
Rails can create partial page when you need it more that one times,
create page and name it with `_` prefix and call it using render : 
```erbruby
<%= render "article/form", article: @article %>
```

### *turbo-links*
Rails can create link with custom method and confirm, example 
```erbruby
<%= link_to 'Delete', article_path(@article), data: { turbo_method: :delete, turbo_confirm: 'Are you sure?' } %>
```

### Concerns for Model / Controller
Concerns are a way to make large controllers or models easier to understand and manage. This also has the advantage of reusability when multiple models (or controllers) share the same concerns. Concerns are implemented using modules that contain methods representing a well-defined slice of the functionality that a model or controller is responsible for. In other languages, modules are often known as mixins.