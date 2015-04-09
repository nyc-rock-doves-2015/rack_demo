class BearDeterminator
  def initialize(env)
    @env = env
  end

  def determine
    if @env['REQUEST_URI'] =~ /foo/
      { 'Bear-Foo' => 'true' }
    else
      { 'Bear-Lover' => 'Do you require assistance?' }
    end
  end
end
