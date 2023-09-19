create user f1 identified by Oracle_12345;
grant dwrole to f1;
alter user f1 quota unlimited on data;
grant create session to f1;
grant create table to f1;
begin
ords.enable_schema(p_enabled => true,
  p_schema => 'f1',
  p_url_mapping_type => 'BASE_PATH',
  p_url_mapping_pattern => 'f1',
  p_auto_rest_auth => true);
commit;
end;
/
CREATE TABLE F1.RACES
   (	"RACEID" VARCHAR2(100),
	"YEAR" NUMBER(38,0),
	"ROUND" NUMBER(38,0),
	"NAME" VARCHAR2(255),
	"F1DATE" DATE,
	"TIME" VARCHAR2(255),
	"URL" VARCHAR2(500),
	"SCORE" NUMBER,
	"DNF_COUNT" NUMBER,
	"DNF_DUE_TO_ACCIDENT_COUNT" NUMBER,
	"WEATHER" VARCHAR2(500),
	"WEATHER_WET" VARCHAR2(1),
	"CIRCUITREF" VARCHAR2(100),
	"YEAR_C" VARCHAR2(4),
	"RACE_COUNT" NUMBER,
	"NAME_YEAR" VARCHAR2(100),
	"OVERTAKEN_POSITIONS_TOTAL" NUMBER
   );
CREATE TABLE F1.LAP_TIMES
   (	"RACEID" VARCHAR2(100),
	"DRIVERID" NUMBER(38,0),
	"LAP" NUMBER(38,0),
	"POSITION" NUMBER(38,0),
	"MILLISECONDS" NUMBER(38,0),
	"DRIVERREF" VARCHAR2(100),
	"RACE_NAME" VARCHAR2(100),
	"PIT_STOP" VARCHAR2(1),
	"MILLISECONDS_CUMULATIVE" NUMBER,
	"MEDIAN_MILLISECONDS_CUMULATIVE" NUMBER
   );
CREATE TABLE F1.SAFETY_CAR
   (	"YEAR" NUMBER(38,0),
	"RACE" VARCHAR2(128),
	"COUNT" NUMBER(38,0),
	"LAPS" NUMBER(38,0)
   );
CREATE TABLE F1.PIT_STOPS
   (	"RACEID" VARCHAR2(100),
	"DRIVERID" NUMBER(38,0),
	"STOP" NUMBER(38,0),
	"LAP" NUMBER(38,0),
	"TIME" VARCHAR2(255),
	"DURATION" VARCHAR2(255),
	"MILLISECONDS" NUMBER(38,0),
	"DATETIME_PITSTOP" DATE,
	"DRIVERREF" VARCHAR2(100)
   );
CREATE TABLE F1.RESULTS
      (	"RESULTID" NUMBER(38,0),
   	"RACEID" VARCHAR2(100),
   	"DRIVERID" NUMBER(38,0),
   	"CONSTRUCTORID" NUMBER(38,0),
   	"F1NUM" VARCHAR2(10),
   	"GRID" NUMBER(38,0),
   	"POSITION" VARCHAR2(10),
   	"POSITIONTEXT" VARCHAR2(255),
   	"POSITIONORDER" NUMBER(38,0),
   	"POINTS" FLOAT(126),
   	"LAPS" NUMBER(38,0),
   	"TIME" VARCHAR2(255),
   	"MILLISECONDS" VARCHAR2(255),
   	"FASTESTLAP" VARCHAR2(255),
   	"RANK" VARCHAR2(255),
   	"FASTESTLAPTIME" VARCHAR2(255),
   	"FASTESTLAPSPEED" VARCHAR2(255),
   	"STATUSID" NUMBER(38,0),
   	"YEAR" NUMBER,
   	"ROUND" NUMBER,
   	"NAME" VARCHAR2(100),
   	"POINTS_CHAR" VARCHAR2(100)
  );
  --------------------------------------------------------
  --  DDL for Table DRIVER_STANDINGS
  --------------------------------------------------------
