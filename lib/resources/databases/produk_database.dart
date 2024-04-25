import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/produk_model.dart';

class ProdukDatabase {
  final SupabaseClient _supabase = Supabase.instance.client;

  final String table = "produk";

  Future<List<Map<String, dynamic>>> select({required int id}) async {
    try {
      final data = await _supabase.from(table).select().eq("userId", id);
      return List<Map<String, dynamic>>.from(data);
    } catch (e) {
      debugPrint(e.toString());
    }
    return [];
  }

  Future insert({required ProdukModel model}) async {
    try {
      return await _supabase.from(table).insert(model.toMap()).select();
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future update({required int produkId, required ProdukModel model}) async {
    try {
      await _supabase.from(table).update(model.toMap()).eq("produkId", produkId);
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