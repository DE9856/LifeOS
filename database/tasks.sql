create table public.tasks (
  id uuid not null default gen_random_uuid (),
  user_id uuid null,
  title text not null,
  description text null,
  priority text null default 'Medium'::text,
  status text null default 'Pending'::text,
  due_date date null,
  created_at timestamp with time zone null default now(),
  completed_at timestamp with time zone null,
  updated_at timestamp with time zone null default now(),
  estimated_minutes integer null,
  category text null,
  constraint tasks_pkey primary key (id),
  constraint tasks_user_id_fkey foreign KEY (user_id) references users (id) on delete CASCADE
) TABLESPACE pg_default;