### 1. The "Fresh Start" Setup - Only when no directory available

Open your terminal in the folder where you want the project to live and run these:

Bash

```
# 1. Clone YOUR fork (replace with your username)
git clone https://github.com/juanguerrero09/pysheds.git
cd pysheds

# 2. Add the official Org repo as 'upstream' 
# This lets you 'sink' your code with the official version
git remote add upstream https://github.com/pysheds/pysheds.git

# 3. Verify - you should see 'origin' (yours) and 'upstream' (org)
git remote -v
```

---

### 2. The "Loop" Workflow (Daily Guide)

Whenever you want to start working on a new example or fix, follow this 5-step loop. It prevents merge conflicts and keeps your work organized.

#### Step 1: Sync with the Org

Always make sure your local code is up to date with the latest changes from the other maintainers.

Bash

```
git checkout master
git pull upstream master
```

#### Step 2: Create a Feature Branch

**Never** work directly on `master`. Create a branch for every specific task.

Bash

```
# Example: updating the pit filling example
git checkout -b docs/update-pit-filling-example
```

#### Step 3: Do the Work & Test

Modify your files, update the examples to the object-passing style, and **run them**. If it doesn't run, don't commit!

#### Step 4: Commit and Push to YOUR Fork

Bash

```
git add .
git commit -m "docs: update pit filling example to modern API"
git push origin docs/update-pit-filling-example
```

#### Step 5: Open the Pull Request

Go to the **Official Pysheds GitHub** page. It will automatically show a yellow bar saying "You recently pushed a branch... Compare & pull request." Click that and submit it.

---

### 3. Cleaning Up After a PR is Merged

Once the maintainers (or you) merge your PR into the main master branch:

1. **Switch back to master:** `git checkout master`
    
2. **Update your local master:** `git pull upstream master`
    
3. **Delete your old branch:** `git branch -d docs/update-pit-filling-example`
    
4. **Repeat!** Start again at Step 1 for the next example.
    

---