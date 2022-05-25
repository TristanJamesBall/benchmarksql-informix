-- ----
-- Extra Schema objects/definitions for history.hist_id 
-- ----

-- ----
--	This is an extra column not present in the TPC-C
--	specs. It is useful for replication systems like
--	Bucardo and Slony-I, which like to have a primary
--	key on a table. 
-- ----


-- Rightly and wrongly I just changed the table to use a serial type, rather than the sequences or similar for other dbs..
-- Tristan - 2022-05-25ish 
