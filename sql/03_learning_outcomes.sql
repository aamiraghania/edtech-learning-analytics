SELECT
    final_result,
    COUNT(*) AS total_students,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (),
        2
    ) AS percentage
FROM public.student_info
GROUP BY final_result
ORDER BY total_students DESC;