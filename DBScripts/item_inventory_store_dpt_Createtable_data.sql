
-- Table: public.item_inventory_store_dpt

-- DROP TABLE public.item_inventory_store_dpt;
create sequence pt_item_inventory_store_dpt_item_id_seq;

CREATE TABLE public.pt_item_inventory_store_dpt
(
    item_id integer NOT NULL DEFAULT nextval('pt_item_inventory_store_dpt_item_id_seq'),
    item_name VARCHAR NOT NULL,
    store_id uuid NOT NULL,
    category_id uuid NOT NULL,
    country_id integer NOT NULL,
    retailor_id uuid,
    score integer,
	PRIMARY KEY (item_id,store_id)
) PARTITION BY LIST (store_id);

ALTER TABLE public.pt_item_inventory_store_dpt
    OWNER to postgres;

-- Partitions SQL



CREATE TABLE public.pt_item_inventory_store_dpt_store_1 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('e3ded2c4-5aca-46c2-b178-fb4ce7a11a46');

ALTER TABLE public.pt_item_inventory_store_dpt_store_1
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_10 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('00ed9a0c-e3aa-4579-b174-b9238bf4447a');

ALTER TABLE public.pt_item_inventory_store_dpt_store_10
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_11 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('e195374f-781a-44b9-b767-40e1d7886ef8');

ALTER TABLE public.pt_item_inventory_store_dpt_store_11
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_12 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('d4c8c9d3-aa34-4e6b-a25d-9500919ced67');

ALTER TABLE public.pt_item_inventory_store_dpt_store_12
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_13 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('e44379fc-44f8-451c-a7a5-9b64b51a225f');

ALTER TABLE public.pt_item_inventory_store_dpt_store_13
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_14 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('72b8b597-d363-4803-943f-0fc9dc8c9a07');

ALTER TABLE public.pt_item_inventory_store_dpt_store_14
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_15 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('903632a5-5fa6-46a2-ab27-2dcc089efd0e');

ALTER TABLE public.pt_item_inventory_store_dpt_store_15
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_16 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('25672b2b-9c67-45f3-b705-c78269645796');

ALTER TABLE public.pt_item_inventory_store_dpt_store_16
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_17 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('a4333ffc-7594-4e2f-8d78-ce2d6b33e6a5');

ALTER TABLE public.pt_item_inventory_store_dpt_store_17
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_18 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('7c1acd70-c377-4c81-940c-e840732862aa');

ALTER TABLE public.pt_item_inventory_store_dpt_store_18
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_19 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('7d4435e8-64b9-42ba-81f6-e364a02663b7');

ALTER TABLE public.pt_item_inventory_store_dpt_store_19
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_2 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('cc27a9c7-1c6a-46de-8d20-873ae8951454');

ALTER TABLE public.pt_item_inventory_store_dpt_store_2
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_20 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('8c628bd5-3ac8-4f62-9153-b8ce586c7445');

ALTER TABLE public.pt_item_inventory_store_dpt_store_20
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_21 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('d9ecd1cb-f8ef-46ae-aa52-8682cef574f6');

ALTER TABLE public.pt_item_inventory_store_dpt_store_21
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_22 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('5ef34c7d-dc4e-4f10-9a17-83fa261a1614');

ALTER TABLE public.pt_item_inventory_store_dpt_store_22
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_23 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('6d8d4106-0a2f-447f-b69d-4ce73e04d61f');

ALTER TABLE public.pt_item_inventory_store_dpt_store_23
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_24 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('831b1669-e89a-41b8-88f6-db59e33123b3');

ALTER TABLE public.pt_item_inventory_store_dpt_store_24
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_25 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('de175c07-01b2-4fb5-9906-1043ad0dbc45');

ALTER TABLE public.pt_item_inventory_store_dpt_store_25
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_26 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('7cc14816-c044-4b92-98c8-14ba177af070');

ALTER TABLE public.pt_item_inventory_store_dpt_store_26
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_27 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('52be77b0-86c1-44ce-a79c-511c197f8ce7');

