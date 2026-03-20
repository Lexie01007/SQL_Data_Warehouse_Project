/*
============================================================
Create Database and Schemas
============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/

-- Create Database 'DataWarehouse'

USE master;  -- switch to the master database
CREATE DATABASE DataWarehouse;  -- create a new db
USE DataWarehouse;  -- switch to the new db

-- Now let's build things inside it.
-- Create each layer as a schema
CREATE SCHEMA bronze;
GO    -- a separator between multiple statements to execute the whole statement
      -- and then go to the next one
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
