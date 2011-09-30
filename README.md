# Rails Block Labels

Rails sucks at forms styling/formatting point. One nice idea to keep forms slim and easy to style
is to place inputs inside the label tag. This is hack which give you standard label behavior (eg. 
i18n supoprt) with block wrapping.

## Usage

Add to your gemfile:

    gem 'rails-block-labels'
	
And enjoy block labels in your views, example:

    <%= form_for @post do |f| %>
	  <%= f.label :title do %>
	    <% f.text_field :title %>
      <% end %>
	  <%= f.label :content do %>
	    <% f.text_area :content %>
	  <% end %>
	  
	  *ship*
	<% end %>
	
Example above produces:

    <form ...>
	  <label for="post_title">
	    Title
		<input name="post[title]" ...>
	  </label>
	  ...
	</form>

**IMPORTANT!** Form fields within label block can't be printed out with `<%=`. You have to use `<%` instead.
Don't ask me why, no fucking idea o_O". It's a kind of Magic... ♪♬

## License

**THE BEER-WARE LICENSE**
<chris@nu7hat.ch> wrote this stuff. As long as you retain this notice you
can do whatever you want with this stuff. If we meet some day, and you think
this stuff is worth it, you can buy me a beer in return Chris Kowalik.
