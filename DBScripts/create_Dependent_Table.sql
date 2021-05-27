

CREATE TABLE public.stores
(
    store_id uuid NOT NULL DEFAULT uuid_generate_v1() ,
    store_name VARCHAR NOT NULL,
    CONSTRAINT pt_stores_pkey PRIMARY KEY (store_id)
)

CREATE TABLE public.category
(
    category_id uuid NOT NULL DEFAULT uuid_generate_v1() ,
    category_name VARCHAR NOT NULL,
    CONSTRAINT pt_category_pkey PRIMARY KEY (category_id)
)

CREATE TABLE public.retailor
(
    retailor_id uuid NOT NULL DEFAULT uuid_generate_v1() ,
    retailor_name VARCHAR NOT NULL,
    CONSTRAINT pt_retailor_pkey PRIMARY KEY (retailor_id)
)

CREATE SEQUENCE country_id_seq;
CREATE TABLE public.country
(
    country_id integer NOT NULL DEFAULT nextval('country_id_seq'),
    country_name VARCHAR NOT NULL,
    CONSTRAINT pt_country_pkey PRIMARY KEY (country_id)
)
