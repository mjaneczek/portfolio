$ = jQuery

$.fn.extend
  tagFilter: (filter_container) ->
    tags = remove_duplication($('.tag', this))
    return new TagFilter(this, tags, filter_container)

class TagFilter
  constructor: (list, tags, filter_container) ->
    tags = add_clear_filter_button().add(clone_and_replace_href(tags))
    tags.prependTo(filter_container)
    add_click_event(tags)

  clone_and_replace_href = (tags) ->
    new_tags = $(tags).clone()
    $("a", new_tags).each ->
      path = $(this).text().replace(RegExp(" ", "g"), "-").toLowerCase()
      $(this).attr("href", "##{path}")

    return new_tags

  add_click_event = (tags) ->
    $("a", tags).click ->
      $(".list-group-item").show()
      return if $(this).attr("href") == "#all"
      name = $(this).text()
      $(".list-group-item:not(:has(a:contains('#{name}')))").each ->
        $(this).hide()

  add_clear_filter_button = ->
    new_tag = $(".tag").first().clone()
    $("span", new_tag).removeClass().addClass("label label-success")
    $("a", new_tag).attr("href", "#all").text("Wszystkie")
    return new_tag

remove_duplication = (array) ->
  seen = {}

  array.filter ->
    txt = $(this).text()
    ret = seen[txt]
    seen[txt] = true unless ret
    return !ret