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
    cursor.close()
    conn.close()

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

def getRef():
    conn = mysql.connector.connect(**dbconfig)
    cursor = conn.cursor()
    _SQL = """select * from depoimentos;"""
    cursor.execute(_SQL)
    res = cursor.fetchall()
    depoimentos = []
    for row in res:
        nome = row[1] 
        rate = row[2] 
        text = row[3]
        pathImg = row[4] 
        pessoa = {'nome': nome, 'rate': rate, 'pathImg': pathImg, 'depoimento': text}
        depoimentos.append(pessoa)
    cursor.close()
    conn.close()
    return depoimentos

def getReceita(fid):
    idReceita = str(fid)
    conn = mysql.connector.connect(**dbconfig)
    cursor = conn.cursor()
    _SQL = 'select * from receitas where id = "'+idReceita+'";'
    cursor.execute(_SQL)
    res = cursor.fetchall()
    for row in res:
        nome = row[1] 
        idComida = str(row[2]) 
        ingredientes = row[3].split(";")
        modoPreparo = row[4] 
    _SQL = 'select pathImg from comidas where id = "'+idComida+'";'
    cursor.execute(_SQL)
    res = cursor.fetchall()
    for row in res:
        pathImg = row[0]
    receita = {'nome': nome, 'ingredientes': ingredientes, 'pathImg': pathImg, 'modoPreparo': modoPreparo}
    cursor.close()
    conn.close()
    return receita
