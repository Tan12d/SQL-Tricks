with recursiveStarPattern as (
  select 1 as level, '*' as pattern
  union all
  select level + 1, pattern || '*' as pattern
  from StarPattern
  where level < 5
  )
  select pattern from StarPattern;