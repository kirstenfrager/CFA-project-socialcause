require 'rails_helper'

RSpec.describe "photographs/edit", type: :view do
  before(:each) do
    @photograph = assign(:photograph, Photograph.create!(
      :title => "MyString",
      :author => "MyString",
      :pictures => "MyString",
      :influencer => nil
    ))
  end

  it "renders the edit photograph form" do
    render

    assert_select "form[action=?][method=?]", photograph_path(@photograph), "post" do

      assert_select "input#photograph_title[name=?]", "photograph[title]"

      assert_select "input#photograph_author[name=?]", "photograph[author]"

      assert_select "input#photograph_pictures[name=?]", "photograph[pictures]"

      assert_select "input#photograph_influencer_id[name=?]", "photograph[influencer_id]"
    end
  end
end
