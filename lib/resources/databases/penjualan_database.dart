import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/penjualan_model.dart';

class PenjualanDatabase {
  final SupabaseClient _supabase = Supabase.instance.client;

  final String table = "penjualan";

  Future<List<Map<String, dynamic>>> select({required int petugasId}) async {
    try {
      final data = await _supabase.from(table).select().eq("petugasId", petugasId);
      return List<Map<String, dynamic>>.from(data);
    } catch (e) {
      debugPrint(e.toString());
    }
    return [];
  }

  Future insert({required PenjualanModel model}) async {
    try {
      return await _supabase.from(table).insert(model.toMap()).select();
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future update({required int id, required PenjualanModel model}) async {
    try {
      await _supabase.from(table).update(model.toMap()).eq("id", id);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future delete({required int id}) async {
    try {
      await _supabase.from(table).delete().eq("id", id);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  selectAll() {}
}