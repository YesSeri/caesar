require './lib/caesar_shift.rb'

describe "Caesar Cipher" do
  def load_caesar_shift(word, shift)
    caesar_shift(word, shift)
  end
  context "With a sentence and a certain shift" do

    it "cipher the given word by a key" do
        expect(load_caesar_shift("tomorrow",7)).to eq("avtvyyvd")
      end

      it "cipher the given letter by a key" do
        expect(load_caesar_shift("m",7)).to eq("t")
      end

      it "cipher the word preserving punctuation characters" do
        expect(load_caesar_shift("hello!",7)).to eq("olssv!")
      end

      it "cipher the word preserving the others characters" do
        expect(load_caesar_shift("hello world!!!",-30)).to eq("dahhk sknhz!!!")
      end

      it "cipher the word preserving the uppercase" do
        expect(load_caesar_shift("HELLO WORLD!",7)).to eq("OLSSV DVYSK!")
      end

      it "cipher the word wrapping the letters from z to a" do
        expect(load_caesar_shift("zeus",1)).to eq("afvt")
      end

      it "cipher the word preserving uppercase and dowcase" do
        expect(load_caesar_shift("Ruby on Rails!",7)).to eql("Ybif vu Yhpsz!")
      end
  end
end
    
