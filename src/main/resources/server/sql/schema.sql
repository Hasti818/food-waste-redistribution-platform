CREATE TABLE IF NOT EXISTS accounts (
    id            SERIAL,
    email         VARCHAR(255) NOT NULL,
    name          VARCHAR(255) NOT NULL,
    password_hash VARCHAR(64)  NOT NULL,
    role          VARCHAR(20)  NOT NULL,
    status        VARCHAR(20)  NOT NULL,
    CONSTRAINT pk_accounts       PRIMARY KEY (id),
    CONSTRAINT uq_accounts_email UNIQUE (email)
);

CREATE TABLE IF NOT EXISTS listings (
    id            SERIAL,
    provider_id   INTEGER      NOT NULL,
    title         VARCHAR(255) NOT NULL,
    description   TEXT,
    quantity      INTEGER      NOT NULL,
    pickup_window VARCHAR(255) NOT NULL,
    status        VARCHAR(20)  NOT NULL,
    CONSTRAINT pk_listings          PRIMARY KEY (id),
    CONSTRAINT fk_listings_provider FOREIGN KEY (provider_id) REFERENCES accounts(id)
);

CREATE TABLE IF NOT EXISTS reservations (
    id          SERIAL,
    listing_id  INTEGER     NOT NULL,
    customer_id INTEGER     NOT NULL,
    status      VARCHAR(20) NOT NULL,
    CONSTRAINT pk_reservations          PRIMARY KEY (id),
    CONSTRAINT fk_reservations_listing  FOREIGN KEY (listing_id)  REFERENCES listings(id),
    CONSTRAINT fk_reservations_customer FOREIGN KEY (customer_id) REFERENCES accounts(id)
);
