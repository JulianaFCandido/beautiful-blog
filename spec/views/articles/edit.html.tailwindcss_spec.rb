# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'articles/edit' do
  let(:article) do
    Article.create!
  end

  before do
    assign(:article, article)
  end

  it 'renders the edit article form' do
    render

    assert_select 'form[action=?][method=?]', article_path(article), 'post' do
    end
  end
end
