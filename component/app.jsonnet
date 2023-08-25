local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.foo_test;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('foo-test', params.namespace);

{
  'foo-test': app,
}
