require "rspec"
require "pry"
require "scrabble"

describe('Hash#scrabble') do
  it('returns scrabble score for a letter') do
    expect("abcdefg".scrabble()).to(eq(16))
  end
end
