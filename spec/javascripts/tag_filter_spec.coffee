#= require spec

describe "TagFilter", ->
  filter = null

  beforeEach ->
    loadFixtures("test_list_group.html")
    filter = $(".list-group").tagFilter($("#tag_filter"))

  it "should copy uniqiue tags to #tag_filter", ->
    expect(get_all_tags().length).toEqual(4)

  it "should change href to tag name", ->
    $("a", get_all_tags()).each ->
      path = $(this).text().replace(RegExp(" ", "g"), "-").toLowerCase()
      expect($(this).attr('href')).toEqual("##{path}")

  it "should filter by tag", ->
    click_tag("#technologia-1")
    check_list_item_count(2)
    click_tag("#technologia-4")
    check_list_item_count(1)

  it "should can show all before filter", ->
    click_tag("#technologia-4")
    click_tag("#all")
    check_list_item_count(3)


  click_tag = (href) ->
    $("#tag_filter .tag span a[href='#{href}']").click()

  check_list_item_count = (expect_count) ->
    expect($(".list-group-item:visible").length).toEqual(expect_count)

  get_all_tags = ->
    $("#tag_filter .tag:not(:has(a[href='#all']))")