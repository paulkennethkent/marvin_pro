$("tr[data-link]").click ->
  window.location = @data("link")
  return