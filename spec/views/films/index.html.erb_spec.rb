require 'rails_helper'

RSpec.describe "films/index", type: :view do
  before(:each) do
    assign(:films, [
      Film.create!(
        title: "Title",
        description: "MyText",
        director: "Director",
        rating: "Rating"
      ),
      Film.create!(
        title: "Title",
        description: "MyText",
        director: "Director",
        rating: "Rating"
      )
    ])
  end

  it "renders a list of films" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Director".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Rating".to_s), count: 2
  end
end
