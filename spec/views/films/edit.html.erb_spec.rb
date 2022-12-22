require 'rails_helper'

RSpec.describe "films/edit", type: :view do
  let(:film) {
    Film.create!(
      title: "MyString",
      description: "MyText",
      director: "MyString",
      rating: "MyString"
    )
  }

  before(:each) do
    assign(:film, film)
  end

  it "renders the edit film form" do
    render

    assert_select "form[action=?][method=?]", film_path(film), "post" do

      assert_select "input[name=?]", "film[title]"

      assert_select "textarea[name=?]", "film[description]"

      assert_select "input[name=?]", "film[director]"

      assert_select "input[name=?]", "film[rating]"
    end
  end
end
