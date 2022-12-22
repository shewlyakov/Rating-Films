require 'rails_helper'

RSpec.describe "films/show", type: :view do
  before(:each) do
    assign(:film, Film.create!(
      title: "Title",
      description: "MyText",
      director: "Director",
      rating: "Rating"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Director/)
    expect(rendered).to match(/Rating/)
  end
end
