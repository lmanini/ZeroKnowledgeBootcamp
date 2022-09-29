%lang starknet
from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin
from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.math import unsigned_div_rem

// Using binary operations return:
// - 1 when pattern of bits is 01010101 from LSB up to MSB 1, but accounts for trailing zeros
// - 0 otherwise

// 000000101010101 PASS
// 010101010101011 FAIL

func pattern{bitwise_ptr: BitwiseBuiltin*, range_check_ptr}(
    n: felt, idx: felt, exp: felt, broken_chain: felt
) -> (true: felt) {
    alloc_locals;

    let (local lsb) = bitwise_and(n, 1); //make lsb local to avoid it being revoked

    if (idx == 0) {
        if (lsb != exp) {
            return pattern(n, idx, lsb, 0); //force correct expected bit at depth = 1 !!!
        }
    }

    if (lsb == exp) {
        if (n == 0) {
            return (true = 1); // finished checking, return true
        }
        let (new_exp) = bitwise_xor(lsb, 1); // flip current lsb to get next expected value
        return pattern(
            (n - lsb) / 2, // always have 0 as lsb so that the div doesnt explode
            idx + 1,
            new_exp,
            0
        );
    } else {
        return (true = 0); // exp != lsb -> return false
    }
}