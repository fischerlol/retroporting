-- https://www.wowhead.com/item=61326/vicious-gladiators-decapitator
set @displayid = 81901;
set @leftmodel = 'axe_2h_pvp400_c_01.mdx';
set @leftmodeltexture = 'axe_2h_pvp400_c_01blue';
set @inventoryicon = 'inv_axe_2h_pvp400_c_01';
delete from itemdisplayinfo where id = @displayid;
INSERT INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1) VALUES 
(@displayid, @leftmodel, @leftmodeltexture, @inventoryicon);

-- https://www.wowhead.com/item=61327/vicious-gladiators-shanker
set @displayid = 61327;
set @leftmodel = 'knife_1h_pvp400_c_01.mdx';
set @leftmodeltexture = 'knife_1h_pvp400_c_01orange';
set @inventoryicon = 'inv_knife_1h_pvp400_c_01';
delete from itemdisplayinfo where id = @displayid;
INSERT INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1) VALUES 
(@displayid, @leftmodel, @leftmodeltexture, @inventoryicon);

-- https://www.wowhead.com/item=61340/vicious-gladiators-pike
set @displayid = 79850;
set @leftmodel = 'polearm_2h_pvp400_c_01.mdx';
set @leftmodeltexture = 'polearm_2h_pvp400_c_01red';
set @inventoryicon = 'inv_polearm_2h_pvp400_c_01';
delete from itemdisplayinfo where id = @displayid;
INSERT INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1) VALUES 
(@displayid, @leftmodel, @leftmodeltexture, @inventoryicon);

-- https://www.wowhead.com/item=61353/vicious-gladiators-longbow
set @displayid = 61353;
set @leftmodel = 'bow_1h_pvp400_c_01.mdx';
set @leftmodeltexture = 'bow_1h_pvp400_c_01blue';
set @inventoryicon = 'inv_bow_1h_pvp400_c_01';
delete from itemdisplayinfo where id = @displayid;
INSERT INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1) VALUES 
(@displayid, @leftmodel, @leftmodeltexture, @inventoryicon);

-- https://www.wowhead.com/item=61343/vicious-gladiators-staff
set @displayid = 79845;
set @leftmodel = 'stave_2h_pvp400_c_01.mdx';
set @leftmodeltexture = 'stave_2h_pvp400_c_01_blue';
set @inventoryicon = 'inv_stave_2h_pvp400_c_01';
delete from itemdisplayinfo where id = @displayid;
INSERT INTO itemdisplayinfo(id, leftmodel, leftmodeltexture, inventoryicon1) VALUES 
(@displayid, @leftmodel, @leftmodeltexture, @inventoryicon);