require('rspec')
require('queen_attack')

describe('Array#queen_attack') do
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?([2,3])).to(eq(false))
  end

  it('is true if the coordinates are horizontally in line') do
    expect([1,4].queen_attack?([2,4])).to(eq(true))
  end

  it('is true if the coordinates are vertically in line') do
    expect([1,4].queen_attack?([1,6])).to(eq(true))
  end
  
  it('is true if the coordinates are diagonally ascending') do
    expect([1,2].queen_attack?([2,3])).to(eq(true))
  end

  it('is true if the coordinates are diagonally descending') do
    expect([1,3].queen_attack?([2,2])).to(eq(true))
  end
end
