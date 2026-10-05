void main(){
  double rental = 2;
  String motor = 'sport';
  bool membership = true;
  bool helm = true;

  double biayaRental = hitungBiayaRental(rental, motor);
  double potongan = hitungDiskon(biayaRental, rental, membership);
  double totalBayar = hitungTotalBayar(biayaRental, potongan, helm, rental);

  print("=== RENTAL MOTOR ===");
  print("Jenis Motor : $motor");
  print("Lama Rental : ${rental.toStringAsFixed(0)}");
  print("Member      : $membership");
  print("Helm        : $helm");
  print("Biaya Rental: Rp${biayaRental.toStringAsFixed(0)}");
  print("Potongan    : Rp${potongan.toStringAsFixed(0)}");
  print("Total Bayar : Rp${totalBayar.toStringAsFixed(0)}");

}

double hitungBiayaRental(double lamaRental, String jenisMotor){
  const double MATIC = 80000;
  const double BEBEK = 70000;
  const double SPORT = 150000;

  if(jenisMotor == "matic"){

    return lamaRental * MATIC;
  }
  else if(jenisMotor == "bebek"){

    return lamaRental * BEBEK;

  }else if(jenisMotor == "sport"){

    return lamaRental * SPORT;
  }else{
    throw Exception("Jenis motor tidak valid");
  }
}

double hitungDiskon(double biayaRental, double lamaRental, bool member){
  const double DISKON = 0.1;
  const double DISKONMEMBER = 0.05;

  if (lamaRental > 3){
    double persenDiskon = DISKON;

    if(member){
      persenDiskon = DISKON + DISKONMEMBER;
    }

      return biayaRental * persenDiskon;
  }else{
    return 0;
  }
}

double hitungTotalBayar(double biayaRental, double potongan, bool helm, double lamaRental){
  const double HELM = 10000;

  double biayaHelm = 0;

  if(helm){
    biayaHelm = HELM * lamaRental;

  }
  double total = biayaRental - potongan + biayaHelm;
  return total;

 
}

// cara kedua 
// double hitungDiskon(
//     double biayaRental,
//     double lamaRental,
//     bool member) {

//   if (lamaRental > 3) {
//     if (member) {
//       return biayaRental * 0.15;
//     } else {
//       return biayaRental * 0.10;
//     }
//   }

//   return 0;
// }