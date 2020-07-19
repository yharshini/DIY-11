%dw 2.0
type currency = String {format: "#,###.00"}

fun formatAmount(amount:Number, region:String):Object =
/**
   * This method is used to return an object that contains the number formatted to the given region. 
   * Current regions are limited to the string "US" and "EU". Any other input will return an empty object
   * @param amount Amount to use for currency conversion
   * @param region Region used to format amount to given currency
   * @return Object Specifically a HashMap
   */
	if (region == "US")
		{amountUSFormatted: amount as Number as currency }
	else if (region == "EU")
		{amountEUFormatted: amount as Number as currency replace "," with "_" replace "." with "," replace "_" with "." } 
	else
	{}