# ✅DB_Project_학생정보관리시스템
데이터베이스 관리시스템을 사용하여 학생들의 시간표 및 학점과 수강과목 정보를 관리하는 학생
정보 관리 시스템을 구현했다. 학생 정보 관리 시스템의 주요 기능으로는 회원가입, 로그인, 공지
사항 확인, 수강신청 등이 있다. 시스템에 구현된 여러 기능을 통해 학생 별 개인 정보를 데이터
베이스에 저장한다. 
데이터베이스에 저장된 이전학기와 현재학기의 전공/교양 수강 과목 및 성적 데이터는 조회 가능
하며 이를 시간표나 학기 별 성적 추이그래프와 성적 분포그래프를 통해 사용자의 사용 목적에
따라 보여주는 기능도 추가로 구현했다
+ 로그인 및 회원가입  
![login1](https://github.com/soojeo/DB_Project/assets/37549420/fd8da80a-7374-49aa-b59d-a95460ccf74f)
![login2](https://github.com/soojeo/DB_Project/assets/37549420/44b1079d-b184-47e7-adc0-8aa8c787098d)  
처음 주소를 입력하면 위처럼 로그인 창이 뜬다. 회원가입을 하기 전에는 로그인에 학생 ID와 비
밀 번호를 입력하면 로그인 실패라는 메시지가 뜨도록 했다. 회원으로 등록된 학생이 로그인을
하면 아래의 이미지와 같이 화면이 나타난다. 이때 확인을 클릭하면 바로 시스템의 공지사항 화
면으로 url이 넘어간다.  
![sign1](https://github.com/soojeo/DB_Project/assets/37549420/5a34c80c-9580-4bb3-adb8-4fdd860fbc96)  
회원가입 정보를 입력하고 아래의 초록색 회원가입 버튼을 클릭하면 회원가입이 완료된다. 회원 
가입 된 학생의 데이터는 테이블은 “create_stu에 삽입된다. 회원가입을 클릭하면 화면은 다시 맨
처음 로그인 화면인 홈 화면으로 이동한다.  
  
+ 공지사항  
![notice](https://github.com/soojeo/DB_Project/assets/37549420/ad13ea09-10c0-4cb9-9be0-5befc95be04b)  
MySQL의 “notice” 테이블에 저장된 데이터를 출력하는 공지사항 페이지이다. 과목 별로 공지사항
의 출력이 이루어지도록 구현했다. 학생의 신청한 과목 중 공지사항이 있는 과목은 과목 목록에
출력된다. 추가로, 페이지 왼쪽에 있는 메뉴 목록에서 버튼을 클릭해도 페이지가 이동된다  
![notice2](https://github.com/soojeo/DB_Project/assets/37549420/5e08fa34-1990-448a-b92a-a361d1f04f0e)  
![notice3](https://github.com/soojeo/DB_Project/assets/37549420/201a41af-85af-4185-bd72-239c44b92b6c)  
해당 과목을 클릭하면 과목 별로 저장된 공지사항이 출력된다. 그리고 각각의 공지의 제목을 클
릭하면 아래의 이미지처럼 공지 사항의 내용을 확인할 수 있다  
    
+ 수강신청  
![apply1](https://github.com/soojeo/DB_Project/assets/37549420/926b7b49-0bf5-426a-8ab1-3de7b9b1d0d8)  
![apply2](https://github.com/soojeo/DB_Project/assets/37549420/099a43f4-ce8c-48d6-9cc5-5d36f7994468)  
![apply3](https://github.com/soojeo/DB_Project/assets/37549420/2e482449-e253-4feb-91a9-e764fce3807c)  
과목별 정보를 해당 화면에 lectureVO를 값을 나열하여 출력하였고, 신청할 과목을 클릭하면 과
목의 정보들을 일련 출력한다. 수강신청 버튼을 누르면 학번인 student.id, 그리고 MySQL의
“applist” 테이블에 필요한 lectureVO의 데이터들을 보내 “applist” 테이블에 추가된다. 학점과 학
기는 배제된 체로 신청하여 넣고, 이는 담은 인원이 정원을 넘지 않을 때에만 기능한다. 취소에는
lectureVO의 sno, 즉 과목 번호만 전달하여 “applist” 테이블의 sno에 해당하는 tuple을 제거한다. 
신청과 취소 시 각자 수강 신청 처리 상태를 표시하는 창을 통해 확인 가능하다  
     
+ 개인정보조회  
![info](https://github.com/soojeo/DB_Project/assets/37549420/041767d6-f983-4594-9035-14aaf2ec9aba)  
학생이 처음 회원가입을 할 때 입력했던 정보를 보여주는 개인 정보 조회 페이지이다. 이름, 학번,
학부, 그리고 이메일 주소가 출력된다. 해당 데이터는 MySQL의 “create_stu” 테이블에서 불러온다.  


  
