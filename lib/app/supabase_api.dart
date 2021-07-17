import 'package:supabase/supabase.dart';

// use your own SUPABASE_URL
const String SUPABASE_URL = 'https://ekafttorjrpurnhtqucg.supabase.co';

// use your own SUPABASE_SECRET key
const String SUPABASE_SECRET =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYyNTQ3MDEyNiwiZXhwIjoxOTQxMDQ2MTI2fQ.5PAZeI784WUk7q6e97ZjcJ_3u_4oj6xaORXzkUGygJw';

final SupabaseClient supabase = SupabaseClient(SUPABASE_URL, SUPABASE_SECRET);
