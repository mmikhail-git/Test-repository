.. _contracts:

Contracts
==========

GET /contracts/{contractId}

http://localhost:6862/contracts/DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s

[
  {
    "key": "avg",
    "type": "string",
    "value": "3897.80146957"
  },
  {
    "key": "buy_price",
    "type": "string",
    "value": "3842"
  }
]


GET /contracts/executed-tx-for/{id}
---------------------------------------

http://localhost:6862/contracts/executed-tx-for/EURCnUgZLwUD4ee74VucDGVTCbUtNeRMmfb5q1NeEGjy


{
  "type" : 105,
  "id" : "Z14JL9UFU5xrmApxDb1We5PqZrXKJ4zw74WA58vY9YE",
  "sender" : "3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu",
  "senderPublicKey" : "5LiQqduJQWCHNP9qvFhCHYi2tvCQP8Pv4LVWt2p5vYzBWXcEGQLJCaWiJwkt95EtLssb1byhWB3bZ3G1d66ToyxU",
  "fee" : 500000,
  "timestamp" : 1545835915772,
  "proofs" : [ "3vieAtXU4ZVz5C7xJ4dsxhQv7ELN2JsX2v2dr5r63GmxJLMmgC7pozSjYMDo8b5esUsFB6xP1MAmGsX8rrp9Wk6B" ],
  "version" : 1,
  "tx" : {
    "type" : 104,
    "id" : "EURCnUgZLwUD4ee74VucDGVTCbUtNeRMmfb5q1NeEGjy",
    "sender" : "3FQyQ1nSXtyEfBrFr6GxfNtEKWdtVNKWdPu",
    "senderPublicKey" : "5LiQqduJQWCHNP9qvFhCHYi2tvCQP8Pv4LVWt2p5vYzBWXcEGQLJCaWiJwkt95EtLssb1byhWB3bZ3G1d66ToyxU",
    "fee" : 500000,
    "timestamp" : 1545835858447,
    "proofs" : [ "5YgpJDJzLxdYiwpYupU4fmzj3ywj6GmfkHdyaicayevq4zsTqcLYSwTUtYazvfXcDQCCVrytpmT8uCe4sto3Qkck" ],
    "version" : 1,
    "contractId" : "DkUTuWehJXvZMj44GT81KbhXhvsJnyPDCi4eW9BbrH3s",
    "params" : [ ]
  },
  "results" : [ {
    "key" : "updated",
    "type" : "integer",
    "value" : 1545835909
  }, {
    "key" : "buy_price",
    "type" : "string",
    "value" : "3842"
  }, {
    "key" : "sell_price",
    "type" : "string",
    "value" : "3858.13142791"
  }, {
    "key" : "last_trade",
    "type" : "string",
    "value" : "3842"
  }, {
    "key" : "high",
    "type" : "string",
    "value" : "3991.53846233"
  }, {
    "key" : "low",
    "type" : "string",
    "value" : "3838"
  }, {
    "key" : "avg",
    "type" : "string",
    "value" : "3897.80146957"
  }, {
    "key" : "vol",
    "type" : "string",
    "value" : "1360.8029619"
  }, {
    "key" : "vol_curr",
    "type" : "string",
    "value" : "5228204.97962946"
  } ]
}