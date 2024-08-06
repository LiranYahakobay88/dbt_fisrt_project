with agg as(
    select name,sum(price) as price   from AIRBNB_LIRAN.RAW.RAW_LISTINGS group by name
)
select * from agg