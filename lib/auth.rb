class Auth
  ALGORITH = 'HS256'

  def self.encrypt(hash)
    JWT.encode(hash, secret_key, ALGORITHM)
  end

  def self.decode()
  end

  def secret_key
    "c52c5aa6c8d8a898f24e81792f5c79cb61ca0e92477e01a43997d12b8df9d05e6fbb54197f8a34dea6d74c169d60ffe16cc20009c9bb1c613b83dda3bb2a80f6"
  end
end
