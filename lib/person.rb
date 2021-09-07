class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def bank_account=(bank_account)
        @bank_account = bank_account
    end
    def happiness=(happiness)
        happiness > 10 ? @happiness = 10 : happiness < 0 ? @happiness = 0: @happiness = happiness
    end
    def hygiene=(hygiene)
        hygiene > 10 ? @hygiene = 10 : hygiene < 0 ? @hygiene = 0 : @hygiene = hygiene
    end
    def happy?
        happiness > 7
    end
    def clean?
        hygiene > 7
    end
    def get_paid(amount)
        @bank_account = bank_account + amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene = hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene = hygiene - 3
        self.happiness = happiness + 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        friend.happiness = friend.happiness + 3
        self.happiness = happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness = friend.happiness - 2
            self.happiness = happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness = friend.happiness + 1
            self.happiness = happiness + 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end

