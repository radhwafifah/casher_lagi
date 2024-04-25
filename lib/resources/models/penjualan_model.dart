class PenjualanModel {
  final int? penjualanId;
  final int memberId;
  final String namaProduk;
  final String harga;
  final String jumlah;
  final String total;
  final String totalHarga;
  final String totalPembayaran;
  final String diskon;
  final String uang;
  final String kembalian;
  final String? createdAt;
  final String? updatedAt;

  PenjualanModel({
  this.penjualanId,
  required this.memberId,
  required this.namaProduk,
  required this.harga,
  required this.jumlah,
  required this.total,
  required this.totalHarga,
  required this.totalPembayaran,
  required this.diskon,
  required this.uang,
  required this.kembalian,
  this.createdAt,
  this.updatedAt,
});


factory PenjualanModel.fromMap(Map<String, dynamic> data) {return PenjualanModel(
  penjualanId: data['penjualanId'],
  memberId: data['memberId'],
  namaProduk: data['namaProduk'],
  harga: data['harga'],
  jumlah: data['jumlah'],
  total: data['total'],
  totalHarga: data['totalHarga'],
  totalPembayaran: data['totalPembayaran'],
  diskon: data['diskon'],
  uang: data['uang'],
  kembalian: data['kembalian'],
  createdAt: data['createdAt'],
  );
}

Map<String, dynamic> toMap() => {
  'memberId': memberId,
  'namaProduk': namaProduk,
  'harga': harga,
  'jumlah': jumlah,
  'total': total,
  'totalHarga': totalHarga,
  'totalPembayaran': totalPembayaran,
  'diskon': diskon,
  'uang': uang,
  'kembalian': kembalian,
  'createdAt': createdAt,
  'updatedAt': updatedAt,
};
}