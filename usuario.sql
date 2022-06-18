drop user cnp cascade;

create user cnp identified by ninguemsabe;

grant dba, connect, resource to cnp;

grant unlimited tablespace to cnp;

quit;
