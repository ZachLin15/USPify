#!/bin/bash
# Render build script — injects environment variables into index.html
# Set these in Render Dashboard → Environment → Add Environment Variable:
#   SUPABASE_URL       = https://xxxx.supabase.co
#   SUPABASE_ANON_KEY  = eyJhbGci...

echo "Injecting Supabase config..."

sed -i \
  -e "s|%%SUPABASE_URL%%|${SUPABASE_URL}|g" \
  -e "s|%%SUPABASE_ANON_KEY%%|${SUPABASE_ANON_KEY}|g" \
  index.html

echo "Done. Config injected."
