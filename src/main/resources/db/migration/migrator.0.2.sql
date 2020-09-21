alter table if exists user_role
    add constraint user_role_fk
    foreign key (user_id) references usr