-- https://www.wowhead.com/item=61326/vicious-gladiators-decapitator
delete from item where itemid = 61326;
insert into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid) 
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from acore_world_pvp.item_template where entry = 61326;

-- https://www.wowhead.com/item=61327/vicious-gladiators-shanker
delete from item where itemid = 61327;
insert into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid) 
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from acore_world_pvp.item_template where entry = 61327;

-- https://www.wowhead.com/item=61340/vicious-gladiators-pike
delete from item where itemid = 61340;
insert into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid) 
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from acore_world_pvp.item_template where entry = 61340;

-- https://www.wowhead.com/item=61353/vicious-gladiators-longbow
delete from item where itemid = 61353;
insert into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid) 
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from acore_world_pvp.item_template where entry = 61353;

-- https://www.wowhead.com/item=61343/vicious-gladiators-staff
delete from item where itemid = 61343;
insert into item(itemid, itemclass, itemsubclass, sound_override_subclassid, materialid, itemdisplayinfo, inventoryslotid, sheathid) 
select entry, class, subclass, soundoverridesubclass, material, displayid, inventorytype, sheath
from acore_world_pvp.item_template where entry = 61343;