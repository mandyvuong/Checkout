require 'checkout'

describe Shop do
  it 'returns price for valid single item A' do
    expect(subject.checkout('A')).to eq 50
  end
end