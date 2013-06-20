================================================================================
===        Spring PetClinic sample application - Database Configuration      ===
================================================================================

@author Costin Leau
@author Michael Ashby (modified), updated path to data-access.properties. 
--------------------------------------------------------------------------------

In its default configuration, Petclinic uses an in-memory database (HSQLDB) which
gets populated at startup with data. A similar setup is provided for Mysql in case
a persistent database configuration is needed.
Note that whenever the database type is changed, the 
src/main/resources/spring/data-access.properties file needs to be updated.