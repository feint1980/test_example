

print("from lua called ")


o = test.object(3,15,20,"ke")


o.display(o)

print(o.id)

print(o.getPosX(o))

--print(o.getPos(o).y)

o:customFunction("hai vcl", 11)

o.name = "ewewe"

--print(o.getPosX(o))
--o_pos = o.getPos(o)
--print(o.getPos.x)



--test.config = 25


print("lua end \n")