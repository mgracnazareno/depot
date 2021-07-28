# frozen_string_literal: true

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test 'product attributes must not be empty' do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:image].any?
    assert product.errors[:price].any?
    # assert true
  end

  test 'product price must be positive' do
    product = Product.new(
      title: 'Book title',
      description: 'This is a programming book',
      image: 'book.jpg'
    )
    product.price = -1
    assert product.invalid?
    assert_equal['must be greater than or equal to 0.01'],
    product.errors[:price],

    product.price = 0
    assert product.invalid?
    assert_equal['must be greater than or equal to 0.01'],
    product.errors[:price],

    product.price = 1
    assert product.valid?
  end

  def new_product(image_url)
    Product.new(
      title: 'Book title',
      description: 'This is a programming book',
      price: 1,
      image: image_url
    )
  end

  test 'image_url' do
    ok = %w[mary.gif mary.jpg mary.png MARY.JPG Mary.jpg
            http://a.b.c|x|y|z|mary.gif]
    bad = %w[mary.doc mary.gif/more mary.gif.more]

    ok.each do |image_url|
      assert new_product(image_url).valid?, "#{image_url} shouldn\t be invalid"
    end

    bad.each do |image_url|
      assert new_product(image_url).invalid?, "#{image_url} shouldn\t be valid"
    end
  end
end
