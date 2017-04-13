require 'rails_helper'

RSpec.describe "photographs/show", type: :view do
  before(:each) do
    @photograph = assign(:photograph, Photograph.create!(
      :title => "Title",
      :author => "Author",
      :pictures => "Pictures",
      :influencer => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Pictures/)
    expect(rendered).to match(//)
  end
end
