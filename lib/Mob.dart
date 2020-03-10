class Mob{
  String link;
  int cr; //toint
  String mr;
  String name;
  int xp;
  String raceClass;
  String alignment;
  String size;
  String type;
  List<String> subtypes;
  int init;
  List<String> auras;
  List<String> senses;
  int perception;
  int ac;
  int touch;
  int flatfooted;
  List<String> acBonuses;
  int hp; //toint
  String hitDice;
  int fort;
  int ref;
  int will;
  List<String> defensiveAbilities;
  String dr;
  var resistances; // dict
  List<String>  immunities; // yet to parse
  List<String>  weakness; // the same to above?
  var speed; // dict
  List<String> meleeAttacks;
  List<String> rangedAttacks;
  List<String> specialAttacks;
  List<String> spellLikeAbilities;
  int strength;
  int dexterity;
  int constitution;
  int intelligence;
  int wisdom;
  int charisma;
  int bab;
  int cmb;
  int cmd;
  List<String> feats;
  String skills;
  List<String> languages;
  List<String> specialQualities;
  String environment;
  String organization;
  String treasure;
  List<String> specialAbilities;
  String description;

  Mob(Map<String, dynamic> data){
    link = data['link'];
    cr = int.parse(data['cr']);
    mr = data['mr'];
    name = data['name'];
    xp = data['xp'];
    raceClass = data['raceClass'];
    alignment = data['alignment'];
    size = data['size'];
    type = data['type'];
    subtypes = data['subtypes'];
    init = data['init'];
    auras = data['auras'];
    senses = data['senses'];
    perception = data['perception'];
    ac = data['ac'];
    touch = data['touch'];
    flatfooted = data['flatfooted'];
    acBonuses = data['acBonuses'];
    hp = int.parse(data['hp']);
    hitDice = data['hitDice'];
    fort = data['fort'];
    ref = data['ref'];
    will = data['will'];
    defensiveAbilities = data['defensiveAbilities'];
    dr = data['dr'];
    resistances = data['resistances'];
    immunities = data['immunities'];
    weakness = data['weakness'];
    speed = data['speed'];
    meleeAttacks = data['meleeAttacks'];
    rangedAttacks = data['rangedAttacks'];
    specialAttacks = data['specialAttacks'];
    spellLikeAbilities = data['spellLikeAbilities'];
    strength = data['strength'];
    dexterity = data['dexterity'];
    constitution = data['constitution'];
    intelligence = data['intelligence'];
    wisdom = data['wisdom'];
    charisma = data['charisma'];
    bab = data['bab'];
    cmb = data['cmb'];
    cmd = data['cmd'];
    feats = data['feats'];
    skills = data['skills'];
    languages = data['languages'];
    specialQualities = data['specialQualities'];
    environment = data['environment'];
    organization = data['organization'];
    treasure = data['treasure'];
    specialAbilities = data['specialAbilities'];
    description = data['description']
  }

}