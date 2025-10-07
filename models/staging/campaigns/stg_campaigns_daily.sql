

SELECT 
    CAST(Day AS DATE) AS Date, 
    CAST(Campaign AS STRING) AS Campaign, 
    CAST(Impr_ AS int64) AS Impressions,
    CAST(Clicks AS int64) AS Clicks,  
    CAST(Cost AS NUMERIC) AS Costs,
    CAST(Conversions AS NUMERIC) AS Conversions  
FROM {{ source('google_ads', 'campaigns') }}
ORDER BY 1 ASC