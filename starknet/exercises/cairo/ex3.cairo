// Perform and log output of simple arithmetic operations
func simple_math() {
   // adding 13 +  14
   let sum = 13 + 14;

   // multiplying 3 * 6
   let mult = 3 * 6;

   // dividing 6 by 2
   let div1 = 6 / 2;

   // dividing 70 by 2
   let div2 = 70 / 2;

   // dividing 7 by 2
   let div3 = 7 / 2;

   %{ print(f"sum : {ids.sum}, mult : {ids.mult}, div1 : {ids.div1}, div2 : {ids.div2}, div3 : {ids.div3}") %}

    return ();
}
