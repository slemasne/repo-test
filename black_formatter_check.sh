black --check repo_pkg;
if [ $? = 1 ]; then 
ERROR_CODE=1
echo "Error code is 1"
else 
ERROR_CODE=0
echo "Error code is 0";
fi
