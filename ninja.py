class Ninja:
    ranks = {'Rookie': 0, 'Apprentice': 2, 'Master': 3, 'Assassin': 4, 'God': 10}
    experience_levels = {'Low': 1, 'Medium': 2, 'High': 3}
    energy_levels = {'Exhausted': 0, 'Tired': 1, 'Rested': 2, 'Well Rested': 3, 'On Fire': 10}

    def __init__(self, name: str, rank: str, experience: str, energy: str):
        self.name = name
        self.rank = rank
        self.experience = experience
        self.energy = energy


class EnemyNinja(Ninja):
    moods = {'Undecided': 1, 'Bad': 2, 'Evil': 3, 'Devilish': 4}

    def __init__(self, name: str, rank: str, experience: str, energy: str, mood: str):
        super().__init__(name, rank, experience, energy)
        self.mood = mood


class AlliedNinja(Ninja):
    mission_types = {'On Mission': True, 'On Free Time': False}

    def __init__(self, name: str, rank: str, experience: str, energy: str, on_mission: str):
        super().__init__(name, rank, experience, energy)
        self.on_mission = on_mission

        self.action = None
        self.alive = True

    def encounters(self, enemy: EnemyNinja):
        if self.mission_types[self.on_mission]:
            if self.ranks[self.rank] >= enemy.ranks[enemy.rank]:
                self.action = 'Fight'
            else:
                self.action = 'Run from'
        else:
            self.action = 'Ignore'

    def fights(self, enemy):
        if self.ranks[self.rank] == enemy.ranks[enemy.rank]:
            if self.experience_levels[self.experience] < enemy.experience_levels[enemy.experience]:
                if enemy.moods[enemy.mood] > 1:
                    self.alive = False
            elif self.experience_levels[self.experience] == enemy.experience_levels[enemy.experience]:
                if self.energy_levels[self.energy] < enemy.energy_levels[enemy.energy]:
                    if enemy.moods[enemy.mood] > 1:
                        self.alive = False

    def runs_from(self, enemy: EnemyNinja):
        if self.ranks[self.rank] - enemy.ranks[enemy.rank] > 1:
            if enemy.moods[enemy.mood] > 1:
                self.alive = False
        else:
            if self.energy_levels[self.energy] < enemy.energy_levels[enemy.energy]:
                if enemy.moods[enemy.mood] > 1:
                    self.alive = False
