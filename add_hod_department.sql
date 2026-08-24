-- Add department ownership to user accounts.
-- Run this once in the course_coverage_management_system database.

ALTER TABLE `users`
  ADD COLUMN `department_id` int(11) NULL AFTER `role_id`;

ALTER TABLE `users`
  ADD INDEX `idx_users_department_id` (`department_id`);

ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_department`
  FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
  ON UPDATE CASCADE
  ON DELETE SET NULL;
