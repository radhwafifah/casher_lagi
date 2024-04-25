class MemberModel {
  final int? memberId;
  final int petugasId;
  final String namaMember;
  final String nomorTelepon;
  final String? createdAt;
  final String? updatedAt;

  MemberModel({
  this.memberId,
  required this.petugasId,
  required this.namaMember,
  required this.nomorTelepon,
  this.createdAt,
  this.updatedAt,
});


factory MemberModel.fromMap(Map<String, dynamic> data) {return MemberModel(
  memberId: data['memberId'],
  petugasId: data['petugasId'],
  namaMember: data['namaMember'],
  nomorTelepon: data['nomorTelepon'],
  createdAt: data['createdAt'],
  );
}

Map<String, dynamic> toMap() => {
  'petugasId': petugasId,
  'namaMember': namaMember,
  'nomorTelepon': nomorTelepon,
  'createdAt': createdAt,
  'updatedAt': updatedAt,
};
}