
DROP TABLE IF EXISTS cozy_mk_store, cozy_mk_log, cozy_action_log, cozy_receipt_sell;

CREATE TABLE "cozy_mk_store" (
    "store_id" SERIAL PRIMARY KEY,
    "owner_address" varchar,
    "item_id" int,
    "transection_mint_hash" varchar,
    "mint_address" varchar,
    "contract_address" varchar,
    "status" int,
    "store_boost_lvl" int
);

CREATE TABLE "cozy_action_log" (
    "action_id" SERIAL PRIMARY KEY,
    "action_name" varchar
);

CREATE TABLE "cozy_mk_log" (
    "log_id" SERIAL PRIMARY KEY,
    "ip_address" varchar,
    "user_address" varchar,
    "item_id" int,
    "action_id" int,
    "log_timestamp" timestamp,
    CONSTRAINT fk_cozy_mk_log_to_cozy_action_log
    FOREIGN KEY(action_id) 
    REFERENCES cozy_action_log(action_id)
);


CREATE TABLE "cozy_receipt_sell" (
    "transection_hash" varchar PRIMARY KEY,
    "transection_mint_hash" varchar,
    "item_id" int,
    "owner_address" varchar,
    "seller_address" varchar,
    "mint_address" varchar,
    "open_price" varchar,
    "price_id" varchar,
    "token_id" varchar,
    "contract_address" varchar
);

