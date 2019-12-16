require 'test_helper'
require 'minitest/autorun'

describe Image do
  it 'can not have empty url' do
    _(Image.create(url: nil).valid?).must_equal false
  end
end