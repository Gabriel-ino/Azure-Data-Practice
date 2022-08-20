
sudo docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=P@ssw0rd!" \
	-p 1433:1433 --restart=always --name sql1 --hostname sql1 \
	-d \
	mcr.microsoft.com/mssql/server:2019-latest
