# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'articles/new' do
  before do
    assign(:article, Article.new)
  end

  it 'renders new article form' do
    render

    assert_select 'form[action=?][method=?]', articles_path, 'post' do
    end
  end
end
