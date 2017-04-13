require 'rails_helper'

RSpec.describe "photographs/new", type: :view do
  before(:each) do
    assign(:photograph, Photograph.new(
      :title => "MyString",
      :author => "MyString",
      :pictures => "MyString",
      :influencer => nil
    ))
  end

  it "renders new photograph form" do
    render

    assert_select "form[action=?][method=?]", photographs_path, "post" do

      assert_select "input#photograph_title[name=?]", "photograph[title]"

      assert_select "input#photograph_author[name=?]", "photograph[author]"

      assert_select "input#photograph_pictures[name=?]", "photograph[pictures]"

      assert_select "input#photograph_influencer_id[name=?]", "photograph[influencer_id]"
    end
  end
end
