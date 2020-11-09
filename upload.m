function upload(firstname)

% Zip up all files from c:\class into [firstname].zip.
% Upload [firstname].zip into github.

x = sprintf('c:\\github\\trunk\\%s.zip', firstname);
zip(x, 'c:\class');
svn('add', x);
svn('ci', x, '-m ""');

end
