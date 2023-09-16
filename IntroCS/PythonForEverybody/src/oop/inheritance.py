class PartyAnimal:
    x = 0
    name = ""
    
    def __init__(self,nam):
        self.name = nam
        print(self.name,'constructed')

    def party(self):
        self.x += 1
        print(self.name,'party conunt',self.x)

class FootballFan(PartyAnimal): #FootballFan is a sub-class of PartyAnimal
    points = 0
    
    def touchdown(self):
        self.points += 7
        self.party()
        print(self.name,'points',self.points)


#ann = PartyAnimal('Ann')
fan = FootballFan('Ann')
fan.touchdown()