# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/new' do
  before do
    assign(:category, Category.new)
  end

  it 'renders new category form' do
    render

    assert_select 'form[action=?][method=?]', categories_path, 'post' do
    end
  end
end
