import conectionsBD as bd

def getMsg(**arg):
    nome = arg['fnome']
    email = arg['femail']
    msg = arg['fmsg']
    data= arg['fdata']
    result = bd.saveMsg(fnome = nome, femail = email, fmsg = msg, fdata= data)
    return result
