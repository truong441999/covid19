$().ready(function() {
	$("#demoForm").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"password": {
				required: true,
				minlength: 8
            },
            "Phone": {
				required: true,
				minlength: 8,
				number :true
            },
            "name": {
				required: true,
				minlength: 2
			},
			
		"cmnd": {
			required: true,
			minlength: 8,
			number :true
		},
				
		"camket": {
			required: true,
		},
		"ngaysinh": {
			required: true,
		
		},
			"re-password": {
				equalTo: "#password",
				minlength: 8
				
			}
		},
		messages: {
            "Phone": {
				required: "Bắt buộc nhập Số điện thoại " ,
				maxlength: "Hãy nhập tối đa 10 ký tự",
				number : "Bạn phải nhập số"
            },
            "name": {
				required: "Bắt buộc nhập Họ Tên",
				maxlength: "Hãy nhập tối đa 15 ký tự"
			},
			"password": {
				required: "Bắt buộc nhập password",
				minlength: "Hãy nhập ít nhất 8 ký tự"
			},
			"re-password": {
				equalTo: "Hai password phải giống nhau",
				minlength: "Hãy nhập ít nhất 8 ký tự"
			},
			"cmnd": {
				required: "Bắt buộc phải nhập chứng minh nhân dân",
				minlength: "Hãy nhập ít nhất 9 ký tự",
				number : "Bạn phải nhập số"
			},
			"camket": {
				required: "Bạn chưa chọn cam kết",
			},
			"ngaysinh": {
				required: "Bắt buộc phải nhập ngày sinh",
				
			}
		
		}
	});
});
function genderChanged(obj)
{
    var huyen = document.getElementById('xa');
    var value = obj.value;
    if (value === 'Cẩm Lệ'){
	   huyen.innerHTML = `<option value="Hòa An">` + "Hòa An" + "</option>"
	   huyen.innerHTML += `<option value="Hòa Phát">` + "Hòa Phát" + "</option>"
	   huyen.innerHTML += `<option value="Hòa Thọ Đông">` + "Hòa Thọ Đông" + "</option>"
	   huyen.innerHTML += `<option value="Hòa Thọ Tây">` + "Hòa Thọ Tây" + "</option>"
	   huyen.innerHTML += `<option value="Hòa Xuân">` + "Hòa Xuân" + "</option>"
    }
    else if (value === 'Hải Châu'){
		huyen.innerHTML = `<option value="Bình Hiên">` + "Bình Hiên" + "</option>"
		huyen.innerHTML += `<option value="Bình Thuận">` + "Bình Thuận" + "</option>"
		huyen.innerHTML += `<option value="Hải Châu I">` + "Hải Châu I" + "</option>"
		huyen.innerHTML += `<option value="Hải Châu II">` + "Hải Châu II" + "</option>"
		huyen.innerHTML += `<option value="Hòa Cường Bắc">` + "Hòa Cường Bắc" + "</option>"
		huyen.innerHTML += `<option value="Hòa Cường Nam">` + "Hòa Cường Nam" + "</option>"
		huyen.innerHTML += `<option value="Hòa Cường Đông">` + "Hòa Cường Đông" + "</option>"
		huyen.innerHTML += `<option value="Hòa Cường Tây">` + "Hòa Cường Tây" + "</option>"
		huyen.innerHTML += `<option value="Nam Dương">` + "Nam Dương" + "</option>"
		huyen.innerHTML += `<option value="Hòa Cường Bắc">` + "Phước Ninh" + "</option>"
		huyen.innerHTML += `<option value="Hòa Cường Bắc">` + "Thuận Phước" + "</option>"
    }
    else if (value === 'Hòa Vang'){
        huyen.innerHTML = `<option value="Hòa Bắc">` + "Hòa Bắc" + "</option>"
		huyen.innerHTML += `<option value="Hòa Châu">` + "Hòa Châu" + "</option>"
		huyen.innerHTML += `<option value="Hòa Khương">` + "Hòa Khương" + "</option>"
		huyen.innerHTML += `<option value="Hòa Liên">` + "Hòa Liên" + "</option>"
		huyen.innerHTML += `<option value="Hòa Nhơn">` + "Hòa Cường Bắc" + "</option>"
		huyen.innerHTML += `<option value="Hòa Ninh">` + "Hòa Ninh" + "</option>"
		huyen.innerHTML += `<option value="Hòa Phong">` + "Hòa Phong" + "</option>"
		huyen.innerHTML += `<option value="Hòa Phú">` + "Hòa Phú" + "</option>"
		huyen.innerHTML += `<option value="Hòa Phước">` + "Hòa Phước" + "</option>"
		huyen.innerHTML += `<option value="Hòa Sơn">` + "Hòa Sơn" + "</option>"
	}
	else if (value === 'Liên Chiểu'){
        huyen.innerHTML = `<option value="Hòa Hiệp Bắc">` + "Hòa Hiệp Bắc" + "</option>"
		huyen.innerHTML += `<option value="Hòa Hiệp Nam">` + "Hòa Hiệp Nam" + "</option>"
		huyen.innerHTML += `<option value="Hòa Khánh Bắc">` + "Hòa Khánh Bắc" + "</option>"
		huyen.innerHTML += `<option value="Hòa Khánh Nam">` + "Hòa Khánh Nam" + "</option>"
		huyen.innerHTML += `<option value="Hòa Minh">` + "Hòa Minh" + "</option>"
	}
	else if (value === 'Ngũ Hành Sơn'){
        huyen.innerHTML = `<option value="Hòa Hải">` + "Hòa Hải" + "</option>"
		huyen.innerHTML += `<option value="Hòa Quý">` + "Hòa Quý" + "</option>"
		huyen.innerHTML += `<option value="Hòa Quý">` + "Hòa Quý" + "</option>"
		huyen.innerHTML += `<option value="Mỹ An">` + "Mỹ An" + "</option>"
	}
	else if (value === 'Sơn Trà'){
        huyen.innerHTML = `<option value="An Hải Bắc">` + "An Hải Bắc" + "</option>"
		huyen.innerHTML += `<option value="An Hải Đông">` + "An Hải Đông" + "</option>"
		huyen.innerHTML += `<option value="An Hải Tây">` + "An Hải Tây" + "</option>"
		huyen.innerHTML += `<option value="Mân Thái">` + "Mân Thái" + "</option>"
		huyen.innerHTML += `<option value="Nại Hiên Đông">` + "Nại Hiên Đông" + "</option>"
		huyen.innerHTML += `<option value="Phước Mỹ">` + "Phước Mỹ" + "</option>"
		huyen.innerHTML += `<option value="Thọ Quang">` + "Thọ Quang" + "</option>"
	}
	else if (value === 'Thanh Khê'){
        huyen.innerHTML = `<option value="An Khê">` + "An Khê" + "</option>"
		huyen.innerHTML += `<option value="Chính Gián">` + "Chính Gián" + "</option>"
		huyen.innerHTML += `<option value="Hòa Khê">` + "Hòa Khê" + "</option>"
		huyen.innerHTML += `<option value="Tam Thuận">` + "Tam Thuận" + "</option>"
		huyen.innerHTML += `<option value="Tân Chính">` + "Tân Chính" + "</option>"
		huyen.innerHTML += `<option value="Thạc Gián">` + "Thạc Gián" + "</option>"
		huyen.innerHTML += `<option value="Thanh Khê Đông">` + "Thanh Khê Đông" + "</option>"
		huyen.innerHTML += `<option value="Thanh Khê Tây">` + "Thanh Khê Tây" + "</option>"
		huyen.innerHTML += `<option value="Vĩnh Trung">` + "Vĩnh Trung" + "</option>"
		huyen.innerHTML += `<option value="Xuân Hà">` + "Xuân Hà" + "</option>"
	}
}