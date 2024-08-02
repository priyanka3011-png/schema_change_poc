USE SCHEMA DEMO;

CREATE or replace PROCEDURE proc3()
  RETURNS VARCHAR
  LANGUAGE javascript
  AS
  $$
  var rs = snowflake.execute( { sqlText: 
      `INSERT INTO HELLO_WORLD('column 1','column2',45);`
       } );
  return 'Done.';
  $$;

  CREATE VIEW POC_VIEW AS select AGE FROM HELLO_WORLD; 