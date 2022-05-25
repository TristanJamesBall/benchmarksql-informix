alter table bmsql_customer
add constraint (
    foreign key (c_w_id, c_d_id) references bmsql_district (d_w_id, d_id) constraint c_district_fkey
  );
alter table bmsql_history
add constraint (
    foreign key (h_c_w_id, h_c_d_id, h_c_id) references bmsql_customer (c_w_id, c_d_id, c_id) constraint h_customer_fkey
  );
alter table bmsql_history
add constraint (
    foreign key (h_w_id, h_d_id) references bmsql_district (d_w_id, d_id) constraint h_district_fkey
  );
alter table bmsql_new_order
add constraint (
    foreign key (no_w_id, no_d_id, no_o_id) references bmsql_oorder (o_w_id, o_d_id, o_id) constraint no_order_fkey
  );
alter table bmsql_oorder
add constraint (
    foreign key (o_w_id, o_d_id, o_c_id) references bmsql_customer (c_w_id, c_d_id, c_id) constraint o_customer_fkey
  );
alter table bmsql_order_line
add constraint (
    foreign key (ol_w_id, ol_d_id, ol_o_id) references bmsql_oorder (o_w_id, o_d_id, o_id) constraint ol_order_fkey
  );
alter table bmsql_order_line
add constraint (
    foreign key (ol_supply_w_id, ol_i_id) references bmsql_stock (s_w_id, s_i_id) constraint ol_stock_fkey
  );
alter table bmsql_stock
add constraint (
    foreign key (s_w_id) references bmsql_warehouse (w_id) constraint s_warehouse_fkey
  );
alter table bmsql_stock
add constraint (
    foreign key (s_i_id) references bmsql_item (i_id) constraint s_item_fkey
  );