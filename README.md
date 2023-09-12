## table

```sql
create table board_table
(
    id            bigint auto_increment primary key,
    boardWriter   varchar(50) not null,
    boardPass     varchar(50) not null,
    boardTitle    varchar(50) not null,
    boardContents varchar(500),
    createdAt     datetime default now() not null,
    boardHits     int default 0,
    fileAttached  int default 0
);
```