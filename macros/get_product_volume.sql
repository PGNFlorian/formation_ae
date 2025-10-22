 {% macro get_product_volume(length, height, width) %}
    {{ length }} * {{ height }} * {{ width }}
{% endmacro %}