import conectionsBD as bd
import random

def getMsg(**arg):
    nome = arg['fnome']
    email = arg['femail']
    msg = arg['fmsg']
    data= arg['fdata']
    result = bd.saveMsg(fnome = nome, femail = email, fmsg = msg, fdata= data)
    return result

def getmenu():
    menu = bd.getMenu()
    return menu

def getTestimonials():
    depoimentos = bd.getRef()
    for pessoa in depoimentos:
        if pessoa['pathImg'] == "":
            pessoa['pathImg'] = "../static/img/noImg.png"
    return depoimentos

def receita(fid):
    idReceita = int(fid)
    qtd = int(bd.qtdReceitas())
    if idReceita <= qtd:
        receita = bd.getReceita(idReceita)
        ingredientes = []
        for x in receita['ingredientes']:
            ingrediente = x.split(",")
            try:
                dicionario = {'nome': ingrediente[0], 'qtd': ingrediente[1]}
            except IndexError:
                break
            ingredientes.append(dicionario)

        receita.update({"ingredientes": ingredientes})
        return receita
    else:
        return None

def destaques():
    qtd = bd.qtdReceitas()
    destaques = set(())
    while len(destaques) < 3:
        destaques.add(random.randint(1, qtd))
    indices = bd.getDestaques(destaques)
    return indices
