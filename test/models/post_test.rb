require 'test_helper'
require 'minitest/autorun'

role1 = Role.create(name: 'User')
post = PostType.create(title: 'Продажа')
user = User.create(login: 'DdiavaLL', password: '12345', email: 'l@yandex.ru', role: role1, telephone_number: '89000000000')
instrument = Instrument.create(title: 'Esp Custom Shop Kirk Hammett Metallica White', description: '2009 ESP KH-2 Kirk Hammett Signature White Ouija Number Two!!!', user: user)

describe Post do
  it 'can not have empty content' do
    _(Post.create(content: nil, date: '21.11.2019', instrument_id: instrument, user_id: user, post_type: post).valid?).must_equal false
  end

  it 'can not have empty date' do
    _(Post.create(content: 'Гитара', date: nil, instrument_id: instrument, user_id: user, post_type: post).valid?).must_equal false
  end
end