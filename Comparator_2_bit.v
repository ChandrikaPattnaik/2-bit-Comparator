module Comparator_2_bit(A,B,C,D,ABgCD,ABeCD,ABlCD);

input A,B,C,D;
output ABgCD,ABeCD,ABlCD;

assign ABgCD = (A&&(~C)) || (B&&(~C)&&(~D)) || (A&&B&&(~D));

assign ABeCD = ((~A)&&(~B)&&(~C)&&(~D)) || ((~A)&&B&&(~C)&&D) || (A&&(~B)&&C&&(~D)) || (A&&B&&C&&D);

assign ABlCD = ((~A)&&C) || ((~A)&&(~B)&&D) || ((~B)&&C&&D);

endmodule
