import 'package:logger/logger.dart';
import 'package:postgrest/postgrest.dart';
import 'package:infografis_daging_sapi/app/supabase_api.dart';

abstract class SupabaseService<T> {
  final _logger = Logger();

  String tableName() {
    return "";
  }

  Future<PostgrestResponse> find(String id) async {
    _logger.i(tableName() + ' ' + id);
    final response = await supabase
        .from(tableName())
        .select()
        .eq('id', id)
        .single()
        .execute();
    _logger.i(response.toJson());
    return response;
  }
}
