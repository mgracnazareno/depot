# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database'
Product.destroy_all

puts 'Creating Products'
Product.create!(
  title: 'Build ChatBot Interactions',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
    eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque felis
    imperdiet proin fermentum leo vel orci porta non. Quisque sagittis purus sit amet.
    Duis ultricies lacus sed turpis tincidunt. Et tortor at risus viverra adipiscing at.
    Eu turpis egestas pretium aenean. Aliquam sem fringilla ut morbi tincidunt augue
    interdum velit euismod. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel.
    Interdum varius sit amet mattis vulputate. Nunc vel risus commodo viverra maecenas
    accumsan lacus. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque.
    Proin fermentum leo vel orci porta non pulvinar neque. Vel facilisis volutpat est velit.
    Commodo quis imperdiet massa tincidunt nunc pulvinar. Orci eu lobortis elementum nibh.
    Risus nullam eget felis eget nunc lobortis mattis aliquam. Egestas egestas fringilla
    phasellus faucibus scelerisque eleifend donec pretium vulputate.',
  image: 'dpchat.jpg',
  price: 29.00
)

Product.create!(
  title: 'Docker for Rails Developers',
  description: 'Build, Ship, and Run your applications, solving major problems you face every day.
    It allows you to run applications at scale, adding new resources as needed.
    Docker provides a reliable, consistent environment that’s guaranteed to work
    the same everywhere.

    This book gives you a solid foundation on using Docker and fitting it into your development
    workflow and deployment process.',
  image: 'ridocker.jpg',
  price: 40.27
)
