jQuery(document).ready(function () {
    var store_name = window.location.href;
    var store_arr = store_name.split("/");
    store_name = store_arr[2];

    jQuery.ajax({
        url: "https://my.webcall.vn/client/bizweb_api/check_site",
        data: {
            site: store_name
        },
        dataType: 'jsonp'
    });
})