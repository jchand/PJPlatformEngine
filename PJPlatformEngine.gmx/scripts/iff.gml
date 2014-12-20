///iif(condition, branch_a, branch_b)

/* This is a shorthand / replacement for a ternary operator in GML.
 * condition: The condition that needs to be satisfied to return branch_a.
 * branch_a: Returned if condition is true.
 * branch_b: Returned if condition is false.
 */
 
condition = argument0;
branch_a = argument1;
branch_b = argument2;

if (condition) {
  return branch_a; 
} else {
  return branch_b;
}