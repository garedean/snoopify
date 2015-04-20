require('rspec')
require('snoopifier')

describe('String#snoopify') do
  it("Words without 's' are returned unchanged") do
    expect("Tommy Bahama".snoopify).to(eq("Tommy Bahama"))
  end
  it("Change 's' to 'z' when it's not capitalized and it's not the first character of a word") do
    expect("In the house".snoopify).to(eq("In the houze"))
  end
  it("Do nothing for a capitalized 'S'") do
    expect("Susan has some serious skills".snoopify).to(eq("Suzan haz some seriouz skillz"))
  end
  it("Do nothing if an 's' starts a word'") do
    expect("Susan has some serious skills".snoopify).to(eq("Suzan haz some seriouz skillz"))
  end
end
