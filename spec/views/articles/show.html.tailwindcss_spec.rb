# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'articles/show' do
  before do
    assign(:article, Article.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
