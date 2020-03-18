#this is to test whether the script include argument or not
#save as test_me.sh 

if [ "$#" -eq "0" ]; then
 echo "This is NOT a TEST"
else
 echo "This is a Test"
 fi
