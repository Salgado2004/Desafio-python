import mysql.connector

dbconfig = {'host': '127.0.0.1', 'user': 'root', 'password': 'password', 'database': 'databaseName'}

def log():
    conn = mysql.connector.connect(**dbconfig)
    cursor = conn.cursor()
    _SQL = """select * from database;"""
    cursor.execute(_SQL)
    res = cursor.fetchall()
    for row in res:
        return row
  
def saveMsg(**arg):
    nome = arg['fnome']
    email = arg['femail']
    msg = arg['fmsg']
    data= arg['fdata']
    commit = (nome, email, msg, data)
    conn = mysql.connector.connect(**dbconfig)
    cursor = conn.cursor()
    _SQL = """insert into mensagens(nome, email, mensagem, dataMsg) values ("%s", "%s", "%s", "%s");"""
    cursor.execute(_SQL, commit)
    conn.commit()
    cursor.close()
    conn.close()
    return "enviado ao banco de dados"

def getMenu():
    conn = mysql.connector.connect(**dbconfig)
    cursor = conn.cursor()
    _SQL = """select * from comidas;"""
    cursor.execute(_SQL)
    res = cursor.fetchall()
    menu = []
    for row in res:
        nome = row[1] 
        preco = f'{row[2]: .2f}' 
        preco = preco.replace(".", ",")
        pathImg = row[3] 
        descricao = row[4] 
        idReceita = row[5]
        food = {'nome': nome, 'preco': preco, 'pathImg': pathImg, 'descricao': descricao, 'idReceita': idReceita}
        menu.append(food)
    cursor.close()
    conn.close()
    return menu
