require 'checkout'

describe Shop do
  it 'returns price for valid single item A' do
    expect(subject.checkout('A')).to eq 50
  end
  it 'returns price for valid single item B' do
    expect(subject.checkout('B')).to eq 30
  end
  it 'returns price for valid single item C' do
    expect(subject.checkout('C')).to eq 20
  end
  it 'returns price for valid single item D' do
    expect(subject.checkout('D')).to eq 15
  end
  it 'returns -1 for invalid item' do
    expect(subject.checkout('a')).to eq -1
  end
  it 'returns price for multiple item A' do
    expect(subject.checkout('AA')).to eq 100
  end
  it 'return price for multiple items' do
    expect(subject.checkout('ABCD')).to eq 115
  end
end