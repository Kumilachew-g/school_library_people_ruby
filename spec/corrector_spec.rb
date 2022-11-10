require './corrector'

describe Corrector do
  before :each do
    @corrector = Corrector.new
  end

  it 'should correct the name' do
    expect(@corrector.correct_name('haddis')).to eq 'Haddis'
    expect(@corrector.correct_name('abebe')).to eq 'Abebe'
    expect(@corrector.correct_name('belachew')).to eq 'Belachew'
  end
end
