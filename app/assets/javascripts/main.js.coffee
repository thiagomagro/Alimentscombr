$ = jQuery
jQuery ->
  $("#loginBtn").live("click", (e)->
    el = $(this).siblings(".loginForm");
    el.toggle();
    el.css({"left":($(this).offset().left - $(el).outerWidth() - 10)})
  );
  app = $.sammy ->
				this.get '#/', (context)->
          $.ajax({
            url:"/dashboard"
            dataType:"script"
          });
        this.get '#/:action/:id/edit', (context)->
          $.ajax({
            url:this.path.replace "#/",""
            dataType:"script"
          });
        this.get '#/:action/:id', (context)->
          $.ajax({
            url:this.path.replace "#/",""
            dataType:"script"
          });
        this.get '#/:action/:id/delete', (context)->
          $.ajax({
            url:this.path.replace "#/",""
            dataType:"script"
          });
				this.get '#/:controller', (context)->
          controller = this.params.controller
          $.ajax({
            url:controller
            dataType:"script"
          });
				this.get '#/:controller/:action', (context)->
          controller = this.params.controller
          $.ajax({
            url:this.path.replace "#/",""
            dataType:"script"
          });
          
  app.run("#/");

$.log = (msg) ->
  if window.console
    try
      console.log(msg);
    catch error
      alert(error);