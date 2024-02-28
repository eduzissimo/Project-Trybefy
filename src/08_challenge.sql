SELECT
  full_name 'Nome completo',
  email 'E-mail',
  plans.name 'Plano'
FROM users
INNER JOIN plans ON users.plan_id = plans.id ORDER BY full_name;