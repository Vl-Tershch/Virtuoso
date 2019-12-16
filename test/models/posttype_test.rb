require 'test_helper'
require 'minitest/autorun'

describe PostType do
  it 'can not have empty title' do
    _(PostType.create(title: nil).valid?).must_equal false
  end
end