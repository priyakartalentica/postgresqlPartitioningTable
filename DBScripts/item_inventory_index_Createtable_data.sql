-- Table: public.item_inventory_index

-- DROP TABLE public.item_inventory_index;

create sequence pt_item_inventory_index_item_id_seq;


CREATE TABLE public.pt_item_inventory_index
(
    item_id integer NOT NULL DEFAULT nextval('pt_item_inventory_index_item_id_seq'),
    item_name VARCHAR NOT NULL,
    store_id uuid NOT NULL,
    category_id uuid NOT NULL,
    country_id integer NOT NULL,
    retailor_id uuid,
    score integer,
    CONSTRAINT pt_item_inventory_index_pkey PRIMARY KEY (item_id),
    CONSTRAINT fk_category_pt_item_inventory_index FOREIGN KEY (category_id)
        REFERENCES public.category (category_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_country_pt_item_inventory_index FOREIGN KEY (country_id)
        REFERENCES public.country (country_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_retailor_pt_item_inventory_index FOREIGN KEY (retailor_id)
        REFERENCES public.retailor (retailor_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_store_item_pt_inventory_index FOREIGN KEY (store_id)
        REFERENCES public.stores (store_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.pt_item_inventory_index
    OWNER to postgres;
-- Index: item_inventory_index_category_id

-- DROP INDEX public.item_inventory_index_category_id;

CREATE INDEX pt_item_inventory_index_category_id
    ON public.pt_item_inventory_index USING btree
    (category_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: item_inventory_index_country_id

-- DROP INDEX public.item_inventory_index_country_id;

CREATE INDEX pt_item_inventory_index_country_id
    ON public.pt_item_inventory_index USING btree
    (country_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: item_inventory_index_item_name

-- DROP INDEX public.item_inventory_index_item_name;

CREATE INDEX pt_item_inventory_index_item_name
    ON public.pt_item_inventory_index USING btree
    (item_name COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: item_inventory_index_retailor_id

-- DROP INDEX public.item_inventory_index_retailor_id;

CREATE INDEX pt_item_inventory_index_retailor_id
    ON public.pt_item_inventory_index USING btree
    (retailor_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: item_inventory_index_store_id

-- DROP INDEX public.item_inventory_index_store_id;

CREATE INDEX pt_item_inventory_index_store_id
    ON public.pt_item_inventory_index USING btree
    (store_id ASC NULLS LAST)
    TABLESPACE pg_default;
	
	
	
	

------------------Create Data---------------------


CREATE OR REPLACE FUNCTION pt_item_inventory_index_InsertRecords(in a_no_of_records integer) RETURNS integer AS $$
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
				INSERT INTO pt_item_inventory_index(item_name,store_id,category_id,country_id,retailor_id,score) 
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
select * from pt_item_inventory_index_InsertRecords(1);
select count(*) from pt_item_inventory_index;
select * from pt_item_inventory_index limit 20;
	