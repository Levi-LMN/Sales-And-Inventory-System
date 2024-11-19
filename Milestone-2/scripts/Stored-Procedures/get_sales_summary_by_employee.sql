DELIMITER //

CREATE PROCEDURE GetSalesSummaryByEmployee(IN employeeId INT)
BEGIN
   SELECT e.first_name, e.last_name, SUM(s.total_amount) AS total_sales
   FROM sales s
   JOIN employees e ON s.employee_id = e.employee_id
   WHERE s.employee_id = employeeId
   GROUP BY e.first_name, e.last_name;
END //

DELIMITER ;
