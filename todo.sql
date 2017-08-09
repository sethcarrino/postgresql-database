-- ************************
-- Create Table
-- ************************

CREATE TABLE todo (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(9000) NULL,
  priority INTEGER DEFAULT 1 NOT NULL,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

-- ************************
-- Insert todo data
-- ************************

INSERT INTO todo (
  title,
  details,
  priority,
  created_at,
  completed_at
) VALUES (
  'Clean Bathroom',
  'bathroom is super dirty, it needs cleaning',
  2,
  TO_TIMESTAMP('2017-08-07 07:03:56', 'YYYY-MM-DD HH24:MI:SS'),
  NULL
);

INSERT INTO todo (
  title,
  details,
  priority,
  created_at,
  completed_at
) VALUES (
  'Breakdance',
  'dance like no one is watching',
  1,
  TO_TIMESTAMP('2017-08-07 11:59:09', 'YYYY-MM-DD HH24:MI:SS'),
  NULL
);

INSERT INTO todo (
  title,
  details,
  priority,
  created_at,
  completed_at
) VALUES (
  'Learn to backflip',
  'I really need to learn how to backflip',
  1,
  TO_TIMESTAMP('2017-08-07 02:32:07', 'YYYY-MM-DD HH24:MI:SS'),
  NULL
);

INSERT INTO todo (
  title,
  details,
  priority,
  created_at,
  completed_at
) VALUES (
  'Party real hard',
  'neeed some stress relief, time to party',
  3,
  TO_TIMESTAMP('2017-08-07 03:45:43', 'YYYY-MM-DD HH24:MI:SS'),
  NULL
);

INSERT INTO todo (
  title,
  details,
  priority,
  created_at,
  completed_at
) VALUES (
  'Make sweet banger',
  'I need some supa hot fiya. gimme da beats now yo',
  4,
  TO_TIMESTAMP('2017-08-07 01:24:40', 'YYYY-MM-DD HH24:MI:SS'),
  TO_TIMESTAMP('2017-08-07 12:05:29', 'YYYY-MM-DD HH24:MI:SS')
);

-- ************************
-- Select Data
-- ************************

SELECT * FROM todo WHERE completed_at IS NULL;

SELECT * FROM todo WHERE priority > 1;

-- ***********************
-- Update Data
-- ***********************

UPDATE todo SET completed_at = TO_TIMESTAMP('2017-08-08 03:35:27', 'YYYY-MM-DD HH24:MI:SS') WHERE id = 5;

-- ***********************
-- Delete Data
-- ***********************

DELETE FROM todo WHERE title = 'Breakdance';
