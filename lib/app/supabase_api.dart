import 'package:supabase/supabase.dart';

// use your own SUPABASE_URL
const String SUPABASE_URL = 'https://smmhpdiatdjsagptwunx.supabase.co';

// use your own SUPABASE_SECRET key
const String SUPABASE_SECRET =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYyNDQxODc3OSwiZXhwIjoxOTM5OTk0Nzc5fQ.xSR7qmkxNKe-4jlBOgAUBGSmyw9IJWWdp-fCB3kHLPQ';

final SupabaseClient supabase = SupabaseClient(SUPABASE_URL, SUPABASE_SECRET);
