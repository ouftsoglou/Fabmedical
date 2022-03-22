host="fabmedical-568293.mongo.cosmos.azure.com"
username="fabmedical-568293"
password="QCM4LbNbcDIwPYmv2qKVUXqTqLtgNBlCtn3L2Hok3iGT2UShXEJJ5gMRvkGRMBIX6FqxhOHm5iLTLgqe610JJQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
