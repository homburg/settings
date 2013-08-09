function svn_php_lint -d svn_php_lint -d "lint php files from svn status (M, C, ?)"
	svn stat | grep -e "^[M|C|?]" | sed -e "s/^.\s*//" | xargs -I¤ php -l ¤
end
