-- sound
set @sound_plate = 11;
set @sound_mail = 10;
set @sound_leather_cloth = 7;
set @sound_2h = 9;

DELIMITER //

DROP PROCEDURE IF EXISTS `itemdisplayinfo_helmet` //
CREATE PROCEDURE itemdisplayinfo_helmet(IN id INT(10), IN leftmodel TEXT(255), IN leftmodeltexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN helmetgeosetvisual1 INT(10), IN helmetgeosetvisual2 INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1, groupsoundindex, helmetgeosetvisual1, helmetgeosetvisual2) VALUES
      (id, leftmodel, leftmodeltexture, inventoryicon1, groupsoundindex, helmetgeosetvisual1, helmetgeosetvisual2);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_shoulders` //
CREATE PROCEDURE itemdisplayinfo_shoulders(IN id INT(10), IN leftmodel TEXT(255), IN rightmodel TEXT(255), IN leftmodeltexture TEXT(255), IN rightmodeltexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, leftmodel, rightmodel, leftmodeltexture, rightmodeltexture, inventoryicon1, groupsoundindex) VALUES
      (id, leftmodel, rightmodel, leftmodeltexture, rightmodeltexture, inventoryicon1, groupsoundindex);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_chest` //
CREATE PROCEDURE itemdisplayinfo_chest(IN id INT(10), IN upperarmtexture TEXT(255), IN lowerarmtexture TEXT(255), IN uppertorsotexture TEXT(255), IN lowertorsotexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, upperarmtexture, lowerarmtexture, uppertorsotexture, lowertorsotexture, inventoryicon1, groupsoundindex) VALUES
      (id, upperarmtexture, lowerarmtexture, uppertorsotexture, lowertorsotexture, inventoryicon1, groupsoundindex);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_tunic` //
CREATE PROCEDURE itemdisplayinfo_tunic(IN id INT(10), IN upperarmtexture TEXT(255), IN lowerarmtexture TEXT(255), IN uppertorsotexture TEXT(255), IN lowertorsotexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN geosetgroup1 INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, upperarmtexture, lowerarmtexture, uppertorsotexture, lowertorsotexture, inventoryicon1, groupsoundindex, geosetgroup1) VALUES
      (id, upperarmtexture, lowerarmtexture, uppertorsotexture, lowertorsotexture, inventoryicon1, groupsoundindex, geosetgroup1);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_robe` //
CREATE PROCEDURE itemdisplayinfo_robe(IN id INT(10), IN upperarmtexture TEXT(255), IN lowerarmtexture TEXT(255), IN uppertorsotexture TEXT(255), IN lowertorsotexture TEXT(255), IN upperlegtexture TEXT(255), IN lowerlegtexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN geosetgroup1 INT(10), IN geosetgroup3 INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, upperarmtexture, lowerarmtexture, uppertorsotexture, lowertorsotexture, upperlegtexture, lowerlegtexture, inventoryicon1, groupsoundindex, geosetgroup1, geosetgroup3) VALUES
      (id, upperarmtexture, lowerarmtexture, uppertorsotexture, lowertorsotexture, upperlegtexture, lowerlegtexture, inventoryicon1, groupsoundindex, geosetgroup1, geosetgroup3);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_bracers` //
CREATE PROCEDURE itemdisplayinfo_bracers(IN id INT(10), IN lowerarmtexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, lowerarmtexture, inventoryicon1, groupsoundindex) VALUES
      (id, lowerarmtexture, inventoryicon1, groupsoundindex);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_gloves` //
CREATE PROCEDURE itemdisplayinfo_gloves(IN id INT(10), IN lowerarmtexture TEXT(255), IN handstexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN geosetgroup1 INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, lowerarmtexture, handstexture, inventoryicon1, groupsoundindex, geosetgroup1) VALUES
      (id, lowerarmtexture, handstexture, inventoryicon1, groupsoundindex, geosetgroup1);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_belt` //
CREATE PROCEDURE itemdisplayinfo_belt(IN id INT(10), IN upperlegtexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, upperlegtexture, inventoryicon1, groupsoundindex) VALUES
      (id, upperlegtexture, inventoryicon1, groupsoundindex);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_legs` //
CREATE PROCEDURE itemdisplayinfo_legs(IN id INT(10),  IN upperlegtexture TEXT(255), IN lowerlegtexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, upperlegtexture, lowerlegtexture, inventoryicon1, groupsoundindex) VALUES
      (id, upperlegtexture, lowerlegtexture, inventoryicon1, groupsoundindex);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_legs_skirt` //
CREATE PROCEDURE itemdisplayinfo_legs_skirt(IN id INT(10),  IN upperlegtexture TEXT(255), IN lowerlegtexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN geosetgroup3 INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, upperlegtexture, lowerlegtexture, inventoryicon1, groupsoundindex, geosetgroup3) VALUES
      (id, upperlegtexture, lowerlegtexture, inventoryicon1, groupsoundindex, geosetgroup3);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_boots` //
