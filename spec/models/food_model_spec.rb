require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(id: 1, name: 'Kenny')
    @food = Food.new(id: 1, user: @user, price: 1, quantity: 1, name: 'Random',
measuerment_unit: 1 )
  end

  it 'name must not be blank' do
    @food.name = nil
    expect(@food).to_not be_valid
  end

  it 'food bio to match' do
    @food.price = '1'
    expect(@food).to be_valid
  end

  it 'Check if postscounter is an integer' do
    @food.quantity = 'Random'
    expect(@food).to_not be_valid
  end

  it 'Check if postscounter is an integer' do
    @food.quantity = '1'
    expect(@food).to be_valid
  end

  it '' do
    @food.measuerment_unit = 1
    expect(@food).to be_valid
  end
end