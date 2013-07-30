Rem  Copyright ArtOfBI.com - All Rights Reserved.
Rem
Rem    NAME
Rem      AdvWorks_Build_Data.sql
Rem
Rem    DESCRIPTION
Rem      .
Rem      .
Rem
Rem    NOTES
Rem      .
Rem
Rem    REQUIREMENTS
Rem      - Oracle database 10g or better
Rem      - PL/SQL Web Toolkit
Rem
Rem
Rem    MODIFIED   (MM/DD/YYYY)
Rem      cscreen   08/14/2009 - Created
Rem      cscreen   12/15/2009 - Finalized


set termout on;

alter session set current_schema = AdvWorks;



prompt I.    I N S T A L L   T A B L E S   A N D   C O N S T R A I N T S

@DLLConstructs/CREATE_Oracle_Tables_DLL_v1.sql
@DLLConstructs/CREATE_Oracle_Tables_CONSTRAINTS_DLL_v1.sql






prompt II.    I N S T A L L   T A B L E S   D A T A

@DataInserts/INSERT_DimSalesReason_Oracle_DAL.sql

@DataInserts/INSERT_DimTime_Oracle_DAL.sql

@DataInserts/INSERT_DimSalesTerritory_Oracle_DAL.sql

@DataInserts/INSERT_DimPromotion_Oracle_DAL.sql

@DataInserts/INSERT_DimProductCategory_Oracle_DAL.sql

@DataInserts/INSERT_DimProductSubCategory_Oracle_DAL.sql

@DataInserts/INSERT_DimProduct_Oracle_DAL.sql

@DataInserts/INSERT_DimGeography_Oracle_DAL.sql

@DataInserts/INSERT_DimCurrency_Oracle_DAL.sql

@DataInserts/INSERT_DimScenario_Oracle_DAL.sql

@DataInserts/INSERT_DimOrganization_Oracle_DAL.sql

@DataInserts/INSERT_DimDepartmentGroup_Oracle_DAL.sql

@DataInserts/INSERT_DimCustomer_Oracle_DAL.sql

@DataInserts/INSERT_DimAccount_Oracle_DAL.sql

@DataInserts/INSERT_DimEmployee_Oracle_DAL.sql

@DataInserts/INSERT_DimReseller_Oracle_DAL.sql

@DataInserts/INSERT_FactFinance_Oracle_DBA.sql

@DataInserts/INSERT_FactInternetSales_Oracle_DAL.sql




/
show errors


prompt S C R I P T    C O M P L E T E ! !