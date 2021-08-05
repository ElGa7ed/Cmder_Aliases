;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
unalias=alias /d $1
vi=vim $*

cmderr=cd /d "%CMDER_ROOT%"

ar =alias /reload

g=git
ga=git add .
gpm=git push origin master
gp=git push origin $*
gpfm=git push -u origin master
gpf=git push -u origin $*
gs=git status
gl=git pull
gc=git commit -m "$*"
gcl=git clone $*
gi=git init
gf=git commit -m "first commit"
gr=git reset

.=cd ../
c=composer
ca=composer dump-autoload
ci=composer install
cu=composer update
co=composer outdated
cr=composer global require laravel/installer
ln=laravel new $*
pa=php artisan
pas=php artisan serve
m=php artisan migrate
mr=php artisan migrate:refresh
mfs=php artisan migrate:fresh --seed
cc=php artisan cache:clear



pamc=php artisan make:controller $*Controller
pamcr=php artisan make:controller $*Controller --resource
pamm=php artisan make:model $*

pat=php artisan tinker
par=php artisan route:list

bz=composer require laravel/breeze --dev
bzi=php artisan breeze:install
nz=npm install && npm run dev

li=composer create-project --prefer-dist laravel/laravel
k=php artisan key:generate
pv="vendor/bin/phpunit"
p=phpunit
pf=phpunit --filter
pvf="vendor/bin/phpunit" --filter


y=yarn
yr=yarn run