sudo docker pull mcr.microsoft.com/mssql/server:2019-latest
echo "Set a Password: "

read -sp pswd

str_length=$(#pswd)

while [str_length < 8]
do
	echo "Please choose a stronger password: "
	read -sp pswd
	str_length=$(#pswd)
done

export PASSWORD=$pswd


sudo docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=$pswd" \
   -p 1433:1433 --name sql1 --hostname sql1 \
   -d \
   mcr.microsoft.com/mssql/server:2019-latest

pip install pyodbc
pip install pandas

