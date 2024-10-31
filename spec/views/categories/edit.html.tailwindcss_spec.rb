# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/edit' do
  let(:category) do
    Category.create!
  end

  before do
    assign(:category, category)
  end

  it 'renders the edit category form' do
    render

    assert_select 'form[action=?][method=?]', category_path(category), 'post' do
    end
  end
end
