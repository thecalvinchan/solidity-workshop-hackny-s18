const dotenv = require('dotenv')
const HDWalletProvider = require('truffle-hdwallet-provider')

dotenv.config()

const mnemonic = process.env.MNEMONIC
const apiKey = process.env.API_KEY

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
      host: '127.0.0.1',
      port: 9545,
      network_id: '*'
    },
    rinkeby: {
      provider: new HDWalletProvider(mnemonic, 'https://rinkeby.infura.io/'+apiKey),
      network_id: 3
    }
  }
};
