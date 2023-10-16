
create table i_work_fine (
    foo       text      not null,
    barbar  bigint    primary key generated always as identity,
    hoowhee        uuid      not null,
    longcolumnname     timestamp not null
);

create table i_dont_work (
    foo        int  primary key generated always as identity,
    barbar   uuid not null,
    thebrokenbit double precision [1536],
    longcolumnname   timestamp not null
);



-- When formatted by sqlfluff, it becomes the following:
--
--
-- create table i_work_fine (
--     foo            text      not null,
--     barbar         bigint    primary key generated always as identity,
--     hoowhee        uuid      not null,
--     longcolumnname timestamp not null
-- );

-- create table i_dont_work (
--     foo            int       primary key generated always as identity,
--     barbar         uuid      not null,
--     thebrokenbit   double precision [1536],
--     longcolumnname timestamp not null
-- );

-- Notice that the constraints on i_dont_work are not formatted correctly for
-- the columns thebrokenbit and longcolumnname.
