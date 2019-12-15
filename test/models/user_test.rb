require 'test_helper'
require 'minitest/autorun'

describe User do
  it 'can not have empty login' do
    role1 = Role.create(name: 'User')
    _(User.create(login: nil, password: '12345', email: 'ddiavall@yandex.ru', role: role1, telephone_number: '89281800979').valid?).must_equal false
  end

end