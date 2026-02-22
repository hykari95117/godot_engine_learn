# 상속
extends Node

# 변수
var cool;
var number1 = 1;
var number2 = 2;
var result = number1 + number2;
var my_name = "838";
var am_i_ugly = true;
var am_i_handsome = false;

# 상수
const age = 10; # 상수는 선언과 동시에 할당을 해줘야한다.
const first_name = "kim";

# 열거형(enum): 상수들을 묶어서 사용, 단, 숫자값만 담을 수 있다.
# enum의 이름들은 대문자로 적는게 관행
enum {ALLIANCE, ENEMY, UNKNOWN} # 초기값이 없을 경우 0, 1, 2, ... 할당
# enum에도 이름을 붙일 수 있다.(일종의 변수명 같은 역할) ex) Named
# 이름 Named enum 이라고 한다.
enum Named {IDLE = 12, RUN, JUMP = 14} # RUN에는 13이 할당된다.

# 배열
var arr = [1, "a", "가"];

# function & return
func func1(input):
	print(input);

func func2() -> String:
	return "func2 리턴값";

# Called when the node enters the scene tree for the first time.
# 게임이 시작될 때 한 번만 실행된다.
# cf) 언더바(_)가 붙은 함수 = godot 내부적으로 제공되는 함수(네이티브 함수)라는 의미
func _ready() -> void: # _ready라는 네이티브 함수를 override
	# 출력
	print('hello world!');
	
	# enum 값 출력
	print(ALLIANCE);
	print(ENEMY);
	print(UNKNOWN);
	print(Named.IDLE);
	print(Named.RUN);
	
	# 배열
	print(arr);
	print(arr[0]);
	print(arr[1]);
	print(arr[2]);
	print(len(arr));
	print([1 ,2, 3]);
	
	# function & return
	func1("func1 호출");
	print(func2());
	
	# 조건문
	condition()
	
	# 반복문
	loop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass # 통과(아무것도 안하고 그냥 통과시킨다.)
	
# 조건문
func condition():
	const age1 = 10;
	const age2 = 20;
	# 조건문
	if false:
		pass;
	elif age1 < age2:
		print('age2 is big');
	elif age1 > age2:
		print('age1 is big');
	else:
		print('동갑');
	
	# match 조건문(switch와 유사)
	match age1:
		10:
			print('ten');
		20:
			print('ten * 2');
		_: # 위의 모든 조건들이 만족되지 않았을 때 실행
			print('how old are you:');

# 반복문
func loop():
	# for
	for i in range(11, 13):
		print(i); # 11~12 출력
	
	for i in [3,6,9]:
		print(i) # 3 ,6 ,9 출력

	for char in "Hello":
		if char == 'H' :
			continue; # 'H'는 아래 내용(print) 무시 후 이어서 반복
		print(char);

	# while
	var 남은기름 = 10;
	var 이동거리 = 0;

	while 남은기름 > 0:
		이동거리 = 이동거리 + 1;
		남은기름 = 남은기름 - 1;
		print("남은기름 = ", 남은기름);

		if 남은기름 <= 3:
			break; # 남은 기름이 3 이하이면 운전 그만

	print("총 이동거리 = ", 이동거리);