ALTER TABLE public.pt_item_inventory_store_dpt_store_27
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_28 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('2b35cf1f-99b2-4d34-bec7-0b5e80873b24');

ALTER TABLE public.pt_item_inventory_store_dpt_store_28
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_29 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('e1487965-8b18-4f38-9506-e3059c3ac123');

ALTER TABLE public.pt_item_inventory_store_dpt_store_29
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_3 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('8c8cef96-d47e-4deb-9aa8-a105c7ea45dd');

ALTER TABLE public.pt_item_inventory_store_dpt_store_3
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_30 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('1e912dbd-99a0-4fce-a1a7-d7c46611bd7f');

ALTER TABLE public.pt_item_inventory_store_dpt_store_30
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_31 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('77c0cc76-54e2-4f8b-a2ac-2f690f820e34');

ALTER TABLE public.pt_item_inventory_store_dpt_store_31
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_32 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('4b14463f-64af-4beb-aa38-b2f4f59e67d3');

ALTER TABLE public.pt_item_inventory_store_dpt_store_32
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_33 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('37c0ae16-d2e5-4d20-8b46-fc256eadc142');

ALTER TABLE public.pt_item_inventory_store_dpt_store_33
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_34 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('005aca82-2254-4486-8429-c173cc4fdd2e');

ALTER TABLE public.pt_item_inventory_store_dpt_store_34
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_35 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('0f3e1d1e-9389-4bd0-9af8-b0d667a2de24');

ALTER TABLE public.pt_item_inventory_store_dpt_store_35
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_36 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('7a58a09c-a817-43eb-9b49-f31a15002129');

ALTER TABLE public.pt_item_inventory_store_dpt_store_36
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_37 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('92888b6f-7cd4-42e2-8f31-df776c94357d');

ALTER TABLE public.pt_item_inventory_store_dpt_store_37
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_38 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('2a9fed4a-b245-4941-a8b6-3a1d6cd78f15');

ALTER TABLE public.pt_item_inventory_store_dpt_store_38
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_39 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('b0641930-18f2-4fb6-ac0d-4f14880e6b65');

ALTER TABLE public.pt_item_inventory_store_dpt_store_39
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_4 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('b84f092f-7f2f-46a7-b2b1-2aa05101729b');

ALTER TABLE public.pt_item_inventory_store_dpt_store_4
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_40 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('05672e99-2e7e-4a4b-8e63-36e227cfed4f');

ALTER TABLE public.pt_item_inventory_store_dpt_store_40
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_41 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('bbcd9203-15bc-4214-ae6b-c87198c033e8');

ALTER TABLE public.pt_item_inventory_store_dpt_store_41
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_42 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('bbd1f1d0-e082-4931-a2c3-9702d286ddec');

ALTER TABLE public.pt_item_inventory_store_dpt_store_42
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_43 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('2a7fdf4d-3ae5-4762-9aae-9bc29173b6a4');

ALTER TABLE public.pt_item_inventory_store_dpt_store_43
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_44 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('316c066b-6430-4923-b575-7b78654d100f');

ALTER TABLE public.pt_item_inventory_store_dpt_store_44
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_45 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('09445b6e-cd62-4508-9496-a1bba70ed663');

ALTER TABLE public.pt_item_inventory_store_dpt_store_45
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_46 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('f03aacc9-50f6-46a4-a2c0-316be3c1f961');

ALTER TABLE public.pt_item_inventory_store_dpt_store_46
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_47 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('03497409-cb0c-48a0-97cf-bc7b2d7430cd');

ALTER TABLE public.pt_item_inventory_store_dpt_store_47
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_48 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('0be87c02-c887-4863-a1e3-b9b1b39ec303');

ALTER TABLE public.pt_item_inventory_store_dpt_store_48
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_49 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('04e38d9d-2d16-46f9-9dfd-f32ca42b23b5');

ALTER TABLE public.pt_item_inventory_store_dpt_store_49
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_5 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('e803ee79-5718-4b8a-bc76-66ed4da26e88');

