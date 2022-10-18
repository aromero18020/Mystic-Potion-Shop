-- DEBUG POTION PRICE & DESCRIPTION
debugPotionDescription = "Debug Potion - An expulsion type potion, great for evicting bugs."
debugPotionPrice = 404

-- LOOP POTION PRICE & DESCRIPTION
loopPotionDescription = "Loop Potion = A repitition type potion, effective for menial tasks."
loopPotionPrice = 222

-- BYTE POTION PRICE & DESCRIPTION
bytePotionDescription = "Byte Potion - A healing potion. Used to salve bites."
bytePotionPrice = 101

-- KINGDOM SALES TAX
salesTax = 0.07

-- TAX TOTAL ADDED
addedTax = 0

-- CUSTOMER TOTAL COST
customerTotal = 0

-- CUSTOMER PURCHASED ITEM DESCRIPTION
customerItemization = ""

-- ITEM QUANTITY TOTAL
customerQuantityTotal = 0

-- TOTAL DEBUG POTIONS PURCHASED:
debugPotionPurchasedQuantity = 0

-- TOTAL LOOP POTIONS PURCHASED:
loopPotionPurchasedQuantity = 0

-- TOTAL BYTE POTIONS PURCHASED:
bytePotionPurchasedQuantity = 0

-- DISCOUNT CODE
discountPercent = 25

-- CUSTOMER PURCHASES / DESCRIPTIONS/ AND SALES TAX
customerTotal = customerTotal + debugPotionPrice

debugPotionPurchasedQuantity = debugPotionPurchasedQuantity + 1

customerQuantityTotal = customerQuantityTotal + 1 

customerItemization = customerItemization .. debugPotionDescription

customerTotal = customerTotal + bytePotionPrice

bytePotionPurchasedQuantity = bytePotionPurchasedQuantity + 1

customerQuantityTotal = customerQuantityTotal + 1 

customerItemization = debugPotionPurchasedQuantity .. "x" .. " " ..customerItemization .. " " ..  "$" .. debugPotionPrice .. "\n" .. bytePotionPurchasedQuantity .. "x" .. " " .. bytePotionDescription .. " " .. "$" .. bytePotionPrice

addedTax = customerTotal * salesTax

customerTotal = customerTotal + addedTax

-- CUSTOMER RECEIPT
print("MYSTIC MOON POTION SHOP")
print("RECEIPT")
print("# of Items Sold: " .. customerQuantityTotal)
print("Customer Item(s):")
print(customerItemization)
print("Customer Sub-Total: " .. "$" .. customerTotal)
print("**25% DISCOUNT APPLIED**")
discountAmount = customerTotal * discountPercent 
-- print("Customer Total: " .. "$" .. )


