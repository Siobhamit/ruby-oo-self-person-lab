class Person
 attr_accessor :bank_account, :hygiene, :happiness
 attr_reader :name

 

def initialize(name)
@name = name.freeze
@happiness = 8
@hygiene = 8
@bank_account = 25
end


def happiness
    @happiness
  end

  def happiness=(happiness)
      if  happiness > 10
        @happiness = 10
      elsif happiness < 0
        @happiness = 0
      else 
        @happiness = happiness
      end
  end

  
def hygiene
    @hygiene
  end

  def hygiene=(hygiene)
      if  hygiene > 10
        @hygiene = 10
      elsif hygiene < 0
        @hygiene = 0
      else 
        @hygiene = hygiene
      end
  end

def clean?
    if hygiene > 7
        true
    else false
    end 
end

def happy?
    if happiness > 7
        true
    else false
    end
end

def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
end

def take_bath
    hygiene=(@hygiene += 4)
    
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
@happiness += 2
@hygiene -= 3
return "♪ another one bites the dust ♫"
end

def call_a_friend(friend)
    @happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{name}. How are you?"
end

def have_a_conversation(friend, topic)
if topic == "polictics"
    happiness -= 1
    friend.happiness -= 1
  return "blah blah partisan blah lobbyist"
elsif topic == "weather"
    happiness += 1
    friend.happiness += 1
        return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
end
end

end