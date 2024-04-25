import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/petugas_model.dart';

class PetugasDatabase {
  final SupabaseClient _supabase = Supabase.instance.client;

  final String table = "petugas";

  Future<List<Map<String, dynamic>>> select({required int id}) async {
    try {
      final data = await _supabase.from(table).select().eq("userId", id);
      return List<Map<String, dynamic>>.from(data);
    } catch (e) {
      debugPrint(e.toString());
    }
    return [];
  }

  Future insert({required PetugasModel model}) async {
    try {
      return await _supabase.from(table).insert(model.toMap()).select();
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future update({required int petugasId, required PetugasModel model}) async {
    try {
      await _supabase.from(table).update(model.toMap()).eq("petugasId", petugasId);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future delete({required String nomorKasir}) async {
    try {
      await _supabase.from(table).delete().eq("nomorKasir", nomorKasir);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  selectAll() {}
}