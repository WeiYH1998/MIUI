//多语言
       var floatfloat = {
                'ko': {
                    county: "한국어",
                    classname: "kr",
                    phoneCode: "82"
                },
                'ja': {
                    county: "日本",
                    classname: "jp",
                    phoneCode: "81"
                },
                'en-us': {
                    county: "United States",
                    classname: "us",
                    phoneCode: "1"
                },
                'zh-tw': {
                    county: "中国",
                    classname: "cn",
                    phoneCode: "86"
                },
                'zh-cn': {
                    county: "中国",
                    classname: "cn",
                    phoneCode: "86"
                },
                'vi': {
                    county: "Vietnam (Việt Nam)",
                    classname: "vn",
                    phoneCode: "84"
                }
            }


var languagedata = {
	'en-us':{
		telplaceholder:"Enter your phone number",
		nextbtn:"Next",
		sendtip:"The verification code has been sent to",
		timetxt:"Click here to send again (#time#”)",
		codeplaceholder:"Enter Verification Code",
		loginbtn:"Login",
		slider:{
			textMsg: "Please slide to verify", // 提示文字
			successMsg: "success", // 验证成功提示文字
		},
		e_password:'Input password',
		pwd_input:"Enter your password",
		loign_word:"Login",
		forget_pwd:"Forget Password",
		set_password:"Set Password",
		new_password:"Eenter you new password",
		confirm_password:"Confirm password",
		set_password:"Setting",
		password_tipe:"Password has been reset",
		close_tip:"ok",
		errortel:"Please enter the correct mobile phone number.",
		sys_problem:"System error",
		failure:"Failure",
		lack_param:"Field deletion",
		expired:"Expired",
		invalid:"Verification code inconsistency",
		pwdinvalid:"Password error",
		smsfrequently:"Short message requests are too frequent",
		country_search:"Search country / area code"
	},
	'zh-tw':{		
		telplaceholder:"請輸入手機號碼",
		nextbtn:"下一步",
		sendtip:"驗證碼已經發送",
		timetxt:"點擊重新發送 (#time#”)",
		codeplaceholder:"輸入驗證碼",
		loginbtn:"登陸",
		slider:{
//			textMsg: "Please slide to verify", // 提示文字
			textMsg: "請滑動來驗證", // 提示文字
			successMsg: "驗證成功", // 验证成功提示文字
		},
		e_password:'輸入密碼',
		pwd_input:"請輸入你的密碼",
		loign_word:"登陸",
		forget_pwd:"忘記密碼",
		set_password:"設置密碼",
		new_password:"輸入你的密碼",
		confirm_password:"確認密碼",
		password_tip:"密碼設置成功",
		close_tip:"確定",
		errortel:"請輸入正確的手機號碼",
		sys_problem:"系統錯誤",
		failure:"失敗",
		lack_param:"字段缺失",
		expired:"已過期",
		invalid:"驗證碼錯誤",
		pwdinvalid:"密碼錯誤",
		smsfrequently:"短信請求過於頻繁",
		country_search:"搜索国家/区号"
	},
	'ja':{		
		telplaceholder:"携帯番号を入力してください",
		nextbtn:"次のステップ",
		sendtip:"検証コードは既に送信されています",
		timetxt:"再送信をクリック (#time#”)",
		codeplaceholder:"入力チェックコード",
		loginbtn:"上陸",
		slider:{
//			textMsg: "Please slide to verify", // 提示文字
			textMsg: "スライドして検証してください", // 提示文字
			successMsg: "検証成功", // 验证成功提示文字
		},
		e_password:'パスワードを入力する',
		pwd_input:"あなたのパスワードを入力してください",
		loign_word:"上陸",
		forget_pwd:"パスワードを忘れる",
		set_password:"パスワードを設定する",
		new_password:"新しいパスワードを設定する",
		confirm_password:"パスワードを確認する",
		password_tip:"パスワードの設定に成功",
		close_tip:"確定",
		errortel:"正しい携帯番号を入力してください",
		sys_problem:"システムエラー",
		failure:"失敗",
		lack_param:"フィールドが欠落する",
		expired:"期限が切れた",
		invalid:"検証コードの誤り",
		pwdinvalid:"パスワードエラー",
		smsfrequently:"短信請求過於頻繁",
		country_search:"国を検索する"
	},
	'ko':{		
		telplaceholder:"핸드폰 번호 입력해주세요.",
		nextbtn:"다음 걸음",
		sendtip:"검증 사이즈는 이미 발송되었습니다.",
		timetxt:"다시 보내기 (#time#”)",
		codeplaceholder:"인증 코드 입력",
		loginbtn:"상륙하다",
		slider:{
//			textMsg: "Please slide to verify", // 提示文字
			textMsg: "미끄러져 확인하십시오", // 提示文字
			successMsg: "인증 성공", // 验证成功提示文字
		},
		e_password:'암호를 입력하다',
		pwd_input:"당신의 비밀번호를 입력하십시오",
		loign_word:"상륙하다",
		forget_pwd:"비밀번호를 잊어버리다.",
		set_password:"비밀번호 설정",
		new_password:"새 암호를 설정합니다.",
		confirm_password:"비밀번호 확인",
		set_password:"비밀번호 설정",
		password_tip:"비밀번호 설정 성공",
		close_tip:"확정하다",
		errortel:"정확한 핸드폰 번호를 입력하십시오.",
		sys_problem:"시스템 오류",
		failure:"실패하다",
		lack_param:"필드 결함",
		expired:"기한이 되다",
		invalid:"검증 오류 오류",
		pwdinvalid:"암호가 일치하지 않는다",
		smsfrequently:"문자 요청이 잦아졌어요.",
		country_search:"검색 국가"	
	},
}


