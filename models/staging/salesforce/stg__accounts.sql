
with source as (

    select * from {{ source('salesforce_data', 'accounts') }}

),

renamed as (

    select
        batchid,
        companyextid,
        company_name,
        city,
        state,
        datecreated,
        modifieddate,
        row_number() over (partition by 1 order by 1) as unqiue_key

    from source

)

select * from renamed
