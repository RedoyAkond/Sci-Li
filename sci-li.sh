echo "###Welcome to our Project###"
echo "Press '1' to enter Scientific Calculator"
echo "Press '2' to do some other arithmetic operation"
echo "Press '3' to see some diagonal Shape"
read n
if [ $n == "1" ]
then
  echo "Welcome to our calculator"
echo "Enter 1st number: "
read a
echo "Select operation for first: + - *(3) / ^ √(6) n! Cos Sin Log Tan"
read n
if [ $n == "+" ]
then
     echo "Enter 2nd Number : "
     read b
     sum=$( echo "scale=2;$a+$b" | bc )
     r=$sum
     echo "Result is: "
     echo "value =$r"
elif [ $n == "-" ]
then
     echo "Enter 2nd Number : "
     read b
     sub=$( echo "scale=2;$a-$b" | bc)
     r=$sub
     echo "Result is: "
     echo "value =$r"
elif [ $n == "3" ]
then
     echo "Enter 2nd Number : "
     read b
     mul=$( echo "scale=2;$a*$b" | bc)
     r=$mul
     echo "Result is: "
     echo "value =$r"
elif [ $n == "/" ]
then
     echo "Enter 2nd Number : "
     read b
     div=$( echo "scale=2;$a/$b" | bc ) 
     r=$div
     echo "Result is: "
     echo  "value =$r";
elif [ $n == "^" ]
then
     echo "Enter 2nd Number : "
     read b
     res=$a
     for((i=1;i<b;i++)) do
        a=$( echo "scale=2;$a*$res" | bc )
     done
      r=$a
     echo "Result is: "
     echo  "value =$r"

elif [ $n == "6" ]
then
     root=$( echo "scale=2;sqrt($a)" | bc )
     r=$root
     echo "Result is: "
     echo "value =$r";
elif [ $n == "n!" ]
then
     fact=1
     for((i=a;i>=1;i--)) do
     fact=$( echo "scale=2;$fact*$i" | bc -l )
     done
     r=$fact
     echo "value =$r";

elif [ $n == "Cos" ]
then
     r=$( echo "scale=2;c($a*3.1416/180)" | bc -l )
     echo "value =$r" 
elif [ $n == "Sin" ]
then
     r=$( echo "scale=2;s($a*3.1416/180)" | bc -l )

     echo "value =$r" 
elif [ $n == "Tan" ]
then
     sin=$( echo "scale=2;s($a*3.1416/180)" | bc -l )
     cos=$( echo "scale=2;c($a*3.1416/180)" | bc -l )


     r=$( echo "scale=2;$sin/$cos" | bc -l )

     echo "value =$r"
elif [ $n == "Log" ]
then 
     echo "Enter Base: "
     read b
     r=$( echo "scale=2;l($a)/l($b)" | bc -l )

     echo "value =$r"
fi
echo "Do you want more operation ?? Press 'Y'"
read i
while [ $i = "Y" ]
do
c=$r
 echo "Select operation : + - *(3) / ^ √(6) Cos Sin Log Tan"
read n
if [ $n == "+" ]
then
     echo "Enter 2nd Number : "
     read b
     sum=$( echo "scale=2;$c+$b" | bc )
     r=$sum
     echo "Result is: "
     echo "value =$r"
elif [ $n == "-" ]
then
     echo "Enter 2nd Number : "
     read b
     sub=$( echo "scale=2;$c-$b" | bc )
     r=$sub
     echo "Result is: "
     echo "value =$r"
elif [ $n == "3" ]
then
     echo "Enter 2nd Number : "
     read b
     mul=$( echo "scale=2;$c*$b" | bc )
       r=$mul
     echo "Result is: "
     echo "value =$r"
elif [ $n == "/" ]
then
     echo "Enter 2nd Number : "
     read b
     div=$( echo "scale=2;$c/$b" | bc )
     r=$div
     echo "Result is: "
     echo  "value =$r";
elif [ $n == "^" ]
then
     echo "Enter 2nd Number : "
     read b
     res=$r
     for((i=1;i<b;i++)) do
        c=$( echo "scale=2;$c*$res" | bc )
     done
       r=$c
     echo "Result is: "
     echo  "value =$r"
elif [ $n == "6" ]
then
     a=$r
     root=$( echo "scale=2;sqrt($a)" | bc )
     r=$root
     echo "Result is: "
     echo "value =$r";
elif [ $n == "n!" ]
then
     a=$r
     fact=1
     for((i=a;i>=1;i--)) do
     fact=$( echo "scale=2;$fact*$i" | bc -l )
     done
     r=$fact
     echo "value =$r";
 
elif [ $n == "Cos" ]
then
     a=$r
     r=$( echo "scale=2;c($a*3.1416/180)" | bc -l )

     echo "value =$r" 
