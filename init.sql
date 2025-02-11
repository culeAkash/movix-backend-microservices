-- Create the database if it doesn't exist
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'reviewservice') THEN
        CREATE DATABASE reviewservice;
END IF;
END $$;

-- Connect to the database
\c reviewdb;

-- Create a user if it doesn't exist
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'culeAkash') THEN
        CREATE USER culeAkash WITH PASSWORD 'Akashjais@929';
END IF;
END $$;

-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON DATABASE reviewdb TO reviewuser;

-- Grant all privileges on all tables in the public schema to the user
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO reviewuser;

-- Grant all privileges on all sequences in the public schema to the user
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO reviewuser;

-- Grant all privileges on all functions in the public schema to the user
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO reviewuser;