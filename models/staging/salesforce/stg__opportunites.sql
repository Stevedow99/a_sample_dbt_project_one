
with source as (

    select * from {{ source('salesforce_data', 'opportunites') }}

),

renamed as (

    select
        batchid,
        companextid as companyextid,
        amount,
        project_name,
        oppurtunity_name,
        stage,
        close_date,
        createddate,
        modifieddate,
        rand_number,
        oppurtunityid,
        datecreated,
        row_number() over (partition by 1 order by 1) as unqiue_key

    from source

)

select * from renamed