elif [ $n == "Sin" ]
then
     a=$r
     r=$( echo "scale=2;s($a*3.1416/180)" | bc -l )
     echo "value =$r" 
elif [ $n == "Tan" ]
then
     a=$r
     sin=$( echo "scale=2;s($a*3.1416/180)" | bc -l )
     cos=$( echo "scale=2;c($a*3.1416/180)" | bc -l )


     r=$( echo "scale=2;$sin/$cos" | bc -l )

     echo "value =$r"
elif [ $n == "Log" ]
then 
     c=$r
     echo "Enter Base: "
     read b
     r=$( echo "scale=2;l($c)/l($b)" | bc -l )

     echo "value =$r"
fi
echo "Do you want more operation ??  click "Y" "
 read i
if [ $i != "Y" ]
 then 
  exit 
fi 
done
elif [ $n == "2" ]
then
 echo "Welcome to some operation"
echo "Press '1' to find odd Even"
echo "Press '2' to find a Year is leap year or not"
echo "Press '3' to Sort 3 number"
read n
if [ $n == "1" ]
then
   echo "Please enter the number: "
   read a
   if [ $((a%2)) == 0 ]
   then
     echo "Given number is Even"
   else
     echo "Given Number is Odd"
   fi
elif [ $n == "2" ]
then
   echo "Please enter a Year" 
   read a
   if [ $((a%4)) == 0 ]
   then
    if [ $((a%100)) == 0 ]
    then
      if [ $((a%400)) == 0 ]
      then
         echo "This is a leap Year"
      else
         echo "This is not a leap year"
      fi
    else
      echo "This is a leap Year"
    fi
   else
     echo "This is not a leap year"
    fi
elif [ $n == "3" ]
then
   echo "Enter 3 numbers: "
   echo "Enter 1st Number: "
   read a
   echo "Enter 2nd Number: "
   read b
   echo "Enter 3rd Number: "
   read c
  if [ $a -gt $b ]
  then
  if [ $a -gt $c ]
  then
  if [ $b -gt $c ]
  then
  echo "Sorted: "
  echo $a
  echo $b 
  echo $c
  else
  echo "Sorted: "
  echo $a
  echo $c 
  echo $b
  fi
  else
  echo "Sorted: "
  echo $c 
  echo $a
  echo $b
  fi
 else
  if [ $b -gt $c ]
  then
  if [ $a -gt $c ]
  then
  echo "Sorted: "
  echo $b
  echo $a 
  echo $c
  else
  echo "Sorted: "
  echo $b
  echo $c 
  echo $a
  fi
 else
 echo "Sorted: "
 echo $c 
 echo $b 
 echo $a
 fi
 fi
fi
elif [ $n == "3" ]
then
  echo "Welcome to Shape World"
echo "Press 1 to print left half of pyramid"
echo "Press 2 to print right half of pyramid"
echo "Press 3 to print pyramid"
echo "Press 4 to print another shape"
read n
if [ $n == 1 ]
then
echo "Please enter Number of Line: "
read a
for((i=1;i<=a;i++)) do
  for((j=1;j<=i;j++)) do
     echo -ne "*"
  done
  echo    
done 
elif [ $n == "2" ]
then
  echo "Please enter Number of Line: "
 read a
 for((i=1;i<=a;i++)) do
  for((j=i;j<=a;j++)) do
     echo -ne " "
  done
  for((k=1;k<=i;k++)) do
   echo -ne "*"
  done
  echo    
done
elif [ $n == "3" ]
then
 echo "Please enter Number of Line: "
 read a
 for((i=1;i<=a;i++)) do
  for((j=i;j<=a;j++)) do
     echo -ne " "
  done
  for((k=1;k<=i;k++)) do
   echo -ne "*"
  done
   for((p=1;p<i;p++)) do
     echo -ne "*"
  done
  echo    
done
elif [ $n == "4" ]
then
  echo "Please enter Number of Line: "
 read a
 for((i=1;i<a;i++)) do
  for((j=i;j<a;j++)) do
     echo -ne " "
  done
  echo -ne "*"
  for((k=1;k<i;k++)) do
   echo -ne " "
  done
   for((p=1;p<i-1;p++)) do
     echo -ne " "
  done
  if [ $i -eq 1 ]
  then
     echo -ne ""
  else 
     echo -ne "*"
  fi
   
  echo    
done 
for((i=a;i>=1;i--)) do
  for((j=i;j<a;j++)) do
      echo -ne " "
  done
  echo -ne "*"
  for((k=1;k<i;k++)) do
   echo -ne " "
  done
   for((p=1;p<i-1;p++)) do
     echo -ne " "
  done
  if [ $i -eq 1 ]
  then
     echo -ne ""
  else 
     echo -ne "*"
  fi
   
  echo    
done  
fi
fi
