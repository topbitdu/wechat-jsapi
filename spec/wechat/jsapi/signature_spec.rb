RSpec.describe Wechat::JSAPI::Signature do

  before :each do
  end

  after :each do
  end

  let :link      do 'https://wechat.product.company.com/' end
  let :ticket    do 'abcdef'                              end
  let :timestamp do '1234567890'                          end
  let :nonce     do 'a1b2c3d4e5f6'                        end

  it 'should create same signature per same parameters' do

    singature_1 = described_class.create link, ticket, timestamp, nonce
    expect(singature_1).not_to be :empty

    singature_2 = described_class.create link, ticket, timestamp, nonce
    expect(singature_2).not_to be :empty

    expect(singature_1).to eq(singature_2)

  end

  it 'should create different signature per different link' do

    singature_1 = described_class.create link, ticket, timestamp, nonce
    expect(singature_1).not_to be :empty

    singature_2 = described_class.create "#{link}1", ticket, timestamp, nonce
    expect(singature_2).not_to be :empty

    expect(singature_1).not_to eq(singature_2)

  end

  it 'should create different signature per different ticket' do

    singature_1 = described_class.create link, ticket, timestamp, nonce
    expect(singature_1).not_to be :empty

    singature_2 = described_class.create link, "#{ticket}1", timestamp, nonce
    expect(singature_2).not_to be :empty

    expect(singature_1).not_to eq(singature_2)

  end

  it 'should create different signature per different timestamp' do

    singature_1 = described_class.create link, ticket, timestamp, nonce
    expect(singature_1).not_to be :empty

    singature_2 = described_class.create link, ticket, "#{timestamp}1", nonce
    expect(singature_2).not_to be :empty

    expect(singature_1).not_to eq(singature_2)

  end

  it 'should create different signature per different nonce' do

    singature_1 = described_class.create link, ticket, timestamp, nonce
    expect(singature_1).not_to be :empty

    singature_2 = described_class.create link, ticket, timestamp, "#{nonce}1"
    expect(singature_2).not_to be :empty

    expect(singature_1).not_to eq(singature_2)

  end

end
