json.extract! device, :id, :host, :os, :maker, :model, :_type, :purpose, :enabled, :deleted, :created_at, :updated_at
json.url device_url(device, format: :json)
