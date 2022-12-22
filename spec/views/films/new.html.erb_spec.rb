require 'rails_helper'

RSpec.describe "films/new", type: :view do
  before(:each) do
    assign(:film, Film.new(
      title: "MyString",
      description: "MyText",
      director: "MyString",
      rating: "MyString"
    ))
  end

  it "renders new film form" do
    render

    assert_select "form[action=?][method=?]", films_path, "post" do

      assert_select "input[name=?]", "film[title]"

      assert_select "textarea[name=?]", "film[description]"

      assert_select "input[name=?]", "film[director]"

      assert_select "input[name=?]", "film[rating]"
    end
  end
end
