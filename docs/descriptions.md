<!-- You may use Markdown formatting here -->

{% docs customer_id %}
Unique identifier for customer
{% enddocs %}

{% docs order_id %}
Unique identifier for order.
Orders may have the following priorities:
- 'URGENT'
- 'HIGH'
- 'MEDIUM'
- 'NOT SPECIFIED'
- 'LOW'
{% enddocs %}

{% docs lineitem_id %}
Unique identifier for line item
{% enddocs %}

{% docs part_id %}

Unique identifier for a product in the Snowflake sample dataset. Used to join product information with order line items.

{% enddocs %}