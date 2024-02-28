SELECT
  full_name 'Nome completo',
  birthday 'Data de nascimento'
FROM users WHERE birthday >= '1990-01-01' AND active = true;