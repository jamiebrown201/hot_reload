require 'rails_helper'

describe Features do
describe '#enabled?' do
  it 'returns a hash with a key of features and a value of boolean' do
    feature_switch(true)
    expect(Features.enabled?.keys).to eq(["feature"])
  end
end
end
