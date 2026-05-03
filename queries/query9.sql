-- Query 9: Lists medications scheduled for reorder within the next week
SELECT medication_id, reorder_date
FROM inventory
WHERE reorder_date BETWEEN '2026-05-06' AND '2026-05-13'
ORDER BY reorder_date ASC;