ALTER TABLE public.pt_item_inventory_store_dpt_store_5
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_50 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('efb7a6e0-948c-4579-aa94-707c914b0b1c');

ALTER TABLE public.pt_item_inventory_store_dpt_store_50
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_6 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('bd821add-2b0f-4bc9-8c9d-12149011c209');

ALTER TABLE public.pt_item_inventory_store_dpt_store_6
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_7 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('dee18d22-519f-4942-b7dd-5a2b400772b8');

ALTER TABLE public.pt_item_inventory_store_dpt_store_7
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_8 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('76c85c7a-c4eb-43f0-b541-92e657c2b627');

ALTER TABLE public.pt_item_inventory_store_dpt_store_8
    OWNER to postgres;

CREATE TABLE public.pt_item_inventory_store_dpt_store_9 PARTITION OF public.pt_item_inventory_store_dpt
    FOR VALUES IN ('53f5c74a-ffb6-4422-a3ad-82561e07ce54');

ALTER TABLE public.pt_item_inventory_store_dpt_store_9
    OWNER to postgres;
	
	
	
	
	
	
	---------------------------------------------
	
	
	CREATE OR REPLACE FUNCTION pt_item_inventory_store_dpt_InsertRecords(in a_no_of_records integer) RETURNS integer AS $$
DECLARE
    v_counter integer;
    v_productname varchar(255);
    v_date varchar(15);
	v_store_id uuid;
	v_category_id uuid;
	v_retailer_id uuid;
	c_category cursor for select category_id from category;
	c_stores cursor for select store_id from stores;
	c_retailor cursor for select retailor_id from retailor;
	rec_category record;
	rec_stores record;
	rec_retailor record;
BEGIN
    
    v_counter := 1;
    RAISE NOTICE 'No of records insert : %', a_no_of_records;
    --WHILE (v_counter <= a_no_of_records) LOOP
 
	IF( v_counter % 10000 =0) THEN
	    RAISE NOTICE 'Counter here is %', v_counter;
	END IF;
 	open c_category;
 	
 	
   	loop
    -- fetch row into the film
    -- exit when no more row to fetch
	  
	  fetch c_category into rec_category;
	  exit when not found;
	  open c_stores;
	  loop
	  	
	  	fetch c_stores into rec_stores;
	   	exit when not found;	 
	    open c_retailor;
	  	loop
			
			fetch c_retailor into rec_retailor;
	  		exit when not found;	
		
			for counter in 1..998 loop
				raise notice 'counter: %', counter;
				v_counter := v_counter + 1;
				v_productname := concat('product',   v_counter);
				v_store_id = rec_stores.store_id;
				v_category_id =  rec_category.category_id;
				v_retailer_id =  rec_retailor.retailor_id;
				--RAISE NOTICE 'Product Name : % :store :% :category: % : retailor : %', v_productname,v_store_id,v_category_id,v_retailer_id;
				INSERT INTO pt_item_inventory_store_dpt(item_name,store_id,category_id,country_id,retailor_id,score) 
				VALUES (v_productname,v_store_id ,v_category_id,(SELECT floor(random()*(5-1+1)+1)),v_retailer_id,		
					(SELECT floor(random()*(5-1+1)+1)));
   			end loop;
			
			RAISE NOTICE '50 set of items added for store : % : %', v_store_id,v_category_id;
				
		end loop;
		close c_retailor;
		RAISE NOTICE 'all stores added for the category: %', v_category_id;
			
  	  end loop;
	  close c_stores;
	end loop;
  
   -- close the cursor
   	--close c_retailor;pt_item_inventory
   	--close c_stores;
   	close c_category;
	RAISE NOTICE 'Total Rows interted : %', v_counter;
				
    RETURN 0;
END;
$$ LANGUAGE plpgsql;

--8) Run to create data 

select count(*) from pt_item_inventory_store_dpt_InsertRecords(1);



select count(*) from pt_item_inventory_store_dpt;
select * from pt_item_inventory_store_dpt limit 20 ;





	