class Monster
  attr_reader :name, :actions

  def initialize(name)
    @name = name
    @actions = {
      screams: 0,
      scares: 0,
      run: 0,
      hide: 0
    }
  end

  def say(&block)
    print "#{name} says..."
    yield
  end

  def inspect
    "<#{name}, #{actions}>"
  end

  def print_scoreboard
    puts "-------------------------"
    puts "#{name} scoreboard"
    puts "-------------------------"
    puts "- Screams: #{actions[:screams]}"
    puts "- Scares: #{actions[:scares]}"
    puts "- Runs: #{actions[:runs]}"
    puts "- Hides: #{actions[:hides]}"
    puts "-------------------------"
  end

  def scream(&block)
    actions[:screams] += 1
    print "#{name} screams! "
    yield
  end

    def scare(&block)
      actions[:scares] += 1
      print "#{name} scares you!"
      yield
    end

    def run(&block)
      actions[:run] += 1
      print "#{name} runs!"
      yield
    end

    def hide(&block)
      actions[:hide] += 1
      print "#{name} hides!"
      yield self if block_given?
    end
end

monster = Monster.new("Mike Wazovsky")
monster.say { puts "Do you want learn Ruby? " }

monster.scream do
  puts "CO-CO-CO-CO-CO-CO-CO-CO!"
end

monster.scare do
  puts " Create your gem!!"
end

monster.run do
  puts " Going away!Learn PHP!"
end

monster.hide do |monster|
  puts " Running away and sleep. Deadline is coming !!"
  puts monster.inspect
end

puts "\n"
monster.print_scoreboard
