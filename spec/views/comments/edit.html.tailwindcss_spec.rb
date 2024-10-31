# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'comments/edit' do
  let(:comment) do
    Comment.create!
  end

  before do
    assign(:comment, comment)
  end

  it 'renders the edit comment form' do
    render

    assert_select 'form[action=?][method=?]', comment_path(comment), 'post' do
    end
  end
end
