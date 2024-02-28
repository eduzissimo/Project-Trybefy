SELECT
  name 'Plano',
  COUNT(*) 'Quantidade de usuários'
FROM plans
INNER JOIN users ON plans.id = users.plan_id
GROUP BY name
ORDER BY name;