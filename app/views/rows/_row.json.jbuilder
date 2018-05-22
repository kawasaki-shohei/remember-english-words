json.extract! row, :id, :word, :jpn, :sentense, :page, :created_at, :updated_at
json.url row_url(row, format: :json)
