#include <map>
#include <string>
#include <iostream>

using namespace std;
int main()
{

    return 0;
}
class ability {
protected :
    string name = "Undefined";
    string description = "Description not added";
    unsigned int unlock_level = 0;
    ability(string Name) : name(Name) {

    }

};

class activated_ability : private ability {
    unsigned int max_charges = 0;
public :
    activated_ability(string Name, unsigned int charges) : ability(Name) {this->max_charges = charges;}


};

activated_ability secondBreath("Second Breath",1);
class static_ability : public ability {

};

class item {
    string name = "Undefined";
    string description = "Description not added";
    bool is_usable = 0;
};

class Sheet {
    string name = "Bob";
    int level = 1;
    int master_bonus = 2;
    map<string,int> Stats {
        { "str",  8}, // cтаты
        { "dex",  8},
        { "con",  8},
        { "wis",  8},
        { "int",  8},
        { "cha" , 8},
    };
    int str = 8; // cтаты
    int dex = 8;
    int con = 8;
    int wis = 8;
    int intl = 8;
    int cha = 8;
    map <int,string> Class {{1,"Fighter"}, //классы
                             {2,"Barbarian"},{3,"Bard"},
                             {4,"Cliric"},{5,"Druid"},
                             {6,"Monk"},{7,"Paladin"},
                             {8,"Ranger"},{9,"Rogue"},
                             {10,"Warlock"},{11,"Sorcerer"},
                             {12,"Wizard"}};
    map <double,string> Race {{1,"Human"},{2,"Elf"},{3,"Dwarf"},
                            {4,"Halfling"},{5,"Gnome"},{6,"Half-elf"},
                           {7,"Half-orc"},{8,"Tiefling"},{9,"Dragonborn"}};


    Sheet()  {
    cout << "Hello, this is Character sheet pre-alpha /n";
    cout << "Enter your chracter name: /n";
    cin >> this->name;
    cout << "Pick your class" << endl;
    for (auto list = this->Class.begin();list != this->Class.end(); ++list) {
        cout << list->first << " : " << list->second;
    }
    
    

}
};

class Fighter_Sheet : public Sheet {


};
