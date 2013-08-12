function svn_php_lint -d svn_php_lint -d "lint php files from svn status (C, R, A, M, ?)"
	svn stat | grep -e "^[C|R|A|M|?]" | sed -e "s/^.\s*//" | xargs -I¤ php -l ¤
end
