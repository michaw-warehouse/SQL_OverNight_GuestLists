-- 1. Full Guest List with Complete Address Information

SELECT 
    ogl.ONGLno,
    ogl.Apply_Date,
    ogl.Startdate,
    ogl.Enddate,
    ogl.AdminName,
    h.House_No,
    h.Owner_name,
    s.Street_Name,
    w.Ward_Name,
    t.Township_name,
    sd.SD_name
FROM O6_Overnightguest_lists ogl
JOIN O5_House h ON ogl.House_No = h.House_No
JOIN O4_Street s ON h.Street_code = s.Street_code
JOIN O3_Ward w ON s.Ward_code = w.Ward_code
JOIN O2_Township t ON w.Township_code = t.Township_code
JOIN O1_State_and_Division sd ON t.SD_code = sd.SD_code
ORDER BY ogl.Apply_Date DESC;




-- 2. Visitor Details with Stay Duration

SELECT 
    v.VisiterCode,
    v.VisiterName,
    v.Gender,
    v.JobStatus,
    ogl.Startdate,
    ogl.Enddate,
    DATEDIFF(DAY, ogl.Startdate, ogl.Enddate) AS Stay_Days
FROM O7_Visiter v
JOIN O6_Overnightguest_lists ogl 
    ON v.ONGLno = ogl.ONGLno;






	-- 3. Total Visitors by Township

SELECT 
    t.Township_name,
    COUNT(v.VisiterCode) AS Total_Visitors
FROM O7_Visiter v
JOIN O6_Overnightguest_lists ogl ON v.ONGLno = ogl.ONGLno
JOIN O5_House h ON ogl.House_No = h.House_No
JOIN O4_Street s ON h.Street_code = s.Street_code
JOIN O3_Ward w ON s.Ward_code = w.Ward_code
JOIN O2_Township t ON w.Township_code = t.Township_code
GROUP BY t.Township_name
ORDER BY Total_Visitors DESC;





-- 4. Visitor Count by Gender

SELECT 
    Gender,
    COUNT(*) AS Total
FROM O7_Visiter
GROUP BY Gender;





-- 5. Visitors Currently Staying

SELECT 
    v.VisiterName,
    ogl.House_No,
    ogl.Startdate,
    ogl.Enddate
FROM O7_Visiter v
JOIN O6_Overnightguest_lists ogl 
    ON v.ONGLno = ogl.ONGLno
WHERE GETDATE() BETWEEN ogl.Startdate AND ogl.Enddate;






-- 6. Top 5 Houses by Visitor Count

SELECT TOP 5
    h.House_No,
    h.Owner_name,
    COUNT(v.VisiterCode) AS Visitor_Count
FROM O7_Visiter v
JOIN O6_Overnightguest_lists ogl ON v.ONGLno = ogl.ONGLno
JOIN O5_House h ON ogl.House_No = h.House_No
GROUP BY h.House_No, h.Owner_name
ORDER BY Visitor_Count DESC;