module string_data;
  string dialog = "Hello!";

  initial begin
    $display("%s", dialog);

    // Use dialog.len() to get string length
    for (int i = 0; i < dialog.len(); i++) begin
      $display("%c", dialog[i]);
    end
  end
endmodule
