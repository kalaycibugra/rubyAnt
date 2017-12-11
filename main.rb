require_relative 'Meadow'

def main()
  system "cls"
	x=Meadow.instance
  i=0
  while(i<5)
  x.disp
  sleep 1.5
  if(i!=4)
  system "cls"
end
  i=i+1
end
end
main
