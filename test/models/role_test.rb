require 'test_helper'
require 'minitest/autorun'

describe Role do
  it 'can not have empty name' do
    _(Role.create(name: nil ).valid?).must_equal false
  end
end