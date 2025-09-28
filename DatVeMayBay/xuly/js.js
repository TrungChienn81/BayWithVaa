document.addEventListener('DOMContentLoaded', function() {
    var filterBtn = document.getElementById('filterBtn');
    filterBtn.addEventListener('click', getTotalTourTickets);
});

function getTotalTourTickets() {
    var monthYear = document.getElementById('month_year').value;
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                document.getElementById('totalTourTicketsInfo').textContent = "Thông số 2: " + xhr.responseText;
            } else {
                console.error('Request failed: ' + xhr.status);
            }
        }
    };
    xhr.open('POST', 'C:\xampp\htdocs\BayWithVaa\DatVeMayBay\xulyget_total_tour_tickets.php');
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.send('month_year=' + monthYear);
}