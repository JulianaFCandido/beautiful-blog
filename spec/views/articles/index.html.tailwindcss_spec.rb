# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'articles/index' do
  before do
    assign(:articles, [
             Article.create!,
             Article.create!
           ])
  end

  it 'renders a list of articles' do
    render
    'div>p'
  end
end
