-- 1. Брой на потребители.
select count(*) from users;
-- 2. Най-стария потребител.
select * from users order by birthDate asc limit 1;
-- 3. Най-младия потребител.
select * from users order by birthDate desc limit 1;
-- 4. Колко юзъра са регистрирани с мейли от abv и колко от gmail и колко с различни от двата. union ползвай union all да влязат в 1 заявка
select count(*) from users where email like '%abv%';
select count(*) from users where email like '%gmail%';
select count(*) from users where email not like '%gmail%' and email not like '%abv%';
-- 5. Кои юзъри са banned.
select count(*) from users where isBanned = 1;
-- 6. Изкарайте всички потребители от базата като ги наредите по име в азбучен ред и дата на раждане(от най-младия към най-възрастния).
select * from users order by username asc, birthDate desc;
-- 7. Изкарайте всички потребители от базата, на които потребителското име започва с a.
select * from users where username like 'a%';
-- 8. Изкарайте всички потребители от базата, които съдържат а username името си.
select * from users where username like '%username%';
-- 9. Изкарайте всички потребители от базата, чието име се състои от 2 имена.
select * from users where username like '% %';
-- 10. Регистрирайте 1 юзър през UI-а и го забранете след това от базата.
update users set isBanned = 1 where username = "qwertyqwertyqwerty";
select * from users where isBanned = 1;
-- 11. Брой на всички постове.
select count(*) from posts;
-- 12. Брой на всички постове групирани по статуса на post-a.
select count(*) from posts group by isDeleted;
-- 13. Намерете поста/овете с най-къс caption.
select min(caption) from posts;
-- 14. Покажете поста с най-дълъг caption.
select max(caption) from posts;
-- 15. Кой потребител има най-много постове. Използвайте join заявка.
select u.username, count(posts.id) as PostsCount from users as u left join posts on u.id = posts.userid group by u.username order by count(posts.id) desc limit 1;
-- 16. Кои потребители имат най-малко постове. Използвайте join заявка.
select u.username, count(posts.id) as PostsCount from users as u left join posts on u.id = posts.userid group by u.username order by count(posts.id) asc;
-- 17. Колко потребителя с по 1 пост имаме. Използвайте join заявка, having clause и вложени заявки.
select count(*) username, count(posts.id) as PostsCount from users as u left join posts on u.id = posts.userid group by u.username order by count(posts.id) asc;
-- 18. Колко потребителя с по малко от 5 поста имаме. Използвайте join заявка, having clause и вложени заявки.

-- 19. Кои са постовете с най-много коментари. Използвайте вложена заявка и where clause.

-- 20. Покажете най-стария пост. Може да използвате order или с aggregate function.
select * from posts order by createdAt asc limit 1;
-- 21. Покажете най-новия пост. Може с order или с aggregate function.
select * from posts order by createdAt desc limit 1;
-- 22. Покажете всички постове с празен caption.
select * from posts where caption is null;
-- 23. Създайте потребител през UI-а, добавете му public пост през базата и проверете дали се е създал през UI-а.

-- 24. Покажете всички постове и коментарите им ако имат такива.

-- 25. Покажете само постове с коментари и самите коментари.

-- 26. Покажете името на потребителя с най-много коментари. Използвайте join клауза.
select u.username, count(posts.commentsCount) as CommentsCount from users as u left join posts on u.id = posts.userid group by u.username order by count(posts.id) desc limit 1;
-- 27. Покажете всички коментари, към кой пост принадлежат и кой ги е направил. Използвайте join клауза.

-- 28. Кои потребители са like-нали най-много постове.

-- 29. Кои потребители не са like-вали постове.

-- 30. Кои постове имат like-ове. Покажете id на поста и caption.

-- 31. Кои постове имат най-много like-ове. Покажете id на поста и caption.

-- 32. Покажете всички потребители, които не follow-ват никого.

-- 33. Покажете всички потребители, които не са follow-нати от никого.

-- 34. Регистрирайте потребител през UI. Follow-нете някой съществуващ потребител и проверете дали записа го има в базата.
