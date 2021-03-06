CREATE TABLE stored_orders (
    order_id text,
    order_info JSONB
);

INSERT INTO stored_orders (order_id, order_info) 
    VALUES ('orderID123456', 
    '{
        "order_date": "2022-01-01T02:30:50Z", 
        "customer_id": "id001",
        "order_status": "fillIn",
        "items": [
            {
                "item_id": "itemID456", 
                "qty": 1, 
                "description": "Pencil", 
                "unit_price": 2.50
            },
            {
                "item_id": "itemID789", 
                "qty": 1, 
                "description": "Paper", 
                "unit_price": 4.00
            }
        ],            
        "payment":
        {
            "merchant_id": "merchantID1234", 
            "payment_amount": 6.50, 
            "transaction_id": "transactionID7845764", 
            "transaction_date": "01-1-2022", 
            "order_id": "orderID123456", 
            "payment_type": "creditcard"
        },
        "inventory":
        {
            "transaction_id": "transactionID7845764", 
            "transaction_date": "01-1-2022", 
            "order_id": "orderID123456", 
            "items": [
                "Pencil", 
                "Paper"
            ], 
            "transaction_type": "online"
        }
    }'
        );