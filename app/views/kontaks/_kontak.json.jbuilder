json.extract! kontak, :id, :nama, :email, :telepon, :twitter, :facebook, :instagram, :created_at, :updated_at
json.url kontak_url(kontak, format: :json)
