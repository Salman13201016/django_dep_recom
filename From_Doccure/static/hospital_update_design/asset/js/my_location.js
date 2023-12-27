$(document).ready(function () {
    var itemsPerPage = 10;
    var currentPage = 1;


    function renderHospitals1(response) {
        $('.h_list_ul').empty()
        var startIndex = (currentPage - 1) * itemsPerPage;
        var endIndex = startIndex + itemsPerPage;
        response.nearby_hospitals.slice(startIndex, endIndex).forEach(function (hospital) {
            console.log(`Hospital ID: ${hospital.id}`);
            console.log(`Name: ${hospital.name}`);
            console.log(`Address: ${hospital.address}`);
            console.log(`Description: ${hospital.description}`);
            console.log(`Image: ${hospital.image}`);
            console.log(`Latitude: ${hospital.lat}`);
            console.log(`Longitude: ${hospital.long}`);
            console.log(`Distance: ${hospital.distance} km`);
            console.log("------");
            div_str = `<li class="h_list_single"><div class="h_single_content">
            <div class="h_photo_data">
                <div class="h_photo">
                    <img src="`+ hospital.image + `" alt="">
                </div>
                <div class="h_data">
                    <!-- Hospital Link -->
                    <h2><a class="h_title_blue" href="#">`+ hospital.hos_name + `</a></h2>
                    <div class="h_single_locate_div">
                        <p class="h_location_city">`+ hospital.address + `</p>
                        <!-- <p class="h_location_country">{{ hospital.zip_code }}, Bangladesh</p> -->
                    </div>
                    <div class="h_doctor_div">
                        <p class="h_doctors">
                            <img src="./asset/images/Icons/healthicons_doctor-male.png" alt="">
                            <!-- doctor count -->
                            <span class="h_doctor_count">Distance: </span>
                                <span class="h_doctor_count">`+ hospital.distance + ` KM</span>
                        </p>
                        
                    </div>
                </div>
            </div>
            <div class="h_single_rating">
                <button class="h_rating_btn">
                    <i class="fa-solid fa-star"></i>
                    <!-- rating -->
                    <span class="h_rating_count">5</span>
                </button>
            </div>

        </div>
        <div class="h_single_btn">
            <a class="btn_blue" href="`+ hospital.description + `" target="_blank">View Hospital</a>
        </div></li>`
            $('.h_list_ul').append(div_str)
        });

    }
    function renderHospitals2(response) {
        $('.h_list_ul').empty()
        var startIndex = (currentPage - 1) * itemsPerPage;
        var endIndex = startIndex + itemsPerPage;
        response.nearby_hospitals.nearby_hospitals.forEach(function (hospital) {
            console.log(`Hospital ID: ${hospital.id}`);
            console.log(`Name: ${hospital.name}`);
            console.log(`Address: ${hospital.address}`);
            console.log(`Description: ${hospital.description}`);
            console.log(`Image: ${hospital.image}`);
            console.log(`Latitude: ${hospital.lat}`);
            console.log(`Longitude: ${hospital.long}`);
            console.log(`Distance: ${hospital.distance} km`);
            console.log("------");
            div_str = `<li class="h_list_single"><div class="h_single_content">
            <div class="h_photo_data">
                <div class="h_photo">
                    <img src="`+ hospital.image + `" alt="">
                </div>
                <div class="h_data">
                    <!-- Hospital Link -->
                    <h2><a class="h_title_blue" href="#">`+ hospital.hos_name + `</a></h2>
                    <div class="h_single_locate_div">
                        <p class="h_location_city">`+ hospital.address + `</p>
                        <!-- <p class="h_location_country">{{ hospital.zip_code }}, Bangladesh</p> -->
                    </div>
                    <div class="h_doctor_div">
                        <p class="h_doctors">
                            <img src="./asset/images/Icons/healthicons_doctor-male.png" alt="">
                            <!-- doctor count 
                            <span class="h_doctor_count">Distance: </span>
                                <span class="h_doctor_count">`+ hospital.distance + ` KM</span>-->
                        </p>
                        
                    </div>
                </div>
            </div>
            <div class="h_single_rating">
                <button class="h_rating_btn">
                    <i class="fa-solid fa-star"></i>
                    <!-- rating -->
                    <span class="h_rating_count">5</span>
                </button>
            </div>

        </div>
        <div class="h_single_btn">
            <a class="btn_blue" href="`+ hospital.description + `" target="_blank">View Hospital</a>
        </div></li>`
            $('.h_list_ul').append(div_str)
        });

    }



    navigator.geolocation.getCurrentPosition(
        function (position) {
            const userLatitude = position.coords.latitude;
            const userLongitude = position.coords.longitude;
            console.log("asdasd", userLatitude, userLongitude)

            $.get('/hospital/index/', {
                latitude: userLatitude,
                longitude: userLongitude
            }, function (response) {
                console.log(response)
                $('.h_list_ul').empty()
                if (response.near_status == 1) {
                    renderHospitals1(response)
                    $('#pagination').twbsPagination({
                        totalPages: Math.ceil(response.nearby_hospitals.length / itemsPerPage),
                        visiblePages: 5,
                        startPage: currentPage,
                        prev: '<span>&#8249;</span>', // FontAwesome left arrow icon
                        next: '<span>&#8250;</span>', // FontAwesome right arrow icon
                        onPageClick: function (event, page) {
                            currentPage = page;
                            renderHospitals1(response);
                        }
                    });

                }
                else {
                    renderHospitals2(response)
                    $('#pagination').twbsPagination({
                        totalPages: Math.ceil(response.nearby_hospitals.length / itemsPerPage),
                        visiblePages: 5,
                        startPage: currentPage,
                        prev: '<span>&#8249;</span>', // FontAwesome left arrow icon
                        next: '<span>&#8250;</span>', // FontAwesome right arrow icon
                        onPageClick: function (event, page) {
                            currentPage = page;
                            renderHospitals1(response);
                        }
                    });
                }





            });
        },
        function (error) {
            if (error.code === 1) {
                console.error('User denied geolocation. Please enable location services.');
            } else {
                console.error('Error getting user location:', error.message);
            }
        },
        { enableHighAccuracy: true } // You can specify additional options
    );

    $('#getNearbyHospitals').click(function (event) {
        var currentUrl = window.location.href;
        var itemsPerPage = 1;
        var currentPage = 1;

        // Check if the current URL contains a certain substring
        if (currentUrl.indexOf('hospital/index/') !== -1) {
            // Redirect to a new URL


            event.preventDefault();

            navigator.geolocation.getCurrentPosition(
                function (position) {
                    const userLatitude = position.coords.latitude;
                    const userLongitude = position.coords.longitude;
                    console.log("asdasd", userLatitude, userLongitude)

                    $.get('/hospital/index/', {
                        latitude: userLatitude,
                        longitude: userLongitude
                    }, function (response) {
                        console.log(response)
                        $('.h_list_ul').empty()
                        if (response.near_status == 1) {
                            renderHospitals1(response)
                            $('#pagination').twbsPagination({
                                totalPages: Math.ceil(response.nearby_hospitals.length / itemsPerPage),
                                visiblePages: 5,
                                startPage: currentPage,
                                prev: '<span>&#8249;</span>', // FontAwesome left arrow icon
                                next: '<span>&#8250;</span>', // FontAwesome right arrow icon
                                onPageClick: function (event, page) {
                                    currentPage = page;
                                    renderHospitals1(response);
                                }
                            });
                        }
                        else {
                            renderHospitals2(response)
                            $('#pagination').twbsPagination({
                                totalPages: Math.ceil(response.nearby_hospitals.length / itemsPerPage),
                                visiblePages: 5,
                                startPage: currentPage,
                                prev: '<span>&#8249;</span>', // FontAwesome left arrow icon
                                next: '<span>&#8250;</span>', // FontAwesome right arrow icon
                                onPageClick: function (event, page) {
                                    currentPage = page;
                                    renderHospitals1(response);
                                }
                            });
                        }






                        // const hospitalList = $('#hospitalList');
                        // hospitalList.empty();

                        // if (response.hospitals && response.hospitals.length > 0) {
                        //     $.each(response.hospitals, function (index, hospital) {
                        //         hospitalList.append('<li>' + hospital.name + ' - Lat: ' + hospital.latitude + ', Long: ' + hospital.longitude + '</li>');
                        //     });
                        // } else {
                        //     hospitalList.append('<li>No nearby hospitals found</li>');
                        // }
                    });
                },
                function (error) {
                    if (error.code === 1) {
                        console.error('User denied geolocation. Please enable location services.');
                    } else {
                        console.error('Error getting user location:', error.message);
                    }
                },
                { enableHighAccuracy: true } // You can specify additional options
            );
        }
    });
    // function updateQuantityFilter() {
    //     itemsPerPage = parseInt($('#quantity-select').val(), 10);
    //     if (response.near_status == 1) {
    //         renderHospitals1(response);

    //         $('#pagination').twbsPagination({
    //             totalPages: Math.ceil(response.nearby_hospitals.length / itemsPerPage),
    //             visiblePages: 5,
    //             startPage: currentPage,
    //             prev: '<span>&#8249;</span>', // FontAwesome left arrow icon
    //             next: '<span>&#8250;</span>', // FontAwesome right arrow icon
    //             onPageClick: function (event, page) {
    //                 currentPage = page;
    //                 renderHospitals1(response);
    //             }
    //         });
    //     }
    //     else {
    //         renderHospitals2();
    //         updatePagination(Math.ceil(hospitals.length / itemsPerPage));
    //     }

    // }

    // $('#quantity-select').on('change', updateQuantityFilter);
});
