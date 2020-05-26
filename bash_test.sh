

if [ -n "$(git status --porcelain)" ]; then 
git config --local user.email "action@github.com" 
git config --local user.name "GitHub Action" 
git commit -m "black code formatting" -a 
else 
echo "no changes"; 
fi