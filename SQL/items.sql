-- class
set @class_weapon = 2;
set @class_armor = 4;

-- classes
set @class_warrior = 1;
set @class_paladin = 2;
set @class_hunter = 4;
set @class_rogue = 8;
set @class_priest = 16;
set @class_dk = 32;
set @class_shaman = 64;
set @class_mage = 128;
set @class_warlock = 256;
set @class_druid = 1024;

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
set @flags_default = 36864;
set @quality_epic = 4;


DELIMITER //

DROP PROCEDURE IF EXISTS `create_armor` //
CREATE PROCEDURE create_armor(IN entry MEDIUMINT(7), IN name VARCHAR(255),  IN description VARCHAR(255), IN class TINYINT(3), IN subclass TINYINT(3), IN displayid MEDIUMINT(7), IN inventorytype TINYINT(3), IN quality TINYINT(3), IN itemlevel SMALLINT(5), IN requiredlevel TINYINT(3), IN flags INT(10), IN allowableclass INT(10), IN material TINYINT(10))
BEGIN
    REPLACE INTO item_template(entry, name, description, class, subclass, displayid, inventorytype, quality, itemlevel, requiredlevel, flags, allowableclass, material) VALUES
      (entry, name, description, class, subclass, displayid, inventorytype, quality, itemlevel, requiredlevel, flags, allowableclass, material);
END//

DROP PROCEDURE IF EXISTS `create_helmet` //
CREATE PROCEDURE create_helmet(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN subclass TINYINT(3), IN displayid MEDIUMINT(7), IN flags INT(10), IN allowableclass INT(10), IN material TINYINT(10))
BEGIN
    CALL create_armor(entry, name, description, @class_armor, subclass, displayid, @inventorytype_head, @quality_epic, @itemlevel, @requiredlevel, flags, allowableclass, material);
END//

DROP PROCEDURE IF EXISTS `create_shoulders` //
CREATE PROCEDURE create_shoulders(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN subclass TINYINT(3), IN displayid MEDIUMINT(7), IN flags INT(10), IN allowableclass INT(10), IN material TINYINT(10))
BEGIN
    CALL create_armor(entry, name, description, @class_armor, subclass, displayid, @inventorytype_shoulders, @quality_epic, @itemlevel, @requiredlevel, flags, allowableclass, material);
END//

DROP PROCEDURE IF EXISTS `create_robe` //
CREATE PROCEDURE create_robe(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN subclass TINYINT(3), IN displayid MEDIUMINT(7), IN flags INT(10), IN allowableclass INT(10), IN material TINYINT(10))
BEGIN
    CALL create_armor(entry, name, description, @class_armor, subclass, displayid, @inventorytype_robe, @quality_epic, @itemlevel, @requiredlevel, flags, allowableclass, material);
END//

DROP PROCEDURE IF EXISTS `create_chest` //
CREATE PROCEDURE create_chest(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN subclass TINYINT(3), IN displayid MEDIUMINT(7), IN flags INT(10), IN allowableclass INT(10), IN material TINYINT(10))
BEGIN
    CALL create_armor(entry, name, description, @class_armor, subclass, displayid, @inventorytype_chest, @quality_epic, @itemlevel, @requiredlevel, flags, allowableclass, material);
END//

DROP PROCEDURE IF EXISTS `create_bracers` //
CREATE PROCEDURE create_bracers(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN subclass TINYINT(3), IN displayid MEDIUMINT(7), IN flags INT(10), IN allowableclass INT(10), IN material TINYINT(10))
BEGIN
    CALL create_armor(entry, name, description, @class_armor, subclass, displayid, @inventorytype_wrists, @quality_epic, @itemlevel, @requiredlevel, flags, allowableclass, material);
END//

DROP PROCEDURE IF EXISTS `create_gloves` //
CREATE PROCEDURE create_gloves(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN subclass TINYINT(3), IN displayid MEDIUMINT(7), IN flags INT(10), IN allowableclass INT(10), IN material TINYINT(10))
BEGIN
    CALL create_armor(entry, name, description, @class_armor, subclass, displayid, @inventorytype_hands, @quality_epic, @itemlevel, @requiredlevel, flags, allowableclass, material);
END//

DROP PROCEDURE IF EXISTS `create_belt` //
CREATE PROCEDURE create_belt(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN subclass TINYINT(3), IN displayid MEDIUMINT(7), IN flags INT(10), IN allowableclass INT(10), IN material TINYINT(10))
BEGIN
    CALL create_armor(entry, name, description, @class_armor, subclass, displayid, @inventorytype_waist, @quality_epic, @itemlevel, @requiredlevel, flags, allowableclass, material);
