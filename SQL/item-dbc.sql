-- class
set @class_weapon = 2;
set @class_armor = 4;

-- subclass weapon
set @subclass_axe_one_hand = 0;
set @subclass_axe_two_hand = 1;
set @subclass_bow = 2;
set @subclass_gun = 3;
set @subclass_mace_one_hand = 4;
set @sublcass_mace_two_hand = 5;
set @subclass_polearm = 6;
set @subclass_sword_one_hand = 7;
set @subclass_sword_two_hand = 8;
set @subclass_staff = 10;
set @subclass_fist_weapon = 13;
set @subclass_dagger = 15;
set @subclass_crossbow = 18;
set @subclass_wand = 19;

-- sublcass armor
set @subclass_miscellaneous = 0;
set @subclass_cloth = 1;
set @subclass_leather = 2;
set @subclass_mail = 3;
set @subclass_plate = 4;
set @subclass_shield = 6;

-- inventorytype
set @inventorytype_head = 1;
set @inventorytype_shoulders = 3;
set @inventorytype_shirt = 4;
set @inventorytype_chest = 5;
set @inventorytype_waist = 6;
set @inventorytype_legs = 7;
set @inventorytype_feet = 8;
set @inventorytype_wrists = 9;
set @inventorytype_hands = 10;
set @inventorytype_one_hand = 13;
set @inventorytype_shield = 14;
set @inventorytype_bow = 15;
set @inventorytype_back = 16;
set @inventorytype_two_hand = 17;
set @inventorytype_tabard = 19;
set @inventorytype_robe = 20;
set @inventorytype_main_hand = 21;
set @inventorytype_off_hand = 22;
set @inventorytype_holdable = 23;
set @inventorytype_ranged = 26;

-- sheath 
set @sheath_ranged_and_frill = 0;
set @sheath_two_hand_weapon = 1;
set @sheath_staff = 2;
set @sheath_one_handed = 3;
set @sheath_shield = 4;
set @sheath_off_hand = 6;
set @sheath_fist_weapon = 7;

-- material
set @material_metal = 1;
set @material_wood = 2;
set @material_liquid = 3;
set @material_chain = 5;
set @material_plate = 6;
set @material_cloth = 7;
set @material_leather = 8;

-- other
set @requiredlevel = 60;
set @itemlevel = 60;
set @flags_heroic = 8;
set @flags_default = 0;
set @quality_epic = 4;

set @sound_override_subclassid = -1;

-- https://www.wowhead.com/item=61326/vicious-gladiators-decapitator
set @itemid = 61326;
set @displayid = 81901;
delete from item where itemid = @itemid;
insert into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid) 
values (@itemid, @class_weapon, @subclass_axe_two_hand, @sound_override_subclassid, @material_metal, @displayid, @inventorytype_two_hand, @sheath_two_hand_weapon);

-- https://www.wowhead.com/item=61327/vicious-gladiators-shanker
set @itemid = 61327;
set @displayid = 61327;
delete from item where itemid = @itemid;
insert into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid) 
values (@itemid, @class_weapon, @subclass_dagger, @sound_override_subclassid, @material_metal, @displayid, @inventorytype_one_hand, @sheath_one_handed);

-- https://www.wowhead.com/item=61340/vicious-gladiators-pike
set @itemid = 61340;
set @displayid = 79850;
delete from item where itemid = @itemid;
insert into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid) 
values (@itemid, @class_weapon, @subclass_polearm, @sound_override_subclassid, @material_metal, @displayid, @inventorytype_two_hand, @sheath_two_hand_weapon);

-- https://www.wowhead.com/item=61353/vicious-gladiators-longbow
set @itemid = 61353;
set @displayid = 61353;
delete from item where itemid = @itemid;
insert into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid) 
values (@itemid, @class_weapon, @subclass_bow, @sound_override_subclassid, @material_wood, @displayid, @inventorytype_bow, @sheath_ranged_and_frill);

-- https://www.wowhead.com/item=61343/vicious-gladiators-staff
set @itemid = 61343;
set @displayid = 79845;
delete from item where itemid = @itemid;
insert into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid) 
values (@itemid, @class_weapon, @subclass_staff, @sound_override_subclassid, @material_metal, @displayid, @inventorytype_two_hand, @sheath_staff);