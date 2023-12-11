-- Table Definition
CREATE SEQUENCE IF NOT EXISTS products_id_seq;
CREATE TABLE "products" (
    "id" int4 NOT NULL DEFAULT nextval('products_id_seq'::regclass),
    "name" varchar(255) NOT NULL,
    "description" text NOT NULL,
    "price" numeric(10, 2) NOT NULL,
    "created_at" timestamp(0) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" timestamp(0) DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY ("id")
);

-- Fake product data
INSERT INTO "products" ("name", "description", "price", "created_at", "updated_at") VALUES
('Product A', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 19.99, '2023-11-28 09:00:00', '2023-11-28 09:00:00'),
('Product B', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 29.99, '2023-11-28 09:05:00', '2023-11-28 09:05:00'),
('Product C', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.', 39.99, '2023-11-28 09:10:00', '2023-11-28 09:10:00'),
('Product D', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.', 49.99, '2023-11-28 09:15:00', '2023-11-28 09:15:00'),
('Product E', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 59.99, '2023-11-28 09:20:00', '2023-11-28 09:20:00');
