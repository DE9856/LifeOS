create table public.events (
  id uuid not null default gen_random_uuid (),
  user_id uuid null,
  event_type text null,
  payload jsonb null,
  created_at timestamp with time zone null default now(),
  constraint events_pkey primary key (id),
  constraint events_user_id_fkey foreign KEY (user_id) references users (id)
) TABLESPACE pg_default;