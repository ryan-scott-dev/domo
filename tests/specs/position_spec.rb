describe Position do
  
  it 'can be created' do
    @position = Position.new
    assert_equal 0, @position.x
    assert_equal 0, @position.y

    @position = Position.new(10, 10)
    assert_equal 10, @position.x
    assert_equal 10, @position.y
  end

  it 'can be added' do
    @position = Position.new(10, 10) + Position.new(10, 10)
    assert_equal 20, @position.x
    assert_equal 20, @position.y
  end

  it 'can be reported' do
    @position = Position.new(10, 10)
    assert_equal "[10, 10]", @position.report
  end
end