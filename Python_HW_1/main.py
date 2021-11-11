# 1) Создать переменную типа String
string = "Hello, World!"
print(string, type(string))

# 2) Создать переменную типа Integer
integer = 123
print(integer, type(integer))

# 3) Создать переменную типа Float
float_type = 1.5
print(float_type, type(float_type))

# 4) Создать переменную типа Bytes
by = bytes(123)
print(by, type(by))

# 5) Создать переменную типа List
list_type = [1, 2, 3, 4, 5]
print(list_type, type(list_type))

# 6) Создать переменную типа Tuple
tuple_type = tuple('login')
print(tuple_type, type(tuple_type))

# 7) Создать переменную типа Set
words = set('hi')
print(words, type(words))

# 8) Создать переменную типа Frozen set
frozen = frozenset('hi')
print(frozen, type(frozen))

# 9) Создать переменную типа Dict
dict_type = {'word': 'hi', 1: [2, 3, 5]}
print(dict_type, type(dict_type))

# 10) Вывести в консоль все выше перечисленнуе переменные с добавлением типа данных

# 11) Создать 2 переменные String, создать переменную, в которой сконкатенируете эти переменные. Вывести в консоль
first = "Конка"
second = "тенация"
print(first + second)

# 12) Вывести в одну строку переменные типа String и Integer, используя "," (запятую)
l = "Year"
m = 2021
print(l, m)

# 13) Вывести в одну строку переменные типа String и Integer, используя "+" (плюс)
n = str(2021)
print(l + " " + n)