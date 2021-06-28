import 'package:infografis_daging_sapi/app/supabase_api.dart';
import 'package:infografis_daging_sapi/models/mitosFakta_models.dart';
import 'package:postgrest/postgrest.dart';
import 'supabase_service.dart';

class MitosFaktaService extends SupabaseService<MitosFaktaModel> {
  @override
  String tableName() {
    return "mitosfakta";
  }

  Future<PostgrestResponse> fetchInfografis() async {
    return await supabase
        .from("mitosfakta")
        .select("*")
        .order("id", ascending: true)
        .execute();
  }
}
