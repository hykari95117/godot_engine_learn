extends 자동차클래스

# 인스턴스 만들기
var 인스턴스 = 자동차클래스.new();

# var 색상 = '빨강';
# 멤버 필드로 var 색상 = '빨강'; 이렇게는 안 된다.
# Parse Error: The member "색상" already exists in parent class 자동차클래스.

func _ready() -> void:
	# 부모 클래스인 '자동차클래스'의 속성값을 가져온다.
	print("최고속력: ", 최고속력);
	print("색상: ", 색상);
	
	# 자식 클래스만의 값으로 재정의 가능
	# 단 멤버 필드로 var 색상 = '빨강'; 이렇게는 안 된다.
	색상 = '빨강'
	print("색상_재정의: ", 색상);
	# 부모 클래스인 '자동차클래스'의 함수를 실행한다.
	시동();
	시동끄기()
	
	# 인스턴스
	print('============== 인스턴스 ==============');
	print(인스턴스.최고속력);
	print(인스턴스.색상);
	인스턴스.시동();
	인스턴스.시동끄기();

func 시동():
	print('자식 클래스에서 시동 클래스 재정의(override)')
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
