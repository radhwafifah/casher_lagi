import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/petugas_model.dart';

class LoginPetugasDatabase {
  final SupabaseClient _supabase = Supabase.instance.client;

  final String table = "petugas";

  Future<List<Map<String, dynamic>>> selectAll() async {
    try {
      return await _supabase.from(table).select();
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<PetugasModel?> select({required String email}) async {
    try {
      return await _supabase
          .from(table)
          .select()
          .eq("email", email)
          .withConverter<PetugasModel>((data) => PetugasModel.fromMap(data[0]));
    } catch (e) {
      print(e);
      return null;
    }
  }

  // Future insert({required PetugasModel userModel}) async {
  //   try {
  //     return await _supabase
  //         .from(table)
  //         .insert(userModel.toMapInsert())
  //         .select();
  //   } catch (e) {
  //     print(e);
  //     return false;
  //   }
  // }

  Future<bool> delete({required String email}) async {
    try {
      await _supabase.from(table).delete().eq("email", email);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}