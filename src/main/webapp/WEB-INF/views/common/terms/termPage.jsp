<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용약관페이지</title>
<meta name="viewport"
	content="user-scalable=no, width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />

<meta name="format-detection" content="telephone=no" />

<link rel="icon" href="/ibom/resources/images/favicon_83.png"
	sizes="32x32" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"
	sizes="96x96" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"
	sizes="192x192" />
<link rel="apple-touch-icon-precomposed"
	href="/ibom/resources/images/favicon_300.png" />
<meta name="msapplication-TileImage"
	content="/ibom/resources/images/favicon_300.png" />

<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />

<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>

<!-- JS -->
<script>
	if ((/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i)
			.test(navigator.userAgent || navigator.vendor || window.opera)) {
		document.getElementsByTagName("html")[0].className = " mobile";
	} else {
		document.getElementsByTagName("html")[0].className = " desktop";
	}
</script>
<script src="/ibom/resources/js/vendors/browser_selector.js"></script>

<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery/jquery_2.2.4.min.js"></script>
<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery.ajaxQueue.min.js"></script>
<script type="text/javascript" src="/ibom/resources/js/common.js"></script>
<script type="text/javascript" src="/ibom/resources/js/jt.js"></script>

</head>
<body>

    <div id="skip"><a href="#main">메인 콘텐츠 바로가기</a></div>

    
   <!--  header 시작 -->
   <c:import url="../../mainHeader.jsp"/> 
   <!-- header 끝 -->

    <main id="main" class="main_container">
    
    <div id="main_container_inner" class="terms">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">이용약관</h1>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow">
                    <div class="privacy_box_chapter">
                        <h2 class="privacy_box_chapter_title">제1장 총 칙</h2>
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제1조 [목 적]</h3>
                            <p>
                            이 약관은 여성가족부가 운영하는 여성가족부 웹사이트(이하 "웹사이트"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 여성가족부 웹사이트와 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.   
                            </p>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제2조 [정 의]</h3>
                            <ul>
                                <li>
                                    본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
                                    <ul class="bold_count">
                                       <li><b>웹사이트</b>: 여성가족부가 전 국민에게 필요한 콘텐츠 및 제반 서비스를 이용자에게 제공하기 위한 웹사이트 (https://idolbom.go.kr)를 말합니다.</li>
                                       <li><b>이용자</b>: "웹사이트"에 접속하여 이 약관에 따라 "웹사이트"가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.</li>
                                    </ul>
                                </li>
                                <li>
                                    본 약관에서 사용하는 용어의 정의는 제1항 각호에 해당하는 것을 제외하고는 일반적인 거래 관행 및 관계 법령을 따릅니다.
                                </li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제3조 [약관 등의 명시와 설명 및 개정]</h3>
                            <ul>
                            	<li>"웹사이트"는 이 약관의 내용, 부처명칭, 주소지(이용자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호, 전자우편주소, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 온라인 초기 서비스화면에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.</li>
                            	<li>"웹사이트"는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 회원탈퇴 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 동의를 구하여야 합니다.</li>
                            	<li>"웹사이트"는 개인정보보호법, 전자서명법, 정보통신망 이용촉진 등에 관한 법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.</li>
                            	<li>"웹사이트"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 웹사이트의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "웹사이트"는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.</li>
                            	<li> "웹사이트"가 약관을 개정할 경우에는 그 개정약관 공지 후 개정약관 적용에 대한 이용자의 동의 여부를 확인합니다. 이용자가 개정약관의 적용에 동의하지 않는 경우 "웹사이트" 또는 "이용자"는 이용계약을 해지할 수 있습니다.</li>
                            	<li>개정된 약관의 효력 발생일로부터 7일 이내에 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 개정된 약관에 동의한 것으로 간주합니다.</li>
                            	<li>이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자 보호에 관한 법률, 약관의 규제 등에 관한 법률, 기타 관계법령에 따릅니다.</li>
                            </ul>
                           </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제4조 [서비스의 제공 및 변경]</h3>
                            <ul>
                            	<li>"웹사이트"는 다음과 같은 업무를 수행합니다.
                            		<ul>
                            			<li>서비스(콘텐츠)에 대한 정보 제공 및 이용계약의 체결</li>
                            			<li>이용계약이 체결된 서비스의 제공</li>
                            			<li>기타 "웹사이트"가 정하는 업무</li>
                            		</ul>
                            	</li>
                            	<li> "웹사이트"가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 운영상 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.</li>
                            	<li>전항의 경우 "웹사이트"는 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "웹사이트"가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</li>
                            	
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제5조 [서비스의 중단]</h3>
                            <ul>
                                <li>"웹사이트"는 컴퓨터 등 정보통신설비의 보수점검․교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.</li>
                                <li>"웹사이트"는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, "웹사이트"가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</li>
                                <li>서비스의 전환, 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 "웹사이트"는 15일전에 공지사항을 통해 이용자에게 통지합니다. </li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제6조 [서비스 이용신청]</h3>
                            <p>"웹사이트" 이용자는 "웹사이트" 상에서 다음 또는 이와 유사한 방법에 의하여 서비스 이용을 신청하며, "웹사이트"는 이용자가 이용신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. 단, 회원인 경우 제2호 내지 제4호의 적용을 제외할 수 있습니다.</p>
                            <ul>
                                <li>"서비스(콘텐츠)" 등의 검색 및 선택</li>
                                <li>성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력</li>
                                <li>약관내용, 청약철회권이 제한되는 서비스와 관련한 내용에 대한 확인</li>
                                <li>이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)</li>
                                <li>서비스 이용신청 및 이에 관한 확인 또는 "웹사이트"의 확인에 대한 동의</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제7조 [이용계약의 성립]</h3>
                            <ul>
                                <li>"웹사이트"는 제6조와 같은 이용신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 이용계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 이용계약을 취소할 수 있다는 내용을 고지하여야 합니다.
                                <ul>
                                	<li>신청 내용에 허위, 기재누락, 오기가 있는 경우</li>
                                	<li>기타 이용신청에 승낙하는 것이 "웹사이트" 기술상 현저히 지장이 있다고 판단하는 경우</li>
                                </ul>
                                </li>
                                <li> "웹사이트"의 승낙이 제8조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.</li>
                                <li> "웹사이트"의 승낙의 의사표시에는 이용자의 이용 신청에 대한 확인 및 서비스 제공가능 여부, 이용신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제8조 [수신확인통지·이용신청 변경 및 취소]</h3>
                            <ul>
                                <li>"웹사이트"는 이용자의 서비스 이용신청이 있는 경우 이용자에게 수신확인통지를 합니다. </li>
                                <li>수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 이용신청 변경 및 취소를 요청할 수 있고, "웹사이트"는 서비스제공 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제9조 [개인정보보호]</h3>
                            <ul>
                                <li>"웹사이트"는 이용자의 정보수집시 서비스 이행에 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
                                	<ul>
                                		<li>성명</li>
                                		<li>주소</li>
                                		<li>전화번호</li>
                                		<li>전자우편주소(또는 이동전화번호)</li>
                                	</ul>
                                </li>
                                <li>"웹사이트"가 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.</li>
                                <li>제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 웹사이트가 집니다. 다만, 다음의 경우에는 예외로 합니다.
                                    <ul>
                                        <li>통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우</li>
                                        <li>도용방지를 위하여 본인확인에 필요한 경우</li>
                                        <li>법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우</li>
                                    </ul>
                                </li>
                                <li>"웹사이트"가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 개인정보보호법 제18조제3항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.</li>
                                <li>이용자는 언제든지 "웹사이트"가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 "웹사이트"는 이에 대해 지체없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 "웹사이트"는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.</li>
                                <li>"웹사이트"는 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.</li>
                                <li>"웹사이트" 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체없이 파기합니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제10조 ["웹사이트"의 의무]</h3>
                            <ul>
                                <li>"웹사이트"는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 서비스를 제공하는데 최선을 다하여야 합니다.</li>
                                <li>"웹사이트"는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보 보호를 위한 보안 시스템을 갖추어야 합니다.</li>
                                <li>"웹사이트"는 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.</li>
                             </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제11조 [회원정보의 변경]</h3>
                            <ul>
                                <li>회원은 회사 웹사이트 "회원 정보 수정" 페이지에서 언제든지 자신의 개인정보를 열람하고 수정할 수 있습니다.</li>
                                <li>회원이 전항의 변경사항을 수정하지 않아 발생한 불이익에 대하여 회사는 책임지지 않습니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제12조 ["회원"의 "아이디" 및 "비밀번호"의 관리에 대한 의무]</h3>
                            <ul>
                                <li>회원은 아이디와 비밀번호에 대한 관리 책임이 있으며, 이를 타인에게 공개하여 제3자가 이용하도록 하여서는 아니 됩니다.</li>
                                <li>회원은 자신의 아이디 및 비밀번호가 유출되어 제3자에 의해 사용되고 있음을 인지한 경우, 즉시 회사에 알려야 합니다.</li>
                                <li>회사는 전항의 경우 회원의 개인정보보호 및 기타 서비스 부정이용행위 방지 등을 위하여 회원에게 비밀번호의 변경 등 필요한 조치를 요구할 수 있으며, 회원은 회사의 요구가 있는 즉시 회사의 요청에 성실히 응해야 합니다.</li>
                                <li>회사는 회원이 본조 제2항 및 제3항에 따른 의무를 성실히 이행하지 않아 발생한 불이익에 대하여 책임지지 않습니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제13조 [회원탈퇴 및 자격 상실 등]</h3>
                            <ul>
                                <li>회원은 회원의 사정으로 인하여 회원 탈퇴를 요청할 수 있으며, 본인이 웹사이트를 통하여 회사가 안내하는 절차에 따라 탈퇴 신청을 하여야 합니다.</li>
                                <li>회사는 회원이 본 약관 또는 관계 법령을 위반하는 경우, 서비스 이용을 제한하거나 회원 자격을 상실 시킬 수 있습니다.</li>
                                <li>전항에 따른 조치는 본 약관 제18조의 규정을 준용합니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                    </div><!-- .privacy_box_chapter -->
                    <div class="privacy_box_chapter">
                        <h2 class="privacy_box_chapter_title">제3장 서비스 이용계약</h2>
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제14조 [서비스 이용 계약의 성립]</h3>
                            <ul>
                                <li>이용 계약이 성립되면 회사는 ID를 통해 회원에 대한 제반 관리 업무를 수행하며, 회원은 본 약관 및 회사가 설정한 규칙에 따라 콘텐츠 목록의 열람, 콘텐츠 상세 정보 확인, 이벤트 참여, 게시글 및 댓글 게재 등의 서비스를 이용할 수 있습니다.</li>
                                <li>회사가 정한 절차에 따라 ID를 생성한 회원은 각 ID를 통해 회사가 제공하는 서비스를 이용할 수 있습니다. 단, 회사가 제시하는 절차를 완료하지 않은 회원은 일부 서비스 이용에 제한이 있을 수 있습니다.</li>
                                <li>회사가 다른 회사와의 협력, 중개 계약을 통해 제공하는 서비스에 대한 내용, 제3자 회사의 의무, 이용자의 권리와 의무 등 상세 사항은 해당 서비스에 대하여 제3자가 제공하는 별도 약관, 운영정책 등에서 정하는 바에 따릅니다. 이용자가 해당 서비스를 이용할 경우, 제3자가 제공하는 서비스 이용 약관에 대한 동의가 필요할 수 있습니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제15조 [회사의 의무]</h3>
                            <ul>
                                <li>회사는 법령과 본 약관이 정하는 권리의 행사와 의무의 이행을 신의에 좇아 성실하게 하여야 합니다.</li>
                                <li>회사는 회원이 서비스를 이용하는 과정에서 회원 개인정보가 외부로 유출되지 않도록 별도의 보안장치를 사용하고 있으며, 그 구체적인 내용은 회사 웹사이트에 "개인정보처리방침"에서 확인할 수 있습니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제16조 [운영자의 역할 및 활동]</h3>
                            <ul>
                                <li>운영자는 회사의 개인정보처리방침 및 관련 법령을 지키며, 고객의 개인정보를 부적절한 방식으로 수집하지 않습니다.</li>
                                <li>운영자는 웹사이트 이용 회원을 공평하게 대우합니다. </li>
                                <li>운영자는 회원의 웹사이트 내 정상적인 활동에 대해서는 관여하지 않으나, 유해 프로그램의 배포, 지속적인 도배 등 웹사이트 운영을 방해하는 중대한 사안을 발견한 경우 본 약관 제18조에 따라 조치를 취할 수 있습니다. </li>
                                <li>운영자는 통상적으로 회원간 발생한 분쟁에 개입하지 않습니다. 다만, 분쟁의 원만한 해결을 위하여 중재안을 제시하거나 분쟁 당사자가 다른 회원의 웹사이트 이용에 방해가 되는 행동을 할 경우 적절하게 대응할 수 있습니다.</li>
                                <li>운영자는 건전한 웹사이트 이용에 심각한 악영향을 끼칠 수 있다고 판단되는 회원의 게시물을 사전 통보 없이 편집, 삭제할 수 있습니다.</li>
                                <li>회원은 운영자로부터 부당한 경고 또는 제재를 받은 경우, 웹사이트에 기재된 전자우편을 통해 이를 문의하고 정정 요청할 수 있습니다. 운영자는 서비스 이용과 관련하여 회원으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 지체 없이 처리합니다. 회원이 제기한 의견이나 불만사항에 대해서는 게시판을 활용하거나 전자우편 등을 통하여 그 처리 과정 및 결과를 전달합니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제17조 [회원의 의무]</h3>
                            <ul>
                                <li>회사의 명시적 동의가 없는 한 회원의 이용권한은 회원 개인에 한정되며, 타인에게 양도, 증여하거나 이를 담보로 제공할 수 없습니다.</li>
                                <li>회원이 본 약관에 정한 내용 및 일반적인 사회적 통념에 어긋나는 행동을 하여 문제가 발생할 경우, 회사의 도움을 받을 수 없습니다.</li>
                                <li>회원이 회원 가입 시 다른 사람의 신상을 도용하였거나, 허위 정보를 등록하여 발생하는 피해에 대하여 회사로부터 보호를 받을 수 없으며 개인 정보 도용에 따른 법적 책임을 질 수 있습니다.</li>
                                <li>회원은 다른 회원의 웹사이트 이용을 방해하거나 웹사이트 운영에 방해되는 행동을 해서는 안 됩니다. 
                                <li>회사는 회원이 다음 각 호에 해당하는 의무를 위반하였을 경우, 본 약관 제18조의 규정을 준용하여 기간을 정하여 전부 또는 일부의 서비스 이용을 중지하거나 이용 계약을 해지할 수 있습니다. 
                                    <ul>
                                        <li>회원이 이용 신청 또는 변경 시 허위사실을 기재하거나, 다른 회원의 ID 및 개인정보를 이용ㆍ공유하는 경우</li>
                                        <li>회원이 회사 또는 제3자의 권리나 저작권을 침해하는 경우</li>
                                        <li>회원이 회사의 운영자, 직권 또는 관계자를 사칭하는 경우 </li>
                                        <li>다른 회원에 대한 허위 신고, 협박을 하거나 욕설, 음란 문구 등을 사용하는 경우</li>
                                        <li>회원이 웹사이트 내에서 특정 종교, 인종 등의 집단을 비하하는 것을 비롯하여 기타 사회 통념상 수용하기 어려운 행위를 하거나, 그와 관련된 부호ㆍ문자ㆍ음성ㆍ음향 및 영상 등의 정보를 게시하여 타인에게 유포시키는 경우</li>
                                        <li>회사의 서비스 운영을 고의로 방해하거나 그리할 목적으로 다량의 정보를 전송하거나 광고성 정보를 전송하는 경우</li>
                                        <li>허위 정보를 통해 회사 및 타인의 명예를 훼손하거나 모욕하는 경우</li>
                                        <li>회원이 회사에서 제공하는 서비스를 이용하여 상품 또는 용역을 판매하는 영업활동 등의 상행위를 하는 경우</li>
                                        <li>관계 법령 및 기타 본 약관에서 규정한 사항을 위반한 경우</li>
                                    </ul>
                                </li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제18조 [벌점 부여 및 이용 제한]</h3>
                            <ul>
                                <li>회사는 다음 각 호의 누적 벌점 기준에 따라 회원의 웹사이트 이용을 제한할 수 있습니다.
                                    <ul>
                                        <li>누적 벌점 15점: 3일간 게시물 및 댓글 등록 제한</li>
                                        <li>누적 벌점 40점: 15일간 게시물 및 댓글 등록 제한</li>
                                        <li>누적 벌점 80점: 30일간 게시물 및 댓글 등록 제한</li>
                                        <li>누적 벌점 100점: 영구 게시물 및 댓글 등록 제한</li>
                                    </ul>
                                </li>
                                <li>회원이 다음 각 호의 위반 행위로 웹사이트 운영을 방해한 경우, 회사는 벌점을 부여합니다. 제시된 위반 항목에 해당하지 않는 사항이라도 문제의 심각성이나 웹사이트에 미치는 악영향의 정도에 따라 객관적인 판단 아래 회원에게 벌점을 부여할 수 있으며, 누적 적발 시 가중하여 적용됩니다.
                                    <ul>
                                        <li>게시판에 음란/혐오/폭력/욕설이 포함된 게시물을 게재하는 경우, 다른 사람을 비방하거나 기타 불쾌감을 주는 글을 게재한 경우, 사회문화적 편견 분쟁 조장(정치/지역감정/성(性)/종교/국적) 하는 경우, 기타 불건전 언어 및 사회 통념상 타인에게 불쾌감/모욕감을 주는 경우, 고의적으로 웹사이트 내에서 동일 내용의 글이나 댓글을 반복 작성하여 다른 회원의 이용을 방해한 경우, 개인의 영리를 목적으로 하는 상업적 게시물을 등록한 경우 벌점 15점</li>
                                        <li>불법, 사기 광고 등의 게시물을 등록한 경우 벌점 40점</li>
                                        <li>불온한 목적으로 다른 회원의 개인정보를 유출한 경우, 타인의 지적재산권 등의 권리를 침해한 경우, 운영자 및 직원을 사칭하는 글을 게재한 경우, 악성 코드가 포함된 게시글을 등록한 경우 벌점 80점</li>
                                    </ul>
                                </li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제19조 [서비스의 제공 및 변경]</h3>
                            <ul>
                                <li>회사는 연중무휴, 1일 24시간 서비스 제공을 원칙으로 합니다.</li>
                                <li>회사는 운영상 또는 기술상 등의 상당한 이유가 있는 경우 제공하고 있는 서비스를 변경할 수 있습니다.</li>
                                <li>전항에 따라 서비스가 변경되는 경우에는 변경되는 사유 및 내용을 본 약관 제8조에 따른 방법으로 회원에게 통지합니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제20조 [서비스의 중단]</h3>
                            <ul>
                                <li>회사는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 서비스 의 제공을 일시적으로 정지할 수 있습니다. 이 경우 회사는 제8조에 정한 방법으로 "회원"에게 통지합니다.</li>
                                <li>회사가 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우, 본 약관 제8조에서 정한 방법으로 회원에게 통지합니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제21조 [정보의 제공 및 광고의 게재]</h3>
                            <ul>
                                <li>회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보를 공지사항이나 전자우편 또는 유선상 등의 방법으로 회원에게 제공할 수 있습니다. 다만, 회원은 언제든지 수신 거절을 할 수 있습니다.</li>
                                <li>회사는 서비스 제공과 관련하여 해당 서비스 화면, 회사 웹사이트, 회원가입 시 회원이 직접 작성한 전자우편 등에 광고를 게재할 수 있습니다. 광고가 게재된 전자우편 등을 수신한 회원은 수신 거절을 할 수 있습니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제22조 [저작권]</h3>
                            <ul>
                                <li>회사가 제공하는 모든 콘텐츠에 대한 저작권은 회사에 있습니다.</li>
                                <li>회원은 회사가 제공하는 서비스를 이용함으로써 얻은 정보를 회사의 사전 승낙 없이 녹화ㆍ복제ㆍ편집ㆍ전시ㆍ전송ㆍ배포ㆍ판매ㆍ방송ㆍ공연하는 등의 행위로 회사의 저작권을 침해 하여서는 안됩니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                    </div><!-- .privacy_box_chapter -->
                    <div class="privacy_box_chapter">
                        <h2 class="privacy_box_chapter_title">제4장 기 타</h2>
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제23조 [면책조항]</h3>
                            <ul>
                                <li>회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.</li>
                                <li>회사는 회원의 귀책사유로 인하여 발생한 서비스 이용의 장애에 대하여는 책임을 지지 않습니다.</li>
                                <li>회사는 회원이 서비스와 관련하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.</li>
                                <li>회사는 이용자 상호간 또는 이용자와 제3자 간에 콘텐츠를 매개로 하여 발생한 분쟁 등에 대하여 책임을 지지않습니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">제24조 [분쟁의 해결 등]</h3>
                            <ul>
                                <li>회사는 분쟁이 발생하였을 경우에 회원이 제기하는 정당한 의견이나 불만을 반영하여 적절하고 신속한 조치를 취합니다. 다만, 신속한 처리가 곤란한 경우에 회사는 회원에게 그 사유와 처리일정을 통보합니다.</li>
                                <li>전항에도 불구하고, 본 약관 및 서비스이용 및 회원과 회사간에 관련 사항 등은 모두 대한민국 법령의 적용을 받습니다.</li>
                            </ul>
                        </div><!-- .privacy_box -->
                        
                        <div class="privacy_box">
                            <h3 class="privacy_box_title">[부칙]</h3>
                            <p>본 약관은 2019년 08월 08일부터 적용합니다.</p>
                        </div><!-- .privacy_box -->
                        
                    </div><!-- .privacy_box_chapter -->
                    
                </div><!-- .wrap_narrow -->
            </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    
    <!-- ======================================================================= -->
    
        <!-- footer id="footer" 시작 ==-->

<c:import url="../footer.jsp"/>
	<!--  js -->

	
</body>
</html>