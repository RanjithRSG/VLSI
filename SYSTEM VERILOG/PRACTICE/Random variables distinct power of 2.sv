// Code your design here
class PowerOfTwoSet;
  rand int a, b, c, d;

  constraint distinct_powers_of_two {
    // Ensure each variable is a power of 2
    (a & (a - 1)) == 0 && a > 0;
    (b & (b - 1)) == 0 && b > 0;
    (c & (c - 1)) == 0 && c > 0;
    (d & (d - 1)) == 0 && d > 0;

    // Ensure all variables are distinct
    unique {a, b, c, d};
  }
endclass
module testbench;
  initial begin
    PowerOfTwoSet pow_set = new();

    // Randomize the variables with the specified constraints
    if (pow_set.randomize()) begin
      $display("a = %0d, b = %0d, c = %0d, d = %0d", pow_set.a, pow_set.b, pow_set.c, pow_set.d);
    end else begin
      $display("Randomization failed.");
    end
  end
endmodule
