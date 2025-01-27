<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KMR Turf Booking</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <header>
            <a href="#" class="back-btn">← Back</a>
            <h1>KMR Turf - HQ</h1>
            <p>To book multiple sessions, please come back to this page after adding your desired slot to the cart.</p>
        </header>
        
        <main>
            <section class="calendar-section">
                <h2>Select a Date and Time</h2>
                <div class="calendar-container">
                    <div class="calendar">
                        <div class="month">
                            <a href="#">&lt;</a>
                            <span>January 2025</span>
                            <a href="#">&gt;</a>
                        </div>
                        <div class="days">
                            <span>Sun</span><span>Mon</span><span>Tue</span><span>Wed</span><span>Thu</span><span>Fri</span><span>Sat</span>
                            <button class="inactive">29</button>
                            <button class="inactive">30</button>
                            <button>24</button>
                            <!-- Add buttons for remaining days -->
                        </div>
                    </div>
                    <div class="time-slots">
                        <button>9:00 am</button>
                        <button>10:00 am</button>
                        <button>11:00 am</button>
                        <button>12:00 pm</button>
                        <button>1:00 pm</button>
                        <button>2:00 pm</button>
                        <button>3:00 pm</button>
                        <button>4:00 pm</button>
                        <button>5:00 pm</button>
                        <button>6:00 pm</button>
                    </div>
                </div>
            </section>
            
            <aside class="service-details">
                <h3>Service Details</h3>
                <p><strong>KMR Turf - HQ</strong></p>
                <p>24 January 2025 at 9:00 am</p>
                <p>Barsingsar - Bikaner Road<br>KMR Turf - Barsingsar</p>
                <p>1 hr</p>
                <p><strong>₹1,100</strong></p>
                <button class="next-btn">Next</button>
            </aside>
        </main>
    </div>
</body>
</html>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
  
    color: #333;
    line-height: 1.5;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

header {
    text-align: center;
    margin-bottom: 20px;
}

.back-btn {
    display: inline-block;
    margin-bottom: 10px;
    color: #333;
    text-decoration: none;
}

h1 {
    font-size: 24px;
    font-weight: bold;
}

p {
    margin-top: 5px;
    font-size: 14px;
    color: #666;
}

main {
    display: flex;
    gap: 20px;
}

.calendar-section {
    flex: 2;
}

.calendar-container {
    display: flex;
    flex-direction: column;
    gap: 20px;
}

.calendar {
    border: 1px solid #ccc;
    padding: 10px;
}

.month {
    display: flex;
    justify-content: space-between;
    font-weight: bold;
}

.days {
    display: grid;
    grid-template-columns: repeat(7, 1fr);
    gap: 5px;
    margin-top: 10px;
}

.days button {
    padding: 10px;
    border: none;
    background: #f8f8f8;
    cursor: pointer;
}

.days .inactive {
    background: #eaeaea;
    cursor: not-allowed;
}

.days button:hover:not(.inactive) {
    background: #d3f9d8;
}

.time-slots {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 10px;
}

.time-slots button {
    padding: 10px;
    border: 1px solid #ccc;
    background: #fff;
    cursor: pointer;
}

.time-slots button:hover {
    background: #f0f0f0;
}

.service-details {
    flex: 1;
    border: 1px solid #ccc;
    padding: 15px;
    background: #f9f9f9;
}

.service-details h3 {
    margin-bottom: 10px;
}

.service-details p {
    margin: 5px 0;
}

.next-btn {
    display: block;
    width: 100%;
    padding: 10px;
    background: #28a745;
    color: #fff;
    border: none;
    cursor: pointer;
    margin-top: 10px;
    text-align: center;
    font-size: 16px;
}

.next-btn:hover {
    background: #218838;
}
</style>