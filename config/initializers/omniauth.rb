Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    # push時には削除するため平文で入力
    provider :github, "Iv1.5f074aaaa783fd6e", "d1f1561286d604118a83a7119f2891bc31eb15b6"
  else
    provider :github ,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end