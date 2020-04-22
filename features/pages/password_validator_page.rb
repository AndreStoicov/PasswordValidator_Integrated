class PasswordValidatorClient
  include HTTParty

  def initialize(body)
    @payload = {body: body.to_json, headers: {"Content-Type": 'application/json'}}
    @options = {}
  end

  def password_validator_uri
    'http://localhost:5051/password'
  end

  def validate
    self.class.post("#{password_validator_uri}/validate", @payload)
  end

end