DELIMITER //

DROP PROCEDURE IF EXISTS `itemdisplayinfo_armor` //
CREATE PROCEDURE itemdisplayinfo_armor(IN id INT(10), IN leftmodel TEXT(255), IN leftmodeltexture TEXT(255), IN inventoryicon1 TEXT(255))
BEGIN
    INSERT INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1) VALUES
      (id, leftmodel, leftmodeltexture, inventoryicon1);
END//

DROP PROCEDURE IF EXISTS `itemdisplayinfo_weapon` //
CREATE PROCEDURE itemdisplayinfo_weapon(IN id INT(10), IN leftmodel TEXT(255), IN leftmodeltexture TEXT(255), IN inventoryicon1 TEXT(255))
BEGIN
    INSERT INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1) VALUES
    (id, leftmodel, leftmodeltexture, inventoryicon1);
END//

DELIMITER ;

-- https://www.wowhead.com/item=61326/vicious-gladiators-decapitator
DELETE FROM `itemdisplayinfo` WHERE `id` = 81901;
CALL itemdisplayinfo_weapon(81901, 'axe_2h_pvp400_c_01.mdx', 'axe_2h_pvp400_c_01blue', 'inv_axe_2h_pvp400_c_01');

-- https://www.wowhead.com/item=61327/vicious-gladiators-shanker
DELETE FROM `itemdisplayinfo` WHERE `id` = 83590;
CALL itemdisplayinfo_weapon(83590, 'knife_1h_pvp400_c_01.mdx', 'knife_1h_pvp400_c_01orange', 'inv_knife_1h_pvp400_c_01');

-- https://www.wowhead.com/item=61340/vicious-gladiators-pike
DELETE FROM `itemdisplayinfo` WHERE `id` = 79850;
CALL itemdisplayinfo_weapon(79850, 'polearm_2h_pvp400_c_01.mdx', 'polearm_2h_pvp400_c_01red', 'inv_polearm_2h_pvp400_c_01');

-- https://www.wowhead.com/item=61353/vicious-gladiators-longbow
DELETE FROM `itemdisplayinfo` WHERE `id` = 79854;
CALL itemdisplayinfo_weapon(79854, 'bow_1h_pvp400_c_01.mdx', 'bow_1h_pvp400_c_01blue', 'inv_bow_1h_pvp400_c_01');

-- https://www.wowhead.com/item=61343/vicious-gladiators-staff
DELETE FROM `itemdisplayinfo` WHERE `id` = 79845;
CALL itemdisplayinfo_weapon(79845, 'stave_2h_pvp400_c_01.mdx', 'stave_2h_pvp400_c_01_blue', 'inv_stave_2h_pvp400_c_01');