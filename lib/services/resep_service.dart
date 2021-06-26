import 'package:infografis_daging_sapi/app/supabase_api.dart';
import 'package:infografis_daging_sapi/models/resep_models.dart';
import 'package:postgrest/postgrest.dart';
import 'supabase_service.dart';

class ResepService extends SupabaseService<ResepModel> {
  @override
  String tableName() {
    return "resep";
  }

  Future<PostgrestResponse> fetchAllData() async {
    return await supabase.from("resep").select().execute();
  }

  Future<PostgrestResponse> fetchByIdInfografis(int id) async {
    return await supabase
        .from("resep")
        .select()
        .eq("id_infografis", id)
        .execute();
  }
}
