CREATE TABLE `units` (
	`id` INTEGER NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `material_types` (
	`id` INTEGER NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`percent` DECIMAL NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `product_types` (
	`id` INTEGER NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`coefficient` DECIMAL NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `materials` (
	`id` INTEGER NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`material_type_id` INTEGER NOT NULL,
	`price` DECIMAL NOT NULL,
	`warehouse` DECIMAL NOT NULL,
	`minimum` DECIMAL NOT NULL,
	`packaging` DECIMAL NOT NULL,
	`unit_id` INTEGER NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `products` (
	`id` INTEGER NOT NULL,
	`product_type_id` INTEGER NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`article` VARCHAR(255) NOT NULL,
	`price` DECIMAL NOT NULL,
	PRIMARY KEY(`id`)
);


CREATE TABLE `material_products` (
	`id` INTEGER NOT NULL,
	`material_id` INTEGER NOT NULL,
	`product_id` INTEGER NOT NULL,
	`quantity` DECIMAL NOT NULL,
	PRIMARY KEY(`id`)
);


ALTER TABLE `materials`
ADD FOREIGN KEY(`unit_id`) REFERENCES `units`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `materials`
ADD FOREIGN KEY(`material_type_id`) REFERENCES `material_types`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `products`
ADD FOREIGN KEY(`product_type_id`) REFERENCES `product_types`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `material_products`
ADD FOREIGN KEY(`material_id`) REFERENCES `materials`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `material_products`
ADD FOREIGN KEY(`product_id`) REFERENCES `products`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;