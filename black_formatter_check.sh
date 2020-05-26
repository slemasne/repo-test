black --check repo_pkg;
if [ $? = 1 ]; then 
travis_terminate 1
echo "Error code is 1"
else 
echo "Package has correct black formatting";
fi
