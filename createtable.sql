create table user_acct (
    seq integer not null auto_increment primary key,
    user_id varchar(100) not null unique key,
    user_nm varchar(100) not null,
    created_at date not null,
    updated_at date not null
);

create table user_info (
    seq integer not null auto_increment primary key,
    user_seq integer not null,
    age integer null,
    sex varchar(100) null,
    address varchar(100) null,
    created_at date not null,
    updated_at date not null,
    foreign key(user_seq) references user_acct(seq)
);