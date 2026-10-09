with source as (select * from {{ source('tpch', 'supplier') }})
select
    S_NAME      as supplier_name,
    S_ACCTBAL as account_balance,
    S_SUPPKEY as supplier_key,
    S_NATIONKEY as nation_key,
    S_ADDRESS as  supplier_address,
    S_PHONE as phone_number
from source
