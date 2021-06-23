import 'package:infografis_daging_sapi/app/supabase_api.dart';
import 'package:infografis_daging_sapi/models/infografis_models.dart';
import 'package:postgrest/postgrest.dart';
import 'supabase_service.dart';

class InfografisService extends SupabaseService<InfografisModel> {
  @override
  String tableName() {
    return "infografis";
  }

  Future<PostgrestResponse> fetchInfografis() async {
    return await supabase.from("infografis").select("*").execute();
  }
}
