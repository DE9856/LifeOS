create table public.users (
  id uuid not null default gen_random_uuid (),
  telegram_id bigint not null,
  username text null,
  first_name text not null,
  last_name text null,
  language_code text null,
  timezone text null default 'Asia/Kolkata'::text,
  created_at timestamp with time zone null default now(),
  updated_at timestamp with time zone null default now(),
  constraint users_pkey primary key (id),
  constraint users_telegram_id_key unique (telegram_id)
) TABLESPACE pg_default;