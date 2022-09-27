# Homework 3

## Practice using Zokrates

Use remix, install the Zokrates plugin

1. Use the example file to generate a proof to show that a prover knows the square root of 25.
2. Create an invalid proof and make sure it is rejected
3. Follow the example to build a proof that you know the pre image of a hash [example link](https://zokrates.github.io/examples/sha256example.html).
4. In principle how could you use Zokrates to verify that a certain address on Ethereum has more than 1 ETH?

# Solutions

1. 
    ``` 
    def main(private field a, field b) {
        assert(a * a == b);
        return;
    }
    ```
    Compute successfully the snippet with { a: 5 , b: 25 }. Once it's done, you may setup the proving and verification keys, after which you are able to generate the proof, which look something similar to this:
    ```
    {
        "scheme": "g16",
        "curve": "bn128",
        "proof": {
            "a": [
                    "0x2323df782b4eaadc866575ec045dc9943b9809b1eda5137d9eb154d5269881ef",
                    "0x12bc79746913ac1aabc4e870c5eb4f78ec4ec35aeb78e7597a0cf1fb47d3b8c8"
                ],
            "b": [
                [
                    "0x0587b08048e2dc384a2aac6444babb2b90be8eb3bcf01103a299b8f43c73f8ea",
                    "0x2721b5344645d8fbb4ce1708e6418d603ca64017549b0c2f00b1401aa0cd2820"
                ],
                [
                    "0x02cf538e79b8af0b63f6020beda0d83327bf3b7cd10152b2e658edd692e6ec27",
                    "0x004e02716f63ab82f9c2a68b103e2bd298c99c5f1f0a215ed3c6f239f5765c64"
                ]
            ],
            "c": [
                "0x284a2b8a2676736a1bcdde7bdb22f884bbf1a6af5502246124c379c8848097ab",
                "0x2d16721b690382098f0208d9c4b9192713d581f06b67ced16b2e73d6b136c913"
            ]
        },
        "inputs": [
            "0x0000000000000000000000000000000000000000000000000000000000000019"
        ]
    }
    ```
2. Changing a to 6 fails the assertion, which makes the verifier reject the proof.
3.
    ```
    import "hashes/sha256/512bitPacked" as sha256packed;

    def main(private field a, private field b, private field c, private field d) -> field[2] {
        field[2] h = sha256packed([a, b, c, d]);
        assert(h[0] == 0xdead); // assert for first half of the hash
        assert(h[1] == 0xface); // assert for second half of the hash
        return h;
    }
    ```
4. If a program C had all the addresses with balance >= 1 ETH organized in a merkle tree, one could simply verify it by checking for a given address's inclusion within the merkle tree, given the address (tree's leaf), the tree root, and the path to such root.
