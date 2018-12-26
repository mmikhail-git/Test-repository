{
   "type": 103,
   "sender":"3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu",
   "image":"localhost:5000/exmo",
   "params":[],
   "fee":500000
}

curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'X-API-Key: 1' -d '{ \ 
    "type": 103, \ 
    "sender":"3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu", \ 
    "image":"localhost:5000/exmo", \ 
    "params":[], \ 
    "fee":500000 \ 
 }' 'http://localhost:6862/transactions/sign'

 {
  "type": 103,
  "id": "DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s",
  "sender": "3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu",
  "senderPublicKey": "5LiQqduJQWCHNP9qvFhCHYi2tvCQP8Pv4LVWt2p5vYzBWXcEGQLJCaWiJwkt95EtLssb1byhWB3bZ3G1d66ToyxU",
  "fee": 500000,
  "timestamp": 1545835475114,
  "proofs": [
    "3F4zd7FB72gLJTr83Rq6CzsWPZsbsuiN5NVvBfhDbT4SCxCAjw1RYYp3Cm3LYiPhWv2hCzvQ6irPg5rCrpicC9qG"
  ],
  "version": 1,
  "image": "localhost:5000/exmo",
  "params": []
}

--

curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'X-API-Key: 1' -d '{ \ 
   "type": 103, \ 
   "id": "DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s", \ 
   "sender": "3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu", \ 
   "senderPublicKey": "5LiQqduJQWCHNP9qvFhCHYi2tvCQP8Pv4LVWt2p5vYzBWXcEGQLJCaWiJwkt95EtLssb1byhWB3bZ3G1d66ToyxU", \ 
   "fee": 500000, \ 
   "timestamp": 1545835475114, \ 
   "proofs": [ \ 
     "3F4zd7FB72gLJTr83Rq6CzsWPZsbsuiN5NVvBfhDbT4SCxCAjw1RYYp3Cm3LYiPhWv2hCzvQ6irPg5rCrpicC9qG" \ 
   ], \ 
   "version": 1, \ 
   "image": "localhost:5000/exmo", \ 
   "params": [] \ 
 }' 'http://localhost:6862/transactions/broadcast'


 {
  "type": 103,
  "id": "DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s",
  "sender": "3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu",
  "senderPublicKey": "5LiQqduJQWCHNP9qvFhCHYi2tvCQP8Pv4LVWt2p5vYzBWXcEGQLJCaWiJwkt95EtLssb1byhWB3bZ3G1d66ToyxU",
  "fee": 500000,
  "timestamp": 1545835475114,
  "proofs": [
    "3F4zd7FB72gLJTr83Rq6CzsWPZsbsuiN5NVvBfhDbT4SCxCAjw1RYYp3Cm3LYiPhWv2hCzvQ6irPg5rCrpicC9qG"
  ],
  "version": 1,
  "image": "localhost:5000/exmo",
  "params": []
}

---
{
   "type": 104,
   "sender":"3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu",
   "contractId":"DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s",
   "params":[
      
   ],
   "fee": 500000
}


curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'X-API-Key: 1' -d '{ \ 
    "type": 104, \ 
    "sender":"3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu", \ 
    "contractId":"DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s", \ 
    "params":[ \ 
        \ 
    ], \ 
    "fee": 500000 \ 
 }' 'http://localhost:6862/transactions/sign'


 {
  "type": 104,
  "id": "EURCnUgZLwUD4ee74VucDGVTCbUtNeRMmfb5q1NeEGjy",
  "sender": "3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu",
  "senderPublicKey": "5LiQqduJQWCHNP9qvFhCHYi2tvCQP8Pv4LVWt2p5vYzBWXcEGQLJCaWiJwkt95EtLssb1byhWB3bZ3G1d66ToyxU",
  "fee": 500000,
  "timestamp": 1545835858447,
  "proofs": [
    "5YgpJDJzLxdYiwpYupU4fmzj3ywj6GmfkHdyaicayevq4zsTqcLYSwTUtYazvfXcDQCCVrytpmT8uCe4sto3Qkck"
  ],
  "version": 1,
  "contractId": "DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s",
  "params": []
}

{
  "type": 104,
  "id": "EURCnUgZLwUD4ee74VucDGVTCbUtNeRMmfb5q1NeEGjy",
  "sender": "3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu",
  "senderPublicKey": "5LiQqduJQWCHNP9qvFhCHYi2tvCQP8Pv4LVWt2p5vYzBWXcEGQLJCaWiJwkt95EtLssb1byhWB3bZ3G1d66ToyxU",
  "fee": 500000,
  "timestamp": 1545835858447,
  "proofs": [
    "5YgpJDJzLxdYiwpYupU4fmzj3ywj6GmfkHdyaicayevq4zsTqcLYSwTUtYazvfXcDQCCVrytpmT8uCe4sto3Qkck"
  ],
  "version": 1,
  "contractId": "DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s",
  "params": []
}

---

http://localhost:6862/contracts/executed-tx-for/DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s

{
  "type" : 105,
  "id" : "69rTUjfZpGawxbVRso1s3dNmTQZWAeJstaPvXe5QWSA3",
  "sender" : "3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu",
  "senderPublicKey" : "5LiQqduJQWCHNP9qvFhCHYi2tvCQP8Pv4LVWt2p5vYzBWXcEGQLJCaWiJwkt95EtLssb1byhWB3bZ3G1d66ToyxU",
  "fee" : 500000,
  "timestamp" : 1545835491666,
  "proofs" : [ "48io57AvFceesAgduZrjG2bLDG1n4N4XUK3LSmPraeZp8HYRXS2niYpsc7B1uP4VnfKebVho6oFkm7V9zUMLxtkf" ],
  "version" : 1,
  "tx" : {
    "type" : 103,
    "id" : "DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s",
    "sender" : "3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu",
    "senderPublicKey" : "5LiQqduJQWCHNP9qvFhCHYi2tvCQP8Pv4LVWt2p5vYzBWXcEGQLJCaWiJwkt95EtLssb1byhWB3bZ3G1d66ToyxU",
    "fee" : 500000,
    "timestamp" : 1545835475114,
    "proofs" : [ "3F4zd7FB72gLJTr83Rq6CzsWPZsbsuiN5NVvBfhDbT4SCxCAjw1RYYp3Cm3LYiPhWv2hCzvQ6irPg5rCrpicC9qG" ],
    "version" : 1,
    "image" : "localhost:5000/exmo",
    "params" : [ ]
  },
  "results" : [ ]
}