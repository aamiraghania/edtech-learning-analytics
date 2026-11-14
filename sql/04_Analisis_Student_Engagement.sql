SELECT
    si.final_result,
    COUNT(*) AS total_students,
    ROUND(AVG(se.total_clicks), 2) AS avg_total_clicks,
    ROUND(AVG(se.active_days), 2) AS avg_active_days,
    ROUND(AVG(se.unique_resources), 2) AS avg_unique_resources
FROM public.student_info AS si
INNER JOIN public.student_engagement AS se
    ON si.code_module = se.code_module
    AND si.code_presentation = se.code_presentation
    AND si.id_student = se.id_student
GROUP BY si.final_result
ORDER BY avg_total_clicks DESC;