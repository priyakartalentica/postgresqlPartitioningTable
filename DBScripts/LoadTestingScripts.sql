--pt_item_inventory	
--pt_item_inventory_index	
--pt_item_inventory_store_dpt	
--item_inventory_retailor_DPT

select * from stores limit 10;
--"e3ded2c4-5aca-46c2-b178-fb4ce7a11a46"
--"cc27a9c7-1c6a-46de-8d20-873ae8951454"
--"8c8cef96-d47e-4deb-9aa8-a105c7ea45dd"
---"b84f092f-7f2f-46a7-b2b1-2aa05101729b"
--"e803ee79-5718-4b8a-bc76-66ed4da26e88"
--"bd821add-2b0f-4bc9-8c9d-12149011c209"
--"dee18d22-519f-4942-b7dd-5a2b400772b8"
--"76c85c7a-c4eb-43f0-b541-92e657c2b627"
--"53f5c74a-ffb6-4422-a3ad-82561e07ce54"
--"00ed9a0c-e3aa-4579-b174-b9238bf4447a"

select * from category limit 10;

--"509d5984-dddb-4c8a-b5cd-ed8766f7bf68"
--"e8126013-6317-42f3-8aba-a5fe4489d3da"
--"0584b955-946e-452e-80f8-30cdea7e7deb"
--"94614d74-6f3a-4011-a9d8-2a12de50807f"
--"0185ca29-98cf-4dbe-9010-d48ac83d9cc3"
--"7183bc4e-a6a2-4025-a051-daf946fed756"
--"7a2efc40-cc99-4349-b7cd-5a7d4eaa7939"
--"9a86df19-2a26-4a76-9d78-cc0415ee8b1d"
--"94b677ee-e2a7-48bb-b735-dd6ae72c21c4"
--"5e2b8e2d-2a4e-420a-b475-6f5bca98bd1e"

select * from retailor limit 10;
--"75a30195-195b-4a66-920c-1c64718a2655"
--"f4ca4a7d-7936-41ee-9529-d89d4642e2c6"
--"bae375a8-46f5-4295-8b3d-8467d94b3830"
--"2c2e3998-c02d-4edb-b22f-357d0bfdeb69"
--"d877ce98-ebb8-473b-a825-77a165f91991"
--"a51965d4-5ca7-41dd-94cc-db287822e834"
--"95f61e4f-75f8-40db-ac2c-7a8461a78e0b"
--"a71b3a6a-058e-4854-8c05-5b55176ade9b"
--"e87cdccb-07c0-4bb9-bc90-cc5889828a4a"
--"35655566-33a9-480a-ac54-8f7bc8654694"

DISCARD ALL;


----------------------select avg(score) where stor_id=? 

select avg(score) from pt_item_inventory where store_id = 'e3ded2c4-5aca-46c2-b178-fb4ce7a11a46' --114ms

select avg(score) from pt_item_inventory_index where store_id = 'e3ded2c4-5aca-46c2-b178-fb4ce7a11a46' --58ms

select avg(score) from pt_item_inventory_store_DPT where store_id = 'e3ded2c4-5aca-46c2-b178-fb4ce7a11a46' --71ms 

--select avg(score) from pt_item_inventory_retailor_DPT where store_id = 'e3ded2c4-5aca-46c2-b178-fb4ce7a11a46' --140ms

----------------------select avg(score) where category_id=?

DISCARD ALL;
select avg(score) from item_inventory where category_id = '509d5984-dddb-4c8a-b5cd-ed8766f7bf68'
and store_id='cc27a9c7-1c6a-46de-8d20-873ae8951454' ; --203ms

DISCARD ALL;

select avg(score) from item_inventory_index where category_id = '509d5984-dddb-4c8a-b5cd-ed8766f7bf68'
and store_id='cc27a9c7-1c6a-46de-8d20-873ae8951454' ; --87ms

DISCARD ALL;

