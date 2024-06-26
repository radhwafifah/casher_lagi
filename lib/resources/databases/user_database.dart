import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/user_model.dart';

class UserDatabase {
  final SupabaseClient _supabase = Supabase.instance.client;

  final String table = 'users';

  Future<List<Map<String, dynamic>>> selectAll() async {
    try {
      return await _supabase.from(table).select();
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<UserModel?> select({required String email}) async {
    try {
      return await _supabase
          .from(table)
          .select()
          .eq("email", email)
          .withConverter<UserModel>((data) => UserModel.fromMap(data[0]));
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<bool> insert({required UserModel userModel}) async {
    try {
      await _supabase.from(table).insert(userModel.toMap());
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

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
