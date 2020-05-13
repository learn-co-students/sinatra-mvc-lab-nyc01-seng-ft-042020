describe 'class PigLatinizer' do
  let!(:words) { PigLatinizer.new }
  word1 = PigLatinizer.new("pork")
  word2 = PigLatinizer.new("I")
  word3 = PigLatinizer.new("hello")
  word4 = PigLatinizer.new("please")
  word5 = PigLatinizer.new("tomorrow")
  word6 = PigLatinizer.new("until")
  word7 = PigLatinizer.new("this")
  word8 = PigLatinizer.new("Enumeration")
  word9 = PigLatinizer.new("spray")
  word10 = PigLatinizer.new("prays")

  phrase = PigLatinizer.new("i love programming")
  
  it 'can create a new instance of a class' do
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end

  it 'piglatinizes an individual word' do
    expect(word1.piglatinize).to eq("orkpay")
    expect(word2.piglatinize).to eq("Iway")
    expect(word3.piglatinize).to eq("ellohay")
    expect(word4.piglatinize).to eq("easeplay")
    expect(word5.piglatinize).to eq("omorrowtay")
    expect(word6.piglatinize).to eq("untilway")
    expect(word7.piglatinize).to eq("isthay")
    expect(word8.piglatinize).to eq("Enumerationway")
    expect(word9.piglatinize).to eq("ayspray")
    expect(word10.piglatinize).to eq("ayspray")
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(phrase.piglatinize).to eq("iway ovelay ogrammingpray")
  end

end
