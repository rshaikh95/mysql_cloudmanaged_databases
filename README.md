# mysql_cloudmanaged_databases
Week 4 Homework Assignment: MySQL on Cloud Platforms - Azure and GCP

## Steps taken to setup GCP and Azure
### GCP:

1. Log in with your Stony Brook email address
2. Goto AHI-GCP and select new project
3. Name the Project. Keep the Organization as stonybrook.edu. Set the location to AHI-GCP
4. In the Project, click on SQL and Click on CREATE INSTANCE and click on MySQL. Click on ENABLE API
5. Set your Instance ID. Then set your password. Keep the Database version as MySQL 8.0
6. Choose Enterprise Choose Sandbox
7. At Customize your instance, go to Machine configuration and choose Shared core; 1 vCPU, 0.614 GB
8. At Connections, choose Public IP and Add a network; Name the network as Allow All and set it to 0.0.0.0/0. Then press Create Instance

### Azure: 

1. Log in to Azure with Stony Brook email. Type in the search bar Azure Databases for MySQL. Once you click on it, click on Create.
2. Select Flexible server
3. Make sure the subscription is Azure for Students. Then create a new resource group
4. Create a server name. Make sure the Compute + Storage section is specified to the proper specifications required
5. Create an Admin username and set a password. Click Next: Networking >
6. Make sure the connectivity method is at Public access and Private endpoint.
7. Under Firewall rules, click on Allow public access from any Azure service within Azure to this server. Click on +Add 0.0.0.0 - 255.255.255.255 Then press Create

## My Interaction with GCP and Azure Database for MySQL

For GCP, it was relatively easy since we had gone over the process of connecting our instance with the MySQL Workbench in class.

For Azure, it was a lot harder to create the server, I spent many hours creating a database directly through the home page for SQL database. When I did this I was able to create the database but it wouldn't load on MySQL. I was looking at the guide in class and I was not able to find the word flexible or the specific requirements for computation and storage. I kept on getting this error. ![Screenshot 2023-09-30 205613](https://github.com/rshaikh95/mysql_cloudmanaged_databases/assets/141374132/62ca9bea-e5eb-474d-8c63-a1ca7fdea619)
After hours of trying many trial and errors, I asked how my classmate did it and she showed me that I had to search on Azure search tab for Azure Databases for MySQL rather than directly clinking on create a SQL database. After doing that I was able to find the right setup and specifications and I was able to load in the database very quickly. 

The difference between Azure and GCP when creating the connection was the Hostname and Username options. For the Hostname, I copied and pasted my Server Name from Azure database page I created. For the Username, I put in my name: rahil instead of root when initally creating the db in Azure.

After connecting each service to MySQL Workbench, I successfully created an Entity Relationship Diagram in both the GCP connection and AZURE connection. I used the same SQL scripts for both services and the patients and demographics tables were taken from Professor Hants's Github. The other two tables: followup and vitals were created by me. 

Screenshots of successfully run commands, .sql script, mySQL wb files for both Azure and GCP, and tables created are in each folder accordingly.
