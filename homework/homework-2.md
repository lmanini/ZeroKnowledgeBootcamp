# Homework 2

1. Group / field theory

Take the set of bits B = {0, 1} and the operation ⊕ :
    
        0 ⊕ 0 = 0
        0 ⊕ 1 = 1
        1 ⊕ 0 = 1
        1 ⊕ 1 = 0

Does the set B and the operation ⊕ satisfy the group properties?

2. Modular arithmetic - you just need to find examples, no need to prove anything.
    1. Is it true that all odd squares are ≡<sub>8</sub> 1 ?
    2. What about even squares?

3. Try out the vanity bitcoin address examples at [asecurity](https://asecuritysite.com/blockchain/vanity) or the Ethereum [version](https://vanity-eth.tk/)

4. What do you understan by
    1. O(n)
    2. O(1)
    3. O(log n)

5. Which of the above is best when describing proof size

# Solutions

1. They do, as the operation is commutative and associative, the neutral element is 0 and {0 , 1} are their own inverse element

2. 
    1. Being in mod8, all odd squares resort to one of the following :
        - {1, 3, 5, 7}, for which all squares are ≡<sub>8</sub> 1.
        - for every odd number larger than 8, we may first reduce it mod 8 and then square it.
    2. Doesn't hold as 2<sup>2</sup> ≡<sub>8</sub> 4.

3. I wrote one back in the day [repo](https://github.com/lmanini/eth-vanity-generator) 

4. Saying that a function f(n) is O(g(n)) means that there exists constants c > 0, n<sub>0</sub> > 0 s.t. 0 &leq; f(n) &leq; c * g(n) for all n &geq; n<sub>0</sub>.

5. The preferable one is O(1), as it means that the proof size remains constant with growing input n.