CREATE TABLE F1.DRIVER_STANDINGS
     (	"DRIVERSTANDINGSID" NUMBER(38,0),
  	"RACEID" VARCHAR2(100),
  	"DRIVERID" NUMBER(38,0),
  	"POINTS" FLOAT(126),
  	"POSITION" NUMBER(38,0),
  	"POSITIONTEXT" VARCHAR2(500),
  	"WINS" NUMBER(38,0),
  	"YEAR" NUMBER,
  	"ROUND" NUMBER,
  	"NAME" VARCHAR2(100),
  	"DRIVERREF" VARCHAR2(100),
  	"FINAL" VARCHAR2(1),
  	"DRIVER_POSITION_BEFORE_RACE" NUMBER,
  	"DRIVER_POINTS_BEFORE_RACE" NUMBER,
  	"POSITION_POINTS_BEFORE_RACE" NUMBER,
  	"POINTS_OF_LOWER_POSITION" NUMBER,
  	"POINTS_OF_LOWER_POSITION_BEFORE_RACE" NUMBER,
  	"DELTA_POINTS_TO_LOWER_POSITION" NUMBER,
  	"DELTA_POINTS_TO_LOWER_POSITION_BEFORE_RACE" NUMBER,
  	"CHANGE_DELTA_BEFORE_AND_AFTER_RACE" NUMBER
  );


DROP TABLE ADMIN.RACES;
DROP TABLE ADMIN.LAP_TIMES;
DROP TABLE ADMIN.SAFETY_CAR;
DROP TABLE ADMIN.PIT_STOPS;
DROP TABLE ADMIN.RESULTS;
DROP TABLE ADMIN.DRIVER_STANDINGS;

CREATE TABLE ADMIN.RACES
   (	"RACEID" VARCHAR2(100),
	"YEAR" NUMBER(38,0),
	"ROUND" NUMBER(38,0),
	"NAME" VARCHAR2(255),
	"F1DATE" DATE,
	"TIME" VARCHAR2(255),
	"URL" VARCHAR2(500),
	"SCORE" NUMBER,
	"DNF_COUNT" NUMBER,
	"DNF_DUE_TO_ACCIDENT_COUNT" NUMBER,
	"WEATHER" VARCHAR2(500),
	"WEATHER_WET" VARCHAR2(1),
	"CIRCUITREF" VARCHAR2(100),
	"YEAR_C" VARCHAR2(4),
	"RACE_COUNT" NUMBER,
	"NAME_YEAR" VARCHAR2(100),
	"OVERTAKEN_POSITIONS_TOTAL" NUMBER
   );
CREATE TABLE ADMIN.LAP_TIMES
   (	"RACEID" VARCHAR2(100),
	"DRIVERID" NUMBER(38,0),
	"LAP" NUMBER(38,0),
	"POSITION" NUMBER(38,0),
	"MILLISECONDS" NUMBER(38,0),
	"DRIVERREF" VARCHAR2(100),
	"RACE_NAME" VARCHAR2(100),
	"PIT_STOP" VARCHAR2(1),
	"MILLISECONDS_CUMULATIVE" NUMBER,
	"MEDIAN_MILLISECONDS_CUMULATIVE" NUMBER
   );
CREATE TABLE ADMIN.SAFETY_CAR
   (	"YEAR" NUMBER(38,0),
	"RACE" VARCHAR2(128),
	"COUNT" NUMBER(38,0),
	"LAPS" NUMBER(38,0)
   );
CREATE TABLE ADMIN.PIT_STOPS
   (	"RACEID" VARCHAR2(100),
	"DRIVERID" NUMBER(38,0),
	"STOP" NUMBER(38,0),
	"LAP" NUMBER(38,0),
	"TIME" VARCHAR2(255),
	"DURATION" VARCHAR2(255),
	"MILLISECONDS" NUMBER(38,0),
	"DATETIME_PITSTOP" DATE,
	"DRIVERREF" VARCHAR2(100)
   );
