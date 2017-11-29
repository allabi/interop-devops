# IST User Setup
#curl -X POST -H “Authorization:Basic YWRtaW46YWRtaW4=” --header ‘Content-Type: application/json’ --header ‘Accept: application/json’ -d ‘{“name”: “dfsp1”,“shortName”: “dfsp1”,“providerUrl”: “10.0.15.11:8088/scheme/adapter/v1”}’ ‘http://10.0.15.13:3000/commands/register’
#curl -X POST http://52.90.147.216:3000/commands/register -H ‘authorization: Basic YWRtaW46YWRtaW4=’ -d ‘{“name”: “test”, “shortName”: “test”, “providerUrl”: “ec2-35-166-236-69.us-west-2.compute.amazonaws.com:8088/scheme/adapter/v1"}’

curl -X POST http://$1:3000/commands/register -H "Authorization:Basic YWRtaW46YWRtaW4=" --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{"name": "dfsp1","shortName": "dfsp1","providerUrl": "$2:8088/scheme/adapter/v1"}'
curl -X POST http://$1:3000/commands/register -H "Authorization:Basic YWRtaW46YWRtaW4=" --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{"name": "dfsp2","shortName": "dfsp2","providerUrl": "$3:8088/scheme/adapter/v1"}'
curl -H "Content-Type: application/json" -X POST -d '{"name":"dfsp1","password":"dfsp1"}' http://$1:3002/accounts
curl -H "Content-Type: application/json" -X POST -d '{"name":"dfsp2","password":"dfsp2"}' http://$1:3002/accounts

# DFSP1 User Setup
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"firstName": "bob","lastName": "dylan","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "bob","accountName": "bob","password": "1234"}' http://$2:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"firstName": "alice","lastName": "keys","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "alice","accountName": "alice","password": "1234"}' http://$2:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"firstName": "admin","lastName": "admin","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "admin","accountName": "admin","password": "admin"}' http://$2:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"firstName": "dfsp1-testconnector","lastName": "dfsp1-testconnector-last","dob": "10/12/1999","nationalId": "123456789","phoneNumber": "dfsp1-testconnector","accountName": "dfsp1-testconnector","password": "1234"}' http://$2:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"firstName": "merchant","lastName": "merchant","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "merchant","accountName": "merchant","password": "1234"}' http://$2:8010/wallet

# DFSP2 User Setup
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"firstName": "bob","lastName": "dylan","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "bob","accountName": "bob","password": "1234"}' http://$3:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"firstName": "alice","lastName": "keys","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "alice","accountName": "alice","password": "1234"}' http://$3:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"firstName": "admin","lastName": "admin","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "admin","accountName": "admin","password": "admin"}' http://$3:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"firstName": "dfsp2-testconnector","lastName": "dfsp2-testconnector-last","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "4567890123","accountName": "dfsp2-testconnector","password": "1234"}' http://$3:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"firstName": "merchant","lastName": "merchant","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "merchant","accountName": "merchant","password": "1234"}' http://$3:8010/wallet