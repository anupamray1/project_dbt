{% macro testthis() %}
    {%- set current_model_full_name = '{{ this }}'.split('.') -%}
    {% if execute %}
        {%- set current_table_name =current_model_full_name[-1] -%}
        insert into ABC.Public.TestThis (ColName)
        Select '{{current_table_name}}'
    {% endif %}
{% endmacro %}
