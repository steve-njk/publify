require 'rails_helper'

describe SearchSidebar do
  it 'is available' do
    expect(SidebarRegistry.available_sidebars).to include(SearchSidebar)
  end
end