select avg(score) from item_inventory_store_DPT where category_id = '509d5984-dddb-4c8a-b5cd-ed8766f7bf68'
and store_id='cc27a9c7-1c6a-46de-8d20-873ae8951454' ; --242ms 

DISCARD ALL;

--select avg(score) from item_inventory_retailor_DPT where category_id = '509d5984-dddb-4c8a-b5cd-ed8766f7bf68'
--and store_id='cc27a9c7-1c6a-46de-8d20-873ae8951454' ; --231ms

-------------------------------------


----------------------insert 100 records for a store_id
select count(*) from pt_item_inventory	
select count(*) from pt_item_inventory_index	
select count(*) from pt_item_inventory_store_dpt	

--item_inventory	- 83ms
	--item_inventory_index	- 95 ms
	--item_inventory_store_DPT	- 52 ms
	--item_inventory_retailor_DPT - 68ms
DISCARD ALL;

select * from pt_item_inventory_InsertRecords1(100);

select * from pt_item_inventory_index_InsertRecords1(100);

select * from pt_item_inventory_store_dpt_index_InsertRecords1(100);


----------------------update 100 records for a store_id
 
select count(*) from pt_item_inventory where item_name Like 'Headphone%'	
select count(*) from pt_item_inventory_index	where item_name Like 'Headphone%'
select count(*) from pt_item_inventory_store_dpt	where item_name Like 'Headphone%'	

DISCARD ALL;
select * from pt_item_inventory_updateRecords1(100,'Headphone');
DISCARD ALL;
select * from pt_item_inventory_index_updateRecords1(100,'Headphone');
DISCARD ALL;
select * from pt_item_inventory_store_dpt_index_updateRecords1(100,'Headphone');

 
 
 
----------------------insert 1000 records for a store_id
select count(*) from pt_item_inventory	
select count(*) from pt_item_inventory_index	
select count(*) from pt_item_inventory_store_dpt	

DISCARD ALL;
select * from pt_item_inventory_InsertRecords1(1000);
DISCARD ALL;
select * from pt_item_inventory_index_InsertRecords1(1000);
DISCARD ALL;
select * from pt_item_inventory_store_dpt_index_InsertRecords1(1000);


----------------------update 1000 records for a store_id

 
select count(*) from pt_item_inventory where item_name Like 'Laptop%'	
select count(*) from pt_item_inventory_index	where item_name Like 'Laptop%'
select count(*) from pt_item_inventory_store_dpt	where item_name Like 'Laptop%'	

DISCARD ALL;
select * from pt_item_inventory_updateRecords1(1000,'Laptop');
DISCARD ALL;
select * from pt_item_inventory_index_updateRecords1(1000,'Laptop');
DISCARD ALL;
select * from pt_item_inventory_store_dpt_index_updateRecords1(1000,'Laptop');







----------------------insert 10000 records for a store_id

select count(*) from pt_item_inventory	
select count(*) from pt_item_inventory_index	
select count(*) from pt_item_inventory_store_dpt	

DISCARD ALL;
select * from pt_item_inventory_InsertRecords1(10000);
DISCARD ALL;
select * from pt_item_inventory_index_InsertRecords1(10000);
DISCARD ALL;
select * from pt_item_inventory_store_dpt_index_InsertRecords1(10000);


----------------------update 10000 records for a store_id
select count(*) from pt_item_inventory where item_name Like 'HDD%'	
select count(*) from pt_item_inventory_index	where item_name Like 'HDD%'
select count(*) from pt_item_inventory_store_dpt	where item_name Like 'HDD%'	

DISCARD ALL;
select * from pt_item_inventory_updateRecords1(10000,'HDD');
DISCARD ALL;
select * from pt_item_inventory_index_updateRecords1(10000,'HDD');
DISCARD ALL;
select * from pt_item_inventory_store_dpt_index_updateRecords1(10000,'HDD');