END//

DROP PROCEDURE IF EXISTS `create_legs` //
CREATE PROCEDURE create_legs(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN subclass TINYINT(3), IN displayid MEDIUMINT(7), IN flags INT(10), IN allowableclass INT(10), IN material TINYINT(10))
BEGIN
    CALL create_armor(entry, name, description, @class_armor, subclass, displayid, @inventorytype_legs, @quality_epic, @itemlevel, @requiredlevel, flags, allowableclass, material);
END//

DROP PROCEDURE IF EXISTS `create_boots` //
CREATE PROCEDURE create_boots(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN subclass TINYINT(3), IN displayid MEDIUMINT(7), IN flags INT(10), IN allowableclass INT(10), IN material TINYINT(10))
BEGIN
    CALL create_armor(entry, name, description, @class_armor, subclass, displayid, @inventorytype_feet, @quality_epic, @itemlevel, @requiredlevel, flags, allowableclass, material);
END//

DROP PROCEDURE IF EXISTS `create_weapon` //
CREATE PROCEDURE create_weapon(IN entry MEDIUMINT(7), IN name VARCHAR(255),  IN description VARCHAR(255), IN class TINYINT(3), IN subclass TINYINT(3), IN displayid MEDIUMINT(7), IN inventorytype TINYINT(3), IN sheath TINYINT(3), IN quality TINYINT(3), IN itemlevel SMALLINT(5), IN requiredlevel TINYINT(3), IN flags INT(10), IN material TINYINT(10))
BEGIN
    REPLACE INTO item_template(entry, name, description, class, subclass, displayid, inventorytype, sheath, quality, itemlevel, requiredlevel, flags, material) VALUES
      (entry, name, description, class, subclass, displayid, inventorytype, sheath, quality, itemlevel, requiredlevel, flags, material);
END//

