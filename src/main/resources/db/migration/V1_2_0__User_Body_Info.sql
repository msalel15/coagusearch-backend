CREATE TABLE public.user_body_info
(
    id            bigint NOT NULL,
    version       timestamp without time zone,
    user_id       bigint NOT NULL,
    name          character varying(255),
    surname       character varying(255),
    birth_day    integer,
    birth_month    integer,
    birth_year    integer,
    height        double precision,
    weight        double precision,
    blood_type    character varying(255),
    rh_type       character varying(255),
    gender        character varying(255)
);
ALTER TABLE public.user_body_info
    add constraint foreign_key_user_body_info_users foreign key (user_id)
        references public.users (id);