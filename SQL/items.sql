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


DELIMITER //

DROP PROCEDURE IF EXISTS `create_item` //
CREATE PROCEDURE create_item(IN entry MEDIUMINT(7), IN name VARCHAR(255),  IN description VARCHAR(255), IN class TINYINT(3), IN subclass TINYINT(3), IN displayid MEDIUMINT(7), IN inventorytype TINYINT(3), IN sheath TINYINT(3), IN quality TINYINT(3), IN itemlevel SMALLINT(5), IN requiredlevel TINYINT(3), IN flags INT(10), IN material TINYINT(10))
BEGIN
    INSERT INTO item_template(entry, name, description, class, subclass, displayid, inventorytype, sheath, quality, itemlevel, requiredlevel, flags, material) VALUES
      (entry, name, description, class, subclass, displayid, inventorytype, sheath, quality, itemlevel, requiredlevel, flags, material);
END//

DROP PROCEDURE IF EXISTS `create_polearm` //
CREATE PROCEDURE create_polearm(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_polearm, displayid, @inventorytype_two_hand, @sheath_two_hand_weapon, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_two_hand_axe` //
CREATE PROCEDURE create_two_hand_axe(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_axe_two_hand, displayid, @inventorytype_two_hand, @sheath_two_hand_weapon, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_two_hand_mace` //
CREATE PROCEDURE create_two_hand_mace(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @sublcass_mace_two_hand, displayid, @inventorytype_two_hand, @sheath_two_hand_weapon, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_two_hand_sword` //
CREATE PROCEDURE create_two_hand_sword(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_sword_two_hand, displayid, @inventorytype_two_hand, @sheath_two_hand_weapon, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_one_hand_dagger` //
CREATE PROCEDURE create_one_hand_dagger(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_dagger, displayid, @inventorytype_one_hand, @sheath_one_handed, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_one_hand_mace` //
CREATE PROCEDURE create_one_hand_mace(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_mace_one_hand, displayid, @inventorytype_one_hand, @sheath_one_handed, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_one_hand_sword` //
CREATE PROCEDURE create_one_hand_sword(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_sword_one_hand, displayid, @inventorytype_one_hand, @sheath_one_handed, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_one_hand_axe` //
CREATE PROCEDURE create_one_hand_axe(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_axe_one_hand, displayid, @inventorytype_one_hand, @sheath_one_handed, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_main_hand_fist` //
CREATE PROCEDURE create_main_hand_fist(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_fist_weapon, displayid, @inventorytype_main_hand, @sheath_fist_weapon, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_off_hand_fist` //
CREATE PROCEDURE create_off_hand_fist(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_fist_weapon, displayid, @inventorytype_off_hand, @sheath_fist_weapon, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//


DROP PROCEDURE IF EXISTS `create_staff` //
CREATE PROCEDURE create_staff (IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_staff, displayid, @inventorytype_two_hand, @sheath_staff, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_wand` //
CREATE PROCEDURE create_wand(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_wand, displayid, @inventorytype_ranged, @sheath_ranged_and_frill, @quality_epic, @itemlevel, @requiredlevel, flags, @material_wood);
END//

DROP PROCEDURE IF EXISTS `create_gun` //
CREATE PROCEDURE create_gun(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_gun, displayid, @inventorytype_ranged, @sheath_ranged_and_frill, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_crossbow` //
CREATE PROCEDURE create_crossbow(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_crossbow, displayid, @inventorytype_ranged, @sheath_ranged_and_frill, @quality_epic, @itemlevel, @requiredlevel, flags, @material_wood);
END//

DROP PROCEDURE IF EXISTS `create_bow` //
CREATE PROCEDURE create_bow(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, @subclass_bow, displayid, @inventorytype_bow, @sheath_ranged_and_frill, @quality_epic, @itemlevel, @requiredlevel, flags, @material_wood);
END//

DROP PROCEDURE IF EXISTS `create_off_hand_weapon` //
CREATE PROCEDURE create_off_hand_weapon(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_weapon, subclass, displayid, @inventorytype_off_hand, @sheath_one_handed, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DROP PROCEDURE IF EXISTS `create_off_hand_frill` //
CREATE PROCEDURE create_off_hand_frill(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_armor, @subclass_miscellaneous, displayid, @inventorytype_holdable, @sheath_ranged_and_frill, @quality_epic, @itemlevel, @requiredlevel, flags, @material_liquid);
END//

DROP PROCEDURE IF EXISTS `create_shield` //
CREATE PROCEDURE create_shield(IN entry MEDIUMINT(7), IN name VARCHAR(255), IN description VARCHAR(255), IN displayid MEDIUMINT(7), IN flags INT(10))
BEGIN
    CALL create_item(entry, name, description, @class_armor, @subclass_shield, displayid, @inventorytype_shield, @sheath_shield, @quality_epic, @itemlevel, @requiredlevel, flags, @material_metal);
END//

DELIMITER ;

-- https://www.wowhead.com/item=61326/vicious-gladiators-decapitator
DELETE FROM `item_template` WHERE `entry` = 61326;
CALL create_two_hand_axe(61326, "Vicious Gladiator's Decapitator", '', 81901, @flags_default);

-- https://www.wowhead.com/item=61327/vicious-gladiators-shanker
DELETE FROM `item_template` WHERE `entry` = 61327;
CALL create_one_hand_dagger(61327, "Vicious Gladiator's Shanker", '', 83590, @flags_default);

-- https://www.wowhead.com/item=61340/vicious-gladiators-pike
DELETE FROM `item_template` WHERE `entry` = 61340;
CALL create_polearm(61340, "Vicious Gladiator's Pike", '', 79850, @flags_default);

-- https://www.wowhead.com/item=61353/vicious-gladiators-longbow
DELETE FROM `item_template` WHERE `entry` = 61353;
call create_bow(61353, "Vicious Gladiator's Longbow", '', 79854, @flags_default);

-- https://www.wowhead.com/item=61343/vicious-gladiators-staff
DELETE FROM `item_template` WHERE `entry` = 61343;
call create_staff(61343, "Vicious Gladiator's Staff", '', 79845, @flags_default)