# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/show' do
  before do
    assign(:category, Category.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
