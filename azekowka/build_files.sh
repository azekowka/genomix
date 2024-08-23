pip install -r requirements.txt
python3.9 manage.py collectstatic --noinput

#!/bin/bash

# Combine all static files into one directory
mkdir -p combined_static
cp -r users/static/* combined_static/
cp -r main/static/* combined_static/

# Collect static files if using Django
python3 manage.py collectstatic --noinput -c --ignore admin --ignore .gitignore --ignore .git --ignore .vscode --ignore .venv --ignore build_files.sh --ignore manage.py --ignore vercel.json

# Move combined static files to the directory Vercel expects
mv combined_static/* static/