CREATE TABLE ADMIN.RESULTS
      (	"RESULTID" NUMBER(38,0),
   	"RACEID" VARCHAR2(100),
   	"DRIVERID" NUMBER(38,0),
   	"CONSTRUCTORID" NUMBER(38,0),
   	"F1NUM" VARCHAR2(10),
   	"GRID" NUMBER(38,0),
   	"POSITION" VARCHAR2(10),
   	"POSITIONTEXT" VARCHAR2(255),
   	"POSITIONORDER" NUMBER(38,0),
   	"POINTS" FLOAT(126),
   	"LAPS" NUMBER(38,0),
   	"TIME" VARCHAR2(255),
   	"MILLISECONDS" VARCHAR2(255),
   	"FASTESTLAP" VARCHAR2(255),
   	"RANK" VARCHAR2(255),
   	"FASTESTLAPTIME" VARCHAR2(255),
   	"FASTESTLAPSPEED" VARCHAR2(255),
   	"STATUSID" NUMBER(38,0),
   	"YEAR" NUMBER,
   	"ROUND" NUMBER,
   	"NAME" VARCHAR2(100),
   	"POINTS_CHAR" VARCHAR2(100)
  );
  --------------------------------------------------------
  --  DDL for Table DRIVER_STANDINGS
  --------------------------------------------------------
CREATE TABLE ADMIN.DRIVER_STANDINGS
     (	"DRIVERSTANDINGSID" NUMBER(38,0),
  	"RACEID" VARCHAR2(100),
  	"DRIVERID" NUMBER(38,0),
  	"POINTS" FLOAT(126),
  	"POSITION" NUMBER(38,0),
  	"POSITIONTEXT" VARCHAR2(500),
  	"WINS" NUMBER(38,0),
  	"YEAR" NUMBER,
  	"ROUND" NUMBER,
  	"NAME" VARCHAR2(100),
  	"DRIVERREF" VARCHAR2(100),
  	"FINAL" VARCHAR2(1),
  	"DRIVER_POSITION_BEFORE_RACE" NUMBER,
  	"DRIVER_POINTS_BEFORE_RACE" NUMBER,
  	"POSITION_POINTS_BEFORE_RACE" NUMBER,
  	"POINTS_OF_LOWER_POSITION" NUMBER,
  	"POINTS_OF_LOWER_POSITION_BEFORE_RACE" NUMBER,
  	"DELTA_POINTS_TO_LOWER_POSITION" NUMBER,
  	"DELTA_POINTS_TO_LOWER_POSITION_BEFORE_RACE" NUMBER,
  	"CHANGE_DELTA_BEFORE_AND_AFTER_RACE" NUMBER
  );


