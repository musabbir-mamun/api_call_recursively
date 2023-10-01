'use strict'

// ref: https://devhints.io/knex
// TODO: implement more dynamic env var settings loader
module.exports = {
  development: {
  client: 'mysql2',
  connection: {
    host : '127.0.0.1',
    user : 'root',
    password : '',
    database : 'interval_api_call'
  },
  pool: {
    min: 3,
    max: 5
  },
  },
  staging: {
    client: 'postgresql',
    connection: {
      database: 'my_db',
      user:     'username',
      password: 'password'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  },
  production: {
    client: 'postgresql',
    connection: {
      database: 'my_db',
      user:     'username',
      password: 'password'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  }
}
