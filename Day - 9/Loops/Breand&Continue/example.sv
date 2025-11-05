// ------------------------------BREAK & CONTINUE------------------
module break_continue_loop;
  int D[30];
  
  initial begin
    for (int i = 0; i < $size(D); i++) begin
      D[i] = i+i;
    end
  
    for (int i = 0; i < $size(D); i++) begin
      if(i == 10) break;
      $display("D[%0d] = %0d", i, D[i]);
    end
    $display("===============================");
          for (int i = 0; i < $size(D); i++) begin
            if(i == 10) continue;
      $display("D[%0d] = %0d", i, D[i]);
    end
  end
endmodule



/*output
# run -all
# D[0] = 0
# D[1] = 2
# D[2] = 4
# D[3] = 6
# D[4] = 8
# D[5] = 10
# D[6] = 12
# D[7] = 14
# D[8] = 16
# D[9] = 18
# ===============================
# D[0] = 0
# D[1] = 2
# D[2] = 4
# D[3] = 6
# D[4] = 8
# D[5] = 10
# D[6] = 12
# D[7] = 14
# D[8] = 16
# D[9] = 18
# D[11] = 22
# D[12] = 24
# D[13] = 26
# D[14] = 28
# D[15] = 30
# D[16] = 32
# D[17] = 34
# D[18] = 36
# D[19] = 38
# D[20] = 40
# D[21] = 42
# D[22] = 44
# D[23] = 46
# D[24] = 48
# D[25] = 50
# D[26] = 52
# D[27] = 54
# D[28] = 56
# D[29] = 58
# exit*/
