require 'rails_helper'

RSpec.describe "photographs/index", type: :view do
  before(:each) do
    assign(:photographs, [
      Photograph.create!(
        :title => "Title",
        :author => "Author",
        :pictures => "Pictures",
        :influencer => nil
      ),
      Photograph.create!(
        :title => "Title",
        :author => "Author",
        :pictures => "Pictures",
        :influencer => nil
      )
    ])
  end

  it "renders a list of photographs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Pictures".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
