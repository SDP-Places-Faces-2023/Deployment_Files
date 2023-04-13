CREATE EXTENSION IF NOT EXISTS "uuid-ossp"; 
CREATE TABLE model_api_connection_employee (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    patronymic VARCHAR(50) NOT NULL,
    pincode VARCHAR(10) UNIQUE NOT NULL,
    department VARCHAR(50) NOT NULL
);CREATE TABLE model_api_connection_attendance (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    employee_id UUID REFERENCES model_api_connection_employee(id),
    date TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP
);