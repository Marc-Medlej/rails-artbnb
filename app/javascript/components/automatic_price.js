// $('.calculate-total input').on('keyup', calculateBookingPrice);

const calculateBookingPrice = () => {
    window.addEventListener('click', () => {
    var start_year=document.getElementById("booking_time_start_1i").value;
    var start_month=document.getElementById("booking_time_start_2i").value;
    var start_day=document.getElementById("booking_time_start_3i").value;
    var start_date=start_month.concat(" ",start_day,", ",start_year);
    var start = new Date(start_date);
    
    var end_year=document.getElementById("booking_time_end_1i").value;
    var end_month=document.getElementById("booking_time_end_2i").value;
    var end_day=document.getElementById("booking_time_end_3i").value;
    var end_date=end_month.concat(" ",end_day,", ",end_year)
    var end = new Date(end_date);

    var daily_price=document.getElementById("daily-price").innerHTML;
    var full_price = daily_price * (end - start) / 3600 / 24 / 1000;
    var price_output=document.getElementById("full-price");
        document.getElementById("full-price").innerHTML=full_price;
    })
}

export { calculateBookingPrice };