import conectionsBD as bd

def getMsg(**arg):
    nome = arg['fnome']
    email = arg['femail']
    msg = arg['fmsg']
    data= arg['fdata']
    result = bd.saveMsg(fnome = nome, femail = email, fmsg = msg, fdata= data)
    return result

def getmenu():
    menu = bd.getMenu()
    print(menu)
    return menu

def getTestimonials():
    depoimentos = bd.getRef()
    for pessoa in depoimentos:
        if pessoa['pathImg'] == "":
            pessoa['pathImg'] = "../static/img/noImg.png"
    return depoimentos
