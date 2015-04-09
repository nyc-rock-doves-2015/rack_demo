class MyAwesomeMiddleware
  HTTP_OK_STATUS_CODE = 200

  def initialize(names, determinator_class)
    @names, @determinator_class = names, determinator_class
  end

  def call(env)
    [ HTTP_OK_STATUS_CODE, determine_bear_status(env), summon_rock_doves ]
  end

  private

    def determine_bear_status(env)
      base = {'Content-Type' => 'text/plain'}
      base.merge(@determinator_class.new(env).determine)
    end

    def summon_rock_doves
      @names.map{|name| name + " "} << "ASSEMBLE!!!!!"
    end
end

