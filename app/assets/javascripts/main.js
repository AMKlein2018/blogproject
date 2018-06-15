
// var wrapper = document.getElementsByClassName ('wrapper')[0]
// var date = new Date();
// var hours = date.getHours();
// var minutes = date.getMinutes();
// var seconds = date.getSeconds();
// var ampm = hours >= 12 ? 'pm' : 'am';
// var clock = document.getElementById('clock');
// clock.textContent = hours + ":" + minutes + ":" + seconds;

// function updateClock() {
// 	var date = new Date();
// 	var hours = date.getHours();
// 	var minutes = date.getMinutes();
// 	var seconds = date.getSeconds();
// 	var ampm = hours >= 12 ? 'pm' : 'am';
// 	clock.textContent = hours + ":" + minutes + ":" + seconds;
// }

// setInterval(updateClock, 1000);

// document.body.appendChild(wrapper)


var AM_or_PM = "AM";

            function startTime(){

                var today = new Date();
                var h = today.getHours();
                var m = today.getMinutes();
                var s = today.getSeconds();

                h = twelve_hour_time(h);
                m = checkTime(m);
                s = checkTime(s);



                document.getElementById('clock').innerHTML =
                    h + ":" + m + ":" + s +" "+AM_or_PM;
                var t = setTimeout(startTime, 1000);

            }

            function checkTime(i){

                if(i < 10){
                    i = "0" + i;// add zero in front of numbers < 10
                }
                return i;
            }

            // CONVERT TO 12 HOUR TIME. SET AM OR PM
            function twelve_hour_time(h){

                if(h > 12){
                    h = h - 12;
                    AM_or_PM = " PM";
                }
                return h;

            }

            startTime();