DROP PROCEDURE IF EXISTS `create_polearm` //
CREATE PROCEDURE create_polearm(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_polearm, displayid, @inventorytype_two_hand, @sheath_two_hand_weapon, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_two_hand_axe` //
CREATE PROCEDURE create_two_hand_axe(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_axe_two_hand, displayid, @inventorytype_two_hand, @sheath_two_hand_weapon, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_two_hand_mace` //
CREATE PROCEDURE create_two_hand_mace(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @sublcass_mace_two_hand, displayid, @inventorytype_two_hand, @sheath_two_hand_weapon, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_two_hand_sword` //
CREATE PROCEDURE create_two_hand_sword(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_sword_two_hand, displayid, @inventorytype_two_hand, @sheath_two_hand_weapon, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_one_hand_dagger` //
CREATE PROCEDURE create_one_hand_dagger(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_dagger, displayid, @inventorytype_one_hand, @sheath_one_handed, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_one_hand_mace` //
CREATE PROCEDURE create_one_hand_mace(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_mace_one_hand, displayid, @inventorytype_one_hand, @sheath_one_handed, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_one_hand_sword` //
CREATE PROCEDURE create_one_hand_sword(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_sword_one_hand, displayid, @inventorytype_one_hand, @sheath_one_handed, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_one_hand_axe` //
CREATE PROCEDURE create_one_hand_axe(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_axe_one_hand, displayid, @inventorytype_one_hand, @sheath_one_handed, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_main_hand_fist` //
CREATE PROCEDURE create_main_hand_fist(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_fist_weapon, displayid, @inventorytype_main_hand, @sheath_fist_weapon, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_off_hand_fist` //
CREATE PROCEDURE create_off_hand_fist(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_fist_weapon, displayid, @inventorytype_off_hand, @sheath_fist_weapon, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_staff` //
CREATE PROCEDURE create_staff (IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_staff, displayid, @inventorytype_two_hand, @sheath_staff, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_wand` //
CREATE PROCEDURE create_wand(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_wand, displayid, @inventorytype_ranged, @sheath_ranged_and_frill, @quality_epic, @itemlevel, @requiredlevel, flags, @material_wood);
END//

DROP PROCEDURE IF EXISTS `create_gun` //
CREATE PROCEDURE create_gun(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_gun, displayid, @inventorytype_ranged, @sheath_ranged_and_frill, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_crossbow` //
CREATE PROCEDURE create_crossbow(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_crossbow, displayid, @inventorytype_ranged, @sheath_ranged_and_frill, @quality_epic, @itemlevel, @requiredlevel, flags, @material_wood);
END//

DROP PROCEDURE IF EXISTS `create_bow` //
CREATE PROCEDURE create_bow(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, @subclass_bow, displayid, @inventorytype_bow, @sheath_ranged_and_frill, @quality_epic, @itemlevel, @requiredlevel, flags, @material_wood);
END//

DROP PROCEDURE IF EXISTS `create_off_hand_weapon` //
CREATE PROCEDURE create_off_hand_weapon(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_weapon, subclass, displayid, @inventorytype_off_hand, @sheath_one_handed, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_off_hand_frill` //
CREATE PROCEDURE create_off_hand_frill(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_armor, @subclass_miscellaneous, displayid, @inventorytype_holdable, @sheath_ranged_and_frill, @quality_epic, @itemlevel, @requiredlevel, flags, @material_liquid);
END//

DROP PROCEDURE IF EXISTS `create_shield` //
CREATE PROCEDURE create_shield(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_weapon(entry, name, description, @class_armor, @subclass_shield, displayid, @inventorytype_shield, @sheath_shield, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DELIMITER ;

-- Weapons
CALL create_two_hand_axe(70000, "Bloodthirsty Gladiator's Decapitator", '', 70000, @flags_default);
CALL create_two_hand_sword(70001, "Bloodthirsty Gladiator's Greatsword", '', 70001, @flags_default);
CALL create_two_hand_mace(70002, "Bloodthirsty Gladiator's Bonegrinder", '', 70002, @flags_default);
CALL create_one_hand_dagger(70003, "Bloodthirsty Gladiator's Shanker", '', 70003, @flags_default);
CALL create_polearm(70004, "Bloodthirsty Gladiator's Pike", '', 70004, @flags_default);
call create_bow(70005, "Bloodthirsty Gladiator's Longbow", '', 70005, @flags_default);
call create_one_hand_mace(70006, "Bloodthirsty Gladiator's Gavel", '', 70006, @flags_default);
call create_one_hand_sword(70007, "Bloodthirsty Gladiator's Slicer", '', 70007, @flags_default);
call create_main_hand_fist(70008, "Bloodthirsty Gladiator's Right Ripper", '', 70008, @flags_default);
call create_off_hand_fist(70009, "Bloodthirsty Gladiator's Left Ripper", '', 70009, @flags_default);
call create_gun(70010, "Bloodthirsty Gladiator's Rifle", '', 70010, @flags_default);
call create_crossbow(70011, "Bloodthirsty Gladiator's Heavy Crossbow", '', 70011, @flags_default);
call create_wand(70012, "Bloodthirsty Gladiator's Touch of Defeat", '', 70012, @flags_default);
call create_one_hand_axe(70013, "Bloodthirsty Gladiator's Cleaver", '', 70013, @flags_default);
call create_staff(70014, "Bloodthirsty Gladiator's Staff", '', 70014, @flags_default);
call create_shield(70015, "Bloodthirsty Gladiator's Shield Wall", '', 70015, @flags_default);
call create_off_hand_frill(70016, "Bloodthirsty Gladiator's Endgame", '', 70016, @flags_default);

/*
* Warrior
*/
call create_helmet(80000, "Bloodthirsty Gladiator's Plate Helm", '', @subclass_plate, 80000, @flags_default, @class_warrior, @material_plate); 
call create_shoulders(80001, "Bloodthirsty Gladiator's Plate Shoulders", '', @subclass_plate, 80001, @flags_default, @class_warrior, @material_plate); 
call create_chest(80002, "Bloodthirsty Gladiator's Plate Chestpiece", '', @subclass_plate, 80002, @flags_default, @class_warrior, @material_plate); 
call create_bracers(80003, "Bloodthirsty Gladiator's Armplates", '', @subclass_plate, 80003, @flags_default, @class_warrior, @material_plate); 
call create_gloves(80004, "Bloodthirsty Gladiator's Plate Gauntlets", '', @subclass_plate, 80004, @flags_default, @class_warrior, @material_plate); 
call create_belt(80005, "Bloodthirsty Gladiator's Girdle", '', @subclass_plate, 80005, @flags_default, @class_warrior, @material_plate); 
call create_legs(80006, "Bloodthirsty Gladiator's Plate Legguards", '', @subclass_plate, 80006, @flags_default, @class_warrior, @material_plate); 
call create_boots(80007, "Bloodthirsty Gladiator's Warboots", '', @subclass_plate, 80007, @flags_default, @class_warrior, @material_plate); 

/*
* Hunter
*/
call create_helmet(80008, "Bloodthirsty Gladiator's Chain Helm", '', @subclass_mail, 80008, @flags_default, @class_hunter, @material_chain); 
call create_shoulders(80009, "Bloodthirsty Gladiator's Chain Spaulders", '', @subclass_mail, 80009, @flags_default, @class_hunter, @material_chain); 
call create_chest(80010, "Bloodthirsty Gladiator's Chain Armor", '', @subclass_mail, 80010, @flags_default, @class_hunter, @material_chain); 
call create_bracers(80011, "Bloodthirsty Gladiator's Wristguards", '', @subclass_mail, 80011, @flags_default, @class_hunter, @material_chain); 
call create_gloves(80012, "Bloodthirsty Gladiator's Chain Gauntlets", '', @subclass_mail, 80012, @flags_default, @class_hunter, @material_chain); 
call create_belt(80013, "Bloodthirsty Gladiator's Links", '', @subclass_mail, 80013, @flags_default, @class_hunter, @material_chain); 
call create_legs(80014, "Bloodthirsty Gladiator's Chain Legguards", '', @subclass_mail, 80014, @flags_default, @class_hunter, @material_chain); 
call create_boots(80015, "Bloodthirsty Gladiator's Sabatons", '', @subclass_mail, 80015, @flags_default, @class_hunter, @material_chain); 

/*
* Rogue
*/
call create_helmet(80016, "Bloodthirsty Gladiator's Leather Helm", '', @subclass_leather, 80016, @flags_default, @class_rogue, @material_leather); 
call create_shoulders(80017, "Bloodthirsty Gladiator's Leather Spaulders", '', @subclass_leather, 80017, @flags_default, @class_rogue, @material_leather); 
call create_chest(80018, "Bloodthirsty Gladiator's Leather Tunic", '', @subclass_leather, 80018, @flags_default, @class_rogue, @material_leather); 
call create_bracers(80019, "Bloodthirsty Gladiator's Wristguards", '', @subclass_leather, 80019, @flags_default, @class_rogue, @material_leather); 
call create_gloves(80020, "Bloodthirsty Gladiator's Leather Gloves", '', @subclass_leather, 80020, @flags_default, @class_rogue, @material_leather); 
call create_belt(80021, "Bloodthirsty Gladiator's Waistband", '', @subclass_leather, 80021, @flags_default, @class_rogue, @material_leather); 
call create_legs(80022, "Bloodthirsty Gladiator's Leather Legguards", '', @subclass_leather, 80022, @flags_default, @class_rogue, @material_leather); 
call create_boots(80023, "Bloodthirsty Gladiator's Boots", '', @subclass_leather, 80023, @flags_default, @class_rogue, @material_leather); 

/*
* Priest
*/
call create_helmet(80024, "Bloodthirsty Gladiator's Satin Helm", '', @subclass_cloth, 80024, @flags_default, @class_priest, @material_cloth); 
call create_shoulders(80025, "Bloodthirsty Gladiator's Satin Mantle", '', @subclass_cloth, 80025, @flags_default, @class_priest, @material_cloth); 
call create_robe(80026, "Bloodthirsty Gladiator's Satin Robe", '', @subclass_cloth, 80026, @flags_default, @class_priest, @material_cloth); 
call create_chest(80027, "Bloodthirsty Gladiator's Satin Tunic", '', @subclass_cloth, 80027, @flags_default, @class_priest, @material_cloth); 
call create_bracers(80028, "Bloodthirsty Gladiator's Cuffs", '', @subclass_cloth, 80028, @flags_default, @class_priest, @material_cloth); 
call create_gloves(80029, "Bloodthirsty Gladiator's Satin Gloves", '', @subclass_cloth, 80029, @flags_default, @class_priest, @material_cloth); 
call create_belt(80030, "Bloodthirsty Gladiator's Cord", '', @subclass_cloth, 80030, @flags_default, @class_priest, @material_cloth); 
call create_legs(80031, "Bloodthirsty Gladiator's Satin Leggings", '', @subclass_cloth, 80031, @flags_default, @class_priest, @material_cloth); 
call create_boots(80032, "Bloodthirsty Gladiator's Treads", '', @subclass_cloth, 80032, @flags_default, @class_priest, @material_cloth); 

/*
* Warlock
*/
call create_helmet(80033, "Bloodthirsty Gladiator's Felweave Cowl", '', @subclass_cloth, 80033, @flags_default, @class_warlock, @material_cloth); 
call create_shoulders(80034, "Bloodthirsty Gladiator's Felweave Amice", '', @subclass_cloth, 80034, @flags_default, @class_warlock, @material_cloth); 
call create_robe(80035, "Bloodthirsty Gladiator's Felweave Rainment", '', @subclass_cloth, 80035, @flags_default, @class_warlock, @material_cloth); 
call create_chest(80036, "Bloodthirsty Gladiator's Felweave Tunic", '', @subclass_cloth, 80036, @flags_default, @class_warlock, @material_cloth); 
call create_bracers(80037, "Bloodthirsty Gladiator's Cuffs", '', @subclass_cloth, 80037, @flags_default, @class_warlock, @material_cloth); 
call create_gloves(80038, "Bloodthirsty Gladiator's Felweave Handguards", '', @subclass_cloth, 80038, @flags_default, @class_warlock, @material_cloth); 
call create_belt(80039, "Bloodthirsty Gladiator's Cord", '', @subclass_cloth, 80039, @flags_default, @class_warlock, @material_cloth); 
call create_legs(80040, "Bloodthirsty Gladiator's Felweave Trousers", '', @subclass_cloth, 80040, @flags_default, @class_warlock, @material_cloth); 
call create_boots(80041, "Bloodthirsty Gladiator's Treads", '', @subclass_cloth, 80041, @flags_default, @class_warlock, @material_cloth); 

/*
* Death Knight
*/
call create_helmet(80042, "Bloodthirsty Gladiator's Dreadplate Helm", '', @subclass_plate, 80042, @flags_default, @class_dk, @material_plate); 
call create_shoulders(80043, "Bloodthirsty Gladiator's Dreadplate Shoulders", '', @subclass_plate, 80043, @flags_default, @class_dk, @material_plate); 
call create_chest(80044, "Bloodthirsty Gladiator's Dreadplate Chestpiece", '', @subclass_plate, 80044, @flags_default, @class_dk, @material_plate); 
call create_bracers(80045, "Bloodthirsty Gladiator's Armplates", '', @subclass_plate, 80045, @flags_default, @class_dk, @material_plate); 
call create_gloves(80046, "Bloodthirsty Gladiator's Dreadplate Gauntlets", '', @subclass_plate, 80046, @flags_default, @class_dk, @material_plate); 
call create_belt(80047, "Bloodthirsty Gladiator's Girdle", '', @subclass_plate, 80047, @flags_default, @class_dk, @material_plate); 
call create_legs(80048, "Bloodthirsty Gladiator's Dreadplate Legguards", '', @subclass_plate, 80048, @flags_default, @class_dk, @material_plate); 
call create_boots(80049, "Bloodthirsty Gladiator's Warboots", '', @subclass_plate, 80049, @flags_default, @class_dk, @material_plate); 

/*
* Druid
*/
call create_helmet(80050, "Bloodthirsty Gladiator's Dragonhide Helm", '', @subclass_leather, 80050, @flags_default, @class_druid, @material_leather); 
call create_shoulders(80051, "Bloodthirsty Gladiator's Dragonhide Spaulders", '', @subclass_leather, 80051, @flags_default, @class_druid, @material_leather); 
call create_robe(80052, "Bloodthirsty Gladiator's Dragonhide Robes", '', @subclass_leather, 80052, @flags_default, @class_druid, @material_leather); 
call create_chest(80053, "Bloodthirsty Gladiator's Dragonhide Tunic", '', @subclass_leather, 80053, @flags_default, @class_druid, @material_leather); 
call create_bracers(80054, "Bloodthirsty Gladiator's Bindings", '', @subclass_leather, 80054, @flags_default, @class_druid, @material_leather); 
call create_gloves(80055, "Bloodthirsty Gladiator's Dragonhide Gloves", '', @subclass_leather, 80055, @flags_default, @class_druid, @material_leather); 
call create_belt(80056, "Bloodthirsty Gladiator's Belt", '', @subclass_leather, 80056, @flags_default, @class_druid, @material_leather); 
call create_legs(80057, "Bloodthirsty Gladiator's Dragonhide Legguards", '', @subclass_leather, 80057, @flags_default, @class_druid, @material_leather); 
call create_boots(80058, "Bloodthirsty Gladiator's Footguards", '', @subclass_leather, 80058, @flags_default, @class_druid, @material_leather); 

/*
* Warlock
*/
call create_helmet(80059, "Bloodthirsty Gladiator's Silk Cowl", '', @subclass_cloth, 80059, @flags_default, @class_mage, @material_cloth); 
call create_shoulders(80060, "Bloodthirsty Gladiator's Silk Amice", '', @subclass_cloth, 80060, @flags_default, @class_mage, @material_cloth); 
call create_robe(80061, "Bloodthirsty Gladiator's Silk Robe", '', @subclass_cloth, 80061, @flags_default, @class_mage, @material_cloth); 
call create_chest(80062, "Bloodthirsty Gladiator's Silk Tunic", '', @subclass_cloth, 80062, @flags_default, @class_mage, @material_cloth); 
call create_bracers(80063, "Bloodthirsty Gladiator's Cuffs", '', @subclass_cloth, 80063, @flags_default, @class_mage, @material_cloth); 
call create_gloves(80064, "Bloodthirsty Gladiator's Silk Handguards", '', @subclass_cloth, 80064, @flags_default, @class_mage, @material_cloth); 
call create_belt(80065, "Bloodthirsty Gladiator's Cord", '', @subclass_cloth, 80065, @flags_default, @class_mage, @material_cloth); 
call create_legs(80066, "Bloodthirsty Gladiator's Silk Trousers", '', @subclass_cloth, 80066, @flags_default, @class_mage, @material_cloth); 
call create_boots(80067, "Bloodthirsty Gladiator's Treads", '', @subclass_cloth, 80067, @flags_default, @class_mage, @material_cloth); 

/*
* Shaman
*/
call create_helmet(80068, "Bloodthirsty Gladiator's Mail Helm", '', @subclass_mail, 80068, @flags_default, @class_shaman, @material_chain); 
call create_shoulders(80069, "Bloodthirsty Gladiator's Mail Spaulders", '', @subclass_mail, 80069, @flags_default, @class_shaman, @material_chain); 
call create_robe(80070, "Bloodthirsty Gladiator's Mail Armor", '', @subclass_mail, 80070, @flags_default, @class_shaman, @material_chain); 
call create_bracers(80071, "Bloodthirsty Gladiator's Cuffs", '', @subclass_mail, 80071, @flags_default, @class_shaman, @material_chain); 
call create_gloves(80072, "Bloodthirsty Gladiator's Mail Gauntlets", '', @subclass_mail, 80072, @flags_default, @class_shaman, @material_chain); 
call create_belt(80073, "Bloodthirsty Gladiator's Waistguard", '', @subclass_mail, 80073, @flags_default, @class_shaman, @material_chain); 
call create_legs(80074, "Bloodthirsty Gladiator's Mail Leggings", '', @subclass_mail, 80074, @flags_default, @class_shaman, @material_chain); 
call create_boots(80075, "Bloodthirsty Gladiator's Sabatons", '', @subclass_mail, 80075, @flags_default, @class_shaman, @material_chain); 

/*
* Paladin
*/

call create_helmet(80076, "Bloodthirsty Gladiator's Scaled Helm", '', @subclass_plate, 80076, @flags_default, @class_paladin, @material_plate); 
call create_shoulders(80077, "Bloodthirsty Gladiator's Scaled Spaulders", '', @subclass_plate, 80077, @flags_default, @class_paladin, @material_plate); 
call create_chest(80078, "Bloodthirsty Gladiator's Scaled Chestpiece", '', @subclass_plate, 80078, @flags_default, @class_paladin, @material_plate); 
call create_bracers(80079, "Bloodthirsty Gladiator's Bracers", '', @subclass_plate, 80079, @flags_default, @class_paladin, @material_plate); 
call create_gloves(80080, "Bloodthirsty Gladiator's Scaled Gauntlets", '', @subclass_plate, 80080, @flags_default, @class_paladin, @material_plate); 
call create_belt(80081, "Bloodthirsty Gladiator's Clasp", '', @subclass_plate, 80081, @flags_default, @class_paladin, @material_plate); 
call create_legs(80082, "Bloodthirsty Gladiator's Scaled Legguards", '', @subclass_plate, 80082, @flags_default, @class_paladin, @material_plate); 
call create_boots(80083, "Bloodthirsty Gladiator's Greaves", '', @subclass_plate, 80083, @flags_default, @class_paladin, @material_plate); 