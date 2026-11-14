-- Membuat Tabel Student Info
CREATE TABLE IF NOT EXISTS public.student_info (
    code_module VARCHAR(10),
    code_presentation VARCHAR(10),
    id_student INTEGER,
    gender VARCHAR(10),
    region VARCHAR(100),
    highest_education VARCHAR(100),
    imd_band VARCHAR(30),
    age_band VARCHAR(20),
    num_of_prev_attempts INTEGER,
    studied_credits INTEGER,
    disability VARCHAR(10),
    final_result VARCHAR(20)
);

-- Membuat Tabel Student Engagement 
CREATE TABLE IF NOT EXISTS public.student_engagement (
    code_module VARCHAR(10),
    code_presentation VARCHAR(10),
    id_student INTEGER,
    total_clicks BIGINT,
    active_days INTEGER,
    unique_resources INTEGER
);