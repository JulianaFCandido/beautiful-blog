json.extract! article, :id, :title, :description, :views, :user_id, :category_id, :created_at, :updated_at
json.url article_url(article, format: :json)
