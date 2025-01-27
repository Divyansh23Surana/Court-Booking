 <input type="button" id="time" name ="time" class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="9:00 AM" data-time="9:00 AM"></input>
                <input type="button" id="time" name ="time" class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="10:00 AM" data-time="10:00 AM"></input>
                <input type="button" id="time" name ="time" class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="11:00 AM" data-time="11:00 AM"></input>
                <input type="button" id="time" name ="time" class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="12:00 PM" data-time="12:00 PM"></input>
                <input type="button" id="time" name ="time"  class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="1:00 PM" data-time="1:00 PM"></input>
                <input type="button" id="time" name ="time"  class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="2:00 PM" data-time="2:00 PM"></input>
                <input type="button" id="time" name ="time"  class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="3:00 PM" data-time="3:00 PM"></input>
                <input type="button" id="time" name ="time"  class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="4:00 PM" data-time="4:00 PM"></input>
                <input type="button" id="time" name ="time"  class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="5:00 PM" data-time="5:00 PM"></input>
                <input type="button" id="time" name ="time"  class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="6:00 PM" data-time="6:00 PM"></input>
                <input type="button" id="time" name ="time"  class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="7:00 PM" data-time="7:00 PM"></input>
                <input type="button" id="time" name ="time"  class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="8:00 PM" data-time="8:00 PM"></input>
                <input type="button" id="time" name ="time"  class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="9:00 PM" data-time="9:00 PM"></input>
                <input type="button" id="time" name ="time"  class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="10:00 PM" data-time="10:00 PM"></input>
                <input type="button" id="time" name ="time"  class="btn btn-outline-secondary btn-sm rounded-0 slot-btn" value="11:00 PM" data-time="11:00 PM"></input>
                <?php
require_once('./config.php');
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT * from `booking_list` where id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>
<div class="container-fluid">
    <form action="" method="post" id="booking-form">
        <!-- Hidden Inputs -->
        <input type="hidden" name="id" value="<?= isset($id) ? $id : '' ?>">
        <input type="hidden" name="facility_id" value="<?= isset($_GET['fid']) ? $_GET['fid'] : (isset($facility_id) ? $facility_id : "") ?>">

        <!-- Include jQuery -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <!-- jQuery UI CSS -->
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
        <!-- jQuery UI JS -->
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>

        <!-- Date Selection -->
        <!-- Date Picker -->
<div class="form-group">
    <label for="date" class="control-label">Select Date</label>
    <input name="date" id="date" class="form-control form-control-sm rounded-0" placeholder="Enter The Date" required />
</div>

<!-- Time Slot Selection -->
<div class="form-group">
    <label class="control-label">Select Time Slot</label>
    <div class="time-slots">
        <!-- Time slot buttons will be dynamically generated -->
    </div>
</div>

<!-- Booking Details -->
<div class="form-group">
    <label class="control-label">Booking Details</label>
    <p id="booking-details">No time slot selected</p>
</div>

<script>
$(function () {
    // Predefined time slots
    const timeSlots = [
        "9:00 AM", "10:00 AM", "11:00 AM", "12:00 PM", "1:00 PM", "2:00 PM", "3:00 PM",
        "4:00 PM", "5:00 PM", "6:00 PM", "7:00 PM", "8:00 PM", "9:00 PM", "10:00 PM", "11:00 PM"
    ];

    // Store selected time slot
    let selectedSlot = null;

    // Generate and display time slots
    function generateTimeSlots(bookedSlots) {
        const container = $(".time-slots");
        container.empty(); // Clear existing buttons

        timeSlots.forEach(slot => {
            const button = $('<input>', {
                type: "button",
                class: "btn btn-outline-secondary btn-sm rounded-0 slot-btn",
                value: slot,
                "data-time": slot,
                click: function () { // Handle time slot selection
                    if (!$(this).prop('disabled')) {
                        // Check if the button is already selected
                        if (selectedSlot === slot) {
                            selectedSlot = null; // Deselect if already selected
                            $(this).removeClass("btn-success").addClass("btn-outline-secondary");
                            $("#booking-details").text("No time slot selected");
                        } else {
                            selectedSlot = slot; // Select the time slot
                            $(".slot-btn").removeClass("btn-success").addClass("btn-outline-secondary"); // Deselect all other slots
                            $(this).removeClass("btn-outline-secondary").addClass("btn-success");
                            $("#booking-details").text("Selected Time Slot: -" + slot);
                        }
                    }
                }
            });

            // Disable the button if the slot is booked
            if (bookedSlots.includes(slot)) {
                button.prop("disabled", true).addClass("btn-danger").removeClass("btn-outline-secondary");
            }

            container.append(button);
        });
    }

    // Fetch booked time slots for a specific date
    function fetchBookedSlots(date) {
        $.ajax({
            url: "fetch_booked_slots.php", // PHP file to fetch booked slots
            type: "POST",
            data: { date: date },
            dataType: "json",
            success: function (bookedSlots) {
                generateTimeSlots(bookedSlots);
            },
            error: function () {
                alert("Failed to fetch booked slots.");
            },
        });
    }

    // Initialize date picker
    $("#date").datepicker({
        dateFormat: "yy-mm-dd", // Format: YYYY-MM-DD
        minDate: 0,            // Prevent past dates
        onSelect: function (dateText) {
            fetchBookedSlots(dateText); // Fetch booked slots for the selected date
        },
    });

    // Set the default date to today
    const today = new Date();
    const formattedDate = today.toISOString().split('T')[0];
    $("#date").datepicker("setDate", formattedDate);
    fetchBookedSlots(formattedDate); // Fetch booked slots for today's date
});
</script>
        <!-- Booking Details -->
        <!-- <div class="form-group">
            <label class="control-label">Booking Details</label>
            <div id="booking-details">
                <p id="selected-time" class="text-muted">No time slot selected</p>
            </div>
        </div>
    </form>
