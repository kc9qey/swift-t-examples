import files;
import io;
import string;

int workers;

printf("turbine_workers()=%d",turbine_workers() );

app (file out) mywrapper(string program_name)
{
   program_name @stdout=out 
}

string programs[] = file_lines(input("program_list.txt") );
foreach line,i in programs
{
  printf("swift-t scheduled execution : %s", line);  
  file myout <sprintf("%s.d/%s.out",line,line)> = mywrapper(line); 
}

