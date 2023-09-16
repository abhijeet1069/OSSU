class PartyAnimal:
    x = 0
    class_name = ''
#Constructor
    def __init__(self):
        self.class_name = self.__class__.__name__ #get class name
        print(self.class_name,'object constructed')

    def party(self):
        self.x += 1
        print('So far',self.x)

#Destructor
    def __del__(self):
        print(self.class_name,'object destructed')


an = PartyAnimal()
an.party()