begin 
    dbms_cloud.copy_data(
	table_name => 'RACES',
	credential_name => null,
	file_uri_list => 'https://objectstorage.us-phoenix-1.oraclecloud.com/p/LHlwHtFiNaOC-VgBiBhYz_FMzzSX3Hp3b6VDO08-FldQZoCHz5IfbK1wd66xRR01/n/idch4uyl2yza/b/Racing2cloud_hackathon/o/RACES.csv',    
	format => json_object('type' value 'csv', 'ignoremissingcolumns' value 'true', 'blankasnull' value 'true' ,'skipheaders' value '1'));
	
	dbms_cloud.copy_data(
	table_name => 'LAP_TIMES',
	credential_name => null,
	file_uri_list => 'https://objectstorage.us-phoenix-1.oraclecloud.com/p/LHlwHtFiNaOC-VgBiBhYz_FMzzSX3Hp3b6VDO08-FldQZoCHz5IfbK1wd66xRR01/n/idch4uyl2yza/b/Racing2cloud_hackathon/o/LAP_TIMES.csv',    
	format => json_object('type' value 'csv', 'ignoremissingcolumns' value 'true', 'blankasnull' value 'true' ,'skipheaders' value '1'));
	
	dbms_cloud.copy_data(
	table_name => 'SAFETY_CAR',
	credential_name => null,
	file_uri_list => 'https://objectstorage.us-phoenix-1.oraclecloud.com/p/LHlwHtFiNaOC-VgBiBhYz_FMzzSX3Hp3b6VDO08-FldQZoCHz5IfbK1wd66xRR01/n/idch4uyl2yza/b/Racing2cloud_hackathon/o/SAFETY_CAR.csv',    
	format => json_object('type' value 'csv', 'ignoremissingcolumns' value 'true', 'blankasnull' value 'true' ,'skipheaders' value '1'));
	
	dbms_cloud.copy_data(
	table_name => 'PIT_STOPS',
	credential_name => null,
	file_uri_list => 'https://objectstorage.us-phoenix-1.oraclecloud.com/p/LHlwHtFiNaOC-VgBiBhYz_FMzzSX3Hp3b6VDO08-FldQZoCHz5IfbK1wd66xRR01/n/idch4uyl2yza/b/Racing2cloud_hackathon/o/PIT_STOPS.csv',    
	format => json_object('type' value 'csv', 'ignoremissingcolumns' value 'true', 'blankasnull' value 'true' ,'skipheaders' value '1'));
	
	dbms_cloud.copy_data(
	table_name => 'RESULTS',
	credential_name => null,
	file_uri_list => 'https://objectstorage.us-phoenix-1.oraclecloud.com/p/LHlwHtFiNaOC-VgBiBhYz_FMzzSX3Hp3b6VDO08-FldQZoCHz5IfbK1wd66xRR01/n/idch4uyl2yza/b/Racing2cloud_hackathon/o/RESULTS.csv',    
	format => json_object('type' value 'csv', 'ignoremissingcolumns' value 'true', 'blankasnull' value 'true' ,'skipheaders' value '1'));
	
	dbms_cloud.copy_data(
	table_name => 'DRIVER_STANDINGS',
	credential_name => null,
	file_uri_list => 'https://objectstorage.us-phoenix-1.oraclecloud.com/p/LHlwHtFiNaOC-VgBiBhYz_FMzzSX3Hp3b6VDO08-FldQZoCHz5IfbK1wd66xRR01/n/idch4uyl2yza/b/Racing2cloud_hackathon/o/DRIVER_STANDINGS.csv',    
	format => json_object('type' value 'csv', 'ignoremissingcolumns' value 'true', 'blankasnull' value 'true' ,'skipheaders' value '1'));
	
	commit;
end;
/

begin	
	FOR R_DATA IN (select table_name from user_tables where table_name like 'COPY$%')
		LOOP 
			EXECUTE IMMEDIATE 'DROP TABLE "'||R_DATA.table_name||'"';
	END LOOP;
end;
/


	insert into F1.RACES SELECT * FROM ADMIN.RACES;
	insert into F1.LAP_TIMES SELECT * FROM ADMIN.LAP_TIMES;
	insert into F1.SAFETY_CAR SELECT * FROM ADMIN.SAFETY_CAR;
	insert into F1.PIT_STOPS SELECT * FROM ADMIN.PIT_STOPS;
	insert into F1.RESULTS SELECT * FROM ADMIN.RESULTS;
	insert into F1.DRIVER_STANDINGS SELECT * FROM ADMIN.DRIVER_STANDINGS;
	
	commit;
	
	DROP TABLE ADMIN.RACES;
	DROP TABLE ADMIN.LAP_TIMES;
	DROP TABLE ADMIN.SAFETY_CAR;
	DROP TABLE ADMIN.PIT_STOPS;
	DROP TABLE ADMIN.RESULTS;
	DROP TABLE ADMIN.DRIVER_STANDINGS;
--ajustado por Hai--
--End--	