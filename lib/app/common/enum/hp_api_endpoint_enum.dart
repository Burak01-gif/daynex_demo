enum HpApiEndpoint {
  allCharacters('/api/characters'),
  hogwartsStudents('/api/characters/students'),
  hogwartsStaff('/api/characters/staff'),
  gryffindorCharacters('/api/characters/house/gryffindor'),
  allSpells('/api/spells');

  final String path;
  const HpApiEndpoint(this.path);
}
