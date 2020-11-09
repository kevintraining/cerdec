%% Add winmerge.
unzip https://github.com/cykhung/winmerge/archive/master.zip c:\winmerge
addpath c:\winmerge\winmerge-master

%% Do a dummy commit to cache username and password.
writecell({'dummy file'}, 'c:\github\trunk\dummy.txt')
svn ci c:\github\trunk\dummy.txt -m "Test" --username kevintraining --password CYf35T_8vn
svn rm c:\github\trunk\dummy.txt
svn ci c:\github\trunk\dummy.txt -m "Delete test file."
