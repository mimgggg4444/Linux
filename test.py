import requests
from bs4 import BeautifulSoup

# 가져올 페이지의 범위 설정
start_page = 111111
end_page = 111222

# 가져올 페이지의 범위만큼 반복
for page_number in range(start_page, end_page + 1):
    # 각 페이지의 URL 생성
    url = f"https://lib.daelim.ac.kr/Search/Detail/{page_number}"

    # 해당 URL에 GET 요청 보내기
    response = requests.get(url)

    # 요청이 성공했는지 확인
    if response.status_code == 200:
        # HTML 코드를 BeautifulSoup 객체로 변환
        soup = BeautifulSoup(response.text, 'html.parser')

        # div 태그 중 클래스가 'sponge-book-title'인 요소들을 모두 찾기
        sponge_book_titles = soup.find_all('div', class_='sponge-book-title')

        # 해당 페이지에 'sponge-book-title' 클래스를 가진 div 태그가 있는지 확인
        if sponge_book_titles:
            print(f"Page {page_number}:")
            # 찾은 모든 요소 출력
            for title in sponge_book_titles:
                print("- ", title.text.strip())  # 텍스트 내용 출력 (공백 제거)
        else:
            print(f"No 'sponge-book-title' class found on page {page_number}")
    else:
        print(f"Failed to fetch page {page_number}. Status code: {response.status_code}")
