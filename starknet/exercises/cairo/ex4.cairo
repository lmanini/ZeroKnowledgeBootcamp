// Return summation of every number below and up to including n
func calculate_sum(n: felt) -> (sum: felt) {
    
    if (n == 1) {
        return (sum = 1);
    }
    let (my_sum) = calculate_sum(n - 1);
    let new_sum = my_sum + n;
    return (sum = new_sum);
}
