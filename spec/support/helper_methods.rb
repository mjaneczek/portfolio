module Helpers
  def check_condition(condition, &block)
    { true => :to, false => :to_not }.each do |pair|
      view.stub(condition).and_return(pair.first)
      block.call(-> (condit) { expect(clear_and_render).send(pair.last, condit) })
    end
  end

  def clear_and_render
    @rendered = ""
    if defined? partial_render then partial_render else render end
  end
end