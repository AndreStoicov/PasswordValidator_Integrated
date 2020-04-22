Dado(/^a seguinte senha$/) do |table|
  @valid_password = payload(table.raw[0][0])
end

Entao(/^o resultado deve ser isValidPassword$/) do |table|

  @validator_respose = JSON.parse(PasswordValidatorClient.new(@valid_password).validate.body, simbolized: true)
  expect(@validator_respose["isValidPassword"]).to eq(table.raw[0][0] == "true")
end

E(/^deve retornar as seguintes mensagens de erro$/) do |table|

  table.raw.each do |rowdata|
    error = rowdata[0]


    status_values =  @validator_respose['errors'].select {|item| item['message'] == error }
    expect(status_values.count).to eq(1)
  end

end


def payload(password)
  {
      "Password": password
  }
end