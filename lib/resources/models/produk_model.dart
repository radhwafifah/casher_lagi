class ProdukModel {
  final int? produkId;
  final int userId;
  final String namaProduk;
  final String harga;
  final String stok;
  final String? createdAt;
  final String? updatedAt;

  ProdukModel({
  this.produkId,
  required this.userId,
  required this.namaProduk,
  required this.harga,
  required this.stok,
  this.createdAt,
  this.updatedAt,
});


factory ProdukModel.fromMap(Map<String, dynamic> data) {return ProdukModel(
  produkId: data['petugasId'],
  userId: data['userId'],
  namaProduk: data['namaProduk'],
  harga: data['harga'],
  stok: data['stok'],
  createdAt: data['createdAt'],
  );
}

Map<String, dynamic> toMap() => {
  'userId': userId,
  'namaProduk': namaProduk,
  'harga': harga,
  'stok': stok,
  'createdAt': createdAt,
  'updatedAt': updatedAt,
};
}