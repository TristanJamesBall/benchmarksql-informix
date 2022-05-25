alter table bmsql_warehouse
add constraint primary key (w_id) constraint bmsql_warehouse_pkey;
alter table bmsql_district
add constraint primary key (d_w_id, d_id) constraint bmsql_district_pkey;
alter table bmsql_customer
add constraint primary key (c_w_id, c_d_id, c_id) constraint bmsql_customer_pkey;
create index bmsql_customer_idx1 on bmsql_customer (c_w_id, c_d_id, c_last, c_first);
alter table bmsql_oorder
add constraint primary key (o_w_id, o_d_id, o_id) constraint bmsql_oorder_pkey;
create unique index bmsql_oorder_idx1 on bmsql_oorder (o_w_id, o_d_id, o_carrier_id, o_id);
alter table bmsql_new_order
add constraint primary key (no_w_id, no_d_id, no_o_id) constraint bmsql_new_order_pkey;
alter table bmsql_order_line
add constraint primary key (ol_w_id, ol_d_id, ol_o_id, ol_number) constraint bmsql_order_line_pkey;
alter table bmsql_stock
add constraint primary key (s_w_id, s_i_id) constraint bmsql_stock_pkey;
alter table bmsql_item
add constraint primary key (i_id) constraint bmsql_item_pkey;