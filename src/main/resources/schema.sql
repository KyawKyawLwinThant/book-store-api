

create table if not exists category(
  id identity not null,
  name varchar(255) not null
);
create table if not exists book(
   id identity not null,
   title varchar(255) not null,
   price double not null,
   year_published date not null,
   publisher varchar(255) not null,
   image_url varchar(255) not null,
   author_name varchar(255) not null,
   category_id bigint not null,
   constraint fk_category  foreign key (category_id) references category(id)
);








