-- Kjør dette i Supabase: SQL Editor -> New query -> lim inn -> Run

create table if not exists public.votes (
  id         bigint generated always as identity primary key,
  created_at timestamptz not null default now(),
  name       text not null check (char_length(name) between 1 and 60),
  choice     text not null check (choice in ('a', 'b')),
  comment    text check (comment is null or char_length(comment) <= 500)
);

-- Slå på tilgangskontroll: alle kan lese og stemme, ingen kan endre eller slette
alter table public.votes enable row level security;

create policy "Alle kan se stemmer"
  on public.votes for select
  to anon
  using (true);

create policy "Alle kan stemme"
  on public.votes for insert
  to anon
  with check (true);