</div> -->

<script>
    // JavaScript to handle time slot selection
    $(document).ready(function () {
    // Initialize variable for the selected time
    let selectedTime = "";

    // Handle time slot selection
    $('.slot-btn').on('click', function () {
        // Remove active class from all buttons
        $('.slot-btn').removeClass('btn-primary').addClass('btn-outline-secondary');
        // Add active class to the selected button
        $(this).removeClass('btn-outline-secondary').addClass('btn-primary');

        // Store the selected time
        selectedTime = $(this).data('time');

        // Update the booking details section
        $('#selected-time').text("Selected Time Slot: " + selectedTime);
    });

    // Handle form submission
   
});

</script>


<script>
      const slotButtons = document.querySelectorAll('.slot-btn');
    const selectedTime = document.getElementById('selected-time');

    slotButtons.forEach(button => {
        button.addEventListener('click', () => {
            // Highlight selected slot
            slotButtons.forEach(btn => btn.classList.remove('active'));
            button.classList.add('active');
            selectedTime.textContent = `Selected Time: ${button.dataset.time}`;
        });
    });
	$(document).ready(function () {
    // Initialize variables for date and selected time slot
    let selectedTime = "";

    // Handle time slot selection
    $('.slot-btn').on('click', function () {
        // Remove active class from all buttons
        $('.slot-btn').removeClass('btn-primary').addClass('btn-outline-secondary');
        // Add active class to the selected button
        $(this).removeClass('btn-outline-secondary').addClass('btn-primary');

        // Get the selected time slot
        selectedTime = $(this).data('time');
        selectedDate = $(this).data('date');

        // Update the booking details section
        $('#selected-time').text("Selected Time Slot: " + selectedTime);
    });

    // Handle form submission
    $('#booking-form').submit(function (e) {
        e.preventDefault(); // Prevent default form submission
        var _this = $(this);

        // Remove any existing error messages
        $('.err-msg').remove();

        // Show loader (if defined in your app)
        start_loader();

        // Collect form data
        var formData = new FormData(this);

        // Add the selected time slot to the form data
        formData.append("time", selectedTime);

        // Ensure a time slot is selected
        // if (!selectedTime ) {
        //     // var el = $('<div>')
        //     //     .addClass("alert alert-danger err-msg")
        //     //     .text("Please select a time slot.");
        //     // _this.prepend(el);
        //     // el.show('slow');
        //     // end_loader();
        //     // return false; // Stop submission if no time is selected
            
        // }else{
  // Set a timeout to redirect after 1 second
  setTimeout(function() {
    // Redirect to the booking_list page
    location.href = './?p=booking_list';
  }, 1000); // 1-second delay before redirection
        // }
        $.ajax({
            url: _base_url_ + "classes/Master.php?f=save_booking",
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            method: 'POST',
            type: 'POST',
            dataType: 'json',
            error: err => {
                console.log(err);
                alert_toast("An error occurred", 'error');
             
            }
        });
    });
});
