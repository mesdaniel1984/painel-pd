-- Contencao do acesso anonimo; preserva acesso das contas autenticadas existentes.
-- Nao substitui RBAC por modulo. Nenhum dado de negocio e alterado.
begin;
alter table public.pd_produtos_desenvolvimento enable row level security;
alter policy allow_all on public.pd_produtos_desenvolvimento to authenticated using ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false') with check ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false');
revoke all privileges on table public.pd_produtos_desenvolvimento from anon, public;

alter table public.pd_melhoria_produtos enable row level security;
alter policy allow_all on public.pd_melhoria_produtos to authenticated using ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false') with check ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false');
revoke all privileges on table public.pd_melhoria_produtos from anon, public;

alter table public.pd_pops_its enable row level security;
alter policy allow_all on public.pd_pops_its to authenticated using ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false') with check ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false');
revoke all privileges on table public.pd_pops_its from anon, public;

alter table public.pd_reducao_custos enable row level security;
alter policy allow_all on public.pd_reducao_custos to authenticated using ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false') with check ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false');
revoke all privileges on table public.pd_reducao_custos from anon, public;

alter table public.pd_mps_homologacao enable row level security;
alter policy allow_all on public.pd_mps_homologacao to authenticated using ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false') with check ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false');
revoke all privileges on table public.pd_mps_homologacao from anon, public;

alter table public.pd_fornecedores_homologacao enable row level security;
alter policy allow_all on public.pd_fornecedores_homologacao to authenticated using ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false') with check ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false');
revoke all privileges on table public.pd_fornecedores_homologacao from anon, public;

alter table public.pd_estabilidade enable row level security;
alter policy allow_all on public.pd_estabilidade to authenticated using ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false') with check ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false');
revoke all privileges on table public.pd_estabilidade from anon, public;

alter table public.pd_radar enable row level security;
alter policy allow_all on public.pd_radar to authenticated using ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false') with check ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false');
revoke all privileges on table public.pd_radar from anon, public;

alter table public.pd_amostras enable row level security;
alter policy allow_all on public.pd_amostras to authenticated using ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false') with check ((select auth.uid()) is not null and coalesce((select auth.jwt()->>'is_anonymous'), 'false') = 'false');
revoke all privileges on table public.pd_amostras from anon, public;
commit;