function getlanguage(){
	var language;
	var result = "";
	var l_language = localStorage.getItem("language");
	if(!l_language || l_language == ''){
		if (navigator.language) {
			language = navigator.language;
		}else {
			language = navigator.browserLanguage;
		}
		if(language.indexOf("zh-") >= 0){
		    //中文
		    result = "zh-tw";
		}else if(language.indexOf("en-") >= 0){
		    //英文
		    result = "en-us";
		}else if(language.indexOf("ja-") >= 0){
		    //日语
		    result = "ja";
		}else{
		    result = "en-us";
		}
	}else{
		result = l_language;
	}
	return result;
}




var main = angular.module("myApp", ['ngSanitize']);
main.config(['$locationProvider','$httpProvider', function ($locationProvider,$httpProvider) {
    $locationProvider.html5Mode(true);
    $httpProvider.defaults.withCredentials = true;
}]);

main.controller("detail", function($scope, $http, $interval, $timeout, $window) {
	$scope.language = getlanguage();
	$scope.languagedata = languagedata[$scope.language];
	$scope.languageflag = floatfloat[$scope.language];
	$scope.floatfloat = floatfloat[$scope.language];

	$scope.showcountry = false;
	$scope.isShowSelect = false;
	$scope.showcountryfn = function($event) {
		var ele_datalist = document.getElementById("country_list");
		ele_datalist.style.display = "block";
		var element = $window.document.getElementById('flag');
		element.focus();
		$scope.showcountry = !$scope.showcountry;
		$scope.isShowSelect = !$scope.isShowSelect;
		$event.stopPropagation();
	};
	$scope.showList = function($event) {
		$event.stopPropagation();
	}
	$scope.selcountry = function(county, classname, phoneCo, $event) {
		var ele_val = document.getElementById("country_name");
		ele_val.value = county;
		var ele_class = document.getElementById("flag_iti");
		ele_class.setAttribute("class", "iti-flag " + classname + "");
		country_code = phoneCo;
		$scope.showcountry = false;
		$scope.isShowSelect = false;
		$event.stopPropagation();
	};

	//选择国家

	//调取全球区号的json文件
	var languagetype = $scope.language;
	var data = ''
	function getphone() {
		var url = 'countryJson.json'
		$http.get(url).then(function(v) {
			console.log(v);
			console.log(languagetype)
			if(languagetype == 'zh-tw') {
				data = $scope.phonelist = v.data.cn;
				$scope.phoneCo = '+86'
			} else if(languagetype == 'en-us') {
				data = $scope.phonelist = v.data.en;
				$scope.phoneCo = '+1'
			} else if(languagetype == 'ja') {
				data = $scope.phonelist = v.data.ja;
				$scope.phoneCo = '+81'
			} else if(languagetype == 'ko') {
				data = $scope.phonelist = v.data.ko;
				$scope.phoneCo = '+82'
			} else if(languagetype == 'vi') {
				data = $scope.phonelist = v.data.vi;
				$scope.phoneCo = '+84'
			}
		}, function(v) {

		});
	}
	getphone();
	$window.document.onclick = function() {
		$scope.showcountry = false;
		$scope.isShowSelect = false;
		var ele_key = document.getElementById("country_name");
		if(ele_key.value == '') {
			var ele_class = document.getElementById("flag_iti");
			ele_class.setAttribute("class", "iti-flag " + $scope.floatfloat.classname + "");
			ele_key.value = $scope.floatfloat.county;
		}
		$scope.$apply();
	}
	var ele_key = document.getElementById("flag");
	ele_key.onkeyup = function(e) {
		$scope.showcountry = true;
		var val = this.value;
		//获取输入框里匹配的数据
		var srdata = [];
		for(var i = 0; i < data.length; i++) {
			if(val.trim().length > 0 && data[i].county.indexOf(val) > -1 || val.trim().length > 0 && data[i].phoneCo.indexOf(val) > -1) {
				var ele_datalist = document.getElementById("country_list");
				ele_datalist.style.display = "block";
				$scope.showcountry = true;
				srdata.push(data[i]);
			}
		}
		//获取到的数据准备追加显示, 前期要做的事情: 清空数据,然后显示数据列表,如果获取到的数据为空,则不显示
		var ele_datalist = document.getElementById("country_list");
		ele_datalist.style.display = "block";
		var ele_ullist = document.getElementById("country_ul");
		ele_ullist.style.display = "block";
		ele_ullist.innerHTML = "";
		if(srdata.length == 0) {
			ele_datalist.style.display = "block";
			var htm = ""
			for(var i = 0; i < data.length; i++) {
				htm += '<li class="country preferred"  data-code="' + data[i].phoneCo + '">' +
					'<div class="flag-box">' +
					'<div class="iti-flag ' + data[i].classname + '"></div>' +
					'</div>' +
					'<span class="country-name">' + data[i].county + '</span>' +
					'<span class="dial-code">' + data[i].phoneCo + '</span>'
			}
			ele_ullist.innerHTML = htm;
			var list = document.getElementById("country_ul").getElementsByTagName("li");
			var inputval = document.getElementById("country_name");
			var flag_iti = document.getElementById("flag_iti");
			for(var i = 0; i < list.length; i++) {
				list[i].index = i;
				list[i].onclick = function() {
					$scope.isShowSelect = false;
					c_code = angular.element(this).attr('data-code');
					country_code = c_code.split('+')[1];
					inputval.value = this.children[1].innerHTML
					flag_iti.className = this.children[0].children[0].className;
					ele_datalist.style.display = "none";
				}
			}
		}
		//将搜索到的数据追加到显示数据列表, 然后每一行加入点击事件, 点击后将数据放入搜索框内, 数据列表隐藏
		var self = document.getElementById("country_name");
		for(var i = 0; i < srdata.length; i++) {
			$scope.showcountry = true;
			var ele_li = document.createElement("li");
			var ele_div = document.createElement("div");
			var ele_flag = document.createElement("div");
			var ele_span = document.createElement("span");
			var ele_span1 = document.createElement("span");
			ele_li.setAttribute("class", "country");
			ele_li.setAttribute("class", "preferred");
			ele_li.setAttribute("class", "country");
			ele_div.setAttribute("class", "flag-box");
			ele_flag.setAttribute("class", "iti-flag  " + srdata[i].classname + "");
			ele_span.setAttribute("class", "country-name")
			ele_span1.setAttribute("class", "dial-code");
			ele_span.textContent = srdata[i].county;
			ele_span1.textContent = srdata[i].phoneCo;
			ele_li.onclick = function() {
				$scope.isShowSelect = false;
				self.value = this.getElementsByClassName('country-name')[0].innerHTML;
				var ele_class = document.getElementById("flag_iti");
				ele_class.setAttribute("class", this.children[0].children[0].className);
				ele_datalist.style.display = "none";
			}
			ele_li.appendChild(ele_div);
			ele_li.appendChild(ele_span);
			ele_li.appendChild(ele_span1);
			ele_div.appendChild(ele_flag);
			ele_ullist.appendChild(ele_li);
		}

	}

});