class bike_race;
  logic [63:0] location_code;
  int numbers, peoples, bikes;
endclass

module class_racing;
  bike_race br[20];
  initial begin
    foreach (br[i]) begin
      br[i] = new();
      br[i].location_code = 110;
      br[i].numbers = i*i + 1;
      br[i].peoples = i + 20;
      br[i].bikes = i;
    end
    
    foreach (br[i])
      $display("br[%0d].location_code=%0d, br[%0d].numbers=%0d, br[%0d].peoples=%0d, br[%0d].bikes=%0d",
               i, br[i].location_code, i, br[i].numbers, i, br[i].peoples, i, br[i].bikes);
  end
endmodule



// output
// # run -all
// # br[0].location_code=110, br[0].numbers=1, br[0].peoples=20, br[0].bikes=0
// # br[1].location_code=110, br[1].numbers=2, br[1].peoples=21, br[1].bikes=1
// # br[2].location_code=110, br[2].numbers=5, br[2].peoples=22, br[2].bikes=2
// # br[3].location_code=110, br[3].numbers=10, br[3].peoples=23, br[3].bikes=3
// # br[4].location_code=110, br[4].numbers=17, br[4].peoples=24, br[4].bikes=4
// # br[5].location_code=110, br[5].numbers=26, br[5].peoples=25, br[5].bikes=5
// # br[6].location_code=110, br[6].numbers=37, br[6].peoples=26, br[6].bikes=6
// # br[7].location_code=110, br[7].numbers=50, br[7].peoples=27, br[7].bikes=7
// # br[8].location_code=110, br[8].numbers=65, br[8].peoples=28, br[8].bikes=8
// # br[9].location_code=110, br[9].numbers=82, br[9].peoples=29, br[9].bikes=9
// # br[10].location_code=110, br[10].numbers=101, br[10].peoples=30, br[10].bikes=10
// # br[11].location_code=110, br[11].numbers=122, br[11].peoples=31, br[11].bikes=11
// # br[12].location_code=110, br[12].numbers=145, br[12].peoples=32, br[12].bikes=12
// # br[13].location_code=110, br[13].numbers=170, br[13].peoples=33, br[13].bikes=13
// # br[14].location_code=110, br[14].numbers=197, br[14].peoples=34, br[14].bikes=14
// # br[15].location_code=110, br[15].numbers=226, br[15].peoples=35, br[15].bikes=15
// # br[16].location_code=110, br[16].numbers=257, br[16].peoples=36, br[16].bikes=16
// # br[17].location_code=110, br[17].numbers=290, br[17].peoples=37, br[17].bikes=17
// # br[18].location_code=110, br[18].numbers=325, br[18].peoples=38, br[18].bikes=18
// # br[19].location_code=110, br[19].numbers=362, br[19].peoples=39, br[19].bikes=19
// # exit
