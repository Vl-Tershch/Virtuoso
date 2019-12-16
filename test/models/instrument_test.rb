require 'test_helper'
require 'minitest/autorun'

role1 = Role.create(name: 'User')
user = User.create(login: 'DdiavaLL', password: '12345', email: 'l@yandex.ru', role: role1, telephone_number: '89000000000')

describe Instrument do
  it 'can not have empty title' do
    _(Instrument.create(title: nil, description: '2009 ESP KH-2 Kirk Hammett Signature White Ouija Number Two!!!', user: user).valid?).must_equal false
  end
end