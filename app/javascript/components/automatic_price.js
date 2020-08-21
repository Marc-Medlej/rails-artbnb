// $('.calculate-total input').on('keyup', calculateBookingPrice);

const calculateBookingPrice = () => {


    function calculate() {
    
        var start_date=document.getElementById("booking_time_start").value;
        var start = new Date(start_date);
        
        var end_date=document.getElementById("booking_time_end").value;
        var end = new Date(end_date);

        var daily_price=document.getElementById("daily-price").innerHTML;
        var full_price = Math.round(daily_price *(1 +  ((end - start) / 3600 / 24 / 1000)));
        document.getElementById("full-price").innerHTML="";
        document.getElementById("full-price").classList.add("spinner-border");
        setTimeout(function(){
            document.getElementById("full-price").classList.remove("spinner-border");
            document.getElementById("full-price").innerHTML=full_price;
        },3000)
    }

    const form = document.forms.new_booking

    form.booking_time_start.oninput = calculate;
    form.booking_time_end.oninput = calculate;
}

export { calculateBookingPrice };