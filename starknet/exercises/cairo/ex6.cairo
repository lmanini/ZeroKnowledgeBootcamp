from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin, HashBuiltin

// Implement a function that sums even numbers from the provided array
func sum_even{bitwise_ptr: BitwiseBuiltin*}(arr_len: felt, arr: felt*, run: felt, idx: felt) -> (
    sum: felt
) {
    if (arr_len == idx) {
        return (sum = 0); // reached end of the array
    }

    let (my_sum) = sum_even(arr_len, arr, run, idx + 1);

    let (is_odd) = bitwise_and(arr[idx], 1); // check last bit to find if arr[idx] is odd
    let (is_even) = bitwise_xor(is_odd, 1); // flip is_odd to get is_even

    let new_sum = my_sum + ((is_even) * arr[idx]);

    %{
        print(f"is_even : {ids.is_even} , current_index : {ids.idx}, current_sum : {ids.new_sum}")
    %}

    return (sum = new_sum);
}
