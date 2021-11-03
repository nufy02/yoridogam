
var pName=""; 
$("button[name=mapBtn]").click(function () {
	pName=$(this).val();
	$("#map").empty();
	map();
})

function map(){
var mapContainer = document.getElementById('map'), 
    mapOption = {
        center: new kakao.maps.LatLng(37.49880895832632, 127.03189979811991), // geo 초기값
        level: 3 // 지도의 확대 레벨
    };  

var map = new kakao.maps.Map(mapContainer, mapOption);  // kakao api 지도생성
var geocoder = new kakao.maps.services.Geocoder(); // kakao api lib service 주소->좌표 변환

geocoder.addressSearch(pName, function(result, status) { // 주소 입력
     if (status === kakao.maps.services.Status.OK) { // 주소가 성공적으로 검색되면
        var coords = new kakao.maps.LatLng(result[0].y, result[0].x); // 위도 경도 값을 얻어 변수에 넣음(array시 유사배열로 들어감..)

        var marker = new kakao.maps.Marker({ // 마킹
            map: map,
            position: coords // 마킹 할 위치
        });
        
		var mapTypeControl = new kakao.maps.MapTypeControl();
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);


        var infowindow = new kakao.maps.InfoWindow({ // 해당 마커 상단에 띄워질 info 추후 강의명으로 뿌리자
            content: '<div style="width:150px;text-align:center;padding:6px 0;">강의 장소</div>'
        });
        infowindow.open(map, marker);

        map.setCenter(coords); // focus
    } 
})
}

$(document).ready(function(){ // dom tree 생성이후  초기 출력
var mapContainer = document.getElementById('map'), 
    mapOption = {
        center: new kakao.maps.LatLng(37.49880895832632, 127.03189979811991), //아이티윌 
        level: 3 
    };  

var map = new kakao.maps.Map(mapContainer, mapOption); 

var mapTypeControl = new kakao.maps.MapTypeControl();
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

})