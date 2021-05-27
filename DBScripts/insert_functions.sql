CREATE OR REPLACE FUNCTION pt_item_inventory_InsertRecords1(in a_no_of_records integer) RETURNS integer AS $$
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
	IF (v_counter>a_no_of_records) THEN
				RAISE NOTICE 'Exiting loop1 : % ',v_counter ;
					exit;
	END IF;
    -- fetch row into the film
    -- exit when no more row to fetch
	  
	  fetch c_category into rec_category;
	  exit when not found;
	  open c_stores;
	  loop
	  	IF (v_counter>a_no_of_records) THEN
				RAISE NOTICE 'Exiting loop2 : % ',v_counter ;
					exit;
		END IF;
	  	fetch c_stores into rec_stores;
	   	exit when not found;	 
	    open c_retailor;
	  	loop
			IF (v_counter>a_no_of_records) THEN
				RAISE NOTICE 'Exiting loop3 : % ',v_counter ;
					exit;
			END IF;
			fetch c_retailor into rec_retailor;
	  		exit when not found;	
		
			for counter in 1..1 loop
				IF (v_counter<=a_no_of_records) THEN
				raise notice 'counter: %,%', counter,v_counter;
				v_counter := v_counter + 1;
				v_productname := concat('product',   v_counter);
				v_store_id = rec_stores.store_id;
				v_category_id =  rec_category.category_id;
				v_retailer_id =  rec_retailor.retailor_id;
				
				--RAISE NOTICE 'Product Name : % :store :% :category: % : retailor : %', v_productname,v_store_id,v_category_id,v_retailer_id;
					INSERT INTO pt_item_inventory(item_name,store_id,category_id,country_id,retailor_id,score) 
					VALUES (v_productname,v_store_id ,v_category_id,(SELECT floor(random()*(5-1+1)+1)),v_retailer_id,		
						(SELECT floor(random()*(5-1+1)+1)));
				ELSE
					exit;
				END IF;
   			end loop;
			
			--RAISE NOTICE '50 set of items added for store : % : %', v_store_id,v_category_id;
				
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
select * from pt_item_inventory_InsertRecords1(20);

---Check Data
select count(*) from pt_item_inventory


---------------------------------------------------------------------------
---------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION pt_item_inventory_index_InsertRecords1(in a_no_of_records integer) RETURNS integer AS $$
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
	IF (v_counter>a_no_of_records) THEN
				RAISE NOTICE 'Exiting loop1 : % ',v_counter ;
					exit;
	END IF;
    -- fetch row into the film
    -- exit when no more row to fetch
	  
	  fetch c_category into rec_category;
	  exit when not found;
	  open c_stores;
	  loop
	  	IF (v_counter>a_no_of_records) THEN
				RAISE NOTICE 'Exiting loop2 : % ',v_counter ;
					exit;
		END IF;
	  	fetch c_stores into rec_stores;
	   	exit when not found;	 
	    open c_retailor;
	  	loop
			IF (v_counter>a_no_of_records) THEN
				RAISE NOTICE 'Exiting loop3 : % ',v_counter ;
					exit;
			END IF;
			fetch c_retailor into rec_retailor;
	  		exit when not found;	
		
			for counter in 1..1 loop
				IF (v_counter<=a_no_of_records) THEN
				raise notice 'counter: %,%', counter,v_counter;
				v_counter := v_counter + 1;
				v_productname := concat('product',   v_counter);
				v_store_id = rec_stores.store_id;
				v_category_id =  rec_category.category_id;
				v_retailer_id =  rec_retailor.retailor_id;
				
				--RAISE NOTICE 'Product Name : % :store :% :category: % : retailor : %', v_productname,v_store_id,v_category_id,v_retailer_id;
					INSERT INTO pt_item_inventory_index(item_name,store_id,category_id,country_id,retailor_id,score) 
					VALUES (v_productname,v_store_id ,v_category_id,(SELECT floor(random()*(5-1+1)+1)),v_retailer_id,		
						(SELECT floor(random()*(5-1+1)+1)));
				ELSE
					exit;
				END IF;
   			end loop;
			
			--RAISE NOTICE '50 set of items added for store : % : %', v_store_id,v_category_id;
				
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
select * from pt_item_inventory_InsertRecords1(20);

---Check Data
select count(*) from pt_item_inventory



---------------------------------------------------------------------------
---------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION pt_item_inventory_store_dpt_index_InsertRecords1(in a_no_of_records integer) RETURNS integer AS $$
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
	IF (v_counter>a_no_of_records) THEN
				RAISE NOTICE 'Exiting loop1 : % ',v_counter ;
					exit;
	END IF;
    -- fetch row into the film
    -- exit when no more row to fetch
	  
	  fetch c_category into rec_category;
	  exit when not found;
	  open c_stores;
	  loop
	  	IF (v_counter>a_no_of_records) THEN
				RAISE NOTICE 'Exiting loop2 : % ',v_counter ;
					exit;
		END IF;
	  	fetch c_stores into rec_stores;
	   	exit when not found;	 
	    open c_retailor;
	  	loop
			IF (v_counter>a_no_of_records) THEN
				RAISE NOTICE 'Exiting loop3 : % ',v_counter ;
					exit;
			END IF;
			fetch c_retailor into rec_retailor;
	  		exit when not found;	
		
			for counter in 1..1 loop
				IF (v_counter<=a_no_of_records) THEN
				raise notice 'counter: %,%', counter,v_counter;
				v_counter := v_counter + 1;
				v_productname := concat('product',   v_counter);
				v_store_id = rec_stores.store_id;
				v_category_id =  rec_category.category_id;
				v_retailer_id =  rec_retailor.retailor_id;
				
				--RAISE NOTICE 'Product Name : % :store :% :category: % : retailor : %', v_productname,v_store_id,v_category_id,v_retailer_id;
					INSERT INTO pt_item_inventory_store_dpt(item_name,store_id,category_id,country_id,retailor_id,score) 
					VALUES (v_productname,v_store_id ,v_category_id,(SELECT floor(random()*(5-1+1)+1)),v_retailer_id,		
						(SELECT floor(random()*(5-1+1)+1)));
				ELSE
					exit;
				END IF;
   			end loop;
			
			--RAISE NOTICE '50 set of items added for store : % : %', v_store_id,v_category_id;
				
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
select * from pt_item_inventory_store_dpt_InsertRecords1(20);

---Check Data
select count(*) from pt_item_inventory





