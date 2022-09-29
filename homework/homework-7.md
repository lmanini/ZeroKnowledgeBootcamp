# Homework 7

1. Install Warp and try transpiling a solidity contract
2. For the basic contract you completed in the exercises, try deploying this to the alpha-goerli test net.

## Solutions

1. Done
2.
    Done, output to `protostar deploy ./build/basic.json --network alpha-goerli` :

    ```
        23:25:48 [WARNING] alpha-goerli is a legacy network name parameter and it won't be supported in future versions
        23:25:48 [WARNING] alpha-goerli is a legacy network name parameter and it won't be supported in future versions
        23:25:51 [INFO] Deploy transaction was sent.
        Contract address: 0x066227f6039bce71b111611ab5af203b728f74822fe61b9088efadf008fe70e9
        Transaction hash: 0x0003a86e21ee6f93f5b80b3e63eb3716b2e5f1e0ca80e6d85468a26cb5ae0ef3

        https://goerli.voyager.online/contract/0x066227f6039bce71b111611ab5af203b728f74822fe61b9088efadf008fe70e9
        23:25:51 [INFO] Execution time: 3.66 s
    ```
