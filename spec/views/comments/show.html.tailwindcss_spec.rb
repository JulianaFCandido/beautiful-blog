# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'comments/show' do
  before do
    assign(:comment, Comment.create!)
  end

  it 'renders attributes in <p>' do
    render
  end
end
