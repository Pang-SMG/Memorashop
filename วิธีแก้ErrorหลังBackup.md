**เข้า docker >> เลือก container prestashop กด View files หา Path นี้**

/var/www/html/src/Adapter/Product/QueryHandler/GetProductForEditingHandler.php

**เมื่อเข้าถึงไฟล์นี้แล้ว กด Edit file แล้วนำโค้ดด้านล่างไปวางทับฟังก์ชัน getDetails บรรทัดที่ 300กว่าๆเกือบ400**

private function getDetails(Product $product): ProductDetails
{
    // เพิ่มการตรวจสอบว่า upc ไม่เป็นค่า null
    $upc = $product->upc ?? ''; // หาก upc เป็น null ให้กำหนดค่าเป็น string ว่าง

    // เพิ่มการตรวจสอบว่า ean13 ไม่เป็นค่า null
    $ean13 = $product->ean13 ?? ''; // หาก ean13 เป็น null ให้กำหนดค่าเป็น string ว่าง

    // เพิ่มการตรวจสอบว่า mpn ไม่เป็นค่า null
    $mpn = $product->mpn ?? ''; // หาก mpn เป็น null ให้กำหนดค่าเป็น string ว่าง

    // เพิ่มการตรวจสอบว่า reference ไม่เป็นค่า null
    $reference = $product->reference ?? ''; // หาก reference เป็น null ให้กำหนดค่าเป็น string ว่าง

    // เพิ่มการตรวจสอบว่า isbn ไม่เป็นค่า null
    $isbn = $product->isbn ?? ''; // หาก isbn เป็น null ให้กำหนดค่าเป็น string ว่าง

    return new ProductDetails(
        $isbn,
        $upc,
        $ean13,
        $mpn,
        $reference
    );
}
