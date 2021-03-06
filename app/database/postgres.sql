CREATE TABLE IF NOT EXISTS clients (
  client UUID NOT NULL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS events (
  client UUID REFERENCES clients,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL,
  name TEXT NOT NULL,
  properties JSONB NOT NULL
);

CREATE TABLE IF NOT EXISTS logs (
  client UUID REFERENCES clients,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL,
  message TEXT NOT NULL,
  severity SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS exceptions (
  client UUID REFERENCES clients,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL,
  exceptions JSONB NOT NULL
);
