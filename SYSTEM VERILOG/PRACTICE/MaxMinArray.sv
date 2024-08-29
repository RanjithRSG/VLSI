// Code your testbench here
// or browse Examples
class MaxMinArray;
  rand int arr[5];

  constraint max_min_positions {
    // First element should be the maximum value
    foreach (arr[i]) {
      if (i != 0) arr[i] <= arr[0];
    }
    // Last element should be the minimum value
    foreach (arr[i]) {
      if (i != arr.size()-1) arr[i] >= arr[arr.size()-1];
    }
  }
endclass

module testbench;
  initial begin
    MaxMinArray mma = new();

    // Randomize the array with the specified constraints
    if (mma.randomize()) begin
      $display("Array = %p", mma.arr);
      $display("Max element at the beginning: %0d", mma.arr[0]);
      $display("Min element at the end: %0d", mma.arr[mma.arr.size()-1]);
    end else begin
      $display("Randomization failed.");
    end
  end
endmodule
