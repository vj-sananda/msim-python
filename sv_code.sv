module sv_code;


   int sv_a, sv_b, sv_c;

   import "DPI-C" context run_python_code=function void SV_run_python_code(int a,int b,int c);

   initial begin
      sv_a = $urandom_range(200);
      sv_b = $urandom_range(200);
      sv_c = $urandom_range(200);      

      $display("SV values are a=%0d b=%0d c=%0d",sv_a, sv_b,sv_c);
      $display("SV passing values to C through DPI");
      $display("");

      SV_run_python_code(sv_a,sv_b,sv_c);
      
      $finish;

   end // initial begin
endmodule // sv_code
