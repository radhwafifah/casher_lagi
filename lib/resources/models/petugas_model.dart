class PetugasModel {
  final int? petugasId;
  final int userId;
  final String nomorKasir;
  final String emailKasir;
  final String namaKasir;
  final String password;
  final String? createdAt;
  final String? updatedAt;
  final String role;
  final String? lastLogin;

  PetugasModel({
  this.petugasId,
  required this.userId,
  required this.nomorKasir,
  required this.emailKasir,
  required this.namaKasir,
  required this.password,
  this.createdAt,
  this.updatedAt,
  required this.role,
  this.lastLogin,
});


factory PetugasModel.fromMap(Map<String, dynamic> data) {return PetugasModel(
  petugasId: data['petugasId'],
  userId: data['userId'],
  nomorKasir: data['nomorKasir'],
  emailKasir: data['emailKasir'],
  namaKasir: data['namaKasir'],
  password: data['password'],
  createdAt: data['createdAt'],
  role: data['role'],
  lastLogin: data['lastLogin'],
  );
}

Map<String, dynamic> toMap() => {
  'userId': userId,
  'nomorKasir': nomorKasir,
  'emailKasir': emailKasir,
  'namaKasir': namaKasir,
  'password': password,
  'createdAt': createdAt,
  'updatedAt': updatedAt,
  'role': role,
  'lastLogin': lastLogin,
};
}