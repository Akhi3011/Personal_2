-- Create temporary reference view for channel mappings
CREATE OR REPLACE TEMP VIEW gaia_ref AS
SELECT DISTINCT channel.channel_id, channel.channel_name
FROM adp_prod.processed.gaia
WHERE channel.channel_id IN ('amg00886c16','amg00886c12','amg00886c14','amg00886c15')
  AND channel.channel_name IN ('U&Transport','U&Real Heroes','U&Laughs','U&The Past');

-- Update content_playout_aggregated_table
MERGE INTO adp_prod.aggregated.content_playout_aggregated_table AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND target.delivery_id IN (
    'amg00886-uktvfast-playfullthrottlevirgin-virginmediauk',
    'amg00886-uktvfast-playheroesvirgin-virginmediauk',
    'amg00886-uktvfast-playlaughsvirgin-virginmediauk',
    'amg00886-uktvfast-playuncoveredvirgin-virginmediauk',
    'amg00886-uktvmedialimite-uandlaughs-dash-virginuk',
    'amg00886-uktvmedialimite-uktvplayfullthrottle-samsunguk',
    'amg00886-uktvmedialimite-uktvplayheroes-samsunguk',
    'amg00886-uktvmedialimite-uktvplaylaughs-samsunguk',
    'amg00886-uktvmedialimite-uktvplayuncovered-samsunguk'
  )
  AND target.start_time >= '2025-09-01 00:00:00'
  AND target.start_time <  '2026-02-12 03:00:00'
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update daily_delivery_impression_aggregation_est
MERGE INTO adp_prod.aggregated.daily_delivery_impression_aggregation_est AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update daily_delivery_impression_aggregation_pst
MERGE INTO adp_prod.aggregated.daily_delivery_impression_aggregation_pst AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update daily_delivery_impression_aggregation_utc
MERGE INTO adp_prod.aggregated.daily_delivery_impression_aggregation_utc AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update daily_delivery_viewership_aggregation_est
MERGE INTO adp_prod.aggregated.daily_delivery_viewership_aggregation_est AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update daily_delivery_viewership_aggregation_pst
MERGE INTO adp_prod.aggregated.daily_delivery_viewership_aggregation_pst AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update daily_delivery_viewership_aggregation_utc
MERGE INTO adp_prod.aggregated.daily_delivery_viewership_aggregation_utc AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- HOURLY AGGREGATIONS
-- Update hourly_delivery_impression_aggregation_est
MERGE INTO adp_prod.aggregated.hourly_delivery_impression_aggregation_est AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update hourly_delivery_impression_aggregation_pst
MERGE INTO adp_prod.aggregated.hourly_delivery_impression_aggregation_pst AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update hourly_delivery_impression_aggregation_utc
MERGE INTO adp_prod.aggregated.hourly_delivery_impression_aggregation_utc AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update hourly_delivery_viewership_aggregation_est
MERGE INTO adp_prod.aggregated.hourly_delivery_viewership_aggregation_est AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update hourly_delivery_viewership_aggregation_pst
MERGE INTO adp_prod.aggregated.hourly_delivery_viewership_aggregation_pst AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update hourly_delivery_viewership_aggregation_utc
MERGE INTO adp_prod.aggregated.hourly_delivery_viewership_aggregation_utc AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- MONTHLY AGGREGATIONS
-- Update monthly_delivery_impression_aggregation_est
MERGE INTO adp_prod.aggregated.monthly_delivery_impression_aggregation_est AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update monthly_delivery_impression_aggregation_pst
MERGE INTO adp_prod.aggregated.monthly_delivery_impression_aggregation_pst AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update monthly_delivery_impression_aggregation_utc
MERGE INTO adp_prod.aggregated.monthly_delivery_impression_aggregation_utc AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update monthly_delivery_viewership_aggregation_est
MERGE INTO adp_prod.aggregated.monthly_delivery_viewership_aggregation_est AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update monthly_delivery_viewership_aggregation_pst
MERGE INTO adp_prod.aggregated.monthly_delivery_viewership_aggregation_pst AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update monthly_delivery_viewership_aggregation_utc
MERGE INTO adp_prod.aggregated.monthly_delivery_viewership_aggregation_utc AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- WEEKLY AGGREGATIONS
-- Update weekly_delivery_impression_aggregation_est
MERGE INTO adp_prod.aggregated.weekly_delivery_impression_aggregation_est AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update weekly_delivery_impression_aggregation_pst
MERGE INTO adp_prod.aggregated.weekly_delivery_impression_aggregation_pst AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update weekly_delivery_impression_aggregation_utc
MERGE INTO adp_prod.aggregated.weekly_delivery_impression_aggregation_utc AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update weekly_delivery_viewership_aggregation_est
MERGE INTO adp_prod.aggregated.weekly_delivery_viewership_aggregation_est AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update weekly_delivery_viewership_aggregation_pst
MERGE INTO adp_prod.aggregated.weekly_delivery_viewership_aggregation_pst AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- Update weekly_delivery_viewership_aggregation_utc
MERGE INTO adp_prod.aggregated.weekly_delivery_viewership_aggregation_utc AS target
USING gaia_ref AS source
ON target.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.channel_name = source.channel_name;

-- PROCESSED TABLES WITH NESTED STRUCTS
-- Update enriched_impressions_v1 (updating nested struct field)
MERGE INTO adp_prod.processed.enriched_impressions_v1 AS target
USING gaia_ref AS source
ON target.gaia.channel.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.gaia = struct(
    target.gaia.channel.channel_id AS channel_id,
    source.channel_name AS channel_name
  );

-- Note: For enriched_sessions tables, you need to update the entire gaia struct
-- The exact struct fields may vary - adjust based on your schema

-- Update enriched_sessions_v1
MERGE INTO adp_prod.processed.enriched_sessions_v1 AS target
USING gaia_ref AS source
ON target.gaia.channel.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.gaia = struct(
    target.gaia.channel.channel_id AS channel_id,
    source.channel_name AS channel_name
  );

-- Update enriched_sessions_v2
MERGE INTO adp_prod.processed.enriched_sessions_v2 AS target
USING gaia_ref AS source
ON target.gaia.channel.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.gaia = struct(
    target.gaia.channel.channel_id AS channel_id,
    source.channel_name AS channel_name
  );

-- Update enriched_sessions_v3
MERGE INTO adp_prod.processed.enriched_sessions_v3 AS target
USING gaia_ref AS source
ON target.gaia.channel.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.gaia = struct(
    target.gaia.channel.channel_id AS channel_id,
    source.channel_name AS channel_name
  );

-- Update enriched_sessions_v4
MERGE INTO adp_prod.processed.enriched_sessions_v4 AS target
USING gaia_ref AS source
ON target.gaia.channel.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.gaia = struct(
    target.gaia.channel.channel_id AS channel_id,
    source.channel_name AS channel_name
  );

-- Update enriched_sessions_v5
MERGE INTO adp_prod.processed.enriched_sessions_v5 AS target
USING gaia_ref AS source
ON target.gaia.channel.channel_id = source.channel_id
  AND ((target.year='2025' AND target.month IN ('09','10','11','12'))
    OR (target.year='2026' AND target.month IN ('01','02')))
WHEN MATCHED THEN
  UPDATE SET target.gaia = struct(
    target.gaia.channel.channel_id AS channel_id,
    source.channel_name AS channel_name
  );

-- Clean up temporary view
DROP VIEW IF EXISTS gaia_ref;
