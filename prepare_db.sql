delete from liquibasechangelog where author='Lukas Breitwieser';
SET FOREIGN_KEY_CHECKS=0;
drop table surgical_team;
drop table scheduling_data;
drop table prozedure;
drop table surgery;
SET FOREIGN_KEY_CHECKS=1;
