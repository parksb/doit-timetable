warning: LF will be replaced by CRLF in dist/src/edit.min.js.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in dist/src/index.min.js.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in dist/src/signup.min.js.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in dist/src/teamlist.min.js.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in dist/src/teamtable.min.js.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in package-lock.json.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in package.json.
The file will have its original line endings in your working directory.
[1mdiff --git a/dist/SignUp.html b/dist/SignUp.html[m
[1mindex 72e9ba0..b2f3df8 100644[m
[1m--- a/dist/SignUp.html[m
[1m+++ b/dist/SignUp.html[m
[36m@@ -11,39 +11,31 @@[m
             }[m
 [m
             #signup {[m
[31m-	            margin : 50px 25% 0 25%;[m
[32m+[m	[32m            margin : 50px 15% 0 15%;[m
 	            border : 20px solid blue;[m
[31m-                padding: 5px 5% 15% 5%;[m
[31m-            }[m
[31m-            .left {[m
[31m-                float : left;[m
[31m-            }[m
[31m-[m
[31m-            #signupname {[m
[31m-                padding: 0 20px 0 0;[m
[32m+[m	[32m            padding: 5px 5% 10px 5%;[m
             }[m
         </style>[m
     </head>[m
     <body>[m
         <header>[m
[31m-            <span>DoiT</span>   [m
[31m-            <a href = "login.html" align = "right" class = "link">로그인</a>[m
[32m+[m[32m            <p>DoiT</p>[m[41m   [m
[32m+[m[32m            <p id = login>로그인</p>[m
         </header>[m
         <div id = "signup">[m
[31m-            <h3 align = "">회원가입</h3>[m
[31m-            <div class = "left" id = "signupname">[m
[31m-                <span>이름</span><br>[m
[31m-                <span>ID</span><br>[m
[31m-                <span>비밀번호</span><br>[m
[31m-                <span>이메일</span>[m
[31m-            </div>[m
[31m-        	<form class = "left" action="" method = "POST"> <!--put where to send the form-data when a form is submitted in action-->[m
[31m-        		<input type="text" name = "name"></input><br>[m
[31m-        		<input type="text" id = "ID" name = "ID" ></input><span id = "id_if"> 조건 </span><br>[m
[31m-           		<input type="password" id = "password" name = "password"><span id = "pswd_if"> 조건 </span></input><br>[m
[31m-                <input type="text" name = "email"></input><br>[m
[31m-                <input type = "submit" value = "가입하기"></input>[m
[32m+[m[32m            <h3>회원가입</h3>[m
[32m+[m[41m        [m	[32m<form action="" method = "POST"> <!--put where to send the form-data when a form is submitted in action-->[m
[32m+[m[41m        [m		[32m<input type="text" name = "name" value = "이름"></input><br>[m
[32m+[m[41m        [m		[32m<input type="text" id = "ID" name = "ID" value = "아이디"></input><br>[m
[32m+[m[41m           [m		[32m<input type="text" id = "password" name = "password" value = "비밀번호"></input><br>[m
[32m+[m[32m                <input type="text" name = "email" value = "이메일"></input><br>[m
[32m+[m[32m                <input type = "submit" value = "가입하기"></input>[m[41m [m
         	</form>[m
[32m+[m[41m        [m	[32m<div id = "detail">[m
[32m+[m[32m                <br>[m
[32m+[m[32m                <p id = "id_if"> 조건 </p>[m
[32m+[m[32m                <p id = "pswd_if"> 조건 </p>[m
[32m+[m[32m            </div>[m
         </div>[m
         <script src = "src/signup.min.js"></script>[m
     </body>[m
[1mdiff --git a/dist/src/signup.min.js b/dist/src/signup.min.js[m
[1mindex b203077..591e026 100644[m
[1m--- a/dist/src/signup.min.js[m
[1m+++ b/dist/src/signup.min.js[m
[36m@@ -1 +1,86 @@[m
[31m-!function(e){var n={};function t(r){if(n[r])return n[r].exports;var o=n[r]={i:r,l:!1,exports:{}};return e[r].call(o.exports,o,o.exports,t),o.l=!0,o.exports}t.m=e,t.c=n,t.d=function(e,n,r){t.o(e,n)||Object.defineProperty(e,n,{configurable:!1,enumerable:!0,get:r})},t.r=function(e){Object.defineProperty(e,"__esModule",{value:!0})},t.n=function(e){var n=e&&e.__esModule?function(){return e.default}:function(){return e};return t.d(n,"a",n),n},t.o=function(e,n){return Object.prototype.hasOwnProperty.call(e,n)},t.p="",t(t.s=8)}({8:function(e,n,t){"use strict";$(document).ready();var r=document.getElementById("ID").value,o=document.getElementById("password").value;r.length<8?document.getElementById("id_if").innerHTML="최소 8글자":[].includes(r)&&(document.getElementById("id_if").innerHTML="사용중인 ID"),o.length<8&&(document.getElementById("pswd_if").innerHTML="최소 8글자")}});[m
\ No newline at end of file[m
[32m+[m[32m/******/ (function(modules) { // webpackBootstrap[m
[32m+[m[32m/******/ 	// The module cache[m
[32m+[m[32m/******/ 	var installedModules = {};[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 	// The require function[m
[32m+[m[32m/******/ 	function __webpack_require__(moduleId) {[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 		// Check if module is in cache[m
[32m+[m[32m/******/ 		if(installedModules[moduleId]) {[m
[32m+[m[32m/******/ 			return installedModules[moduleId].exports;[m
[32m+[m[32m/******/ 		}[m
[32m+[m[32m/******/ 		// Create a new module (and put it into the cache)[m
[32m+[m[32m/******/ 		var module = installedModules[moduleId] = {[m
[32m+[m[32m/******/ 			i: moduleId,[m
[32m+[m[32m/******/ 			l: false,[m
[32m+[m[32m/******/ 			exports: {}[m
[32m+[m[32m/******/ 		};[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 		// Execute the module function[m
[32m+[m[32m/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 		// Flag the module as loaded[m
[32m+[m[32m/******/ 		module.l = true;[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 		// Return the exports of the module[m
[32m+[m[32m/******/ 		return module.exports;[m
[32m+[m[32m/******/ 	}[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 	// expose the modules object (__webpack_modules__)[m
[32m+[m[32m/******/ 	__webpack_require__.m = modules;[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 	// expose the module cache[m
[32m+[m[32m/******/ 	__webpack_require__.c = installedModules;[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 	// define getter function for harmony exports[m
[32m+[m[32m/******/ 	__webpack_require__.d = function(exports, name, getter) {[m
[32m+[m[32m/******/ 		if(!__webpack_require__.o(exports, name)) {[m
[32m+[m[32m/******/ 			Object.defineProperty(exports, name, {[m
[32m+[m[32m/******/ 				configurable: false,[m
[32m+[m[32m/******/ 				enumerable: true,[m
[32m+[m[32m/******/ 				get: getter[m
[32m+[m[32m/******/ 			});[m
[32m+[m[32m/******/ 		}[m
[32m+[m[32m/******/ 	};[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 	// define __esModule on exports[m
[32m+[m[32m/******/ 	__webpack_require__.r = function(exports) {[m
[32m+[m[32m/******/ 		Object.defineProperty(exports, '__esModule', { value: true });[m
[32m+[m[32m/******/ 	};[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 	// getDefaultExport function for compatibility with non-harmony modules[m
[32m+[m[32m/******/ 	__webpack_require__.n = function(module) {[m
[32m+[m[32m/******/ 		var getter = module && module.__esModule ?[m
[32m+[m[32m/******/ 			function getDefault() { return module['default']; } :[m
[32m+[m[32m/******/ 			function getModuleExports() { return module; };[m
[32m+[m[32m/******/ 		__webpack_require__.d(getter, 'a', getter);[m
[32m+[m[32m/******/ 		return getter;[m
[32m+[m[32m/******/ 	};[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 	// Object.prototype.hasOwnProperty.call[m
[32m+[m[32m/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 	// __webpack_public_path__[m
[32m+[m[32m/******/ 	__webpack_require__.p = "";[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/[m
[32m+[m[32m/******/ 	// Load entry module and return exports[m
[32m+[m[32m/******/ 	return __webpack_require__(__webpack_require__.s = "./src/js/signup.js");[m
[32m+[m[32m/******/ })[m
[32m+[m[32m/************************************************************************/[m
[32m+[m[32m/******/ ({[m
[32m+[m
[32m+[m[32m/***/ "./src/js/signup.js":[m
[32m+[m[32m/*!**************************!*\[m
[32m+[m[32m  !*** ./src/js/signup.js ***![m
[32m+[m[32m  \**************************/[m
[32m+[m[32m/*! no static exports found */[m
[32m+[m[32m/***/ (function(module, exports, __webpack_require__) {[m
[32m+[m
[32m+[m[32m"use strict";[m
[32m+[m[32meval("\n\n$(document).ready();\nvar IDlist = [];\nvar ID = document.getElementById(\"ID\").value;\nvar password = document.getElementById(\"password\").value;\nif (ID.length < 8) {\n    //ID's length is too short\n    document.getElementById(\"id_if\").innerHTML = \"최소 8글자\";\n} else if (IDlist.includes(ID)) {\n    //ID is used by someone else\n    document.getElementById(\"id_if\").innerHTML = \"사용중인 ID\";\n}\nif (password.length < 8) {\n    //password's length is too short\n    document.getElementById(\"pswd_if\").innerHTML = \"최소 8글자\";\n}\n\n//# sourceURL=webpack:///./src/js/signup.js?");[m
[32m+[m
[32m+[m[32m/***/ })[m
[32m+[m
[32m+[m[32m/******/ });[m
\ No newline at end of file[m
[1mdiff --git a/dist/teamtable.html b/dist/teamtable.html[m
[1mindex aa7b9c9..cae72a8 100644[m
[1m--- a/dist/teamtable.html[m
[1m+++ b/dist/teamtable.html[m
[36m@@ -1,6 +1,15 @@[m
 <html>[m
[31m-<head>[m
[31m-</head>[m
[32m+[m[32m<style>[m
[32m+[m[32m    h3{[m
[32m+[m[32m        margin: 5% 30% 0px;[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m
[32m+[m[32m</style>[m
 <body>[m
[32m+[m[32m    <h3>Your Team's timetable</h3>[m
[32m+[m[41m    [m
[32m+[m[32m    <script>[m
[32m+[m[32m        </script>[m
 </body>[m
 </html>[m
\ No newline at end of file[m
[1mdiff --git a/package-lock.json b/package-lock.json[m
[1mindex 1f70df3..f21525d 100644[m
[1m--- a/package-lock.json[m
[1m+++ b/package-lock.json[m
[36m@@ -10,8 +10,8 @@[m
       "integrity": "sha512-bPHp6Ji8b41szTOcaP63VlnbbO5Ny6dwAATtY6JTjh5N2OLrb5Qk/Th5cRkRQhkWCt+EJsYrNB0MiL+Gpn6e3g==",[m
       "dev": true,[m
       "requires": {[m
[31m-        "call-me-maybe": "^1.0.1",[m
[31m-        "glob-to-regexp": "^0.3.0"[m
[32m+[m[32m        "call-me-maybe": "1.0.1",[m
[32m+[m[32m        "glob-to-regexp": "0.3.0"[m
       }[m
     },[m
     "@sindresorhus/is": {[m
[36m@@ -26,7 +26,7 @@[m
       "integrity": "sha1-63d99gEXI6OxTopywIBcjoZ0a9I=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "mime-types": "~2.1.18",[m
[32m+[m[32m        "mime-types": "2.1.18",[m
         "negotiator": "0.6.1"[m
       }[m
     },[m
[36m@@ -42,7 +42,7 @@[m
       "integrity": "sha512-zVWV8Z8lislJoOKKqdNMOB+s6+XV5WERty8MnKBeFgwA+19XJjJHs2RP5dzM57FftIs+jQnRToLiWazKr6sSWg==",[m
       "dev": true,[m
       "requires": {[m
[31m-        "acorn": "^5.0.0"[m
[32m+[m[32m        "acorn": "5.5.3"[m
       }[m
     },[m
     "acorn-jsx": {[m
[36m@@ -51,7 +51,7 @@[m
       "integrity": "sha1-r9+UiPsezvyDSPb7IvRk4ypYs2s=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "acorn": "^3.0.4"[m
[32m+[m[32m        "acorn": "3.3.0"[m
       },[m
       "dependencies": {[m
         "acorn": {[m
[36m@@ -68,10 +68,10 @@[m
       "integrity": "sha1-06/3jpJ3VJdx2vAWTP9ISCt1T8Y=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "fast-deep-equal": "^1.0.0",[m
[31m-        "fast-json-stable-stringify": "^2.0.0",[m
[31m-        "json-schema-traverse": "^0.3.0",[m
[31m-        "uri-js": "^3.0.2"[m
[32m+[m[32m        "fast-deep-equal": "1.1.0",[m
[32m+[m[32m        "fast-json-stable-stringify": "2.0.0",[m
[32m+[m[32m        "json-schema-traverse": "0.3.1",[m
[32m+[m[32m        "uri-js": "3.0.2"[m
       }[m
     },[m
     "ajv-keywords": {[m
[36m@@ -122,8 +122,8 @@[m
       "integrity": "sha512-5teOsQWABXHHBFP9y3skS5P3d/WfWXpv3FUpy+LorMrNYaT9pI4oLMQX7jzQ2KklNpGpWHzdCXTDT2Y3XGlZBw==",[m
       "dev": true,[m
       "requires": {[m
[31m-        "micromatch": "^3.1.4",[m
[31m-        "normalize-path": "^2.1.1"[m
[32m+[m[32m        "micromatch": "3.1.10",[m
[32m+[m[32m        "normalize-path": "2.1.1"[m
       }[m
     },[m
     "aproba": {[m
[36m@@ -138,7 +138,7 @@[m
       "integrity": "sha512-o5Roy6tNG4SL/FOkCAN6RzjiakZS25RLYFrcMttJqbdd8BWrnA+fGz57iN5Pb06pvBGvl5gQ0B48dJlslXvoTg==",[m
       "dev": true,[m
       "requires": {[m
[31m-        "sprintf-js": "~1.0.2"[m
[32m+[m[32m        "sprintf-js": "1.0.3"[m
       }[m
     },[m
     "arr-diff": {[m
[36m@@ -183,8 +183,8 @@[m
       "integrity": "sha1-GEtI9i2S10UrsxsyMWXH+L0CJm0=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "define-properties": "^1.1.2",[m
[31m-        "es-abstract": "^1.7.0"[m
[32m+[m[32m        "define-properties": "1.1.2",[m
[32m+[m[32m        "es-abstract": "1.11.0"[m
       }[m
     },[m
     "array-union": {[m
[36m@@ -193,7 +193,7 @@[m
       "integrity": "sha1-mjRBDk9OPaI96jdb5b5w8kd47Dk=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "array-uniq": "^1.0.1"[m
[32m+[m[32m        "array-uniq": "1.0.3"[m
       }[m
     },[m
     "array-uniq": {[m
[36m@@ -220,9 +220,9 @@[m
       "integrity": "sha512-p32cOF5q0Zqs9uBiONKYLm6BClCoBCM5O9JfeUSlnQLBTxYdTK+pW+nXflm8UkKd2UYlEbYz5qEi0JuZR9ckSw==",[m
       "dev": true,[m
       "requires": {[m
[31m-        "bn.js": "^4.0.0",[m
[31m-        "inherits": "^2.0.1",[m
[31m-        "minimalistic-assert": "^1.0.0"[m
[32m+[m[32m        "bn.js": "4.11.8",[m
[32m+[m[32m        "inherits": "2.0.3",[m
[32m+[m[32m        "minimalistic-assert": "1.0.1"[m
       }[m
     },[m
     "assert": {[m
[36m@@ -270,12 +270,12 @@[m
       "integrity": "sha1-Hb0cg1ZY41zj+ZhAmdsAWFx4IBQ=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "browserslist": "^1.7.6",[m
[31m-        "caniuse-db": "^1.0.30000634",[m
[31m-        "normalize-range": "^0.1.2",[m
[31m-        "num2fraction": "^1.2.2",[m
[31m-        "postcss": "^5.2.16",[m
[31m-        "postcss-value-parser": "^3.2.3"[m
[32m+[m[32m        "browserslist": "1.7.7",[m
[32m+[m[32m        "caniuse-db": "1.0.30000833",[m
[32m+[m[32m        "normalize-range": "0.1.2",[m
[32m+[m[32m        "num2fraction": "1.2.2",[m
[32m+[m[32m        "postcss": "5.2.18",[m
[32m+[m[32m        "postcss-value-parser": "3.3.0"[m
       },[m
       "dependencies": {[m
         "browserslist": {[m
[36m@@ -284,8 +284,8 @@[m
           "integrity": "sha1-C9dnBCWL6CmyOYu1Dkti0aFmsLk=",[m
           "dev": true,[m
           "requires": {[m
[31m-            "caniuse-db": "^1.0.30000639",[m
[31m-            "electron-to-chromium": "^1.2.7"[m
[32m+[m[32m            "caniuse-db": "1.0.30000833",[m
[32m+[m[32m            "electron-to-chromium": "1.3.45"[m
           }[m
         }[m
       }[m
[36m@@ -296,9 +296,9 @@[m
       "integrity": "sha1-Y/1D99weO7fONZR9uP42mj9Yx0s=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "chalk": "^1.1.3",[m
[31m-        "esutils": "^2.0.2",[m
[31m-        "js-tokens": "^3.0.2"[m
[32m+[m[32m        "chalk": "1.1.3",[m
[32m+[m[32m        "esutils": "2.0.2",[m
[32m+[m[32m        "js-tokens": "3.0.2"[m
       }[m
     },[m
     "babel-core": {[m
[36m@@ -307,25 +307,25 @@[m
       "integrity": "sha512-6jyFLuDmeidKmUEb3NM+/yawG0M2bDZ9Z1qbZP59cyHLz8kYGKYwpJP0UwUKKUiTRNvxfLesJnTedqczP7cTDA==",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-code-frame": "^6.26.0",[m
[31m-        "babel-generator": "^6.26.0",[m
[31m-        "babel-helpers": "^6.24.1",[m
[31m-        "babel-messages": "^6.23.0",[m
[31m-        "babel-register": "^6.26.0",[m
[31m-        "babel-runtime": "^6.26.0",[m
[31m-        "babel-template": "^6.26.0",[m
[31m-        "babel-traverse": "^6.26.0",[m
[31m-        "babel-types": "^6.26.0",[m
[31m-        "babylon": "^6.18.0",[m
[31m-        "convert-source-map": "^1.5.1",[m
[31m-        "debug": "^2.6.9",[m
[31m-        "json5": "^0.5.1",[m
[31m-        "lodash": "^4.17.4",[m
[31m-        "minimatch": "^3.0.4",[m
[31m-        "path-is-absolute": "^1.0.1",[m
[31m-        "private": "^0.1.8",[m
[31m-        "slash": "^1.0.0",[m
[31m-        "source-map": "^0.5.7"[m
[32m+[m[32m        "babel-code-frame": "6.26.0",[m
[32m+[m[32m        "babel-generator": "6.26.1",[m
[32m+[m[32m        "babel-helpers": "6.24.1",[m
[32m+[m[32m        "babel-messages": "6.23.0",[m
[32m+[m[32m        "babel-register": "6.26.0",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0",[m
[32m+[m[32m        "babel-traverse": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0",[m
[32m+[m[32m        "babylon": "6.18.0",[m
[32m+[m[32m        "convert-source-map": "1.5.1",[m
[32m+[m[32m        "debug": "2.6.9",[m
[32m+[m[32m        "json5": "0.5.1",[m
[32m+[m[32m        "lodash": "4.17.10",[m
[32m+[m[32m        "minimatch": "3.0.4",[m
[32m+[m[32m        "path-is-absolute": "1.0.1",[m
[32m+[m[32m        "private": "0.1.8",[m
[32m+[m[32m        "slash": "1.0.0",[m
[32m+[m[32m        "source-map": "0.5.7"[m
       }[m
     },[m
     "babel-generator": {[m
[36m@@ -334,14 +334,14 @@[m
       "integrity": "sha512-HyfwY6ApZj7BYTcJURpM5tznulaBvyio7/0d4zFOeMPUmfxkCjHocCuoLa2SAGzBI8AREcH3eP3758F672DppA==",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-messages": "^6.23.0",[m
[31m-        "babel-runtime": "^6.26.0",[m
[31m-        "babel-types": "^6.26.0",[m
[31m-        "detect-indent": "^4.0.0",[m
[31m-        "jsesc": "^1.3.0",[m
[31m-        "lodash": "^4.17.4",[m
[31m-        "source-map": "^0.5.7",[m
[31m-        "trim-right": "^1.0.1"[m
[32m+[m[32m        "babel-messages": "6.23.0",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0",[m
[32m+[m[32m        "detect-indent": "4.0.0",[m
[32m+[m[32m        "jsesc": "1.3.0",[m
[32m+[m[32m        "lodash": "4.17.10",[m
[32m+[m[32m        "source-map": "0.5.7",[m
[32m+[m[32m        "trim-right": "1.0.1"[m
       }[m
     },[m
     "babel-helper-bindify-decorators": {[m
[36m@@ -350,9 +350,9 @@[m
       "integrity": "sha1-FMGeXxQte0fxmlJDHlKxzLxAozA=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-traverse": "^6.24.1",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-traverse": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-helper-builder-binary-assignment-operator-visitor": {[m
[36m@@ -361,9 +361,9 @@[m
       "integrity": "sha1-zORReto1b0IgvK6KAsKzRvmlZmQ=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-explode-assignable-expression": "^6.24.1",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-helper-explode-assignable-expression": "6.24.1",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-helper-call-delegate": {[m
[36m@@ -372,10 +372,10 @@[m
       "integrity": "sha1-7Oaqzdx25Bw0YfiL/Fdb0Nqi340=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-hoist-variables": "^6.24.1",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-traverse": "^6.24.1",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-helper-hoist-variables": "6.24.1",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-traverse": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-helper-define-map": {[m
[36m@@ -384,10 +384,10 @@[m
       "integrity": "sha1-pfVtq0GiX5fstJjH66ypgZ+Vvl8=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-function-name": "^6.24.1",[m
[31m-        "babel-runtime": "^6.26.0",[m
[31m-        "babel-types": "^6.26.0",[m
[31m-        "lodash": "^4.17.4"[m
[32m+[m[32m        "babel-helper-function-name": "6.24.1",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0",[m
[32m+[m[32m        "lodash": "4.17.10"[m
       }[m
     },[m
     "babel-helper-explode-assignable-expression": {[m
[36m@@ -396,9 +396,9 @@[m
       "integrity": "sha1-8luCz33BBDPFX3BZLVdGQArCLKo=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-traverse": "^6.24.1",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-traverse": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-helper-explode-class": {[m
[36m@@ -407,10 +407,10 @@[m
       "integrity": "sha1-fcKjkQ3uAHBW4eMdZAztPVTqqes=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-bindify-decorators": "^6.24.1",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-traverse": "^6.24.1",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-helper-bindify-decorators": "6.24.1",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-traverse": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-helper-function-name": {[m
[36m@@ -419,11 +419,11 @@[m
       "integrity": "sha1-00dbjAPtmCQqJbSDUasYOZ01gKk=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-get-function-arity": "^6.24.1",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1",[m
[31m-        "babel-traverse": "^6.24.1",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-helper-get-function-arity": "6.24.1",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0",[m
[32m+[m[32m        "babel-traverse": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-helper-get-function-arity": {[m
[36m@@ -432,8 +432,8 @@[m
       "integrity": "sha1-j3eCqpNAfEHTqlCQj4mwMbG2hT0=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-helper-hoist-variables": {[m
[36m@@ -442,8 +442,8 @@[m
       "integrity": "sha1-HssnaJydJVE+rbyZFKc/VAi+enY=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-helper-optimise-call-expression": {[m
[36m@@ -452,8 +452,8 @@[m
       "integrity": "sha1-96E0J7qfc/j0+pk8VKl4gtEkQlc=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-helper-regex": {[m
[36m@@ -462,9 +462,9 @@[m
       "integrity": "sha1-MlxZ+QL4LyS3T6zu0DY5VPZJXnI=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.26.0",[m
[31m-        "babel-types": "^6.26.0",[m
[31m-        "lodash": "^4.17.4"[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0",[m
[32m+[m[32m        "lodash": "4.17.10"[m
       }[m
     },[m
     "babel-helper-remap-async-to-generator": {[m
[36m@@ -473,11 +473,11 @@[m
       "integrity": "sha1-XsWBgnrXI/7N04HxySg5BnbkVRs=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-function-name": "^6.24.1",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1",[m
[31m-        "babel-traverse": "^6.24.1",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-helper-function-name": "6.24.1",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0",[m
[32m+[m[32m        "babel-traverse": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-helper-replace-supers": {[m
[36m@@ -486,12 +486,12 @@[m
       "integrity": "sha1-v22/5Dk40XNpohPKiov3S2qQqxo=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-optimise-call-expression": "^6.24.1",[m
[31m-        "babel-messages": "^6.23.0",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1",[m
[31m-        "babel-traverse": "^6.24.1",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-helper-optimise-call-expression": "6.24.1",[m
[32m+[m[32m        "babel-messages": "6.23.0",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0",[m
[32m+[m[32m        "babel-traverse": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-helpers": {[m
[36m@@ -500,8 +500,8 @@[m
       "integrity": "sha1-NHHenK7DiOXIUOWX5Yom3fN2ArI=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1"[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0"[m
       }[m
     },[m
     "babel-loader": {[m
[36m@@ -510,9 +510,9 @@[m
       "integrity": "sha512-/hbyEvPzBJuGpk9o80R0ZyTej6heEOr59GoEUtn8qFKbnx4cJm9FWES6J/iv644sYgrtVw9JJQkjaLW/bqb5gw==",[m
       "dev": true,[m
       "requires": {[m
[31m-        "find-cache-dir": "^1.0.0",[m
[31m-        "loader-utils": "^1.0.2",[m
[31m-        "mkdirp": "^0.5.1"[m
[32m+[m[32m        "find-cache-dir": "1.0.0",[m
[32m+[m[32m        "loader-utils": "1.1.0",[m
[32m+[m[32m        "mkdirp": "0.5.1"[m
       }[m
     },[m
     "babel-messages": {[m
[36m@@ -521,7 +521,7 @@[m
       "integrity": "sha1-8830cDhYA1sqKVHG7F7fbGLyYw4=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0"[m
[32m+[m[32m        "babel-runtime": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-check-es2015-constants": {[m
[36m@@ -530,7 +530,7 @@[m
       "integrity": "sha1-NRV7EBQm/S/9PaP3XH0ekYNbv4o=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0"[m
[32m+[m[32m        "babel-runtime": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-syntax-async-functions": {[m
[36m@@ -605,9 +605,9 @@[m
       "integrity": "sha1-8FiQAUX9PpkHpt3yjaWfIVJYpds=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-remap-async-to-generator": "^6.24.1",[m
[31m-        "babel-plugin-syntax-async-generators": "^6.5.0",[m
[31m-        "babel-runtime": "^6.22.0"[m
[32m+[m[32m        "babel-helper-remap-async-to-generator": "6.24.1",[m
[32m+[m[32m        "babel-plugin-syntax-async-generators": "6.13.0",[m
[32m+[m[32m        "babel-runtime": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-async-to-generator": {[m
[36m@@ -616,9 +616,9 @@[m
       "integrity": "sha1-ZTbjeK/2yx1VF6wOQOs+n8jQh2E=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-remap-async-to-generator": "^6.24.1",[m
[31m-        "babel-plugin-syntax-async-functions": "^6.8.0",[m
[31m-        "babel-runtime": "^6.22.0"[m
[32m+[m[32m        "babel-helper-remap-async-to-generator": "6.24.1",[m
[32m+[m[32m        "babel-plugin-syntax-async-functions": "6.13.0",[m
[32m+[m[32m        "babel-runtime": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-class-constructor-call": {[m
[36m@@ -627,9 +627,9 @@[m
       "integrity": "sha1-gNwoVQWsBn3LjWxl4vbxGrd2Xvk=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-plugin-syntax-class-constructor-call": "^6.18.0",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1"[m
[32m+[m[32m        "babel-plugin-syntax-class-constructor-call": "6.18.0",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-class-properties": {[m
[36m@@ -638,10 +638,10 @@[m
       "integrity": "sha1-anl2PqYdM9NvN7YRqp3vgagbRqw=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-function-name": "^6.24.1",[m
[31m-        "babel-plugin-syntax-class-properties": "^6.8.0",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1"[m
[32m+[m[32m        "babel-helper-function-name": "6.24.1",[m
[32m+[m[32m        "babel-plugin-syntax-class-properties": "6.13.0",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-decorators": {[m
[36m@@ -650,11 +650,11 @@[m
       "integrity": "sha1-eIAT2PjGtSIr33s0Q5Df13Vp4k0=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-explode-class": "^6.24.1",[m
[31m-        "babel-plugin-syntax-decorators": "^6.13.0",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-helper-explode-class": "6.24.1",[m
[32m+[m[32m        "babel-plugin-syntax-decorators": "6.13.0",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-arrow-functions": {[m
[36m@@ -663,7 +663,7 @@[m
       "integrity": "sha1-RSaSy3EdX3ncf4XkQM5BufJE0iE=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0"[m
[32m+[m[32m        "babel-runtime": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-block-scoped-functions": {[m
[36m@@ -672,7 +672,7 @@[m
       "integrity": "sha1-u8UbSflk1wy42OC5ToICRs46YUE=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0"[m
[32m+[m[32m        "babel-runtime": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-block-scoping": {[m
[36m@@ -681,11 +681,11 @@[m
       "integrity": "sha1-1w9SmcEwjQXBL0Y4E7CgnnOxiV8=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.26.0",[m
[31m-        "babel-template": "^6.26.0",[m
[31m-        "babel-traverse": "^6.26.0",[m
[31m-        "babel-types": "^6.26.0",[m
[31m-        "lodash": "^4.17.4"[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0",[m
[32m+[m[32m        "babel-traverse": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0",[m
[32m+[m[32m        "lodash": "4.17.10"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-classes": {[m
[36m@@ -694,15 +694,15 @@[m
       "integrity": "sha1-WkxYpQyclGHlZLSyo7+ryXolhNs=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-define-map": "^6.24.1",[m
[31m-        "babel-helper-function-name": "^6.24.1",[m
[31m-        "babel-helper-optimise-call-expression": "^6.24.1",[m
[31m-        "babel-helper-replace-supers": "^6.24.1",[m
[31m-        "babel-messages": "^6.23.0",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1",[m
[31m-        "babel-traverse": "^6.24.1",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-helper-define-map": "6.26.0",[m
[32m+[m[32m        "babel-helper-function-name": "6.24.1",[m
[32m+[m[32m        "babel-helper-optimise-call-expression": "6.24.1",[m
[32m+[m[32m        "babel-helper-replace-supers": "6.24.1",[m
[32m+[m[32m        "babel-messages": "6.23.0",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0",[m
[32m+[m[32m        "babel-traverse": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-computed-properties": {[m
[36m@@ -711,8 +711,8 @@[m
       "integrity": "sha1-b+Ko0WiV1WNPTNmZttNICjCBWbM=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1"[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-destructuring": {[m
[36m@@ -721,7 +721,7 @@[m
       "integrity": "sha1-mXux8auWf2gtKwh2/jWNYOdlxW0=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0"[m
[32m+[m[32m        "babel-runtime": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-duplicate-keys": {[m
[36m@@ -730,8 +730,8 @@[m
       "integrity": "sha1-c+s9MQypaePvnskcU3QabxV2Qj4=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-for-of": {[m
[36m@@ -740,7 +740,7 @@[m
       "integrity": "sha1-9HyVsrYT3x0+zC/bdXNiPHUkhpE=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0"[m
[32m+[m[32m        "babel-runtime": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-function-name": {[m
[36m@@ -749,9 +749,9 @@[m
       "integrity": "sha1-g0yJhTvDaxrw86TF26qU/Y6sqos=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-function-name": "^6.24.1",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-helper-function-name": "6.24.1",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-literals": {[m
[36m@@ -760,7 +760,7 @@[m
       "integrity": "sha1-T1SgLWzWbPkVKAAZox0xklN3yi4=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0"[m
[32m+[m[32m        "babel-runtime": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-modules-amd": {[m
[36m@@ -769,9 +769,9 @@[m
       "integrity": "sha1-Oz5UAXI5hC1tGcMBHEvS8AoA0VQ=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-plugin-transform-es2015-modules-commonjs": "^6.24.1",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1"[m
[32m+[m[32m        "babel-plugin-transform-es2015-modules-commonjs": "6.26.2",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-modules-commonjs": {[m
[36m@@ -780,10 +780,10 @@[m
       "integrity": "sha512-CV9ROOHEdrjcwhIaJNBGMBCodN+1cfkwtM1SbUHmvyy35KGT7fohbpOxkE2uLz1o6odKK2Ck/tz47z+VqQfi9Q==",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-plugin-transform-strict-mode": "^6.24.1",[m
[31m-        "babel-runtime": "^6.26.0",[m
[31m-        "babel-template": "^6.26.0",[m
[31m-        "babel-types": "^6.26.0"[m
[32m+[m[32m        "babel-plugin-transform-strict-mode": "6.24.1",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-modules-systemjs": {[m
[36m@@ -792,9 +792,9 @@[m
       "integrity": "sha1-/4mhQrkRmpBhlfXxBuzzBdlAfSM=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-hoist-variables": "^6.24.1",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1"[m
[32m+[m[32m        "babel-helper-hoist-variables": "6.24.1",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-modules-umd": {[m
[36m@@ -803,9 +803,9 @@[m
       "integrity": "sha1-rJl+YoXNGO1hdq22B9YCNErThGg=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-plugin-transform-es2015-modules-amd": "^6.24.1",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1"[m
[32m+[m[32m        "babel-plugin-transform-es2015-modules-amd": "6.24.1",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-object-super": {[m
[36m@@ -814,8 +814,8 @@[m
       "integrity": "sha1-JM72muIcuDp/hgPa0CH1cusnj40=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-replace-supers": "^6.24.1",[m
[31m-        "babel-runtime": "^6.22.0"[m
[32m+[m[32m        "babel-helper-replace-supers": "6.24.1",[m
[32m+[m[32m        "babel-runtime": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-parameters": {[m
[36m@@ -824,12 +824,12 @@[m
       "integrity": "sha1-V6w1GrScrxSpfNE7CfZv3wpiXys=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-call-delegate": "^6.24.1",[m
[31m-        "babel-helper-get-function-arity": "^6.24.1",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-template": "^6.24.1",[m
[31m-        "babel-traverse": "^6.24.1",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-helper-call-delegate": "6.24.1",[m
[32m+[m[32m        "babel-helper-get-function-arity": "6.24.1",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-template": "6.26.0",[m
[32m+[m[32m        "babel-traverse": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-shorthand-properties": {[m
[36m@@ -838,8 +838,8 @@[m
       "integrity": "sha1-JPh11nIch2YbvZmkYi5R8U3jiqA=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-spread": {[m
[36m@@ -848,7 +848,7 @@[m
       "integrity": "sha1-1taKmfia7cRTbIGlQujdnxdG+NE=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-runtime": "^6.22.0"[m
[32m+[m[32m        "babel-runtime": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-sticky-regex": {[m
[36m@@ -857,9 +857,9 @@[m
       "integrity": "sha1-AMHNsaynERLN8M9hJsLta0V8zbw=",[m
       "dev": true,[m
       "requires": {[m
[31m-        "babel-helper-regex": "^6.24.1",[m
[31m-        "babel-runtime": "^6.22.0",[m
[31m-        "babel-types": "^6.24.1"[m
[32m+[m[32m        "babel-helper-regex": "6.26.0",[m
[32m+[m[32m        "babel-runtime": "6.26.0",[m
[32m+[m[32m        "babel-types": "6.26.0"[m
       }[m
     },[m
     "babel-plugin-transform-es2015-template-literals": {[m
[