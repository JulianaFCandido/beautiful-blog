# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'comments/index' do
  before do
    assign(:comments, [
             Comment.create!,
             Comment.create!
           ])
  end

  it 'renders a list of comments' do
    render
    'div>p'
  end
end
