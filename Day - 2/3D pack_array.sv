module three_D_array;
  bit [1:0][2:0][3:0] data; // 3D packed array: 2x3x4 bits
  integer i, j, k;
  initial begin
    for (i = 0; i <= 1; i = i + 1) begin
      for (j = 0; j <= 2; j = j + 1) begin
        for (k = 0; k <= 3; k = k + 1) begin
          $display("data[%0d][%0d][%0d] = %b", i, j, k, data[i][j][k]);
        end
      end
    end
  end
endmodule

