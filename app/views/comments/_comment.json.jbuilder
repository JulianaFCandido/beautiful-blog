# frozen_string_literal: true

json.extract! comment, :id, :description, :article_id, :user_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
