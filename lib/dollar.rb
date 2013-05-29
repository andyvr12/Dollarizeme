class Dollar < ActiveResource::Base
  self.site = 'http://localhost:3001/' #exchange_api
  self.format = :json
end