CREATE PROCEDURE itemdisplayinfo_boots(IN id INT(10), IN leftmodel TEXT(255), IN rightmodel TEXT(255), IN leftmodeltexture TEXT(255), IN rightmodeltexture TEXT (255), IN lowerlegtexture TEXT(255), IN foottexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10), IN geosetgroup1 INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, leftmodel, rightmodel, leftmodeltexture, rightmodeltexture, lowerlegtexture, foottexture, inventoryicon1, groupsoundindex, geosetgroup1) VALUES
      (id, leftmodel, rightmodel, leftmodeltexture, rightmodeltexture, lowerlegtexture, foottexture, inventoryicon1, groupsoundindex, geosetgroup1);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_weapon` //
CREATE PROCEDURE itemdisplayinfo_weapon(IN id INT(10), IN leftmodel TEXT(255), IN leftmodeltexture TEXT(255), IN inventoryicon1 TEXT(255), IN groupsoundindex INT(10))
BEGIN
    REPLACE INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1, groupsoundindex) VALUES
    (id, leftmodel, leftmodeltexture, inventoryicon1, groupsoundindex);
END//

DELIMITER ;

/*
* Weapons
*/

-- Bloodthirsty Gladiator's Decapitator
CALL itemdisplayinfo_weapon(70000, 'axe_2h_pvp400_c_01.mdx', 'axe_2h_pvp400_c_01blue', 'inv_axe_2h_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Greatsword
CALL itemdisplayinfo_weapon(70001, 'sword_2h_pvp400_c_01.mdx', 'sword_2h_pvp400_c_01blue', 'inv_sword_2h_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Bonegrinder
CALL itemdisplayinfo_weapon(70002, 'mace_2h_pvp400_c_01.mdx', 'mace_2h_pvp400_c_01blue', 'inv_mace_2h_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Shanker
CALL itemdisplayinfo_weapon(70003, 'knife_1h_pvp400_c_01.mdx', 'knife_1h_pvp400_c_01blue', 'inv_knife_1h_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Pike
CALL itemdisplayinfo_weapon(70004, 'polearm_2h_pvp400_c_01.mdx', 'polearm_2h_pvp400_c_01blue', 'inv_polearm_2h_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Longbow
CALL itemdisplayinfo_weapon(70005, 'bow_1h_pvp400_c_01.mdx', 'bow_1h_pvp400_c_01blue', 'inv_bow_1h_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Gavel
CALL itemdisplayinfo_weapon(70006, 'mace_1h_pvp400_c_01.mdx', 'mace_1h_pvp400_c_01blue', 'inv_mace_1h_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Slicer
CALL itemdisplayinfo_weapon(70007, 'sword_1h_pvp400_c_01.mdx', 'sword_1h_pvp400_c_01_blue', 'inv_sword_161', @sound_2h);

-- Bloodthirsty Gladiator's Right Ripper
CALL itemdisplayinfo_weapon(70008, 'hand_1h_pvp400_c_01right.mdx', 'hand_1h_pvp400_c_01blue', 'inv_hand_1h_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Left Ripper
CALL itemdisplayinfo_weapon(70009, 'hand_1h_pvp400_c_01left.mdx', 'hand_1h_pvp400_c_01blue', 'inv_hand_1h_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Rifle
CALL itemdisplayinfo_weapon(70010, 'firearm_2h_rifle_pvp400_c_01.mdx', 'firearm_2h_rifle_pvp400_c_01blue', 'firearm_2h_rifle_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Heavy Crossbow
CALL itemdisplayinfo_weapon(70011, 'bow_2h_crossbow_pvp400_c_01.mdx', 'bow_2h_crossbow_pvp400_c_01blue', 'inv_weapon_crossbow_39', @sound_2h);

-- Bloodthirsty Gladiator's Touch of Defeat
CALL itemdisplayinfo_weapon(70012, 'wand_1h_pvp400_c_01.mdx', 'wand_1h_pvp400_c_01_blue', 'inv_wand_1h_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Cleaver
CALL itemdisplayinfo_weapon(70013, 'axe_1h_pvp400_c_01.mdx', 'axe_1h_pvp400_c_01blue', 'inv_axe_1h_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Staff
CALL itemdisplayinfo_weapon(70014, 'stave_2h_pvp400_c_01.mdx', 'stave_2h_pvp400_c_01_blue', 'inv_stave_2h_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Shield Wall
CALL itemdisplayinfo_weapon(70015, 'shield_pvp400_c_01.mdx', 'shield_pvp400_c_01_blue', 'inv_shield_pvp400_c_01', @sound_2h);

-- Bloodthirsty Gladiator's Endgame
CALL itemdisplayinfo_weapon(70016, 'misc_1h_book_c_05.mdx', 'misc_1h_book_c_05', 'inv_misc_book_18', @sound_2h);

/*
* Warrior
*/

-- Bloodthirsty Gladiator's Plate Helm
CALL itemdisplayinfo_helmet(80000, 'helm_plate_pvpwarrior_c_01.mdx', 'helm_plate_pvpwarrior_c_01blue', 'inv_helm_plate_pvpwarrior_c_01', @sound_plate, 248, 306);

-- Bloodthirsty Gladiator's Plate Shoulders
CALL itemdisplayinfo_shoulders(80001, 'lshoulder_plate_pvpwarrior_c_01.mdx', 'rshoulder_plate_pvpwarrior_c_01.mdx', 'shoulder_pvpwarrior_c_01blue', 'shoulder_pvpwarrior_c_01blue', 'inv_shoulder_plate_pvpwarrior_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Plate Chestpiece
CALL itemdisplayinfo_chest(80002, 'plate_pvpwarrior_c_01blue_sleeve_au', 'plate_pvpwarrior_c_01blue_sleeve_al', 'plate_pvpwarrior_c_01blue_chest_tu', 'plate_pvpwarrior_c_01blue_chest_tl', 'inv_chest_plate_pvpwarrior_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Armguards
CALL itemdisplayinfo_bracers(80003, 'plate_pvpwarrior_c_01blue_bracer_al', 'inv_bracer_plate_pvpwarrior_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Plate Gauntlets
CALL itemdisplayinfo_gloves(80004, 'plate_pvpwarrior_c_01blue_glove_al', 'plate_pvpwarrior_c_01blue_glove_ha', 'inv_glove_plate_pvpwarrior_c_01', @sound_plate, 3);

-- Bloodthirsty Gladiator's Girdle
CALL itemdisplayinfo_belt(80005, 'plate_pvpwarrior_c_01blue_belt_lu', 'inv_belt_plate_pvpwarrior_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Plate Legguards
CALL itemdisplayinfo_legs(80006, 'plate_pvpwarrior_c_01blue_pant_lu', 'plate_pvpwarrior_c_01blue_pant_ll', 'inv_pants_plate_pvpwarrior_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Warboots
CALL itemdisplayinfo_boots(80007, 'LShoulder_Plate_A_01.mdx', 'RShoulder_Plate_A_01.mdx', 'Shoulder_Plate_A_01Black', 'Shoulder_Plate_A_01Black', 'plate_pvpwarrior_c_01blue_boot_ll', 'plate_pvpwarrior_c_01blue_boot_fo', 'inv_boots_plate_pvpwarrior_c_01', @sound_plate, 4);

/*
* Hunter
*/

-- Bloodthirsty Gladiator's Chain Helm
CALL itemdisplayinfo_helmet(80008, 'helm_mail_pvphunter_c_01.mdx', 'helm_mail_pvphunter_c_01_blue', 'inv_helm_mail_pvphunter_c_01', @sound_mail, 248, 306);

-- Bloodthirsty Gladiator's Chain Spaulders
CALL itemdisplayinfo_shoulders(80009, 'lshoulder_mail_pvphunter_c_01.mdx', 'rshoulder_mail_pvphunter_c_01.mdx', 'shoulder_mail_pvphunter_c_01_blue', 'shoulder_mail_pvphunter_c_01_blue', 'inv_shoulder_mail_pvphunter_c_01', @sound_mail);

-- Bloodthirsty Gladiator's Chain Armor
CALL itemdisplayinfo_chest(80010, 'mail_pvphunter_c_01_blue_sleeve_au', 'mail_pvphunter_c_01_blue_sleeve_al', 'mail_pvphunter_c_01_blue_chest_tu', 'mail_pvphunter_c_01_blue_chest_tl', 'inv_chest_mail_pvphunter_c_01', @sound_mail);

-- Bloodthirsty Gladiator's Wristguards
CALL itemdisplayinfo_bracers(80011, 'mail_pvphunter_c_01_blue_bracer_al', 'inv_bracer_mail_pvphunter_c_01', @sound_mail);

-- Bloodthirsty Gladiator's Chain Gauntlets
CALL itemdisplayinfo_gloves(80012, 'mail_pvphunter_c_01_blue_glove_al', 'mail_pvphunter_c_01_blue_glove_ha', 'inv_glove_mail_pvphunter_c_01', @sound_mail, 2);

-- Bloodthirsty Gladiator's Links
CALL itemdisplayinfo_belt(80013, 'mail_pvphunter_c_01_blue_belt_lu', 'inv_belt_mail_pvphunter_c_01', @sound_mail);

-- Bloodthirsty Gladiator's Chain Leggings
CALL itemdisplayinfo_legs(80014, 'mail_pvphunter_c_01_blue_pant_lu', 'mail_pvphunter_c_01_blue_pant_ll', 'inv_pant_mail_pvphunter_c_01', @sound_mail);

-- Bloodthirsty Gladiator's Sabatons
CALL itemdisplayinfo_boots(80015, '', '', '', '', 'mail_pvphunter_c_01_blue_boot_ll', 'mail_pvphunter_c_01_blue_boot_fo', 'inv_boots_mail_pvphunter_c_01', @sound_mail, 2);

/*
* Rogue
*/

-- Bloodthirsty Gladiator's Leather Helm
CALL itemdisplayinfo_helmet(80016, 'helm_leather_pvprogue_c_01.mdx', 'helm_leather_pvprogue_c_01', 'inv_helmet_leather_pvprogue_c_01', @sound_leather_cloth, 248, 306);

-- Bloodthirsty Gladiator's Leather Spaulders
CALL itemdisplayinfo_shoulders(80017, 'lshoulder_leather_pvprogue_c_01.mdx', 'rshoulder_leather_pvprogue_c_01.mdx', 'shoulder_leather_pvprogue_c_01', 'shoulder_leather_pvprogue_c_01', 'inv_shoulder_152', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Leather Tunic
CALL itemdisplayinfo_chest(80018, 'leather_pvprogue_c_01_sleeve_au', 'leather_pvprogue_c_01_glove_al', 'leather_pvprogue_c_01_chest_tu', 'leather_pvprogue_c_01_chest_tl', 'inv_chest_leather_24', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Armwraps
CALL itemdisplayinfo_bracers(80019, 'leather_pvprogue_c_01_bracer_al', 'inv_bracer_leather_pvprogue_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Leather Gloves
CALL itemdisplayinfo_gloves(80020, 'leather_pvprogue_c_01_glove_al', 'leather_pvprogue_c_01_glove_ha', 'inv_glove_leather_pvprogue_c_01', @sound_leather_cloth, 1);

-- Bloodthirsty Gladiator's Waistband
CALL itemdisplayinfo_belt(80021, 'leather_pvprogue_c_01_belt_lu', 'inv_belt_leather_pvprogue_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Leather Legguards
CALL itemdisplayinfo_legs(80022, 'leather_pvprogue_c_01_pant_lu', 'leather_pvprogue_c_01_pant_ll', 'inv_pants_leather_pvprogue_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Boots
CALL itemdisplayinfo_boots(80023, '', '', '', '', 'leather_pvprogue_c_01_boot_ll', 'leather_pvprogue_c_01_boot_fo', 'inv_boots_leather_pvprogue_c_01', @sound_leather_cloth, 0);

/*
* Priest
*/

-- Bloodthirsty Gladiator's Satin Helm
CALL itemdisplayinfo_helmet(80024, 'helm_cloth_pvppriest_c_01.mdx', 'helm_cloth_pvppriest_c_01white', 'inv_helm_robe_pvppriest_c_01', @sound_leather_cloth, 248, 306);

-- Bloodthirsty Gladiator's Satin Mantle
CALL itemdisplayinfo_shoulders(80025, 'lshoulder_cloth_pvppriest_c_01.mdx', 'rshoulder_cloth_pvppriest_c_01.mdx', 'shoulder_cloth_pvppriest_c_01white', 'shoulder_cloth_pvppriest_c_01white', 'inv_shoulder_robe_pvppriest_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Satin Robe
CALL itemdisplayinfo_robe(80026, 'cloth_pvppriest_c_01white_sleeve_au', 'cloth_pvppriest_c_01white_sleeve_al', 'cloth_pvppriest_c_01white_chest_tu', 'cloth_pvppriest_c_01white_chest_tl', 'cloth_pvppriest_c_01white_robe_lu', 'cloth_pvppriest_c_01white_robe_ll', 'inv_chest_robe_pvppriest_c_01', @sound_leather_cloth, 1, 1);

-- Bloodthirsty Gladiator's Satin Tunic
CALL itemdisplayinfo_tunic(80027, 'cloth_pvppriest_c_01white_sleeve_au', 'cloth_pvppriest_c_01white_sleeve_al', 'cloth_pvppriest_c_01white_chest_tu', 'cloth_pvppriest_c_01white_chest_tl', 'inv_chest_robe_pvppriest_c_01', @sound_leather_cloth, 1);

-- Bloodthirsty Gladiator's Cuffs
CALL itemdisplayinfo_bracers(80028, 'cloth_pvppriest_c_01white_bracer_al', 'inv_bracer_robe_pvppriest_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Satin Gloves
CALL itemdisplayinfo_gloves(80029, 'cloth_pvppriest_c_01white_glove_al', 'cloth_pvppriest_c_01white_glove_ha', 'inv_gauntlets_robe_pvppriest_c_01', @sound_leather_cloth, 0);

-- Bloodthirsty Gladiator's Cord
CALL itemdisplayinfo_belt(80030, 'cloth_pvppriest_c_01white_belt_lu', 'inv_belt_robe_pvppriest_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Satin Leggings
CALL itemdisplayinfo_legs(80031, 'cloth_pvppriest_c_01white_pant_lu', 'cloth_pvppriest_c_01white_pant_ll', 'inv_pants_robe_pvppriest_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Treads
CALL itemdisplayinfo_boots(80032, '', '', '', '', 'cloth_pvppriest_c_01white_boot_ll', 'cloth_pvppriest_c_01white_boot_fo', 'inv_boots_robe_pvppriest_c_01', @sound_leather_cloth, 0);

/*
* Warlock
*/
  
-- Bloodthirsty Gladiator's Felweave Cowl
CALL itemdisplayinfo_helmet(80033, 'helm_cloth_pvpwarlock_c_01.mdx', 'helm_cloth_pvpwarlock_c_01_black', 'inv_helmet_cloth_pvpwarlock_c_01', @sound_leather_cloth, 248, 306);

-- Bloodthirsty Gladiator's Felweave Amice
CALL itemdisplayinfo_shoulders(80034, 'lshoulder_cloth_pvpwarlock_c_01.mdx', 'rshoulder_cloth_pvpwarlock_c_01.mdx', 'shoulder_cloth_pvpwarlock_c_01_black', 'shoulder_cloth_pvpwarlock_c_01_black', 'inv_shoulder_cloth_pvpwarlock_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Felweave Rainment
CALL itemdisplayinfo_robe(80035, 'cloth_pvpwarlock_c_01_black_sleeve_au', 'cloth_pvpwarlock_c_01_black_glove_al', 'cloth_pvpwarlock_c_01_black_chest_tu', 'cloth_pvpwarlock_c_01_black_chest_tl', 'cloth_pvpwarlock_c_01_black_robe_lu', 'cloth_pvpwarlock_c_01_black_robe_ll', 'inv_chest_cloth_pvpwarlock_c_01', @sound_leather_cloth, 0, 1);

-- Bloodthirsty Gladiator's Felweave Tunic
CALL itemdisplayinfo_tunic(80036, 'cloth_pvpwarlock_c_01_black_sleeve_au', 'cloth_pvpwarlock_c_01_black_glove_al', 'cloth_pvpwarlock_c_01_black_chest_tu', 'cloth_pvpwarlock_c_01_black_chest_tl', 'inv_chest_cloth_pvpwarlock_c_01', @sound_leather_cloth, 0);

-- Bloodthirsty Gladiator's Cuffs
CALL itemdisplayinfo_bracers(80037, 'cloth_pvpwarlock_c_01_black_bracer_al', 'inv_bracer_cloth_pvpwarlock_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Felweave Handwraps
CALL itemdisplayinfo_gloves(80038, 'cloth_pvpwarlock_c_01_black_glove_al', 'cloth_pvpwarlock_c_01_black_glove_ha', 'inv_gauntlets_cloth_pvpwarlock_c_01', @sound_leather_cloth, 0);

-- Bloodthirsty Gladiator's Cord
CALL itemdisplayinfo_belt(80039, 'cloth_pvpwarlock_c_01_black_belt_lu', 'inv_belt_cloth_pvpwarlock_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Felweave Trousers
CALL itemdisplayinfo_legs(80040, 'cloth_pvpwarlock_c_01black_pant_lu', 'cloth_pvpwarlock_c_01black_pant_ll', 'inv_pants_cloth_pvpwarlock_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Treads
CALL itemdisplayinfo_boots(80041, '', '', '', '', 'cloth_pvpwarlock_c_01_black_boot_ll', 'cloth_pvpwarlock_c_01_black_boot_fo', 'inv_boots_cloth_pvpwarlock_c_01', @sound_leather_cloth, 0);

/*
* Death Knight
*/

-- Bloodthirsty Gladiator's Dreadplate Helm
CALL itemdisplayinfo_helmet(80042, 'helm_plate_pvpdeathknight_c_01.mdx', 'helm_plate_pvpdeathknight_c_01', 'inv_helm_plate_pvpdeathknight_c_01', @sound_plate, 248, 306);

-- Bloodthirsty Gladiator's Dreadplate Shoulders
CALL itemdisplayinfo_shoulders(80043, 'lshoulder_plate_pvpdeathknight_c_01.mdx', 'rshoulder_plate_pvpdeathknight_c_01.mdx', 'plate_pvpdeathknight_c_01', 'plate_pvpdeathknight_c_01', 'inv_shoulder_plate_pvpdeathknight_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Dreadplate Chestpiece
CALL itemdisplayinfo_chest(80044, 'plate_pvpdeathknight_c_01_sleeve_au', 'plate_pvpdeathknight_c_01_sleeve_al', 'plate_pvpdeathknight_c_01_chest_tu', 'plate_pvpdeathknight_c_01_chest_tl', 'inv_chest_plate_pvpdeathknight_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Armguards
CALL itemdisplayinfo_bracers(80045, 'plate_pvpdeathknight_c_01_bracer_al', 'inv_bracer_plate_pvpdeathknight_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Dreadplate Gauntlets
CALL itemdisplayinfo_gloves(80046, 'plate_pvpdeathknight_c_01_glove_al', 'plate_pvpdeathknight_c_01_glove_ha', 'inv_gauntlets_plate_pvpdeathknight_c_01', @sound_plate, 3);

-- Bloodthirsty Gladiator's Girdle
CALL itemdisplayinfo_belt(80047, 'plate_pvpdeathknight_c_01_belt_lu ', 'inv_belt_plate_pvpdeathknight_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Dreadplate Legguards
CALL itemdisplayinfo_legs(80048, 'plate_pvpdeathknight_c_01_pant_lu', 'plate_pvpdeathknight_c_01_pant_ll', 'inv_pants_plate_pvpdeathknight_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Warboots
CALL itemdisplayinfo_boots(80049, 'LShoulder_Plate_A_01.mdx', 'RShoulder_Plate_A_01.mdx', 'Shoulder_Plate_A_01Black', 'Shoulder_Plate_A_01Black', 'plate_pvpdeathknight_c_01_boot_ll', 'plate_pvpdeathknight_c_01_boot_fo', 'inv_boots_plate_pvpdeathknight_c_01', @sound_plate, 4);

/*
* Druid
*/

-- Bloodthirsty Gladiator's Dragonhide Helm
CALL itemdisplayinfo_helmet(80050, 'helm_leather_pvpdruid_c_01.mdx', 'helmleather_pvpdruid_c_01cream', 'inv_helm_leather_pvpdruid_c_01', @sound_leather_cloth, 248, 306);

-- Bloodthirsty Gladiator's Dragonhide Spaulders
CALL itemdisplayinfo_shoulders(80051, 'lshoulder_leather_pvpdruid_c_01.mdx', 'rshoulder_leather_pvpdruid_c_01.mdx', 'shoulderleather_pvpdruid_c_01cream', 'shoulderleather_pvpdruid_c_01cream', 'inv_shoulder_leather_pvpdruid_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Satin Robe
CALL itemdisplayinfo_robe(80052, 'leather_pvpdruid_c_01cream_sleeve_au', 'leather_pvpdruid_c_01cream_glove_al', 'leather_pvpdruid_c_01cream_chest_tu', 'leather_pvpdruid_c_01cream_chest_tl', 'leather_pvpdruid_c_01cream_robe_lu', 'leather_pvpdruid_c_01cream_robe_ll', 'inv_chest_leather_pvpdruid_c_01', @sound_leather_cloth, 1, 0);

-- Bloodthirsty Gladiator's Dragonhide Tunic
CALL itemdisplayinfo_tunic(80053, 'leather_pvpdruid_c_01cream_sleeve_au', 'leather_p leather_pvpdruid_c_01cream_glove_al', 'leather_pvpdruid_c_01cream_chest_tu', 'leather_pvpdruid_c_01cream_chest_tl', 'inv_chest_leather_pvpdruid_c_01', @sound_leather_cloth, 0);

-- Bloodthirsty Gladiator's Bindings
CALL itemdisplayinfo_bracers(80054, 'leather_pvpdruid_c_01cream_bracer_al', 'inv_bracer_leather_pvpdruid_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Dragonhide Gloves
CALL itemdisplayinfo_gloves(80055, 'leather_pvpdruid_c_01cream_glove_al', 'leather_pvpdruid_c_01cream_glove_ha', 'inv_glove_leather_pvpdruid_c_01', @sound_leather_cloth, 3);

-- Bloodthirsty Gladiator's Belt
CALL itemdisplayinfo_belt(80056, 'leather_pvpdruid_c_01cream_belt_lu', 'inv_belt_leather_pvpdruid_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Dragonhide Legguards
CALL itemdisplayinfo_legs(80057, 'leather_pvpdruid_c_01cream_pant_lu', 'leather_pvpdruid_c_01cream_pant_ll', 'inv_pants_leather_pvpdruid_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Footguards
CALL itemdisplayinfo_boots(80058, '', '', '', '', 'leather_pvpdruid_c_01cream_boot_ll', 'leather_pvpdruid_c_01cream_boot_fo', 'inv_boots_leather_pvpdruid_c_01', @sound_leather_cloth, 1);

/*
* Mage
*/
  
-- Bloodthirsty Gladiator's Silk Cowl
CALL itemdisplayinfo_helmet(80059, 'helm_cloth_pvpmage_c_01.mdx', 'helm_cloth_pvpmage_c_01yellow', 'inv_helm_cloth_pvpmage_c_01', @sound_leather_cloth, 248, 306);

-- Bloodthirsty Gladiator's Silk Amice
CALL itemdisplayinfo_shoulders(80060, 'lshoulder_cloth_pvpmage_c_01.mdx', 'rshoulder_cloth_pvpmage_c_01.mdx', 'shoulder_cloth_pvpmage_c_01yellow', 'shoulder_cloth_pvpmage_c_01yellow', 'inv_shoulder_cloth_pvpmage_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Silk Robe
CALL itemdisplayinfo_robe(80061, 'cloth_pvpmage_c_01yellow_sleeve_au', 'cloth_pvpmage_c_01yellow_sleeve_al', 'cloth_pvpmage_c_01yellow_chest_tu', 'cloth_pvpmage_c_01yellow_chest_tl', 'cloth_pvpmage_c_01yellow_robe_lu', 'cloth_pvpmage_c_01yellow_robe_ll', 'inv_chest_cloth_pvpmage_c_01', @sound_leather_cloth, 1, 1);

-- Bloodthirsty Gladiator's Silk Tunic
CALL itemdisplayinfo_tunic(80062, 'cloth_pvpmage_c_01yellow_sleeve_au', 'cloth_pvpmage_c_01yellow_sleeve_al', 'cloth_pvpmage_c_01yellow_chest_tu', 'cloth_pvpmage_c_01yellow_chest_tl', 'inv_chest_cloth_pvpmage_c_01', @sound_leather_cloth, 1);

-- Bloodthirsty Gladiator's Cuffs
CALL itemdisplayinfo_bracers(80063, 'cloth_pvpwarlock_c_01_black_bracer_al', 'inv_bracer_cloth_pvpmage_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Silk Handwraps
CALL itemdisplayinfo_gloves(80064, 'cloth_pvpmage_c_01yellow_glove_al', 'cloth_pvpmage_c_01yellow_glove_ha', 'inv_gauntlets_cloth_pvpmage_c_01', @sound_leather_cloth, 0);

-- Bloodthirsty Gladiator's Cord
CALL itemdisplayinfo_belt(80065, 'cloth_pvpmage_c_01yellow_belt_lu', 'inv_belt_cloth_pvpmage_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Silk Trousers
CALL itemdisplayinfo_legs(80066, 'cloth_pvpmage_c_01yellow_pant_lu', 'cloth_pvpmage_c_01yellow_pant_ll', 'inv_pants_cloth_pvpmage_c_01', @sound_leather_cloth);

-- Bloodthirsty Gladiator's Treads
CALL itemdisplayinfo_boots(80067, '', '', '', '', '', 'cloth_pvpmage_c_01yellow_boot_fo', 'inv_boots_cloth_pvpmage_c_01', @sound_leather_cloth, 0);

/*
* Shaman
*/

-- Bloodthirsty Gladiator's Chain Helm
CALL itemdisplayinfo_helmet(80068, 'helm_mail_pvpshaman_c_01.mdx', 'helm_mail_pvpshaman_c_01beige', 'inv_helmet_mail_pvpshaman_c_01', @sound_mail, 0, 0);

-- Bloodthirsty Gladiator's Chain Spaulders
CALL itemdisplayinfo_shoulders(80069, 'lshoulder_mail_pvpshaman_c_01.mdx', 'rshoulder_mail_pvpshaman_c_01.mdx', 'shoulder_mail_pvpshaman_c_01beige', 'shoulder_mail_pvpshaman_c_01beige', 'inv_shoulder_mail_pvpshaman_c_01', @sound_mail);

-- Bloodthirsty Gladiator's Chain Armor
CALL itemdisplayinfo_chest(80070, 'mail_pvpshaman_c_01beige_sleeve_au', '', 'mail_pvpshaman_c_01beige_chest_tu', 'mail_pvpshaman_c_01beige_chest_tl', 'inv_chest_mail_pvpshaman_c_01', @sound_mail);

-- Bloodthirsty Gladiator's Wristguards
CALL itemdisplayinfo_bracers(80071, 'mail_pvpshaman_c_01beige_bracer_al', 'inv_bracer_mail_pvpshaman_c_01', @sound_mail);

-- Bloodthirsty Gladiator's Chain Gauntlets
CALL itemdisplayinfo_gloves(80072, 'mail_pvpshaman_c_01beige_glove_al', 'mail_pvpshaman_c_01beige_glove_ha', 'inv_gauntlets_mail_pvpshaman_c_01', @sound_mail, 3);

-- Bloodthirsty Gladiator's Links
CALL itemdisplayinfo_belt(80073, 'mail_pvpshaman_c_01beige_belt_lu', 'inv_belt_mail_pvpshaman_c_01', @sound_mail);

-- Bloodthirsty Gladiator's Chain Leggings
CALL itemdisplayinfo_legs_skirt(80074, 'mail_pvpshaman_c_01beige_robe_lu', 'mail_pvpshaman_c_01beige_robe_ll', 'inv_pants_mail_pvpshaman_c_01', @sound_mail, 1);

-- Bloodthirsty Gladiator's Sabatons
CALL itemdisplayinfo_boots(80075, '', '', '', '', 'mail_pvpshaman_c_01beige_boot_ll', 'mail_pvpshaman_c_01beige_boot_fo', 'inv_boots_mail_pvpshaman_c_01', @sound_mail, 0);

/*
* Paladin
*/

-- Bloodthirsty Gladiator's Scaled Helm
CALL itemdisplayinfo_helmet(80076, 'helm_plate_pvppaladin_c_01.mdx', 'helm_plate_pvppaladin_c_01orange', 'inv_helm_plate_pvppaladin_c_01', @sound_plate, 248, 306);

-- Bloodthirsty Gladiator's Scaled Shoulders
CALL itemdisplayinfo_shoulders(80077, 'lshoulder_plate_pvppaladin_c_01.mdx', 'rshoulder_plate_pvppaladin_c_01.mdx', 'shoulder_plate_pvppaladin_c_01orange', 'shoulder_plate_pvppaladin_c_01orange', 'inv_shoulder_plate_pvppaladin_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Scaled Chestpiece
CALL itemdisplayinfo_chest(80078, 'plate_pvppaladin_c_01orange_sleeve_au', '', 'plate_pvppaladin_c_01orange_chest_tu', 'plate_pvppaladin_c_01orange_chest_tl', 'inv_chest_plate_pvppaladin_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Bracers
CALL itemdisplayinfo_bracers(80079, 'plate_pvppaladin_c_01orange_bracer_al', 'inv_bracer_plate_pvppaladin_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Scaled Gauntlets
CALL itemdisplayinfo_gloves(80080, 'plate_pvppaladin_c_01orange_glove_al', 'plate_pvppaladin_c_01orange_glove_ha', 'inv_glove_plate_pvppaladin_c_01', @sound_plate, 3);

-- Bloodthirsty Gladiator's Clasp
CALL itemdisplayinfo_belt(80081, 'plate_pvppaladin_c_01orange_belt_lu', 'inv_belt_plate_pvppaladin_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Scaled Legguards
CALL itemdisplayinfo_legs(80082, 'plate_pvppaladin_c_01orange_pant_lu', 'plate_pvppaladin_c_01orange_pant_ll', 'inv_pants_plate_pvppaladin_c_01', @sound_plate);

-- Bloodthirsty Gladiator's Greaves
CALL itemdisplayinfo_boots(80083, 'LShoulder_Plate_A_01.mdx', 'RShoulder_Plate_A_01.mdx', 'Shoulder_Plate_A_01Black', 'Shoulder_Plate_A_01Black', 'plate_pvppaladin_c_01orange_boot_ll', 'plate_pvppaladin_c_01orange_boot_fo', 'inv_boots_plate_pvppaladin_c_01', @sound_plate, 4);