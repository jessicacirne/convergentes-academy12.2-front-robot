from robot.api.deco import keyword
import random
import string

@keyword
def generate_fullName():
    first_names = ["John", "Alice", "Michael", "Sophia", "Robert", "Emma", "David", "Olivia", "Pedro", "Paulo", "Roberto", "Jessica", "Breno", "Juliana", "Mariana", "Gerson", "Iolanda", "Cintia"]
    last_names = ["Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller", "Davis", "Carvalho", "Brandão", "Araújo", "Lima", "Gomes", "Sena", "Silva", "Se", "Santos", "Abreu", "Ramalho", "Nery", "Garcia"]

    first_name = random.choice(first_names)
    last_name = random.choice(last_names)

    full_name = f"{first_name} {last_name}"
    return full_name

@keyword
def generate_full_name_mail():
    return random.choice(["João Silva", "Maria Oliveira", "Carlos Santos", "Ana Souza", "Pedro Almeida"])

def generate_email():
    domains = ["gmail.com", "gmail.com.br", "yahoo.com", "yahoo.com.br", "outlook.com", "outlook.com.br", "hotmail.com", "hotmail.com.br", "company.com.br", "company.com"]
    full_name = generate_full_name_mail().lower()
    email_name = full_name.replace(" ", random.choice([".", "_"]))
    numeros_aleatorios = ''.join(random.choices(string.digits, k=random.randint(3, 5)))
    return f"{email_name}{numeros_aleatorios}@{random.choice(domains)}"

for _ in range(5):
    print(generate_email())

@keyword
def generate_cpf():
    def calculate_digit(digits):
        weight = len(digits) + 1
        total = sum(int(digit) * weight for digit, weight in zip(digits, range(weight, 1, -1)))
        remainder = total % 11
        return '0' if remainder < 2 else str(11 - remainder)

    cpf_digits = [str(random.randint(0, 9)) for _ in range(9)]
    cpf_digits.append(calculate_digit(cpf_digits))
    cpf_digits.append(calculate_digit(cpf_digits))
    
    return ''.join(cpf_digits)
