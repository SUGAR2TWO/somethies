alter table if exists message
    add constraint message_user_fk
    foreign key (user_id) references usr