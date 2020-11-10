function upload(firstname)

% Zip up all files from c:\class into [firstname].zip.
% Upload [firstname].zip into github.

addpath c:\svn\svn-master
x = sprintf('c:\\github\\trunk\\%s.zip', firstname);
zip(x, 'c:\class');
svn('add --force', x);
svn('ci', x, '-m ""');

fprintf('You can download the zip file from ');
fprintf('https://github.com/kevintraining/classfiles/blob/main/%s.zip\n', firstname);

end

