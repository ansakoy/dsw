--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO dswuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO dswuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO dswuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO dswuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO dswuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO dswuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO dswuser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO dswuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO dswuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO dswuser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO dswuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO dswuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: catalog_genre; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.catalog_genre (
    id integer NOT NULL,
    name_ru character varying(250),
    name_am character varying(250),
    name_en character varying(250)
);


ALTER TABLE public.catalog_genre OWNER TO dswuser;

--
-- Name: catalog_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.catalog_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_genre_id_seq OWNER TO dswuser;

--
-- Name: catalog_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.catalog_genre_id_seq OWNED BY public.catalog_genre.id;


--
-- Name: catalog_opus; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.catalog_opus (
    table_pk character varying(10) NOT NULL,
    title_ru character varying(500) NOT NULL,
    title_am character varying(500) NOT NULL,
    title_en character varying(500) NOT NULL,
    comment_ru character varying(1000) NOT NULL,
    comment_am character varying(1000) NOT NULL,
    comment_en character varying(1000) NOT NULL,
    year character varying(4),
    genre_id integer
);


ALTER TABLE public.catalog_opus OWNER TO dswuser;

--
-- Name: catalog_opus_libretto_by; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.catalog_opus_libretto_by (
    id integer NOT NULL,
    opus_id character varying(10) NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.catalog_opus_libretto_by OWNER TO dswuser;

--
-- Name: catalog_opus_libretto_by_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.catalog_opus_libretto_by_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_opus_libretto_by_id_seq OWNER TO dswuser;

--
-- Name: catalog_opus_libretto_by_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.catalog_opus_libretto_by_id_seq OWNED BY public.catalog_opus_libretto_by.id;


--
-- Name: catalog_opus_lyrics_by; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.catalog_opus_lyrics_by (
    id integer NOT NULL,
    opus_id character varying(10) NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.catalog_opus_lyrics_by OWNER TO dswuser;

--
-- Name: catalog_opus_lyrics_by_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.catalog_opus_lyrics_by_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_opus_lyrics_by_id_seq OWNER TO dswuser;

--
-- Name: catalog_opus_lyrics_by_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.catalog_opus_lyrics_by_id_seq OWNED BY public.catalog_opus_lyrics_by.id;


--
-- Name: catalog_opus_performances; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.catalog_opus_performances (
    id integer NOT NULL,
    opus_id character varying(10) NOT NULL,
    performance_id integer NOT NULL
);


ALTER TABLE public.catalog_opus_performances OWNER TO dswuser;

--
-- Name: catalog_opus_performances_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.catalog_opus_performances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_opus_performances_id_seq OWNER TO dswuser;

--
-- Name: catalog_opus_performances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.catalog_opus_performances_id_seq OWNED BY public.catalog_opus_performances.id;


--
-- Name: catalog_performance; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.catalog_performance (
    id integer NOT NULL,
    performance_url character varying(1000) NOT NULL,
    title_ru character varying(500),
    title_am character varying(500),
    title_en character varying(500),
    "performDate" date,
    location character varying(500)
);


ALTER TABLE public.catalog_performance OWNER TO dswuser;

--
-- Name: catalog_performance_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.catalog_performance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_performance_id_seq OWNER TO dswuser;

--
-- Name: catalog_performance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.catalog_performance_id_seq OWNED BY public.catalog_performance.id;


--
-- Name: catalog_performance_performers; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.catalog_performance_performers (
    id integer NOT NULL,
    performance_id integer NOT NULL,
    performer_id integer NOT NULL
);


ALTER TABLE public.catalog_performance_performers OWNER TO dswuser;

--
-- Name: catalog_performance_performers_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.catalog_performance_performers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_performance_performers_id_seq OWNER TO dswuser;

--
-- Name: catalog_performance_performers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.catalog_performance_performers_id_seq OWNED BY public.catalog_performance_performers.id;


--
-- Name: catalog_performer; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.catalog_performer (
    id integer NOT NULL,
    role character varying(250) NOT NULL
);


ALTER TABLE public.catalog_performer OWNER TO dswuser;

--
-- Name: catalog_performer_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.catalog_performer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_performer_id_seq OWNER TO dswuser;

--
-- Name: catalog_performer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.catalog_performer_id_seq OWNED BY public.catalog_performer.id;


--
-- Name: catalog_performer_performer; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.catalog_performer_performer (
    id integer NOT NULL,
    performer_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.catalog_performer_performer OWNER TO dswuser;

--
-- Name: catalog_performer_performer_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.catalog_performer_performer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_performer_performer_id_seq OWNER TO dswuser;

--
-- Name: catalog_performer_performer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.catalog_performer_performer_id_seq OWNED BY public.catalog_performer_performer.id;


--
-- Name: catalog_person; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.catalog_person (
    id integer NOT NULL,
    fname_ru character varying(250) NOT NULL,
    lname_ru character varying(250),
    fname_am character varying(250),
    lname_am character varying(250),
    fname_en character varying(250),
    lname_en character varying(250)
);


ALTER TABLE public.catalog_person OWNER TO dswuser;

--
-- Name: catalog_person_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.catalog_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_person_id_seq OWNER TO dswuser;

--
-- Name: catalog_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.catalog_person_id_seq OWNED BY public.catalog_person.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO dswuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO dswuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO dswuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO dswuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO dswuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO dswuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO dswuser;

--
-- Name: works_about; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.works_about (
    id integer NOT NULL,
    section_code character varying(10) NOT NULL,
    section_name character varying(40),
    text text,
    language character varying(2) NOT NULL
);


ALTER TABLE public.works_about OWNER TO dswuser;

--
-- Name: works_about_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.works_about_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.works_about_id_seq OWNER TO dswuser;

--
-- Name: works_about_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.works_about_id_seq OWNED BY public.works_about.id;


--
-- Name: works_band; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.works_band (
    band_id character varying(10) NOT NULL,
    url character varying(1000),
    type_ru character varying(100),
    name_ru character varying(100),
    type_hy character varying(100),
    name_hy character varying(100),
    type_en character varying(100),
    name_en character varying(100)
);


ALTER TABLE public.works_band OWNER TO dswuser;

--
-- Name: works_bio; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.works_bio (
    id integer NOT NULL,
    text text,
    language character varying(2) NOT NULL,
    section_code character varying(10),
    section_name character varying(40),
    page_title character varying(200)
);


ALTER TABLE public.works_bio OWNER TO dswuser;

--
-- Name: works_bio_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.works_bio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.works_bio_id_seq OWNER TO dswuser;

--
-- Name: works_bio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.works_bio_id_seq OWNED BY public.works_bio.id;


--
-- Name: works_genre; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.works_genre (
    name_ru character varying(250),
    name_hy character varying(250),
    name_en character varying(250),
    genre_id character varying(10) NOT NULL
);


ALTER TABLE public.works_genre OWNER TO dswuser;

--
-- Name: works_home; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.works_home (
    id integer NOT NULL,
    page_title character varying(200),
    text text,
    language character varying(2) NOT NULL
);


ALTER TABLE public.works_home OWNER TO dswuser;

--
-- Name: works_home_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.works_home_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.works_home_id_seq OWNER TO dswuser;

--
-- Name: works_home_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.works_home_id_seq OWNED BY public.works_home.id;


--
-- Name: works_opus; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.works_opus (
    opus_id character varying(10) NOT NULL,
    title_ru character varying(500) NOT NULL,
    title_hy character varying(500) NOT NULL,
    title_en character varying(500) NOT NULL,
    comment_ru character varying(1000),
    comment_hy character varying(1000),
    comment_en character varying(1000),
    year character varying(4),
    genre_id integer,
    subtitle_en character varying(500),
    subtitle_hy character varying(500),
    subtitle_ru character varying(500)
);


ALTER TABLE public.works_opus OWNER TO dswuser;

--
-- Name: works_opus_libretto_by; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.works_opus_libretto_by (
    id integer NOT NULL,
    opus_id character varying(10) NOT NULL,
    person_id character varying(10) NOT NULL
);


ALTER TABLE public.works_opus_libretto_by OWNER TO dswuser;

--
-- Name: works_opus_libretto_by_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.works_opus_libretto_by_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.works_opus_libretto_by_id_seq OWNER TO dswuser;

--
-- Name: works_opus_libretto_by_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.works_opus_libretto_by_id_seq OWNED BY public.works_opus_libretto_by.id;


--
-- Name: works_opus_lyrics_by; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.works_opus_lyrics_by (
    id integer NOT NULL,
    opus_id character varying(10) NOT NULL,
    person_id character varying(10) NOT NULL
);


ALTER TABLE public.works_opus_lyrics_by OWNER TO dswuser;

--
-- Name: works_opus_lyrics_by_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.works_opus_lyrics_by_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.works_opus_lyrics_by_id_seq OWNER TO dswuser;

--
-- Name: works_opus_lyrics_by_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.works_opus_lyrics_by_id_seq OWNED BY public.works_opus_lyrics_by.id;


--
-- Name: works_performance; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.works_performance (
    perform_date date,
    opus_id character varying(10),
    audio_url character varying(1000),
    conductor_id character varying(10),
    performance_id character varying(10) NOT NULL,
    video_url character varying(1000),
    band_id character varying(10),
    name_en character varying(1000),
    name_hy character varying(1000),
    name_ru character varying(1000)
);


ALTER TABLE public.works_performance OWNER TO dswuser;

--
-- Name: works_performer; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.works_performer (
    id integer NOT NULL,
    role_ru character varying(250) NOT NULL,
    performance_id integer,
    performer_id character varying(10) NOT NULL,
    role_en character varying(250) NOT NULL,
    role_hy character varying(250) NOT NULL
);


ALTER TABLE public.works_performer OWNER TO dswuser;

--
-- Name: works_performer_id_seq; Type: SEQUENCE; Schema: public; Owner: dswuser
--

CREATE SEQUENCE public.works_performer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.works_performer_id_seq OWNER TO dswuser;

--
-- Name: works_performer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dswuser
--

ALTER SEQUENCE public.works_performer_id_seq OWNED BY public.works_performer.id;


--
-- Name: works_person; Type: TABLE; Schema: public; Owner: dswuser
--

CREATE TABLE public.works_person (
    person_id character varying(10) NOT NULL,
    fname_ru character varying(250) NOT NULL,
    lname_ru character varying(250),
    fname_hy character varying(250),
    lname_hy character varying(250),
    fname_en character varying(250),
    lname_en character varying(250)
);


ALTER TABLE public.works_person OWNER TO dswuser;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: catalog_genre id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_genre ALTER COLUMN id SET DEFAULT nextval('public.catalog_genre_id_seq'::regclass);


--
-- Name: catalog_opus_libretto_by id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_libretto_by ALTER COLUMN id SET DEFAULT nextval('public.catalog_opus_libretto_by_id_seq'::regclass);


--
-- Name: catalog_opus_lyrics_by id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_lyrics_by ALTER COLUMN id SET DEFAULT nextval('public.catalog_opus_lyrics_by_id_seq'::regclass);


--
-- Name: catalog_opus_performances id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_performances ALTER COLUMN id SET DEFAULT nextval('public.catalog_opus_performances_id_seq'::regclass);


--
-- Name: catalog_performance id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performance ALTER COLUMN id SET DEFAULT nextval('public.catalog_performance_id_seq'::regclass);


--
-- Name: catalog_performance_performers id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performance_performers ALTER COLUMN id SET DEFAULT nextval('public.catalog_performance_performers_id_seq'::regclass);


--
-- Name: catalog_performer id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performer ALTER COLUMN id SET DEFAULT nextval('public.catalog_performer_id_seq'::regclass);


--
-- Name: catalog_performer_performer id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performer_performer ALTER COLUMN id SET DEFAULT nextval('public.catalog_performer_performer_id_seq'::regclass);


--
-- Name: catalog_person id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_person ALTER COLUMN id SET DEFAULT nextval('public.catalog_person_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: works_about id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_about ALTER COLUMN id SET DEFAULT nextval('public.works_about_id_seq'::regclass);


--
-- Name: works_bio id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_bio ALTER COLUMN id SET DEFAULT nextval('public.works_bio_id_seq'::regclass);


--
-- Name: works_home id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_home ALTER COLUMN id SET DEFAULT nextval('public.works_home_id_seq'::regclass);


--
-- Name: works_opus_libretto_by id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_opus_libretto_by ALTER COLUMN id SET DEFAULT nextval('public.works_opus_libretto_by_id_seq'::regclass);


--
-- Name: works_opus_lyrics_by id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_opus_lyrics_by ALTER COLUMN id SET DEFAULT nextval('public.works_opus_lyrics_by_id_seq'::regclass);


--
-- Name: works_performer id; Type: DEFAULT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_performer ALTER COLUMN id SET DEFAULT nextval('public.works_performer_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add genre	1	add_genre
2	Can change genre	1	change_genre
3	Can delete genre	1	delete_genre
4	Can view genre	1	view_genre
5	Can add opus	2	add_opus
6	Can change opus	2	change_opus
7	Can delete opus	2	delete_opus
8	Can view opus	2	view_opus
9	Can add performance	3	add_performance
10	Can change performance	3	change_performance
11	Can delete performance	3	delete_performance
12	Can view performance	3	view_performance
13	Can add performer	4	add_performer
14	Can change performer	4	change_performer
15	Can delete performer	4	delete_performer
16	Can view performer	4	view_performer
17	Can add person	5	add_person
18	Can change person	5	change_person
19	Can delete person	5	delete_person
20	Can view person	5	view_person
21	Can add log entry	6	add_logentry
22	Can change log entry	6	change_logentry
23	Can delete log entry	6	delete_logentry
24	Can view log entry	6	view_logentry
25	Can add permission	7	add_permission
26	Can change permission	7	change_permission
27	Can delete permission	7	delete_permission
28	Can view permission	7	view_permission
29	Can add group	8	add_group
30	Can change group	8	change_group
31	Can delete group	8	delete_group
32	Can view group	8	view_group
33	Can add user	9	add_user
34	Can change user	9	change_user
35	Can delete user	9	delete_user
36	Can view user	9	view_user
37	Can add content type	10	add_contenttype
38	Can change content type	10	change_contenttype
39	Can delete content type	10	delete_contenttype
40	Can view content type	10	view_contenttype
41	Can add session	11	add_session
42	Can change session	11	change_session
43	Can delete session	11	delete_session
44	Can view session	11	view_session
45	Can add person	12	add_person
46	Can change person	12	change_person
47	Can delete person	12	delete_person
48	Can view person	12	view_person
49	Can add performance	13	add_performance
50	Can change performance	13	change_performance
51	Can delete performance	13	delete_performance
52	Can view performance	13	view_performance
53	Can add genre	14	add_genre
54	Can change genre	14	change_genre
55	Can delete genre	14	delete_genre
56	Can view genre	14	view_genre
57	Can add performer	15	add_performer
58	Can change performer	15	change_performer
59	Can delete performer	15	delete_performer
60	Can view performer	15	view_performer
61	Can add opus	16	add_opus
62	Can change opus	16	change_opus
63	Can delete opus	16	delete_opus
64	Can view opus	16	view_opus
65	Can add band	17	add_band
66	Can change band	17	change_band
67	Can delete band	17	delete_band
68	Can view band	17	view_band
69	Can add about	18	add_about
70	Can change about	18	change_about
71	Can delete about	18	delete_about
72	Can add bio	19	add_bio
73	Can change bio	19	change_bio
74	Can delete bio	19	delete_bio
75	Can add home	20	add_home
76	Can change home	20	change_home
77	Can delete home	20	delete_home
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$HSSFhxteZi3O$PSpuDY0cjm8wnI8BGIVlPF92EH5lvyGU2TIzkBhZ1jE=	2019-06-10 10:36:01.959885+03	t	dsw			ansakoy@gmail.com	t	t	2019-04-22 12:46:10.695449+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: catalog_genre; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.catalog_genre (id, name_ru, name_am, name_en) FROM stdin;
\.


--
-- Data for Name: catalog_opus; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.catalog_opus (table_pk, title_ru, title_am, title_en, comment_ru, comment_am, comment_en, year, genre_id) FROM stdin;
\.


--
-- Data for Name: catalog_opus_libretto_by; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.catalog_opus_libretto_by (id, opus_id, person_id) FROM stdin;
\.


--
-- Data for Name: catalog_opus_lyrics_by; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.catalog_opus_lyrics_by (id, opus_id, person_id) FROM stdin;
\.


--
-- Data for Name: catalog_opus_performances; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.catalog_opus_performances (id, opus_id, performance_id) FROM stdin;
\.


--
-- Data for Name: catalog_performance; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.catalog_performance (id, performance_url, title_ru, title_am, title_en, "performDate", location) FROM stdin;
\.


--
-- Data for Name: catalog_performance_performers; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.catalog_performance_performers (id, performance_id, performer_id) FROM stdin;
\.


--
-- Data for Name: catalog_performer; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.catalog_performer (id, role) FROM stdin;
\.


--
-- Data for Name: catalog_performer_performer; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.catalog_performer_performer (id, performer_id, person_id) FROM stdin;
\.


--
-- Data for Name: catalog_person; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.catalog_person (id, fname_ru, lname_ru, fname_am, lname_am, fname_en, lname_en) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-05-01 15:31:54.407469+03	1122	╨Ц╨╕╤В╨╕╨╡ ╨┤╤Г╤А╨░╨║╨╛╨▓ - ╒О╒б╓А╓Д ╒░╒л╒┤╒б╓А╒б╓Б - ╨Ц╨╕╤В╨╕╨╡ ╨┤╤Г╤А╨░╨║╨╛╨▓	2	[{"changed": {"fields": ["perform_date", "name_ru", "name_hy", "name_en"]}}]	13	1
2	2019-05-01 15:45:29.713738+03	1122	╨Ц╨╕╤В╨╕╨╡ ╨┤╤Г╤А╨░╨║╨╛╨▓ - ╒О╒б╓А╓Д ╒░╒л╒┤╒б╓А╒б╓Б - ╨Ц╨╕╤В╨╕╨╡ ╨┤╤Г╤А╨░╨║╨╛╨▓	2	[{"changed": {"fields": ["video_url"]}}]	13	1
3	2019-05-01 16:02:46.406223+03	1122	╨Ц╨╕╤В╨╕╨╡ ╨┤╤Г╤А╨░╨║╨╛╨▓ - ╒О╒б╓А╓Д ╒░╒л╒┤╒б╓А╒б╓Б - ╨Ц╨╕╤В╨╕╨╡ ╨┤╤Г╤А╨░╨║╨╛╨▓	2	[{"changed": {"fields": ["audio_url"]}}]	13	1
4	2019-05-01 16:08:53.072819+03	1117	╨Т╨╕╤Б╨╛╨║╨╛╤Б╨╜╤Л╨╣ ╨│╨╛╨┤ - ╒Ж╒б╒░╒б╒╢╒╗ ╒┐╒б╓А╒л - None	2	[{"changed": {"fields": ["video_url"]}}]	13	1
5	2019-05-01 16:09:05.781686+03	1117	╨Т╨╕╤Б╨╛╨║╨╛╤Б╨╜╤Л╨╣ ╨│╨╛╨┤ - ╒Ж╒б╒░╒б╒╢╒╗ ╒┐╒б╓А╒л - None	2	[]	13	1
6	2019-05-01 16:10:00.554763+03	1116	╨е╤А╨╕╤Б╤В╨╛╤Б - ╒Ф╓А╒л╒╜╒┐╒╕╒╜ - ╨г╨▓╨╡╤А╤В╤О╤А╨░	2	[{"changed": {"fields": ["video_url"]}}]	13	1
7	2019-05-01 16:10:55.217337+03	1115	╨б╨╛╨╜╨░╤В╨░ - ╒Н╒╕╒╢╒б╒┐ - ╨з╨░╤Б╤В╤М II	2	[{"changed": {"fields": ["video_url"]}}]	13	1
8	2019-05-01 16:11:41.053912+03	1114	╨б╨╛╨╜╨░╤В╨░ - ╒Н╒╕╒╢╒б╒┐ - ╨з╨░╤Б╤В╤М I	2	[{"changed": {"fields": ["video_url"]}}]	13	1
9	2019-05-01 16:12:15.551748+03	1112	╨е╤А╨╕╤Б╤В╨╛╤Б - ╒Ф╓А╒л╒╜╒┐╒╕╒╜ - ╨г╨▓╨╡╤А╤В╤О╤А╨░	2	[{"changed": {"fields": ["video_url"]}}]	13	1
10	2019-05-07 12:33:09.338307+03	1122	╨Ц╨╕╤В╨╕╨╡ ╨┤╤Г╤А╨░╨║╨╛╨▓ - ╒О╒б╓А╓Д ╒░╒л╒┤╒б╓А╒б╓Б - None	2	[{"changed": {"fields": ["name_ru", "name_hy", "name_en"]}}]	13	1
11	2019-05-07 12:42:23.197716+03	1122	╨Ц╨╕╤В╨╕╨╡ ╨┤╤Г╤А╨░╨║╨╛╨▓ - ╒О╒б╓А╓Д ╒░╒л╒┤╒б╓А╒б╓Б - None	2	[{"changed": {"fields": ["video_url"]}}]	13	1
12	2019-05-07 12:44:28.960657+03	1117	╨Т╨╕╤Б╨╛╨║╨╛╤Б╨╜╤Л╨╣ ╨│╨╛╨┤ - ╒Ж╒б╒░╒б╒╢╒╗ ╒┐╒б╓А╒л - None	2	[{"changed": {"fields": ["video_url"]}}]	13	1
13	2019-05-07 12:44:42.16516+03	1116	╨е╤А╨╕╤Б╤В╨╛╤Б - ╒Ф╓А╒л╒╜╒┐╒╕╒╜ - ╨г╨▓╨╡╤А╤В╤О╤А╨░	2	[{"changed": {"fields": ["video_url"]}}]	13	1
14	2019-05-07 12:44:50.513795+03	1115	╨б╨╛╨╜╨░╤В╨░ - ╒Н╒╕╒╢╒б╒┐ - ╨з╨░╤Б╤В╤М II	2	[{"changed": {"fields": ["video_url"]}}]	13	1
15	2019-05-07 12:45:00.203396+03	1114	╨б╨╛╨╜╨░╤В╨░ - ╒Н╒╕╒╢╒б╒┐ - ╨з╨░╤Б╤В╤М I	2	[{"changed": {"fields": ["video_url"]}}]	13	1
16	2019-05-07 12:45:07.750821+03	1112	╨е╤А╨╕╤Б╤В╨╛╤Б - ╒Ф╓А╒л╒╜╒┐╒╕╒╜ - ╨г╨▓╨╡╤А╤В╤О╤А╨░	2	[{"changed": {"fields": ["video_url"]}}]	13	1
17	2019-05-10 22:35:49.173878+03	71	╨н╤В╨░ ╤Б╤В╤А╨░╨╜╨╜╨░╤П ╨╝╤Г╨╖╤Л╨║╨░ A.D.Es - ╘▒╒╡╒╜ , ╒┐╒б╓А╓Е╓А╒л╒╢╒б╒п A. D. Es. ╒е╓А╒б╒к╒╖╒┐╒╕╓В╒й╒╡╒╕╓В╒╢╒и	2	[{"changed": {"fields": ["title_hy"]}}]	16	1
18	2019-05-12 03:18:59.267439+03	1123	None - ╨з╨░╤Б╤В╤М I	1	[{"added": {}}]	13	1
19	2019-05-12 03:31:46.389002+03	1123	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ2 - ╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ2 - ╨з╨░╤Б╤В╤М I	2	[{"changed": {"fields": ["opus"]}}]	13	1
20	2019-05-12 23:46:26.54129+03	1111	╨Я╤П╤В╤М ╨┤╤Г╤Е╨╛╨▓╨╜╤Л╤Е ╨┐╤А╨╡╨╗╤О╨┤╨╕╨╣ ╨╕ ╤Д╤Г╨│ - ╒А╒л╒╢╒г ╒░╒╕╒г╓З╒╕╓А ╒║╓А╒е╒м╒╡╒╕╓В╒д ╓З ╓Ж╒╕╓В╒г╒б - ╨д╤Г╨│╨░ ╨╕╨╖ ╨┐╨╡╤А╨▓╨╛╨╣ ╤З╨░╤Б╤В╨╕ ╤Ж╨╕╨║╨╗╨░	1	[{"added": {}}]	13	1
21	2019-05-13 00:18:31.352977+03	1124	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ1 - ╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ1 - None	1	[{"added": {}}]	13	1
22	2019-05-13 10:51:52.623633+03	1118	╨в╨╕╤И╨╕╨╜╨░ ╨▓╨╖╨│╨╗╤П╨┤╨╛╨▓ ╤В╨▓╨╛╨╕╤Е - ╘╝╒╝╒╕╓В╒й╒л╓В╒╢╒и ╒╢╒б╒╡╒╕╓В╒б╒о╓Д ╒╢╒е╓А╒╕╓В╒д - None	1	[{"added": {}}]	13	1
23	2019-05-13 11:13:35.423875+03	20	╨Ы╤Г╤Б╨╕╨╜╨╡ ╨Ь╨░╤А╨║╨╛╤Б╤П╨╜	1	[{"added": {}}]	12	1
24	2019-05-13 11:15:50.039135+03	1	╨Ы╤Г╤Б╨╕╨╜╨╡ ╨Ь╨░╤А╨║╨╛╤Б╤П╨╜	1	[{"added": {}}]	15	1
25	2019-05-13 11:16:22.018206+03	2	╨б╨╡╨┤╤А╨░╨║ ╨Х╤А╨║╨░╨╜╤П╨╜	1	[{"added": {}}]	15	1
26	2019-05-13 11:16:59.446053+03	2	╨б╨╡╨┤╤А╨░╨║ ╨Х╤А╨║╨░╨╜╤П╨╜	2	[{"changed": {"fields": ["role_hy", "role_en"]}}]	15	1
27	2019-05-13 11:29:55.628449+03	21	╨У╤А╨╡╤В╨░ ╨Р╨╜╤В╨╛╨╜╤П╨╜	1	[{"added": {}}]	12	1
28	2019-05-13 11:37:06.462738+03	1119	1119: 75: ╨б╨╡╨╝╤М ╨║╨╕╤В╨░╨╣╤Б╨║╨╕╤Е ╨╝╨╡╨╗╨╛╨┤╨╕╨╣ - ╒Й╒л╒╢╒б╒п╒б╒╢ ╒╡╒╕╒й ╒┤╒е╒▓╒е╒д╒л - ╨Ц╤Г╤А╤З╨░╤Й╨╕╨╡ ╤А╨╡╤З╨║╨╕	1	[{"added": {}}]	13	1
29	2019-05-13 11:38:26.731447+03	3	╨У╤А╨╡╤В╨░ ╨Р╨╜╤В╨╛╨╜╤П╨╜	1	[{"added": {}}]	15	1
30	2019-05-13 12:36:43.305226+03	1121	1121: 64: ╨б╨╛╨╜╨░╤В╨░ тДЦ1 - ╒Н╒╕╒╢╒б╒┐ тДЦ1 - None	2	[{"changed": {"fields": ["video_url"]}}]	13	1
31	2019-05-17 15:58:25.72433+03	1	ru - general	1	[{"added": {}}]	18	1
32	2019-05-17 16:00:05.036012+03	2	en - general	1	[{"added": {}}]	18	1
33	2019-05-17 16:00:29.122507+03	3	hy - general	1	[{"added": {}}]	18	1
34	2019-05-17 16:20:07.349926+03	4	en - sections	1	[{"added": {}}]	18	1
35	2019-05-17 16:21:08.783859+03	5	ru - sections	1	[{"added": {}}]	18	1
36	2019-05-17 16:21:23.071569+03	5	ru - sections	2	[]	18	1
37	2019-05-18 14:52:56.346716+03	1	ru	1	[{"added": {}}]	19	1
38	2019-05-18 14:55:02.809957+03	1	ru	2	[{"changed": {"fields": ["page_title"]}}]	19	1
39	2019-05-18 15:12:58.964367+03	1	ru	1	[{"added": {}}]	20	1
40	2019-05-20 00:11:46.885774+03	1	ru	2	[{"changed": {"fields": ["text"]}}]	19	1
41	2019-05-20 01:31:13.860209+03	6	ru - license	1	[{"added": {}}]	18	1
42	2019-05-20 01:38:52.294537+03	7	ru - privacy	1	[{"added": {}}]	18	1
43	2019-05-20 11:35:50.058844+03	6	ru - license	2	[{"changed": {"fields": ["text"]}}]	18	1
44	2019-05-20 13:22:08.44531+03	5	ru - sections	2	[{"changed": {"fields": ["text"]}}]	18	1
45	2019-05-20 13:26:57.282123+03	1	ru - general	2	[{"changed": {"fields": ["text"]}}]	18	1
46	2019-05-20 13:28:09.369526+03	1	ru - general	2	[{"changed": {"fields": ["text"]}}]	18	1
47	2019-05-20 17:21:07.0602+03	8	ru - contacts	1	[{"added": {}}]	18	1
48	2019-05-20 17:28:01.266281+03	8	ru - contacts	2	[{"changed": {"fields": ["text"]}}]	18	1
49	2019-05-21 14:29:30.055486+03	2	hy	1	[{"added": {}}]	20	1
50	2019-05-21 14:29:47.110599+03	3	en	1	[{"added": {}}]	20	1
51	2019-06-10 10:42:31.779145+03	1	1: ╨Ъ╨╕╨║╨╛╤Б ╨╕ ╨Ъ╨╕╤А╨░╨║╨╛╤Б - ╘┐╒л╒п╒╕╒╜╒╢ ╒╕╓В ╘┐╒л╓А╒б╒п╒╕╒╜╒и	2	[{"changed": {"fields": ["title_hy"]}}]	16	1
52	2019-06-10 10:45:54.197878+03	3	3: ╨С╨╡╨╖ ╨╖╨░╨│╨╗╨░╨▓╨╕╤П - ╘▒╒╢╒╛╒е╓А╒╢╒б╒г╒л╓А	2	[{"changed": {"fields": ["comment_hy"]}}]	16	1
53	2019-06-10 10:52:35.67944+03	22	22: ╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ1 - ╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ1	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
54	2019-06-10 10:53:16.364422+03	23	23: ╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ2 - ╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ2	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
55	2019-06-10 10:53:33.148308+03	25	25: ╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ4 - ╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ4	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
56	2019-06-10 10:54:11.374272+03	24	24: ╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ3 - ╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ3	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
57	2019-06-10 11:08:57.589655+03	31	31: ╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ2 - ╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ2	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
58	2019-06-10 11:09:20.365255+03	33	33: ╨Ъ╨╛╨╜╤Ж╨╡╤А╤В - ╘┐╒╕╒╢╓Б╒е╓А╒┐	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
59	2019-06-10 11:09:36.905848+03	34	34: ╨а╨╡╨║╨▓╨╕╨╡╨╝ - ╒М╒е╓Д╒╛╒л╒е╒┤	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
60	2019-06-10 11:10:58.197218+03	11	╨Р╨╗╨╡╨║╤Б╨░╨╜╨┤╤А ╨Ю╨▓╤Б╨╡╨┐╤П╨╜	2	[{"changed": {"fields": ["fname_hy"]}}]	12	1
61	2019-06-10 11:35:27.007731+03	35	35: ╨и╤Г╤В╨║╨░ - ╘┐╒б╒┐╒б╒п	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
62	2019-06-10 11:48:25.617503+03	36	36: ╨Ъ╨░╨╝╨╡╤А╨╜╨░╤П ╨║╨░╨╜╤В╨░╤В╨░ тДЦ1 ┬л╨Ш╨╖ ╨│╨╗╤Г╨▒╨╕╨╜ ╤Б╨╡╤А╨┤╤Ж╨░┬╗ - ╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒п╒б╒╢╒┐╒б╒┐ тДЦ1 ┬л╘╗ ╒н╒╕╓А╒╕╓Б ╒╜╓А╒┐╒л┬╗	2	[{"changed": {"fields": ["subtitle_ru", "subtitle_hy", "subtitle_en"]}}]	16	1
63	2019-06-10 12:31:52.536071+03	38	38: ╨Ъ╨░╨╝╨╡╤А╨╜╨░╤П ╨║╨░╨╜╤В╨░╤В╨░ тДЦ3 - ╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒п╒б╒╢╒┐╒б╒┐ тДЦ3	2	[{"changed": {"fields": ["subtitle_ru", "subtitle_hy", "subtitle_en"]}}]	16	1
64	2019-06-10 12:33:46.517938+03	51	51: ╨Ь╨╜╨╛╨│╨╛╤В╨╛╤З╨╕╨╡ - ╘▓╒б╒ж╒┤╒б╒п╒е╒┐	2	[{"changed": {"fields": ["title_hy"]}}]	16	1
65	2019-06-10 12:40:14.502979+03	74	74: ╨Ь╨╛╨╗╨╕╤В╨▓╨░ ╨С╨╛╨│╨╛╤А╨╛╨┤╨╕╤Ж╨╡ ╨┤╨╗╤П ╨Ь╨░╤А╨╕╨░╨╝╨╕╨║ - ╘▒╒▓╒╕╒й╓Д ╒П╒л╓А╒б╒┤╒╕╓А╒и ╒Д╒б╓А╒л╒б╒┤╒л╒п╒л ╒░╒б╒┤╒б╓А	2	[{"changed": {"fields": ["subtitle_ru", "title_hy", "subtitle_hy", "subtitle_en"]}}]	16	1
66	2019-06-10 12:40:50.588981+03	74	74: ╨Ь╨╛╨╗╨╕╤В╨▓╨░ ╨С╨╛╨│╨╛╤А╨╛╨┤╨╕╤Ж╨╡ ╨┤╨╗╤П ╨Ь╨░╤А╨╕╨░╨╝╨╕╨║ - ╘▒╒▓╒╕╒й╓Д ╒П╒л╓А╒б╒┤╒╕╓А╒и ╒Д╒б╓А╒л╒б╒┤╒л╒п╒л ╒░╒б╒┤╒б╓А	2	[{"changed": {"fields": ["subtitle_en"]}}]	16	1
67	2019-06-10 12:47:57.447313+03	77	77: ╨Я╤П╤В╤М ╨░╤А╨╝╤П╨╜╤Б╨║╨╕╤Е ╨╜╨░╤А╨╛╨┤╨╜╤Л╤Е ╨┐╨╡╤Б╨╡╨╜ - ╒А╒б╒╡╒п╒б╒п╒б╒╢ ╒к╒╕╒▓╒╕╒╛╓А╒д╒б╒п╒б╒╢ ╒░╒л╒╢╒г ╒е╓А╒г	2	[{"changed": {"fields": ["title_ru", "title_hy", "title_en"]}}]	16	1
68	2019-06-10 12:48:45.969187+03	78	78: ╨Ю╨▒╤А╨░╨▒╨╛╤В╨║╨░ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╜╨╛╨╣ ╨┐╤М╨╡╤Б╤Л ╨н. ╨Ь╨╕╤А╨╖╨╛╤П╨╜╨░ "╨У╤А╤Г╤Б╤В╨╜╤Л╨╣ ╨▓╨░╨╗╤М╤Б" - ╘╖╒д. ╒Д╒л╓А╒ж╒╕╒╡╒б╒╢╒л ┬л╒П╒н╒╕╓В╓А ╒╛╒б╒м╒╜┬╗ ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒б╒╡╒л╒╢ ╒║╒л╒е╒╜╒л ╒┤╒╖╒б╒п╒╕╓В╒┤	2	[{"changed": {"fields": ["title_hy"]}}]	16	1
69	2019-06-10 12:49:43.636974+03	89	89: ╨Я╤Б╨░╨╗╨╛╨╝ - ╒Н╒б╒▓╒┤╒╕╒╜	2	[{"changed": {"fields": ["title_hy"]}}]	16	1
70	2019-06-10 12:52:20.880966+03	92	92: ╨а╨╛╨╖╨░ - ╒О╒б╓А╒д╒и	2	[{"changed": {"fields": ["comment_hy"]}}]	16	1
71	2019-06-10 12:59:02.210671+03	124	╨е╨╛╤А╨╛╨▓╤Л╨╡ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╤П	1	[{"added": {}}]	14	1
72	2019-06-10 12:59:23.917763+03	94	94: ╨н╨╗╨╡╨│╨╕╤П - ╘╡╒▓╒е╓А╒е╓А╒г	2	[{"changed": {"fields": ["genre"]}}]	16	1
73	2019-06-10 12:59:34.00801+03	95	95: ╨в╨╛╨║╨║╨░╤В╨░ - ╒П╒╕╒п╒б╒┐	2	[{"changed": {"fields": ["genre"]}}]	16	1
74	2019-06-10 12:59:45.035762+03	96	96: ╨Ю╤В╤З╨╡ ╨╜╨░╤И - ╒А╒б╒╡╓А ╒┤╒е╓А	2	[{"changed": {"fields": ["genre"]}}]	16	1
75	2019-06-10 12:59:55.102484+03	97	97: ╨в╨╛╨║╨║╨░╤В╨░ - ╒П╒╕╒п╒б╒┐	2	[{"changed": {"fields": ["genre"]}}]	16	1
76	2019-06-20 11:47:25.550582+03	4	en - sections	2	[{"changed": {"fields": ["text"]}}]	18	1
77	2019-06-20 11:48:02.945254+03	2	en - general	2	[{"changed": {"fields": ["text"]}}]	18	1
78	2019-06-20 11:49:37.302319+03	9	en - license	1	[{"added": {}}]	18	1
79	2019-06-20 11:50:23.82096+03	10	en - privacy	1	[{"added": {}}]	18	1
80	2019-06-20 11:54:46.281884+03	11	en - contacts	1	[{"added": {}}]	18	1
81	2019-06-24 11:27:37.415767+03	1	ru - general	2	[{"changed": {"fields": ["text"]}}]	18	1
82	2019-06-24 11:30:22.864946+03	5	ru - sections	2	[{"changed": {"fields": ["text"]}}]	18	1
83	2019-06-24 11:31:58.891158+03	6	ru - license	2	[{"changed": {"fields": ["text"]}}]	18	1
84	2019-06-24 11:33:37.870084+03	7	ru - privacy	2	[{"changed": {"fields": ["text"]}}]	18	1
85	2019-06-24 11:34:22.940457+03	8	ru - contacts	2	[{"changed": {"fields": ["text"]}}]	18	1
86	2019-06-25 12:25:51.182495+03	2	ru	1	[{"added": {}}]	19	1
87	2019-06-25 12:28:46.181718+03	3	ru	1	[{"added": {}}]	19	1
88	2019-06-25 12:30:01.891477+03	4	ru	1	[{"added": {}}]	19	1
89	2019-06-25 12:30:31.263063+03	5	ru	1	[{"added": {}}]	19	1
90	2019-06-25 12:40:42.662439+03	3	ru	2	[{"changed": {"fields": ["section_code"]}}]	19	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	catalog	genre
2	catalog	opus
3	catalog	performance
4	catalog	performer
5	catalog	person
6	admin	logentry
7	auth	permission
8	auth	group
9	auth	user
10	contenttypes	contenttype
11	sessions	session
12	works	person
13	works	performance
14	works	genre
15	works	performer
16	works	opus
17	works	band
18	works	about
19	works	bio
20	works	home
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-04-15 12:03:47.213474+03
2	auth	0001_initial	2019-04-15 12:03:47.385107+03
3	admin	0001_initial	2019-04-15 12:03:47.584337+03
4	admin	0002_logentry_remove_auto_add	2019-04-15 12:03:47.663408+03
5	admin	0003_logentry_add_action_flag_choices	2019-04-15 12:03:47.677393+03
6	contenttypes	0002_remove_content_type_name	2019-04-15 12:03:47.7114+03
7	auth	0002_alter_permission_name_max_length	2019-04-15 12:03:47.718392+03
8	auth	0003_alter_user_email_max_length	2019-04-15 12:03:47.728378+03
9	auth	0004_alter_user_username_opts	2019-04-15 12:03:47.738367+03
10	auth	0005_alter_user_last_login_null	2019-04-15 12:03:47.750354+03
11	auth	0006_require_contenttypes_0002	2019-04-15 12:03:47.752351+03
12	auth	0007_alter_validators_add_error_messages	2019-04-15 12:03:47.76234+03
13	auth	0008_alter_user_username_max_length	2019-04-15 12:03:47.789098+03
14	auth	0009_alter_user_last_name_max_length	2019-04-15 12:03:47.799939+03
15	auth	0010_alter_group_name_max_length	2019-04-15 12:03:47.810295+03
16	auth	0011_update_proxy_permissions	2019-04-15 12:03:47.819285+03
17	catalog	0001_initial	2019-04-15 12:03:48.162374+03
18	sessions	0001_initial	2019-04-15 12:03:48.440347+03
19	works	0001_initial	2019-04-19 14:31:40.096287+03
20	works	0002_auto_20190419_1542	2019-04-19 15:42:49.92198+03
21	works	0003_auto_20190419_1708	2019-04-19 17:08:39.793472+03
22	works	0004_auto_20190419_2111	2019-04-19 21:11:55.40911+03
23	works	0005_auto_20190419_2159	2019-04-19 21:59:53.311654+03
24	works	0006_auto_20190422_1239	2019-04-22 12:40:00.593633+03
25	works	0007_auto_20190423_1131	2019-04-23 11:31:16.08046+03
26	works	0008_auto_20190501_1608	2019-05-01 16:08:35.374871+03
27	works	0009_auto_20190504_1550	2019-05-04 15:51:06.168146+03
28	works	0010_auto_20190510_2234	2019-05-10 22:34:49.149121+03
29	works	0011_auto_20190513_1100	2019-05-13 11:00:24.658296+03
30	works	0012_about_bio_home	2019-05-17 15:44:06.785735+03
31	works	0013_auto_20190517_1556	2019-05-17 15:56:10.452287+03
32	works	0014_auto_20190518_1454	2019-05-18 14:54:35.519242+03
33	works	0015_auto_20190529_1308	2019-05-29 13:08:47.354492+03
34	works	0016_auto_20190625_1221	2019-06-25 12:21:11.044074+03
35	works	0017_auto_20190625_1222	2019-06-25 12:22:21.264093+03
36	works	0018_bio_page_title	2019-06-25 12:23:21.792022+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
1la0esosc277hl2pfi5rd4skkxztkimf	MTY1YWEzZDcxOTYzYjA3YTRkZGU5OTBiYWIzOTE4MzEwM2M3MmIxOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYTE0MjFjMTk4ZGY5NDBiOTc1NmVjNGRmOThhNGZmZWU1ZTI2ZTVmIiwiX2xhbmd1YWdlIjoicnUifQ==	2019-06-04 15:14:36.330465+03
nduydatz5bzgr1n7ymgo9ve7aoylymfy	MzRjMzZmMzQ0MzY4ZmE0NGFhN2ZiNjg1MDQxNGE0ODQ5OWU5NzkwNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZTc2MWY2NDY2MmE5Y2NmYzYxZDI4ZmZjZGNlOTQ5MmRmMjFiMjk4IiwiX2xhbmd1YWdlIjoicnUifQ==	2019-07-08 11:49:12.719201+03
\.


--
-- Data for Name: works_about; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_about (id, section_code, section_name, text, language) FROM stdin;
3	general	\N	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	hy
4	sections	Contents	<p>The <strong>Home page</strong> presents a playlist of the recordings that are available at the moment via different YouTube channels. Hopefully, their number will grow.</p>\r\n<p>The<strong>Catalogue</strong> section is an updated list of works. It is equipped with filtering and search tools, which helps to select items by year, category or keywords. Most of the pieces included in the catalogue were written after 1990, as David Sakoyan dismissed most of his earlier works.</p>\r\n<p>The <strong>Biography</strong> provides a brief review of David Sakoyan's work and his evolution as a composer.</p>	en
7	privacy	╨Я╨╛╨╗╨╕╤В╨╕╨║╨░ ╨║╨╛╨╜╤Д╨╕╨┤╨╡╨╜╤Ж╨╕╨░╨╗╤М╨╜╨╛╤Б╤В╨╕	╨н╤В╨╛╤В ╨┐╤А╨╛╨╡╨║╤В ╨╜╨╡ ╤Б╨╛╨▒╨╕╤А╨░╨╡╤В ╨╕╨╜╤Д╨╛╤А╨╝╨░╤Ж╨╕╤О ╨╛ ╨┐╨╛╤Б╨╡╤В╨╕╤В╨╡╨╗╤П╤Е ╤Б╨░╨╣╤В╨░. ╨Ю╨┤╨╜╨░╨║╨╛ ╨╜╨░ ╨╜╨╡╨╝ ╤А╨░╨╖╨╝╨╡╤Й╨╡╨╜╤Л ╤Б╤Б╤Л╨╗╨║╨╕ ╨╜╨░ ╨▓╨╜╨╡╤И╨╜╨╕╨╡ ╤А╨╡╤Б╤Г╤А╤Б╤Л, ╨░ ╤В╨░╨║╨╢╨╡ ╨▓╤Б╤В╤А╨╛╨╡╨╜╤Л ╨┐╤А╨╛╨╕╨│╤А╤Л╨▓╨░╤В╨╡╨╗╨╕ ╤Б ╨▓╨╜╨╡╤И╨╜╨╕╤Е ╤А╨╡╤Б╤Г╤А╤Б╨╛╨▓. ╨г ╨╜╨╕╤Е ╨╝╨╛╨╢╨╡╤В ╨▒╤Л╤В╤М ╨╕╨╜╨╛╨╣ ╨┐╨╛╨┤╤Е╨╛╨┤ ╨║ ╨╛╨▒╤А╨░╨▒╨╛╤В╨║╨╡ ╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╤В╨╡╨╗╤М╤Б╨║╨╕╤Е ╨┤╨░╨╜╨╜╤Л╤Е ╨▓ ╤Б╨╛╨╛╤В╨▓╨╡╤В╤Б╤В╨▓╨╕╨╕ ╤Б ╨╕╤Е ╨┐╤А╨░╨▓╨╕╨╗╨░╨╝╨╕ ╤Б╨╛╨▒╨╗╤О╨┤╨╡╨╜╨╕╤П ╨║╨╛╨╜╤Д╨╕╨┤╨╡╨╜╤Ж╨╕╨░╨╗╤М╨╜╨╛╤Б╤В╨╕.	ru
2	general	\N	This project presents the works by Armenian composer David Sakoyan. It includes a catalogue of his works, as well as some recordings and some information about his music. The idea is to collect all about his work on a single platform in order to make this music more available for everybody who is interested. Unfortunately, there are not so many recordings at the moment, and most of them are live performances. But we hope that our recordings collection will gradually extend. The catalogue is also updated as new pieces are created.	en
5	sections	╨а╨░╨╖╨┤╨╡╨╗╤Л	╨Э╨░ <strong>╨│╨╗╨░╨▓╨╜╨╛╨╣ ╤Б╤В╤А╨░╨╜╨╕╤Ж╨╡</strong> ╨╜╨░╤Е╨╛╨┤╨╕╤В╤Б╤П ╨┐╨╗╨╡╨╣╨╗╨╕╤Б╤В ╤Б╨╛ ╨▓╤Б╨╡╨╝╨╕ ╨╖╨░╨┐╨╕╤Б╤П╨╝╨╕ ╨╕╤Б╨┐╨╛╨╗╨╜╨╡╨╜╨╕╨╣, ╨║╨╛╤В╨╛╤А╤Л╨╡ ╤Б╨╡╨╣╤З╨░╤Б ╨┤╨╛╤Б╤В╤Г╨┐╨╜╤Л ╨╕ ╤А╨░╨╖╨╝╨╡╤Й╨╡╨╜╤Л ╨╜╨░ ╤А╨░╨╖╨╜╤Л╤Е ╨║╨░╨╜╨░╨╗╨░╤Е YouTube.<br>\r\n╨Т ╤А╨░╨╖╨┤╨╡╨╗╨╡ &ldquo;<strong>╨Ъ╨░╤В╨░╨╗╨╛╨│</strong>&rdquo; ╨╜╨░╤Е╨╛╨┤╨╕╤В╤Б╤П ╨┐╨╡╤А╨╡╤З╨╡╨╜╤М ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╨╣, ╨║╨╛╤В╨╛╤А╤Л╨╣ ╨┐╨╛╨┐╨╛╨╗╨╜╤П╨╡╤В╤Б╤П ╨┐╨╛ ╨╝╨╡╤А╨╡ ╨┐╨╛╤П╨▓╨╗╨╡╨╜╨╕╤П ╨╜╨╛╨▓╤Л╤Е. ╨Ф╨╗╤П ╤Г╨┤╨╛╨▒╤Б╤В╨▓╨░ ╨┐╤А╨╛╤Б╨╝╨╛╤В╤А╨░ ╨╖╨░╨┐╨╕╤Б╨╡╨╣ ╨║╨░╤В╨░╨╗╨╛╨│ ╤Б╨╜╨░╨▒╨╢╨╡╨╜ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╝╨╕ ╤Д╨╕╨╗╤М╤В╤А╨░╤Ж╨╕╨╕ (╨┐╨╛ ╨╢╨░╨╜╤А╨░╨╝ ╨╕ ╨│╨╛╨┤╨░╨╝) ╨╕ ╨┐╨╛╨╕╤Б╨║╨░. ╨Т ╨║╨░╤В╨░╨╗╨╛╨│╨╡ ╨┐╤А╨╡╨┤╤Б╤В╨░╨▓╨╗╨╡╨╜╤Л ╨┐╤А╨╡╨╕╨╝╤Г╤Й╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╛ ╨┐╤А╨╛╨╕╨╖╨▓╨╡╨┤╨╡╨╜╨╕╤П, ╨╜╨░╨┐╨╕╤Б╨░╨╜╨╜╤Л╨╡ ╨╜╨░╤З╨╕╨╜╨░╤П ╤Б 1990 ╨│╨╛╨┤╨░. ╨Ю╤В ╨▒╨╛╨╗╤М╤И╨╕╨╜╤Б╤В╨▓╨░ ╤Б╨▓╨╛╨╕╤Е ╨▒╨╛╨╗╨╡╨╡ ╤А╨░╨╜╨╜╨╕╤Е ╨┐╤А╨╛╨╕╨╖╨▓╨╡╨┤╨╡╨╜╨╕╨╣ ╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜ ╨╛╤В╨║╨░╨╖╨░╨╗╤Б╤П.<br>\r\n╨а╨░╨╖╨┤╨╡╨╗ &ldquo;<strong>╨в╨▓╨╛╤А╤З╨╡╤Б╤В╨▓╨╛</strong>&rdquo; ╤А╨░╤Б╤Б╨║╨░╨╖╤Л╨▓╨░╨╡╤В ╨╛ ╤В╨╛╨╝, ╨║╨░╨║╤Г╤О ╨╝╤Г╨╖╤Л╨║╤Г ╨┐╨╕╤И╨╡╤В ╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜, ╨╕ ╨╛ ╨║╨╛╨╜╤В╨╡╨║╤Б╤В╨╡ ╤Б╨╛╨╖╨┤╨░╨╜╨╕╤П ╤Н╤В╨╛╨╣ ╨╝╤Г╨╖╤Л╨║╨╕.	ru
6	license	╨г╤Б╨╗╨╛╨▓╨╕╤П ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╨╜╨╕╤П	╨Ь╨░╤В╨╡╤А╨╕╨░╨╗╤Л ╤Н╤В╨╛╨│╨╛ ╤Б╨░╨╣╤В╨░ ╨┤╨╛╤Б╤В╤Г╨┐╨╜╤Л ╨┐╨╛ ╨╗╨╕╤Ж╨╡╨╜╨╖╨╕╨╕ <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0</a>. ╨н╤В╨╛ ╨║╨░╤Б╨░╨╡╤В╤Б╤П ╨▓╤Б╨╡╤Е ╨╛╨┐╤Г╨▒╨╗╨╕╨║╨╛╨▓╨░╨╜╨╜╤Л╤Е ╨╜╨░ ╤Б╤В╤А╨░╨╜╨╕╤Ж╨░╤Е ╤В╨╡╨║╤Б╤В╨╛╨▓ ╨╕ ╨┤╨░╨╜╨╜╤Л╤Е ╨║╨░╤В╨░╨╗╨╛╨│╨░ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╨╣. ╨Т╤Б╨╡ ╨╝╨░╤В╨╡╤А╨╕╨░╨╗╤Л, ╤А╨░╤Б╨┐╤А╨╛╤Б╤В╤А╨░╨╜╤П╨╡╨╝╤Л╨╡ ╨┐╨╛╨┤ ╤Н╤В╨╛╨╣ ╨╗╨╕╤Ж╨╡╨╜╨╖╨╕╨╡╨╣, ╨╝╨╛╨╢╨╜╨╛ ╤Б╨▓╨╛╨▒╨╛╨┤╨╜╨╛ ╤А╨░╤Б╨┐╤А╨╛╤Б╤В╤А╨░╨╜╤П╤В╤М, ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╤В╤М ╨╕ ╨┐╨╡╤А╨╡╤А╨░╨▒╨░╤В╤Л╨▓╨░╤В╤М ╨┐╤А╨╕ ╤Г╤Б╨╗╨╛╨▓╨╕╨╕ ╤Б╤Б╤Л╨╗╨║╨╕ ╨╜╨░ ╨╕╤Б╤В╨╛╤З╨╜╨╕╨║. ╨Я╨╛╨╝╨╕╨╝╨╛ ╤Н╤В╨╛╨│╨╛, ╨╜╨░ ╤Б╨░╨╣╤В╨╡ ╨┐╤Г╨▒╨╗╨╕╨║╤Г╤О╤В╤Б╤П ╨╖╨░╨┐╨╕╤Б╨╕ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╨╣, ╨╛╨┐╤Г╨▒╨╗╨╕╨║╨╛╨▓╨░╨╜╨╜╤Л╨╡ ╨╜╨░ ╨┐╨╗╨░╤В╤Д╨╛╤А╨╝╨╡ YouTube. ╨С╨╛╨╗╤М╤И╨╕╨╜╤Б╤В╨▓╨╛ ╨╕╨╖ ╨╜╨╕╤Е ╨╕╨╝╨╡╤О╤В ╤Б╤В╨░╨╜╨┤╨░╤А╤В╨╜╤Г╤О ╨╗╨╕╤Ж╨╡╨╜╨╖╨╕╤О YouTube, ╨╛╨┤╨╜╨░╨║╨╛ ╨▓ ╨║╨░╨╢╨┤╨╛╨╝ ╨║╨╛╨╜╨║╤А╨╡╤В╨╜╨╛╨╝ ╤Б╨╗╤Г╤З╨░╨╡ ╨▓╨╛╨╖╨╝╨╛╨╢╨╜╤Л ╨╛╤Б╨╛╨▒╤Л╨╡ ╤Г╤Б╨╗╨╛╨▓╨╕╤П.	ru
8	contacts	╨Ъ╨╛╨╜╤В╨░╨║╤В╤Л	╨Х╤Б╨╗╨╕ ╨▓╤Л ╤Б╤В╨╛╨╗╨║╨╜╤Г╨╗╨╕╤Б╤М ╤Б ╨║╨░╨║╨╕╨╝╨╕-╨╗╨╕╨▒╨╛ ╤В╨╡╤Е╨╜╨╕╤З╨╡╤Б╨║╨╕╨╝╨╕ ╨┐╤А╨╛╨▒╨╗╨╡╨╝╨░╨╝╨╕ ╨╜╨░ ╤Б╨░╨╣╤В╨╡, ╨▓╤Л ╨╝╨╛╨╢╨╡╤В╨╡ ╨╜╨░╨┐╨╕╤Б╨░╤В╤М ╨┐╨╛ ╨░╨┤╤А╨╡╤Б╤Г: <a href="mailto:support@davidsakoyan.info">support@davidsakoyan.info</a>.<br>\r\n╨Я╨╛ ╨╕╨╜╤Л╨╝ ╨▓╨╛╨┐╤А╨╛╤Б╨░╨╝ ╨╛╨▒╤А╨░╤Й╨░╨╣╤В╨╡╤Б╤М ╨┐╨╛ ╨░╨┤╤А╨╡╤Б╤Г <a href="mailto:info@davidsakoyan.info">info@davidsakoyan.info</a> ╨╕╨╗╨╕ ╤З╨╡╤А╨╡╨╖ ╤Б╤В╤А╨░╨╜╨╕╤Ж╤Г ╨▓ Facebook.<br>\r\n╨Х╤Б╨╗╨╕ ╤Г ╨▓╨░╤Б ╨╡╤Б╤В╤М ╨╖╨░╨┐╨╕╤Б╨░╨╜╨╜╤Л╨╡ ╨╕╤Б╨┐╨╛╨╗╨╜╨╡╨╜╨╕╤П ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╨╣ ╨Ф╨░╨▓╨╕╨┤╨░ ╨б╨░╨║╨╛╤П╨╜╨░, ╨╕ ╤Н╤В╨╕╤Е ╨╖╨░╨┐╨╕╤Б╨╡╨╣ ╨╡╤Й╨╡ ╨╜╨╡╤В ╨╜╨░ ╤Б╨░╨╣╤В╨╡, ╨╝╤Л ╨▒╤Г╨┤╨╡╨╝ ╨┐╤А╨╕╨╖╨╜╨░╤В╨╡╨╗╤М╨╜╤Л, ╨╡╤Б╨╗╨╕ ╨▓╤Л ╨╕╨╝╨╕ ╨┐╨╛╨┤╨╡╨╗╨╕╤В╨╡╤Б╤М.<br>\r\n╨Х╤Б╨╗╨╕ ╨▓╤Л ╨╖╨░╨╕╨╜╤В╨╡╤А╨╡╤Б╨╛╨▓╨░╨╗╨╕╤Б╤М ╨║╨░╨║╨╕╨╝╨╕-╨╗╨╕╨▒╨╛ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╤П╨╝╨╕ ╨╕ ╤Е╨╛╤В╨╡╨╗╨╕ ╨▒╤Л ╨┐╨╛╤Б╨╝╨╛╤В╤А╨╡╤В╤М ╨┐╨░╤А╤В╨╕╤В╤Г╤А╤Г, ╨╜╨░╨┐╨╕╤И╨╕╤В╨╡ ╨╜╨░╨╝.<br>\r\n╨Я╤А╤П╨╝╤Л╤Е ╨║╨╛╨╜╤В╨░╨║╤В╨╛╨▓ ╨┤╨╗╤П ╤Б╨▓╤П╨╖╨╕ ╤Б ╨Ф╨░╨▓╨╕╨┤╨╛╨╝ ╨б╨░╨║╨╛╤П╨╜╨╛╨╝ ╨╝╤Л ╨┐╤А╨╡╨┤╨╛╤Б╤В╨░╨▓╨╕╤В╤М ╨╜╨╡ ╨╝╨╛╨╢╨╡╨╝ (╤Г ╨╜╨╡╨│╨╛ ╨╜╨╡╤В ╤Н╨╗╨╡╨║╤В╤А╨╛╨╜╨╜╨╛╨╣ ╨┐╨╛╤З╤В╤Л). ╨Ю╨┤╨╜╨░╨║╨╛ ╨╡╤Б╨╗╨╕ ╨▓╤Л ╨┐╤А╨╕╤И╨╗╨╡╤В╨╡ ╨╜╨░╨╝ ╤Б╨▓╨╛╨╕ ╨▓╨╛╨┐╤А╨╛╤Б╤Л ╨╕╨╗╨╕ ╨╛╤В╨╖╤Л╨▓╤Л, ╨░╨┤╤А╨╡╤Б╨╛╨▓╨░╨╜╨╜╤Л╨╡ ╨╡╨╝╤Г, ╨╝╤Л ╨│╨╛╤В╨╛╨▓╤Л ╨┐╨╡╤А╨╡╨┤╨░╤В╤М.	ru
9	license	Terms of use	Most content on this site is available under <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0</a> license. It applies to all texts on the siteтАЩs pages, as well as the catalogue data. As to the materials hosted on outside resources, such as YouTube, they may have their specific terms of use.	en
10	privacy	Privacy policy	This site does not collect any information about its visitors. However, it contains links and embedded materials to and from other platforms, which have their own privacy policies and rules of personal data handling . For details, please see their corresponding privacy policy descriptions.	en
11	contacts	Contacts	<p>If you have run into some technical issues at this website, feel free to send a message to <a href="mailto:info@davidsakoyan.info">support@davidsakoyan.com</a>.</p>\r\n<p>On other matters, please feel free to send an email to <a href="mailto:info@davidsakoyan.info">info@davidsakoyan.com</a>. Alternatively, you could get in touch via Facebook.</p>\r\n<p>If you have some recordings of David SakoyanтАЩs pieces, and these recordings are not yet presented at this site, we would be extremely grateful if you shared them with us.</p>\r\n<p>If you are interested in getting sheet music, please contact us.</p>\r\n<p>We cannot provide contacts for direct connection with David Sakoyan (he has no email address). But we are ready to communicate to him questions or other feedback.</p>	en
1	general	\N	╨н╤В╨╛╤В ╨┐╤А╨╛╨╡╨║╤В ╨┐╨╛╤Б╨▓╤П╤Й╨╡╨╜ ╤В╨▓╨╛╤А╤З╨╡╤Б╤В╨▓╤Г ╨░╤А╨╝╤П╨╜╤Б╨║╨╛╨│╨╛ ╨║╨╛╨╝╨┐╨╛╨╖╨╕╤В╨╛╤А╨░ ╨Ф╨░╨▓╨╕╨┤╨░ ╨б╨░╨║╨╛╤П╨╜╨░. ╨Ч╨┤╨╡╤Б╤М ╨╝╨╛╨╢╨╜╨╛ ╨╜╨░╨╣╤В╨╕ ╨║╨░╤В╨░╨╗╨╛╨│ ╨╡╨│╨╛ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╨╣, ╨┐╨╛╤Б╨╗╤Г╤И╨░╤В╤М ╨╜╨╡╨║╨╛╤В╨╛╤А╤Л╨╡ ╨╖╨░╨┐╨╕╤Б╨╕, ╨┐╨╛╤З╨╕╤В╨░╤В╤М ╨╛ ╨╡╨│╨╛ ╨╝╤Г╨╖╤Л╨║╨╡. ╨ж╨╡╨╗╤М ╨┐╤А╨╛╨╡╨║╤В╨░ ╨▓ ╤В╨╛╨╝, ╤З╤В╨╛╨▒╤Л ╤Б╨╛╨▒╤А╨░╤В╤М ╨╜╨░ ╨╛╨┤╨╜╨╛╨╣ ╨┐╨╗╨░╤В╤Д╨╛╤А╨╝╨╡ ╨▓╤Б╤С, ╤З╤В╨╛ ╨║╨░╤Б╨░╨╡╤В╤Б╤П ╤В╨▓╨╛╤А╤З╨╡╤Б╤В╨▓╨░ ╤Н╤В╨╛╨│╨╛ ╨║╨╛╨╝╨┐╨╛╨╖╨╕╤В╨╛╤А╨░, ╨╕ ╤В╨╡╨╝ ╤Б╨░╨╝╤Л╨╝ ╨┤╨░╤В╤М ╨▓╨╛╨╖╨╝╨╛╨╢╨╜╨╛╤Б╤В╤М ╨▓╤Б╨╡╨╝ ╨╢╨╡╨╗╨░╤О╤Й╨╕╨╝ ╨╛╨╖╨╜╨░╨║╨╛╨╝╨╕╤В╤М╤Б╤П ╤Б ╨╡╨│╨╛ ╨┐╤А╨╛╨╕╨╖╨▓╨╡╨┤╨╡╨╜╨╕╤П╨╝╨╕. ╨Ф╨╛╤Б╤В╤Г╨┐╨╜╤Л╤Е ╨╖╨░╨┐╨╕╤Б╨╡╨╣ ╨┐╨╛╨║╨░ ╨┐╤А╨╕╤Б╨║╨╛╤А╨▒╨╜╨╛ ╨╝╨░╨╗╨╛, ╨╕ ╤Б╤А╨╡╨┤╨╕ ╨╜╨╕╤Е ╨╜╨╡╤В ╤Б╤В╤Г╨┤╨╕╨╣╨╜╤Л╤Е (╤В╨╛╨╗╤М╨║╨╛ ╨║╨╛╨╜╤Ж╨╡╤А╤В╨╜╤Л╨╡). ╨Ю╨┤╨╜╨░╨║╨╛ ╨╝╤Л ╨╜╨░╨┤╨╡╨╡╨╝╤Б╤П ╨╜╨░ ╤А╨░╤Б╤И╨╕╤А╨╡╨╜╨╕╨╡ ╨║╨╛╨╗╨╗╨╡╨║╤Ж╨╕╨╕ ╨╖╨░╨┐╨╕╤Б╨╡╨╣. ╨Ъ╨░╤В╨░╨╗╨╛╨│ ╤В╨░╨║╨╢╨╡ ╨╛╨▒╨╜╨╛╨▓╨╗╤П╨╡╤В╤Б╤П ╨┐╨╛ ╨╝╨╡╤А╨╡ ╨┐╨╛╤П╨▓╨╗╨╡╨╜╨╕╤П ╨╜╨╛╨▓╤Л╤Е ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╨╣.	ru
\.


--
-- Data for Name: works_band; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_band (band_id, url, type_ru, name_ru, type_hy, name_hy, type_en, name_en) FROM stdin;
11111	https://www.facebook.com/Tagharan/	╨Р╨╜╤Б╨░╨╝╨▒╨╗╤М	╨в╨░╨│╨░╤А╨░╨╜	╘▒╒╢╒╜╒б╒┤╒в╒м	╒П╒б╒▓╒б╓А╒б╒╢	Ensemble	Tagharan
11112	http://ncoarmenia.am		╨У╨╛╤Б╤Г╨┤╨░╤А╤Б╤В╨▓╨╡╨╜╨╜╤Л╨╣ ╨║╨░╨╝╨╡╤А╨╜╤Л╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А ╨Р╤А╨╝╨╡╨╜╨╕╨╕		╒А╒б╒╡╒б╒╜╒┐╒б╒╢╒л ╒б╒ж╒г╒б╒╡╒л╒╢ ╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в		National Chamber Orchestra of Armenia
\.


--
-- Data for Name: works_bio; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_bio (id, text, language, section_code, section_name, page_title) FROM stdin;
5	╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜ ╨┐╨╕╤И╨╡╤В ╨░╨║╨░╨┤╨╡╨╝╨╕╤З╨╡╤Б╨║╤Г╤О ╨╝╤Г╨╖╤Л╨║╤Г. ╨Я╨╡╤А╨▓╨╛╨╜╨░╤З╨░╨╗╤М╨╜╨╛ ╨╛╨╜ ╤Г╨▓╨╗╨╡╨║╨░╨╗╤Б╤П ╨░╨▓╨░╨╜╨│╨░╤А╨┤╨╛╨╝, ╨╕ ╨╜╨░ ╨┐╤А╨╛╤В╤П╨╢╨╡╨╜╨╕╨╕ ╨┤╨▓╨░╨┤╤Ж╨░╤В╨╕ ╨╗╨╡╤В ╨┐╨╕╤Б╨░╨╗ ╤Б╨▓╨╛╨╕ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╤П ╨▓ ╤Н╤В╨╛╨╝ ╨║╨╗╤О╤З╨╡. ╨д╨░╨║╤В╨╕╤З╨╡╤Б╨║╨╕ ╨╡╨│╨╛ ╤В╨▓╨╛╤А╤З╨╡╤Б╤В╨▓╨╛ ╤А╨░╨╖╨┤╨╡╨╗╤П╨╡╤В╤Б╤П ╨╜╨░ ╨┤╨▓╨░ ╨▒╨╛╨╗╤М╤И╨╕╤Е ╤Н╤В╨░╨┐╨░, ╤Г╤Б╨╗╨╛╨▓╨╜╨░╤П ╨│╤А╨░╨╜╨╕╤Ж╨░ ╨╝╨╡╨╢╨┤╤Г ╨║╨╛╤В╨╛╤А╤Л╨╝╨╕ - 1990 ╨│╨╛╨┤. ╨Ю╤В╨║╨░╨╖╨░╨▓╤И╨╕╤Б╤М ╨╛╤В ╨░╨▓╨░╨╜╨│╨░╤А╨┤╨╜╨╛╨│╨╛ ╤В╨▓╨╛╤А╤З╨╡╤Б╤В╨▓╨░, ╨╛╨╜ ╨╛╤В╨║╨░╨╖╨░╨╗╤Б╤П ╨╕ ╨╛╤В ╨╛╤Б╨╜╨╛╨▓╨╜╨╛╨╣ ╤З╨░╤Б╤В╨╕ ╨┐╤А╨╛╨╕╨╖╨▓╨╡╨┤╨╡╨╜╨╕╨╣, ╨╜╨░╨┐╨╕╤Б╨░╨╜╨╜╤Л╤Е ╨┤╨╛ ╤В╨╛╨│╨╛ ╨│╨╛╨┤╨░. ╨б╨╛╤З╨╕╨╜╨╡╨╜╨╕╤П, ╨┐╤А╨╡╨┤╤Б╤В╨░╨▓╨╗╨╡╨╜╨╜╤Л╨╡ ╨╜╨░ ╤Н╤В╨╛╨╝ ╤Б╨░╨╣╤В╨╡, ╨╛╤В╨╜╨╛╤Б╤П╤В╤Б╤П ╨║╨╛ ╨▓╤В╨╛╤А╨╛╨╝╤Г ╤Н╤В╨░╨┐╤Г.	ru	general	\N	\N
1	<p>╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜ ╨┐╨╕╤И╨╡╤В ╨░╨║╨░╨┤╨╡╨╝╨╕╤З╨╡╤Б╨║╤Г╤О ╨╝╤Г╨╖╤Л╨║╤Г. ╨Я╨╡╤А╨▓╨╛╨╜╨░╤З╨░╨╗╤М╨╜╨╛ ╨╛╨╜ ╤Г╨▓╨╗╨╡╨║╨░╨╗╤Б╤П ╨░╨▓╨░╨╜╨│╨░╤А╨┤╨╛╨╝, ╨╕ ╨╜╨░ ╨┐╤А╨╛╤В╤П╨╢╨╡╨╜╨╕╨╕ ╨┤╨▓╨░╨┤╤Ж╨░╤В╨╕ ╨╗╨╡╤В ╨┐╨╕╤Б╨░╨╗ ╤Б╨▓╨╛╨╕ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╤П ╨▓ ╤Н╤В╨╛╨╝ ╨║╨╗╤О╤З╨╡. ╨д╨░╨║╤В╨╕╤З╨╡╤Б╨║╨╕ ╨╡╨│╨╛ ╤В╨▓╨╛╤А╤З╨╡╤Б╤В╨▓╨╛ ╤А╨░╨╖╨┤╨╡╨╗╤П╨╡╤В╤Б╤П ╨╜╨░ ╨┤╨▓╨░ ╨▒╨╛╨╗╤М╤И╨╕╤Е ╤Н╤В╨░╨┐╨░, ╤Г╤Б╨╗╨╛╨▓╨╜╨░╤П ╨│╤А╨░╨╜╨╕╤Ж╨░ ╨╝╨╡╨╢╨┤╤Г ╨║╨╛╤В╨╛╤А╤Л╨╝╨╕ - 1990 ╨│╨╛╨┤. ╨Ю╤В╨║╨░╨╖╨░╨▓╤И╨╕╤Б╤М ╨╛╤В ╨░╨▓╨░╨╜╨│╨░╤А╨┤╨╜╨╛╨│╨╛ ╤В╨▓╨╛╤А╤З╨╡╤Б╤В╨▓╨░, ╨╛╨╜ ╨╛╤В╨║╨░╨╖╨░╨╗╤Б╤П ╨╕ ╨╛╤В ╨╛╤Б╨╜╨╛╨▓╨╜╨╛╨╣ ╤З╨░╤Б╤В╨╕ ╨┐╤А╨╛╨╕╨╖╨▓╨╡╨┤╨╡╨╜╨╕╨╣, ╨╜╨░╨┐╨╕╤Б╨░╨╜╨╜╤Л╤Е ╨┤╨╛ ╤В╨╛╨│╨╛ ╨│╨╛╨┤╨░. ╨б╨╛╤З╨╕╨╜╨╡╨╜╨╕╤П, ╨┐╤А╨╡╨┤╤Б╤В╨░╨▓╨╗╨╡╨╜╨╜╤Л╨╡ ╨╜╨░ ╤Н╤В╨╛╨╝ ╤Б╨░╨╣╤В╨╡, ╨╛╤В╨╜╨╛╤Б╤П╤В╤Б╤П ╨║╨╛ ╨▓╤В╨╛╤А╨╛╨╝╤Г ╤Н╤В╨░╨┐╤Г.</p>\r\n<h3>╨д╨╛╤А╨╝╨╕╤А╨╛╨▓╨░╨╜╨╕╨╡</h3>\r\n<p>╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜ ╨╜╨░╤З╨░╨╗ ╨╕╨╜╤В╨╡╤А╨╡╤Б╨╛╨▓╨░╤В╤М╤Б╤П ╨╝╤Г╨╖╤Л╨║╨╛╨╣ ╨╡╤Й╨╡ ╨▓ ╨┤╨╡╤В╤Б╤В╨▓╨╡ ╨╕ ╤Г╨╢╨╡ ╤В╨╛╨│╨┤╨░ ╨╜╨░╤З╨░╨╗ ╤Б╨╛╤З╨╕╨╜╤П╤В╤М ╨┐╨╡╤Б╨╜╨╕ ╨╕ ╨╝╨╡╨╗╨╛╨┤╨╕╨╕. ╨Э╨╛ ╨▓ ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╨╛╨╣ ╤И╨║╨╛╨╗╨╡ ╨╛╨╜ ╨╜╨╡ ╤Г╤З╨╕╨╗╤Б╤П: ╤А╨╛╨┤╨╕╤В╨╡╨╗╨╕ ╨╜╨╡ ╤Б╤З╨╕╤В╨░╨╗╨╕ ╨╜╤Г╨╢╨╜╤Л╨╝ ╨┐╨╛╨┤╨┤╨╡╤А╨╢╨╕╨▓╨░╤В╤М ╨╕╨╜╤В╨╡╤А╨╡╤Б ╨║ ╨╝╤Г╨╖╤Л╨║╨╡.<br />╨Я╨╛╤Б╤В╤Г╨┐╨╕╤В╤М ╨▓ ╨║╨╛╨╜╤Б╨╡╤А╨▓╨░╤В╨╛╤А╨╕╤О ╨▒╨╡╨╖ ╨╜╨░╤З╨░╨╗╤М╨╜╨╛╨│╨╛ ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╨╛╨│╨╛ ╨╛╨▒╤А╨░╨╖╨╛╨▓╨░╨╜╨╕╤П ╨▒╤Л╨╗╨╛ ╨╜╨╡╨╗╤М╨╖╤П, ╨┐╨╛╤Н╤В╨╛╨╝╤Г ╨┐╨╛ ╨╛╨║╨╛╨╜╤З╨░╨╜╨╕╨╕ ╤И╨║╨╛╨╗╤Л ╨╛╨╜ ╨┐╨╛╤Б╤В╤Г╨┐╨╕╨╗ ╨╜╨░ ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╨╛╨╡ ╨╛╤В╨┤╨╡╨╗╨╡╨╜╨╕╨╡ ╤Д╨░╨║╤Г╨╗╤М╤В╨╡╤В╨░ ╤Н╤Б╤В╨╡╤В╨╕╨║╨╕ ╨▓ ╨Р╤А╨╝╤П╨╜╤Б╨║╨╕╨╣ ╨┐╨╡╨┤╨░╨│╨╛╨│╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╕╨╜╤Б╤В╨╕╤В╤Г╤В ╨╕╨╝. X. ╨Р╨▒╨╛╨▓╤П╨╜╨░, ╨│╨┤╨╡ ╤Б╨┐╨╡╤Ж╨╕╨░╨╗╨╕╨╖╨╕╤А╨╛╨▓╨░╨╗╤Б╤П ╨╜╨░ ╨┤╨╕╤А╨╕╨╢╨╕╤А╨╛╨▓╨░╨╜╨╕╨╕. ╨Я╨░╤А╨░╨╗╨╗╨╡╨╗╤М╨╜╨╛ ╤Б ╤Н╤В╨╕╨╝ ╨┐╨╕╤Б╨░╨╗ ╨╝╤Г╨╖╤Л╨║╤Г.<br />╨Ю╨║╨╛╨╜╤З╨╕╨▓ ╨╕╨╜╤Б╤В╨╕╤В╤Г╤В ╨▓ 1970 ╨│╨╛╨┤╤Г, ╨╛╨╜ ╤Б╨╛╨▒╨╕╤А╨░╨╗╤Б╤П ╨┐╨╛╤Б╤В╤Г╨┐╨╕╤В╤М ╨▓ ╨Х╤А╨╡╨▓╨░╨╜╤Б╨║╤Г╤О ╨║╨╛╨╜╤Б╨╡╤А╨▓╨░╤В╨╛╤А╨╕╤О ╨╜╨░ ╨┤╨╕╤А╨╕╨╢╨╡╤А╤Б╨║╨╛╨╡ ╨╛╤В╨┤╨╡╨╗╨╡╨╜╨╕╨╡, ╨╜╨╛ ╨┤╤А╤Г╨╖╤М╤П ╤Г╨▒╨╡╨┤╨╕╨╗╨╕ ╨╡╨│╨╛ ╨┐╨╛╨┤╨░╤В╤М ╨┤╨╛╨║╤Г╨╝╨╡╨╜╤В╤Л ╨╜╨░ ╤В╨╡╨╛╤А╨╡╤В╨╕╨║╨╛-╨║╨╛╨╝╨┐╨╛╨╖╨╕╤В╨╛╤А╤Б╨║╨╕╨╣ ╤Д╨░╨║╤Г╨╗╤М╤В╨╡╤В. ╨Ъ ╤В╨╛╨╝╤Г ╨╝╨╛╨╝╨╡╨╜╤В╤Г ╤Г ╨╜╨╡╨│╨╛ ╤Г╨╢╨╡ ╨▒╤Л╨╗╨╛ ╨╝╨╜╨╛╨╢╨╡╤Б╤В╨▓╨╛ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╨╣, ╨▓ ╤В╨╛╨╝ ╤З╨╕╤Б╨╗╨╡ ╨╛╨┐╨╡╤А╨░ &ldquo;╨Р╤А╨░ ╨Я╤А╨╡╨║╤А╨░╤Б╨╜╤Л╨╣ ╨╕ ╨и╨░╨╝╨╕╤А╨░╨╝&rdquo; ╨╕ ╨╗╨╕╤В╤Г╤А╨│╨╕╤П ╨┤╨╗╤П ╤Е╨╛╤А╨░ ╤Б╨╛╨╗╨╕╤Б╤В╨╛╨▓ ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░, ╨╕ ╨╛╨╜ ╤Г╤Б╨┐╨╡╤И╨╜╨╛ ╨┐╨╛╤Б╤В╤Г╨┐╨╕╨╗.<br />╨Х╤Й╨╡ ╨▓ ╤И╨║╨╛╨╗╤М╨╜╤Л╨╡ ╨│╨╛╨┤╤Л ╨╛╨╜ ╨╛╤В╨╗╨╕╤З╨░╨╗╤Б╤П ╤Б╤В╤А╨╛╨┐╤В╨╕╨▓╤Л╨╝ ╨╜╤А╨░╨▓╨╛╨╝ ╨╕ ╨╕╨╖-╨╖╨░ ╤Н╤В╨╛╨│╨╛ ╤Б╨╕╤Б╤В╨╡╨╝╨░╤В╨╕╤З╨╡╤Б╨║╨╕ ╨╜╨╡ ╨╜╨░╤Е╨╛╨┤╨╕╨╗ ╨╛╨▒╤Й╨╡╨│╨╛ ╤П╨╖╤Л╨║╨░ ╤Б ╤А╤Г╨║╨╛╨▓╨╛╨┤╤Б╤В╨▓╨╛╨╝, ╨╕ ╨▓ ╨┤╨░╨╗╤М╨╜╨╡╨╣╤И╨╡╨╝ ╤Н╤В╨░ ╨║╨╛╨╜╤Д╤А╨╛╨╜╤В╨░╤Ж╨╕╤П ╤В╨╛╨╗╤М╨║╨╛ ╤Г╤Б╨╕╨╗╨╕╨▓╨░╨╗╨░╤Б╤М. ╨Т ╤З╨░╤Б╤В╨╜╨╛╤Б╤В╨╕, ╤Г╨▓╨╗╨╡╨║╨░╨╗╤Б╤П ╨░╤А╨╝╤П╨╜╤Б╨║╨╛╨╣ ╤Б╤А╨╡╨┤╨╜╨╡╨▓╨╡╨║╨╛╨▓╨╛╨╣ ╤Д╨╕╨╗╨╛╤Б╨╛╤Д╨╕╨╡╨╣ ╨╕ ╨┐╨╛╤Н╨╖╨╕╨╡╨╣, ╤З╨╕╤В╨░╨╗ ╨░╤А╨╝╤П╨╜╤Б╨║╨╕╤Е ╨╕╤Б╤В╨╛╤А╨╕╨║╨╛╨▓ V ╨▓╨╡╨║╨░ ╨╕ ╨┐╤А╨╛╤З╤Г╤О ╨╜╨╡ ╨┐╨╛╨╛╤Й╤А╤П╨▓╤И╤Г╤О╤Б╤П ╨▓ ╨б╨б╨б╨а ╨╗╨╕╤В╨╡╤А╨░╤В╤Г╤А╤Г. ╨Ч╨░ ╤Б╨▓╨╛╨╣ ╨▒╨╡╤Б╨║╨╛╨╝╨┐╤А╨╛╨╝╨╕╤Б╤Б╨╜╤Л╨╣ ╤Е╨░╤А╨░╨║╤В╨╡╤А ╨╛╨╜ ╨┐╨╛╨╗╤Г╤З╨╕╨╗ ╨╛╤В ╨┐╤А╨╛╤Д╨╡╤Б╤Б╨╛╤А╨╛╨▓ ╨┐╤А╨╛╨╖╨▓╨╕╤Й╨╡ &ldquo;╨╜╨╕╨│╨╕╨╗╨╕╤Б╤В&rdquo;, ╨╛╨┤╨╜╨░╨║╨╛ ╨╛╤Б╤В╨░╨▓╨░╨╗╤Б╤П ╨╜╨░ ╤Е╨╛╤А╨╛╤И╨╡╨╝ ╤Б╤З╨╡╤В╤Г ╨▓ ╨║╨░╤З╨╡╤Б╤В╨▓╨╡ ╤Б╤В╤Г╨┤╨╡╨╜╤В╨░. ╨Т 1977 ╨│╨╛╨┤╤Г ╨╛╨║╨╛╨╜╤З╨╕╨╗ ╨║╨╛╨╜╤Б╨╡╤А╨▓╨░╤В╨╛╤А╨╕╤О ╨┐╨╛ ╨║╨╗╨░╤Б╤Б╤Г ╨║╨╛╨╝╨┐╨╛╨╖╨╕╤Ж╨╕╨╕ <a href="https://ru.wikipedia.org/wiki/%D0%95%D0%B3%D0%B8%D0%B0%D0%B7%D0%B0%D1%80%D1%8F%D0%BD,_%D0%93%D1%80%D0%B8%D0%B3%D0%BE%D1%80%D0%B8%D0%B9_%D0%95%D0%B3%D0%B8%D0%B0%D0%B7%D0%B0%D1%80%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">╨У╤А╨╕╨│╨╛╤А╨╕╤П ╨Х╨│╨╕╨░╨╖╨░╤А╤П╨╜╨░</a>.</p>\r\n<h3>╨Р╨▓╨░╨╜╨│╨░╤А╨┤</h3>\r\n<p>╨Х╤Й╨╡ ╨▒╤Г╨┤╤Г╤З╨╕ ╤Б╤В╤Г╨┤╨╡╨╜╤В╨╛╨╝ ╨╕╨╜╤Б╤В╨╕╤В╤Г╤В╨░, ╨╜╨░╤З╨░╨╗ ╤Г╨▓╨╗╨╡╨║╨░╤В╤М╤Б╤П ╨░╨▓╨░╨╜╨│╨░╤А╨┤╨╜╨╛╨╣ ╨╝╤Г╨╖╤Л╨║╨╛╨╣, ╨▓ ╤З╨░╤Б╤В╨╜╨╛╤Б╤В╨╕ ╨┐╨╛╨┤ ╨▓╨┐╨╡╤З╨░╤В╨╗╨╡╨╜╨╕╨╡╨╝ ╨╛╤В ╨┐╤А╨╛╨╕╨╖╨▓╨╡╨┤╨╡╨╜╨╕╨╣ <a href="https://ru.wikipedia.org/wiki/%D0%A1%D1%82%D1%80%D0%B0%D0%B2%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9,_%D0%98%D0%B3%D0%BE%D1%80%D1%8C_%D0%A4%D1%91%D0%B4%D0%BE%D1%80%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">╨Ш.╨д. ╨б╤В╤А╨░╨▓╨╕╨╜╤Б╨║╨╛╨│╨╛</a>. ╨Т ╤Н╤В╨╛╨╝ ╨╡╨│╨╛ ╨┐╨╛╨┤╨┤╨╡╤А╨╢╨╕╨▓╨░╨╗ ╨┐╤А╨╡╨┐╨╛╨┤╨░╨▓╨░╨▓╤И╨╕╨╣ ╤В╨░╨╝ ╨║╨╛╨╝╨┐╨╛╨╖╨╕╤В╨╛╤А <a href="http://ru.hayazg.info/%D0%93%D0%B5%D0%B2%D0%BE%D1%80%D0%BA%D1%8F%D0%BD_%D0%AE%D1%80%D0%B8%D0%B9_%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">╨о╤А╨╕╨╣ ╨У╨╡╨▓╨╛╤А╨║╤П╨╜</a>. ╨Т ╨║╨╛╨╜╤Б╨╡╤А╨▓╨░╤В╨╛╤А╨╕╨╕ ╨╛╨╜ ╨╖╨░╨╕╨╜╤В╨╡╤А╨╡╤Б╨╛╨▓╨░╨╗╤Б╤П ╤В╨▓╨╛╤А╤З╨╡╤Б╤В╨▓╨╛╨╝ ╨┐╤А╨╡╨┐╨╛╨┤╨░╨▓╨░╨▓╤И╨╡╨│╨╛ ╤В╨░╨╝ ╨║╨╛╨╝╨┐╨╛╨╖╨╕╤В╨╛╤А╨░-╨░╨▓╨░╨╜╨│╨░╤А╨┤╨╕╤Б╤В╨░ <a href="https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D1%80%D1%82%D0%B5%D1%80%D1%8F%D0%BD,_%D0%90%D0%B2%D0%B5%D1%82_%D0%A0%D1%83%D0%B1%D0%B5%D0%BD%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">╨Р╨▓╨╡╤В╨░ ╨в╨╡╤А╤В╨╡╤А╤П╨╜╨░</a>. ╨Я╤А╨╕ ╤Н╤В╨╛╨╝ ╨╛╨╜ ╨╛╤Б╤В╨░╨▓╨░╨╗╤Б╤П ╨▓ ╨║╨╗╨░╤Б╤Б╨╡ ╨Х╨│╨╕╨░╨╖╨░╤А╤П╨╜╨░, ╨║╨░╤В╨╡╨│╨╛╤А╨╕╤З╨╡╤Б╨║╨╕ ╨╜╨╡ ╨╛╨┤╨╛╨▒╤А╤П╨▓╤И╨╡╨│╨╛ ╤В╨░╨║╨╕╨╡ ╤В╨╡╨╜╨┤╨╡╨╜╤Ж╨╕╨╕ ╨▓ ╨╝╤Г╨╖╤Л╨║╨╡.<br />╨Ю╨┤╨╕╨╜ ╨╕╨╖ ╤Б╨▓╨╛╨╕╤Е ╨╛╨┐╤Г╤Б╨╛╨▓ ╤В╨╡╤Е ╨▓╤А╨╡╨╝╨╡╨╜ ╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜ ╨┐╨╡╤А╨╡╤Б╨║╨░╨╖╤Л╨▓╨░╨╡╤В ╤Б╨╗╨╡╨┤╤Г╤О╤Й╨╕╨╝ ╨╛╨▒╤А╨░╨╖╨╛╨╝: &ldquo;╨Я╨╡╤А╨╡╨┤ ╤Б╨╛╨▒╨╛╨╣ ╤П ╨┐╨╛╤Б╤В╨░╨▓╨╕╨╗ ╤Б╨╡╤А╤М╨╡╨╖╨╜╤Г╤О ╨╕ ╨▓╨╡╤Б╤М╨╝╨░ ╤Б╨╗╨╛╨╢╨╜╤Г╤О ╨╖╨░╨┤╨░╤З╤Г: ╨▓╤Б╤С ╨╜╨░╨╕╨╖╨╜╨░╨╜╨║╤Г - ╨╗╤О╨┤╨╕ ╨╕ ╨▓╤Б╤С ╨╛╤Б╤В╨░╨╗╤М╨╜╨╛╨╡. ╨Т╨╕╨┤╨╡╤В╤М ╨╕ ╤Б╨╗╤Л╤И╨░╤В╤М, ╨║╨░╨║ ╨║╤А╨╛╨▓╤М ╤В╨╡╤З╨╡╤В ╨┐╨╛ ╨░╤А╤В╨╡╤А╨╕╤П╨╝, ╨║╨░╨║ ╤А╨░╨▒╨╛╤В╨░╤О╤В ╨╝╨╛╨╖╨│, ╤Б╨╡╤А╨┤╤Ж╨╡, ╨╗╨╡╨│╨║╨╕╨╡. ╨Ъ╨░╨║ ╤А╨░╨╖╤К╨╡╨┤╨░╨╡╤В ╨╛╤А╨│╨░╨╜╨╕╨╖╨╝ ╨║╨░╨║╨╛╨╣-╤В╨╛ ╨╜╨╡╨┤╤Г╨│. ╨б╨╜╨░╤З╨░╨╗╨░ ╨╛╨╜ ╨▓╨╛╨╖╨╜╨╕╨║╨░╨╡╤В ╨╜╨╡╨╖╨░╨╝╨╡╤В╨╜╨╛, ╨┐╨╛╤В╨╛╨╝ ╨╡╨┤╨▓╨░ ╨╛╤Й╤Г╤В╨╕╨╝╨╛╨╡, ╨┐╨╛╤В╨╛╨╝ ╨╗╨╡╨│╨║╨╛╨╡, ╨╜╨╡╨╖╨╜╨░╤З╨╕╤В╨╡╨╗╤М╨╜╨╛╨╡ ╨╜╨╡╨┤╨╛╨╝╨╛╨│╨░╨╜╨╕╨╡, ╨┤╨░╨╗╨╡╨╡ ╨▒╨╛╨╗╤М╤И╨╡ ╨╕ ╨▒╨╛╨╗╤М╤И╨╡, ╨┐╨╛╤В╨╛╨╝ ╨┐╨╛╤Б╤В╨╡╨┐╨╡╨╜╨╜╤Л╨╣ ╤А╨░╤Б╨┐╨░╨┤, ╨▓╤Б╤С ╤З╨╡╤А╨╜╨╛ ╨╕ ╤Б╨╝╨╡╤А╤В╤М&rdquo;.</p>\r\n<h3>"╨в╤А╨░╨┤╨╕╤Ж╨╕╨╛╨╜╨░╨╗╨╕╨╖╨╝"</h3>\r\n<p>╨Я╨╡╤А╨╡╤Е╨╛╨┤ ╨║ ╨╜╨╛╨▓╨╛╨╝╤Г ╤Н╤В╨░╨┐╤Г ╨╜╨░╤З╨░╨╗╤Б╤П ╨▓ 1986 ╨│╨╛╨┤╤Г, ╨║╨╛╨│╨┤╨░ ╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜ ╨┐╨╛╨┐╨░╨╗ ╨▓ ╨▒╨╛╨╗╤М╨╜╨╕╤Ж╤Г ╤Б ╨╕╨╜╤Д╨░╤А╨║╤В╨╛╨╝. ╨Ч╨░ ╤Н╤В╨╕╨╝ ╨┐╨╛╤Б╨╗╨╡╨┤╨╛╨▓╨░╨╗ ╨┤╨╗╨╕╤В╨╡╨╗╤М╨╜╤Л╨╣ ╨┐╨╡╤А╨╕╨╛╨┤ ╨╗╨╡╤З╨╡╨╜╨╕╤П ╨╕ ╨▓╤Л╨╖╨┤╨╛╤А╨╛╨▓╨╗╨╡╨╜╨╕╤П, ╨▓╨╛ ╨▓╤А╨╡╨╝╤П ╨║╨╛╤В╨╛╤А╨╛╨│╨╛ ╤Г ╨╜╨╡╨│╨╛ ╨╜╨░╤З╨░╨╗╨╛ ╤Д╨╛╤А╨╝╨╕╤А╨╛╨▓╨░╤В╤М╤Б╤П ╨┐╤А╨╡╨┤╤Б╤В╨░╨▓╨╗╨╡╨╜╨╕╨╡ ╨╛ ╨╝╤Г╨╖╤Л╨║╨╡, ╨┐╤А╨╛╤В╨╕╨▓╨╛╨┐╨╛╨╗╨╛╨╢╨╜╨╛╨╡ ╨┐╤А╨╡╨╢╨╜╨╡╨╝╤Г ╨╜╨╡╨│╨░╤В╨╕╨▓╨╕╤Б╤В╤Б╨║╨╛╨╝╤Г ╨▓╨╖╨│╨╗╤П╨┤╤Г.<br />╨Т ╨║╨╛╨╜╤Ж╨╡ 1988 ╨│╨╛╨┤╨░ ╨┐╤А╨╛╨╕╨╖╨╛╤И╨╗╨╛ ╤Б╤В╤А╨░╤И╨╜╨╛╨╡ <a href="https://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%82%D0%B0%D0%BA%D1%81%D0%BA%D0%BE%D0%B5_%D0%B7%D0%B5%D0%BC%D0%BB%D0%B5%D1%82%D1%80%D1%8F%D1%81%D0%B5%D0%BD%D0%B8%D0%B5" target="_blank" rel="noopener">╨╖╨╡╨╝╨╗╨╡╤В╤А╤П╤Б╨╡╨╜╨╕╨╡ ╨▓ ╨б╨┐╨╕╤В╨░╨║╨╡</a>, ╨┐╨╛╤Б╨╗╨╡╨┤╤Б╤В╨▓╨╕╤П ╨║╨╛╤В╨╛╤А╨╛╨│╨╛ ╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜ ╨╜╨░╨▒╨╗╤О╨┤╨░╨╗ ╨▓╨╛╨╛╤З╨╕╤О. ╨н╤В╨╕ ╨▓╨┐╨╡╤З╨░╤В╨╗╨╡╨╜╨╕╤П ╤Б╨┤╨╡╨╗╨░╨╗╨╕ ╨▒╨╛╨╗╤М╤И╨╛╨╣ ╨▓╨║╨╗╨░╨┤ ╨▓ ╨╕╨╖╨╝╨╡╨╜╨╡╨╜╨╕╨╡ ╨┐╤А╨╡╨┤╤Б╤В╨░╨▓╨╗╨╡╨╜╨╕╨╣ ╨╛ ╤В╨▓╨╛╤А╤З╨╡╤Б╨║╨╕╤Е ╨╖╨░╨┤╨░╤З╨░╤Е. ╨Т ╤З╨░╤Б╤В╨╜╨╛╤Б╤В╨╕, ╤Б╤В╤А╨╡╨╝╨╗╨╡╨╜╨╕╨╡ &ldquo;╨▓╤Л╨▓╨╛╤А╨░╤З╨╕╨▓╨░╤В╤М ╨╜╨░╨╕╨╖╨╜╨░╨╜╨║╤Г&rdquo; ╤Б╨╝╨╡╨╜╨╕╨╗╨╛╤Б╤М ╨┐╨╛╨╜╨╕╨╝╨░╨╜╨╕╨╡╨╝, ╤З╤В╨╛ ╨╜╨╡╨║╨╛╤В╨╛╤А╤Л╨╡ ╨▓╨╡╤Й╨╕ ╨╜╤Г╨╢╨╜╨╛ ╨╜╨╡ ╨▓╤Л╨▓╨╛╤А╨░╤З╨╕╨▓╨░╤В╤М, ╨░, ╨╜╨░╨╛╨▒╨╛╤А╨╛╤В, ╨╖╨░╤Й╨╕╤Й╨░╤В╤М, ╤В╨╛ ╨╡╤Б╤В╤М ╤Б╨║╤А╤Л╨▓╨░╤В╤М, ╨║╨░╨║ ╨╢╨╕╨╖╨╜╨╡╨╜╨╜╨╛ ╨▓╨░╨╢╨╜╤Л╨╡ ╨╛╤А╨│╨░╨╜╤Л ╤З╨╡╨╗╨╛╨▓╨╡╨║╨░ ╨╖╨░╤Й╨╕╤Й╨╡╨╜╤Л (╤Б╨║╤А╤Л╤В╤Л) ╨║╨╛╤Б╤В╤П╨╝╨╕ ╨╕ ╨╝╤Л╤И╤Ж╨░╨╝╨╕.<br />╨Ъ 1990 ╨│╨╛╨┤╤Г ╨╛╨║╨╛╨╜╤З╨░╤В╨╡╨╗╤М╨╜╨╛ ╤Б╤Д╨╛╤А╨╝╨╕╤А╨╛╨▓╨░╨╗╨░╤Б╤М ╨╜╨╛╨▓╨░╤П ╤В╨▓╨╛╤А╤З╨╡╤Б╨║╨░╤П ╨║╨╛╨╜╤Ж╨╡╨┐╤Ж╨╕╤П, ╨║╨╛╤В╨╛╤А╨░╤П ╨┐╨╛╨┤╤А╨░╨╖╤Г╨╝╨╡╨▓╨░╨╗╨░ ╨╜╨╡ ╤В╨╛╨╗╤М╨║╨╛ ╨┐╨╡╤А╨╡╤Е╨╛╨┤ ╨╛╤В ╨░╨▓╨░╨╜╨│╨░╤А╨┤╨░ ╨║ &ldquo;╤В╤А╨░╨┤╨╕╤Ж╨╕╨╛╨╜╨░╨╗╨╕╨╖╨╝╤Г&rdquo;, ╨╜╨╛ ╨╕ ╨╛╤В╨║╨░╨╖ ╨╛╤В ╤А╨░╨╜╨╡╨╡ ╤Б╨╛╨╖╨┤╨░╨╜╨╜╤Л╤Е ╨░╨▓╨░╨╜╨│╨░╤А╨┤╨╕╤Б╤В╤Б╨║╨╕╤Е ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╨╣. ╨Ш╨╖ ╨▒╨╛╨╗╨╡╨╡ ╤А╨░╨╜╨╜╨╡╨│╨╛ ╨╛╤Б╤В╨░╨╗╨╕╤Б╤М ╤В╨╛╨╗╤М╨║╨╛ ╨┤╨▓╨░ ╨┐╤А╨╛╨╕╨╖╨▓╨╡╨┤╨╡╨╜╨╕╤П: ╨┤╨╡╤В╤Б╨║╨░╤П ╨╛╨┐╨╡╤А╨░ &ldquo;╨Ъ╨╕╨║╨╛╤Б ╨╕ ╨Ъ╨╕╤А╨░╨║╨╛╤Б&rdquo; (1981 ╨│.) ╨╕ ╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ1 ╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░ (1985 ╨│.).</p>	ru	\N	\N	\N
2	╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜ ╨╜╨░╤З╨░╨╗ ╨╕╨╜╤В╨╡╤А╨╡╤Б╨╛╨▓╨░╤В╤М╤Б╤П ╨╝╤Г╨╖╤Л╨║╨╛╨╣ ╨╡╤Й╨╡ ╨▓ ╨┤╨╡╤В╤Б╤В╨▓╨╡ ╨╕ ╤Г╨╢╨╡ ╤В╨╛╨│╨┤╨░ ╨╜╨░╤З╨░╨╗ ╤Б╨╛╤З╨╕╨╜╤П╤В╤М ╨┐╨╡╤Б╨╜╨╕ ╨╕ ╨╝╨╡╨╗╨╛╨┤╨╕╨╕. ╨Э╨╛ ╨▓ ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╨╛╨╣ ╤И╨║╨╛╨╗╨╡ ╨╛╨╜ ╨╜╨╡ ╤Г╤З╨╕╨╗╤Б╤П: ╤А╨╛╨┤╨╕╤В╨╡╨╗╨╕ ╨╜╨╡ ╤Б╤З╨╕╤В╨░╨╗╨╕ ╨╜╤Г╨╢╨╜╤Л╨╝ ╨┐╨╛╨┤╨┤╨╡╤А╨╢╨╕╨▓╨░╤В╤М ╨╕╨╜╤В╨╡╤А╨╡╤Б ╨║ ╨╝╤Г╨╖╤Л╨║╨╡.<br />╨Я╨╛╤Б╤В╤Г╨┐╨╕╤В╤М ╨▓ ╨║╨╛╨╜╤Б╨╡╤А╨▓╨░╤В╨╛╤А╨╕╤О ╨▒╨╡╨╖ ╨╜╨░╤З╨░╨╗╤М╨╜╨╛╨│╨╛ ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╨╛╨│╨╛ ╨╛╨▒╤А╨░╨╖╨╛╨▓╨░╨╜╨╕╤П ╨▒╤Л╨╗╨╛ ╨╜╨╡╨╗╤М╨╖╤П, ╨┐╨╛╤Н╤В╨╛╨╝╤Г ╨┐╨╛ ╨╛╨║╨╛╨╜╤З╨░╨╜╨╕╨╕ ╤И╨║╨╛╨╗╤Л ╨╛╨╜ ╨┐╨╛╤Б╤В╤Г╨┐╨╕╨╗ ╨╜╨░ ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╨╛╨╡ ╨╛╤В╨┤╨╡╨╗╨╡╨╜╨╕╨╡ ╤Д╨░╨║╤Г╨╗╤М╤В╨╡╤В╨░ ╤Н╤Б╤В╨╡╤В╨╕╨║╨╕ ╨▓ ╨Р╤А╨╝╤П╨╜╤Б╨║╨╕╨╣ ╨┐╨╡╨┤╨░╨│╨╛╨│╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╕╨╜╤Б╤В╨╕╤В╤Г╤В ╨╕╨╝. X. ╨Р╨▒╨╛╨▓╤П╨╜╨░, ╨│╨┤╨╡ ╤Б╨┐╨╡╤Ж╨╕╨░╨╗╨╕╨╖╨╕╤А╨╛╨▓╨░╨╗╤Б╤П ╨╜╨░ ╨┤╨╕╤А╨╕╨╢╨╕╤А╨╛╨▓╨░╨╜╨╕╨╕. ╨Я╨░╤А╨░╨╗╨╗╨╡╨╗╤М╨╜╨╛ ╤Б ╤Н╤В╨╕╨╝ ╨┐╨╕╤Б╨░╨╗ ╨╝╤Г╨╖╤Л╨║╤Г.<br />╨Ю╨║╨╛╨╜╤З╨╕╨▓ ╨╕╨╜╤Б╤В╨╕╤В╤Г╤В ╨▓ 1970 ╨│╨╛╨┤╤Г, ╨╛╨╜ ╤Б╨╛╨▒╨╕╤А╨░╨╗╤Б╤П ╨┐╨╛╤Б╤В╤Г╨┐╨╕╤В╤М ╨▓ ╨Х╤А╨╡╨▓╨░╨╜╤Б╨║╤Г╤О ╨║╨╛╨╜╤Б╨╡╤А╨▓╨░╤В╨╛╤А╨╕╤О ╨╜╨░ ╨┤╨╕╤А╨╕╨╢╨╡╤А╤Б╨║╨╛╨╡ ╨╛╤В╨┤╨╡╨╗╨╡╨╜╨╕╨╡, ╨╜╨╛ ╨┤╤А╤Г╨╖╤М╤П ╤Г╨▒╨╡╨┤╨╕╨╗╨╕ ╨╡╨│╨╛ ╨┐╨╛╨┤╨░╤В╤М ╨┤╨╛╨║╤Г╨╝╨╡╨╜╤В╤Л ╨╜╨░ ╤В╨╡╨╛╤А╨╡╤В╨╕╨║╨╛-╨║╨╛╨╝╨┐╨╛╨╖╨╕╤В╨╛╤А╤Б╨║╨╕╨╣ ╤Д╨░╨║╤Г╨╗╤М╤В╨╡╤В. ╨Ъ ╤В╨╛╨╝╤Г ╨╝╨╛╨╝╨╡╨╜╤В╤Г ╤Г ╨╜╨╡╨│╨╛ ╤Г╨╢╨╡ ╨▒╤Л╨╗╨╛ ╨╝╨╜╨╛╨╢╨╡╤Б╤В╨▓╨╛ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╨╣, ╨▓ ╤В╨╛╨╝ ╤З╨╕╤Б╨╗╨╡ ╨╛╨┐╨╡╤А╨░ &ldquo;╨Р╤А╨░ ╨Я╤А╨╡╨║╤А╨░╤Б╨╜╤Л╨╣ ╨╕ ╨и╨░╨╝╨╕╤А╨░╨╝&rdquo; ╨╕ ╨╗╨╕╤В╤Г╤А╨│╨╕╤П ╨┤╨╗╤П ╤Е╨╛╤А╨░ ╤Б╨╛╨╗╨╕╤Б╤В╨╛╨▓ ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░, ╨╕ ╨╛╨╜ ╤Г╤Б╨┐╨╡╤И╨╜╨╛ ╨┐╨╛╤Б╤В╤Г╨┐╨╕╨╗.<br />╨Х╤Й╨╡ ╨▓ ╤И╨║╨╛╨╗╤М╨╜╤Л╨╡ ╨│╨╛╨┤╤Л ╨╛╨╜ ╨╛╤В╨╗╨╕╤З╨░╨╗╤Б╤П ╤Б╤В╤А╨╛╨┐╤В╨╕╨▓╤Л╨╝ ╨╜╤А╨░╨▓╨╛╨╝ ╨╕ ╨╕╨╖-╨╖╨░ ╤Н╤В╨╛╨│╨╛ ╤Б╨╕╤Б╤В╨╡╨╝╨░╤В╨╕╤З╨╡╤Б╨║╨╕ ╨╜╨╡ ╨╜╨░╤Е╨╛╨┤╨╕╨╗ ╨╛╨▒╤Й╨╡╨│╨╛ ╤П╨╖╤Л╨║╨░ ╤Б ╤А╤Г╨║╨╛╨▓╨╛╨┤╤Б╤В╨▓╨╛╨╝, ╨╕ ╨▓ ╨┤╨░╨╗╤М╨╜╨╡╨╣╤И╨╡╨╝ ╤Н╤В╨░ ╨║╨╛╨╜╤Д╤А╨╛╨╜╤В╨░╤Ж╨╕╤П ╤В╨╛╨╗╤М╨║╨╛ ╤Г╤Б╨╕╨╗╨╕╨▓╨░╨╗╨░╤Б╤М. ╨Т ╤З╨░╤Б╤В╨╜╨╛╤Б╤В╨╕, ╤Г╨▓╨╗╨╡╨║╨░╨╗╤Б╤П ╨░╤А╨╝╤П╨╜╤Б╨║╨╛╨╣ ╤Б╤А╨╡╨┤╨╜╨╡╨▓╨╡╨║╨╛╨▓╨╛╨╣ ╤Д╨╕╨╗╨╛╤Б╨╛╤Д╨╕╨╡╨╣ ╨╕ ╨┐╨╛╤Н╨╖╨╕╨╡╨╣, ╤З╨╕╤В╨░╨╗ ╨░╤А╨╝╤П╨╜╤Б╨║╨╕╤Е ╨╕╤Б╤В╨╛╤А╨╕╨║╨╛╨▓ V ╨▓╨╡╨║╨░ ╨╕ ╨┐╤А╨╛╤З╤Г╤О ╨╜╨╡ ╨┐╨╛╨╛╤Й╤А╤П╨▓╤И╤Г╤О╤Б╤П ╨▓ ╨б╨б╨б╨а ╨╗╨╕╤В╨╡╤А╨░╤В╤Г╤А╤Г. ╨Ч╨░ ╤Б╨▓╨╛╨╣ ╨▒╨╡╤Б╨║╨╛╨╝╨┐╤А╨╛╨╝╨╕╤Б╤Б╨╜╤Л╨╣ ╤Е╨░╤А╨░╨║╤В╨╡╤А ╨╛╨╜ ╨┐╨╛╨╗╤Г╤З╨╕╨╗ ╨╛╤В ╨┐╤А╨╛╤Д╨╡╤Б╤Б╨╛╤А╨╛╨▓ ╨┐╤А╨╛╨╖╨▓╨╕╤Й╨╡ &ldquo;╨╜╨╕╨│╨╕╨╗╨╕╤Б╤В&rdquo;, ╨╛╨┤╨╜╨░╨║╨╛ ╨╛╤Б╤В╨░╨▓╨░╨╗╤Б╤П ╨╜╨░ ╤Е╨╛╤А╨╛╤И╨╡╨╝ ╤Б╤З╨╡╤В╤Г ╨▓ ╨║╨░╤З╨╡╤Б╤В╨▓╨╡ ╤Б╤В╤Г╨┤╨╡╨╜╤В╨░. ╨Т 1977 ╨│╨╛╨┤╤Г ╨╛╨║╨╛╨╜╤З╨╕╨╗ ╨║╨╛╨╜╤Б╨╡╤А╨▓╨░╤В╨╛╤А╨╕╤О ╨┐╨╛ ╨║╨╗╨░╤Б╤Б╤Г ╨║╨╛╨╝╨┐╨╛╨╖╨╕╤Ж╨╕╨╕ <a href="https://ru.wikipedia.org/wiki/%D0%95%D0%B3%D0%B8%D0%B0%D0%B7%D0%B0%D1%80%D1%8F%D0%BD,_%D0%93%D1%80%D0%B8%D0%B3%D0%BE%D1%80%D0%B8%D0%B9_%D0%95%D0%B3%D0%B8%D0%B0%D0%B7%D0%B0%D1%80%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">╨У╤А╨╕╨│╨╛╤А╨╕╤П ╨Х╨│╨╕╨░╨╖╨░╤А╤П╨╜╨░</a>.	ru	evolution	╨д╨╛╤А╨╝╨╕╤А╨╛╨▓╨░╨╜╨╕╨╡	\N
4	╨Я╨╡╤А╨╡╤Е╨╛╨┤ ╨║ ╨╜╨╛╨▓╨╛╨╝╤Г ╤Н╤В╨░╨┐╤Г ╨╜╨░╤З╨░╨╗╤Б╤П ╨▓ 1986 ╨│╨╛╨┤╤Г, ╨║╨╛╨│╨┤╨░ ╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜ ╨┐╨╛╨┐╨░╨╗ ╨▓ ╨▒╨╛╨╗╤М╨╜╨╕╤Ж╤Г ╤Б ╨╕╨╜╤Д╨░╤А╨║╤В╨╛╨╝. ╨Ч╨░ ╤Н╤В╨╕╨╝ ╨┐╨╛╤Б╨╗╨╡╨┤╨╛╨▓╨░╨╗ ╨┤╨╗╨╕╤В╨╡╨╗╤М╨╜╤Л╨╣ ╨┐╨╡╤А╨╕╨╛╨┤ ╨╗╨╡╤З╨╡╨╜╨╕╤П ╨╕ ╨▓╤Л╨╖╨┤╨╛╤А╨╛╨▓╨╗╨╡╨╜╨╕╤П, ╨▓╨╛ ╨▓╤А╨╡╨╝╤П ╨║╨╛╤В╨╛╤А╨╛╨│╨╛ ╤Г ╨╜╨╡╨│╨╛ ╨╜╨░╤З╨░╨╗╨╛ ╤Д╨╛╤А╨╝╨╕╤А╨╛╨▓╨░╤В╤М╤Б╤П ╨┐╤А╨╡╨┤╤Б╤В╨░╨▓╨╗╨╡╨╜╨╕╨╡ ╨╛ ╨╝╤Г╨╖╤Л╨║╨╡, ╨┐╤А╨╛╤В╨╕╨▓╨╛╨┐╨╛╨╗╨╛╨╢╨╜╨╛╨╡ ╨┐╤А╨╡╨╢╨╜╨╡╨╝╤Г ╨╜╨╡╨│╨░╤В╨╕╨▓╨╕╤Б╤В╤Б╨║╨╛╨╝╤Г ╨▓╨╖╨│╨╗╤П╨┤╤Г.<br />╨Т ╨║╨╛╨╜╤Ж╨╡ 1988 ╨│╨╛╨┤╨░ ╨┐╤А╨╛╨╕╨╖╨╛╤И╨╗╨╛ ╤Б╤В╤А╨░╤И╨╜╨╛╨╡ <a href="https://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%82%D0%B0%D0%BA%D1%81%D0%BA%D0%BE%D0%B5_%D0%B7%D0%B5%D0%BC%D0%BB%D0%B5%D1%82%D1%80%D1%8F%D1%81%D0%B5%D0%BD%D0%B8%D0%B5" target="_blank" rel="noopener">╨╖╨╡╨╝╨╗╨╡╤В╤А╤П╤Б╨╡╨╜╨╕╨╡ ╨▓ ╨б╨┐╨╕╤В╨░╨║╨╡</a>, ╨┐╨╛╤Б╨╗╨╡╨┤╤Б╤В╨▓╨╕╤П ╨║╨╛╤В╨╛╤А╨╛╨│╨╛ ╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜ ╨╜╨░╨▒╨╗╤О╨┤╨░╨╗ ╨▓╨╛╨╛╤З╨╕╤О. ╨н╤В╨╕ ╨▓╨┐╨╡╤З╨░╤В╨╗╨╡╨╜╨╕╤П ╤Б╨┤╨╡╨╗╨░╨╗╨╕ ╨▒╨╛╨╗╤М╤И╨╛╨╣ ╨▓╨║╨╗╨░╨┤ ╨▓ ╨╕╨╖╨╝╨╡╨╜╨╡╨╜╨╕╨╡ ╨┐╤А╨╡╨┤╤Б╤В╨░╨▓╨╗╨╡╨╜╨╕╨╣ ╨╛ ╤В╨▓╨╛╤А╤З╨╡╤Б╨║╨╕╤Е ╨╖╨░╨┤╨░╤З╨░╤Е. ╨Т ╤З╨░╤Б╤В╨╜╨╛╤Б╤В╨╕, ╤Б╤В╤А╨╡╨╝╨╗╨╡╨╜╨╕╨╡ &ldquo;╨▓╤Л╨▓╨╛╤А╨░╤З╨╕╨▓╨░╤В╤М ╨╜╨░╨╕╨╖╨╜╨░╨╜╨║╤Г&rdquo; ╤Б╨╝╨╡╨╜╨╕╨╗╨╛╤Б╤М ╨┐╨╛╨╜╨╕╨╝╨░╨╜╨╕╨╡╨╝, ╤З╤В╨╛ ╨╜╨╡╨║╨╛╤В╨╛╤А╤Л╨╡ ╨▓╨╡╤Й╨╕ ╨╜╤Г╨╢╨╜╨╛ ╨╜╨╡ ╨▓╤Л╨▓╨╛╤А╨░╤З╨╕╨▓╨░╤В╤М, ╨░, ╨╜╨░╨╛╨▒╨╛╤А╨╛╤В, ╨╖╨░╤Й╨╕╤Й╨░╤В╤М, ╤В╨╛ ╨╡╤Б╤В╤М ╤Б╨║╤А╤Л╨▓╨░╤В╤М, ╨║╨░╨║ ╨╢╨╕╨╖╨╜╨╡╨╜╨╜╨╛ ╨▓╨░╨╢╨╜╤Л╨╡ ╨╛╤А╨│╨░╨╜╤Л ╤З╨╡╨╗╨╛╨▓╨╡╨║╨░ ╨╖╨░╤Й╨╕╤Й╨╡╨╜╤Л (╤Б╨║╤А╤Л╤В╤Л) ╨║╨╛╤Б╤В╤П╨╝╨╕ ╨╕ ╨╝╤Л╤И╤Ж╨░╨╝╨╕.<br />╨Ъ 1990 ╨│╨╛╨┤╤Г ╨╛╨║╨╛╨╜╤З╨░╤В╨╡╨╗╤М╨╜╨╛ ╤Б╤Д╨╛╤А╨╝╨╕╤А╨╛╨▓╨░╨╗╨░╤Б╤М ╨╜╨╛╨▓╨░╤П ╤В╨▓╨╛╤А╤З╨╡╤Б╨║╨░╤П ╨║╨╛╨╜╤Ж╨╡╨┐╤Ж╨╕╤П, ╨║╨╛╤В╨╛╤А╨░╤П ╨┐╨╛╨┤╤А╨░╨╖╤Г╨╝╨╡╨▓╨░╨╗╨░ ╨╜╨╡ ╤В╨╛╨╗╤М╨║╨╛ ╨┐╨╡╤А╨╡╤Е╨╛╨┤ ╨╛╤В ╨░╨▓╨░╨╜╨│╨░╤А╨┤╨░ ╨║ &ldquo;╤В╤А╨░╨┤╨╕╤Ж╨╕╨╛╨╜╨░╨╗╨╕╨╖╨╝╤Г&rdquo;, ╨╜╨╛ ╨╕ ╨╛╤В╨║╨░╨╖ ╨╛╤В ╤А╨░╨╜╨╡╨╡ ╤Б╨╛╨╖╨┤╨░╨╜╨╜╤Л╤Е ╨░╨▓╨░╨╜╨│╨░╤А╨┤╨╕╤Б╤В╤Б╨║╨╕╤Е ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╨╣. ╨Ш╨╖ ╨▒╨╛╨╗╨╡╨╡ ╤А╨░╨╜╨╜╨╡╨│╨╛ ╨╛╤Б╤В╨░╨╗╨╕╤Б╤М ╤В╨╛╨╗╤М╨║╨╛ ╨┤╨▓╨░ ╨┐╤А╨╛╨╕╨╖╨▓╨╡╨┤╨╡╨╜╨╕╤П: ╨┤╨╡╤В╤Б╨║╨░╤П ╨╛╨┐╨╡╤А╨░ &ldquo;╨Ъ╨╕╨║╨╛╤Б ╨╕ ╨Ъ╨╕╤А╨░╨║╨╛╤Б&rdquo; (1981 ╨│.) ╨╕ ╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ1 ╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░ (1985 ╨│.).	ru	tradit	╨в╤А╨░╨┤╨╕╤Ж╨╕╨╛╨╜╨░╨╗╨╕╨╖╨╝	\N
3	╨Х╤Й╨╡ ╨▒╤Г╨┤╤Г╤З╨╕ ╤Б╤В╤Г╨┤╨╡╨╜╤В╨╛╨╝ ╨╕╨╜╤Б╤В╨╕╤В╤Г╤В╨░, ╨╜╨░╤З╨░╨╗ ╤Г╨▓╨╗╨╡╨║╨░╤В╤М╤Б╤П ╨░╨▓╨░╨╜╨│╨░╤А╨┤╨╜╨╛╨╣ ╨╝╤Г╨╖╤Л╨║╨╛╨╣, ╨▓ ╤З╨░╤Б╤В╨╜╨╛╤Б╤В╨╕ ╨┐╨╛╨┤ ╨▓╨┐╨╡╤З╨░╤В╨╗╨╡╨╜╨╕╨╡╨╝ ╨╛╤В ╨┐╤А╨╛╨╕╨╖╨▓╨╡╨┤╨╡╨╜╨╕╨╣ <a href="https://ru.wikipedia.org/wiki/%D0%A1%D1%82%D1%80%D0%B0%D0%B2%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9,_%D0%98%D0%B3%D0%BE%D1%80%D1%8C_%D0%A4%D1%91%D0%B4%D0%BE%D1%80%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">╨Ш.╨д. ╨б╤В╤А╨░╨▓╨╕╨╜╤Б╨║╨╛╨│╨╛</a>. ╨Т ╤Н╤В╨╛╨╝ ╨╡╨│╨╛ ╨┐╨╛╨┤╨┤╨╡╤А╨╢╨╕╨▓╨░╨╗ ╨┐╤А╨╡╨┐╨╛╨┤╨░╨▓╨░╨▓╤И╨╕╨╣ ╤В╨░╨╝ ╨║╨╛╨╝╨┐╨╛╨╖╨╕╤В╨╛╤А <a href="http://ru.hayazg.info/%D0%93%D0%B5%D0%B2%D0%BE%D1%80%D0%BA%D1%8F%D0%BD_%D0%AE%D1%80%D0%B8%D0%B9_%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">╨о╤А╨╕╨╣ ╨У╨╡╨▓╨╛╤А╨║╤П╨╜</a>. ╨Т ╨║╨╛╨╜╤Б╨╡╤А╨▓╨░╤В╨╛╤А╨╕╨╕ ╨╛╨╜ ╨╖╨░╨╕╨╜╤В╨╡╤А╨╡╤Б╨╛╨▓╨░╨╗╤Б╤П ╤В╨▓╨╛╤А╤З╨╡╤Б╤В╨▓╨╛╨╝ ╨┐╤А╨╡╨┐╨╛╨┤╨░╨▓╨░╨▓╤И╨╡╨│╨╛ ╤В╨░╨╝ ╨║╨╛╨╝╨┐╨╛╨╖╨╕╤В╨╛╤А╨░-╨░╨▓╨░╨╜╨│╨░╤А╨┤╨╕╤Б╤В╨░ <a href="https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D1%80%D1%82%D0%B5%D1%80%D1%8F%D0%BD,_%D0%90%D0%B2%D0%B5%D1%82_%D0%A0%D1%83%D0%B1%D0%B5%D0%BD%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">╨Р╨▓╨╡╤В╨░ ╨в╨╡╤А╤В╨╡╤А╤П╨╜╨░</a>. ╨Я╤А╨╕ ╤Н╤В╨╛╨╝ ╨╛╨╜ ╨╛╤Б╤В╨░╨▓╨░╨╗╤Б╤П ╨▓ ╨║╨╗╨░╤Б╤Б╨╡ ╨Х╨│╨╕╨░╨╖╨░╤А╤П╨╜╨░, ╨║╨░╤В╨╡╨│╨╛╤А╨╕╤З╨╡╤Б╨║╨╕ ╨╜╨╡ ╨╛╨┤╨╛╨▒╤А╤П╨▓╤И╨╡╨│╨╛ ╤В╨░╨║╨╕╨╡ ╤В╨╡╨╜╨┤╨╡╨╜╤Ж╨╕╨╕ ╨▓ ╨╝╤Г╨╖╤Л╨║╨╡.<br />╨Ю╨┤╨╕╨╜ ╨╕╨╖ ╤Б╨▓╨╛╨╕╤Е ╨╛╨┐╤Г╤Б╨╛╨▓ ╤В╨╡╤Е ╨▓╤А╨╡╨╝╨╡╨╜ ╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜ ╨┐╨╡╤А╨╡╤Б╨║╨░╨╖╤Л╨▓╨░╨╡╤В ╤Б╨╗╨╡╨┤╤Г╤О╤Й╨╕╨╝ ╨╛╨▒╤А╨░╨╖╨╛╨╝: &ldquo;╨Я╨╡╤А╨╡╨┤ ╤Б╨╛╨▒╨╛╨╣ ╤П ╨┐╨╛╤Б╤В╨░╨▓╨╕╨╗ ╤Б╨╡╤А╤М╨╡╨╖╨╜╤Г╤О ╨╕ ╨▓╨╡╤Б╤М╨╝╨░ ╤Б╨╗╨╛╨╢╨╜╤Г╤О ╨╖╨░╨┤╨░╤З╤Г: ╨▓╤Б╤С ╨╜╨░╨╕╨╖╨╜╨░╨╜╨║╤Г - ╨╗╤О╨┤╨╕ ╨╕ ╨▓╤Б╤С ╨╛╤Б╤В╨░╨╗╤М╨╜╨╛╨╡. ╨Т╨╕╨┤╨╡╤В╤М ╨╕ ╤Б╨╗╤Л╤И╨░╤В╤М, ╨║╨░╨║ ╨║╤А╨╛╨▓╤М ╤В╨╡╤З╨╡╤В ╨┐╨╛ ╨░╤А╤В╨╡╤А╨╕╤П╨╝, ╨║╨░╨║ ╤А╨░╨▒╨╛╤В╨░╤О╤В ╨╝╨╛╨╖╨│, ╤Б╨╡╤А╨┤╤Ж╨╡, ╨╗╨╡╨│╨║╨╕╨╡. ╨Ъ╨░╨║ ╤А╨░╨╖╤К╨╡╨┤╨░╨╡╤В ╨╛╤А╨│╨░╨╜╨╕╨╖╨╝ ╨║╨░╨║╨╛╨╣-╤В╨╛ ╨╜╨╡╨┤╤Г╨│. ╨б╨╜╨░╤З╨░╨╗╨░ ╨╛╨╜ ╨▓╨╛╨╖╨╜╨╕╨║╨░╨╡╤В ╨╜╨╡╨╖╨░╨╝╨╡╤В╨╜╨╛, ╨┐╨╛╤В╨╛╨╝ ╨╡╨┤╨▓╨░ ╨╛╤Й╤Г╤В╨╕╨╝╨╛╨╡, ╨┐╨╛╤В╨╛╨╝ ╨╗╨╡╨│╨║╨╛╨╡, ╨╜╨╡╨╖╨╜╨░╤З╨╕╤В╨╡╨╗╤М╨╜╨╛╨╡ ╨╜╨╡╨┤╨╛╨╝╨╛╨│╨░╨╜╨╕╨╡, ╨┤╨░╨╗╨╡╨╡ ╨▒╨╛╨╗╤М╤И╨╡ ╨╕ ╨▒╨╛╨╗╤М╤И╨╡, ╨┐╨╛╤В╨╛╨╝ ╨┐╨╛╤Б╤В╨╡╨┐╨╡╨╜╨╜╤Л╨╣ ╤А╨░╤Б╨┐╨░╨┤, ╨▓╤Б╤С ╤З╨╡╤А╨╜╨╛ ╨╕ ╤Б╨╝╨╡╤А╤В╤М&rdquo;.	ru	avant	╨Р╨▓╨░╨╜╨│╨░╤А╨┤	\N
\.


--
-- Data for Name: works_genre; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_genre (name_ru, name_hy, name_en, genre_id) FROM stdin;
╨Ю╨┐╨╡╤А╨░	╒Х╒║╒е╓А╒б	Opera	111
╨С╨░╨╗╨╡╤В	╘▓╒б╒м╒е╒┐	Ballet	114
╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б	Symphony	115
╨Ъ╨░╨╝╨╡╤А╨╜╨░╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤П	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╜╒л╒┤╓Ж╒╕╒╢╒л╒б	Chamber symphony	116
╨Ъ╨╛╨╜╤Ж╨╡╤А╤В	╘┐╒╕╒╢╓Б╒е╓А╒┐	Concerto	117
╨Ъ╨░╨╝╨╡╤А╨╜╤Л╨╡ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╤П	╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒е╓А╒п╒е╓А	Chamber works	118
╨Ъ╨░╨╝╨╡╤А╨╜╤Л╨╡ ╨║╨░╨╜╤В╨░╤В╤Л	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒п╒б╒╢╒┐╒б╒┐	Chamber cantatas	119
╨б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╨╡ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╤П	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒п ╒е╓А╒п╒е╓А	Orchestral works	120
╨б╨╛╨╜╨░╤В╤Л	╒Н╒╕╒╢╒б╒┐	Sonatas	121
╨а╨╛╨╝╨░╨╜╤Б	╒М╒╕╒┤╒б╒╢╒╜	Romance	123
╨е╨╛╤А╨╛╨▓╤Л╨╡ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╤П	╒н╒┤╒в╒е╓А╒г╒б╒╡╒л╒╢ ╒е╓А╒п╒е╓А	Choir works	124
\.


--
-- Data for Name: works_home; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_home (id, page_title, text, language) FROM stdin;
1	╨Ф╨░╨▓╨╕╨┤ ╨б╨░╨║╨╛╤П╨╜ ╨╕ ╨╡╨│╨╛ ╨╝╤Г╨╖╤Л╨║╨░	<p>╨н╤В╨╛╤В ╤Б╨░╨╣╤В ╨┐╨╛╤Б╨▓╤П╤Й╨╡╨╜ ╤В╨▓╨╛╤А╤З╨╡╤Б╤В╨▓╤Г ╨║╨╛╨╝╨┐╨╛╨╖╨╕╤В╨╛╤А╨░ ╨░╤А╨╝╤П╨╜╤Б╨║╨╛╨│╨╛ ╨Ф╨░╨▓╨╕╨┤╨░ ╨б╨░╨║╨╛╤П╨╜╨░, ╨░╨▓╤В╨╛╤А╨░ ╨╝╨╜╨╛╨│╨╛╤З╨╕╤Б╨╗╨╡╨╜╨╜╤Л╤Е ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╤Е ╨┐╤А╨╛╨╕╨╖╨▓╨╡╨┤╨╡╨╜╨╕╨╣. ╨Ч╨┤╨╡╤Б╤М ╨╝╨╛╨╢╨╜╨╛ ╨╜╨░╨╣╤В╨╕ ╨║╨░╤В╨░╨╗╨╛╨│ ╨╡╨│╨╛ ╤Б╨╛╤З╨╕╨╜╨╡╨╜╨╕╨╣, ╨░ ╤В╨░╨║╨╢╨╡ ╨┐╨╛╤Б╨╗╤Г╤И╨░╤В╤М ╤В╨╡ ╨╕╨╖ ╨╜╨╕╤Е, ╨║╨╛╤В╨╛╤А╤Л╨╡ ╨╡╤Б╤В╤М ╨▓ ╨╖╨░╨┐╨╕╤Б╨╕.</p>	ru
2	╘┤╒б╒╛╒л╒й ╒Н╒б╓Д╒╕╒╡╒б╒╢ ╓З ╒╢╓А╒б ╒е╓А╒б╒к╒╖╒┐╒╕╓В╒й╒╡╒╕╓В╒╢		hy
3	David Sakoyan and his music		en
\.


--
-- Data for Name: works_opus; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_opus (opus_id, title_ru, title_hy, title_en, comment_ru, comment_hy, comment_en, year, genre_id, subtitle_en, subtitle_hy, subtitle_ru) FROM stdin;
3	╨С╨╡╨╖ ╨╖╨░╨│╨╗╨░╨▓╨╕╤П	╘▒╒╢╒╛╒е╓А╒╢╒б╒г╒л╓А	Unnamed	╨Ы╨╕╨▒╤А╨╡╤В╤В╨╛ ╨┐╨╛ ╨┐╤М╨╡╤Б╨╡ ╨Р╨╗╨╡╨║╤Б╨░╨╜╨┤╤А╨░ ╨Ю╨▓╤Б╨╡╨┐╤П╨╜╨░	╘╝╒л╒в╓А╒е╒┐╒╕╒╢ ╒и╒╜╒┐ ╘▒╒м╒е╓Д╒╜╒б╒╢╒д╓А ╒А╒╕╒╛╒╜╒е╓Г╒╡╒б╒╢╒л ╒й╒б╒┐╒е╓А╒г╒╕╓В╒й╒╡╒б╒╢	Libretto is based on a play by Alexander Hovsepyan	1996	111	Opera-oratorio	╒Х╒║╒е╓А╒б-╓Е╓А╒б╒┐╒╕╓А╒л╒б	╨Ю╨┐╨╡╤А╨░-╨╛╤А╨░╤В╨╛╤А╨╕╤П
22	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ1	╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ1	Concerto No. 1	\N	\N	\N	1985	117	for piano and chamber orchestra	╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╓З ╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
2	╨е╤А╨╕╤Б╤В╨╛╤Б	╒Ф╓А╒л╒╜╒┐╒╕╒╜	Christ	╨Ы╨╕╨▒╤А╨╡╤В╤В╨╛ ╨╜╨░ ╨╛╤Б╨╜╨╛╨▓╨╡ ╤З╨╡╤В╤Л╤А╨╡╤Е ╨Х╨▓╨░╨╜╨│╨╡╨╗╨╕╨╣.	╒З╒╕╓А╒╜ ╘▒╒╛╒е╒┐╒б╓А╒б╒╢╒╢╒е╓А╒л ╒░╒л╒┤╒б╒╢ ╒╛╓А╒б╓Й	Libretto is based on the four Gospels	1994	111	Opera	╒Х╒║╒е╓А╒б	╨Ю╨┐╨╡╤А╨░
23	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ2	╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ2	Concerto No. 2	\N	\N	\N	1990	117	for piano and chamber orchestra	╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╓З ╒м╒б╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛ ╨╕ ╤Б╤В╤А╤Г╨╜╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
25	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ4	╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ4	Concerto No. 4	\N	\N	\N	1993	117	for piano and chamber orchestra	╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╓З ╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛ ╨╕ ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
4	╨а╨╕╨┐╤Б╨╕╨╝╤Н	╒А╒╝╒л╓Г╒╜╒л╒┤╒з	Hripsime	╨Ы╨╕╨▒╤А╨╡╤В╤В╨╛ ╨┐╨╛ ╨Р╨│╨░╤Д╨░╨╜╨│╨╡╨╗╤Г	╘╝╒л╒в╓А╒е╒┐╒╕╒╢ ╒и╒╜╒┐ ╘▒╒г╒б╒й╒б╒╢╒г╒е╒▓╒╕╒╜╒л	Libretto is based on Agathangelos	1997	111	Opera	╒Х╒║╒е╓А╒б	╨Ю╨┐╨╡╤А╨░
24	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ3	╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ3	Concerto No. 3	\N	\N	\N	1991	117	for piano and chamber orchestra	╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╓З ╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
5	╨Ц╨╕╤В╨╕╨╡ ╨┤╤Г╤А╨░╨║╨╛╨▓	╒О╒б╓А╓Д ╒░╒л╒┤╒б╓А╒б╓Б	Life of Fools	╨Ы╨╕╨▒╤А╨╡╤В╤В╨╛ ╨┐╨╛ ╤Б╨║╨░╨╖╨║╨░╨╝ ╨Ю╨▓╨░╨╜╨╜╨╡╤Б╨░ ╨в╤Г╨╝╨░╨╜╤П╨╜╨░	╘╝╒л╒в╓А╒е╒┐╒╕╒╢ ╒и╒╜╒┐ ╒А╒╕╒╛╒░╒б╒╢╒╢╒е╒╜ ╘╣╒╕╓В╒┤╒б╒╢╒╡╒б╒╢╒л ╒░╒е╓Д╒л╒б╒й╒╢╒е╓А╒л	Libretto is based on tales by Hovhannes Tumanyan	2008	111	Chamber opera	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╓Е╒║╒е╓А╒б	╨Ъ╨░╨╝╨╡╤А╨╜╨░╤П ╨╛╨┐╨╡╤А╨░
6	╨г ╨▓╨╡╤Б╨╡╨╗╤М╤З╨░╨║╨░ ╨▓╨╡╤Б╨╡╨╗╤М╤П ╨╜╨╡ ╤Г╨▒╤Г╨┤╨╡╤В	╒Ф╒е╓Ж ╒б╒╢╒╕╒▓╒л╒╢ ╓Д╒е╓Ж ╒╣╒л ╒║╒б╒п╒╜╒л╒м	A Merry Fellow won't Lose His Merriment	╨Ы╨╕╨▒╤А╨╡╤В╤В╨╛ ╨┐╨╛ ╤Б╨║╨░╨╖╨║╨╡ ╨Ю╨▓╨░╨╜╨╜╨╡╤Б╨░ ╨в╤Г╨╝╨░╨╜╤П╨╜╨░	╘╝╒л╒в╓А╒е╒┐╒╕╒╢ ╒и╒╜╒┐ ╒А╒╕╒╛╒░╒б╒╢╒╢╒е╒╜ ╘╣╒╕╓В╒┤╒б╒╢╒╡╒б╒╢╒л ╒░╒е╓Д╒л╒б╒й╒л	Libretto is based on a tale by Hovhannes Tumanyan	2012	111	Chamber opera	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╓Е╒║╒е╓А╒б	╨Ъ╨░╨╝╨╡╤А╨╜╨░╤П ╨╛╨┐╨╡╤А╨░
7	╨а╨╕╨┐╤Б╨╕╨╝╤Н	╒А╒╝╒л╓Г╒╜╒л╒┤╒з		╨Ы╨╕╨▒╤А╨╡╤В╤В╨╛ ╨┐╨╛ ╨Р╨│╨░╤Д╨░╨╜╨│╨╡╨╗╤Г	╘╝╒л╒в╓А╒е╒┐╒╕╒╢ ╒и╒╜╒┐ ╘▒╒г╒б╒й╒б╒╢╒г╒е╒▓╒╕╒╜╒л		1999	114	Ballet	╘▓╒б╒м╒е╒┐	╨С╨░╨╗╨╡╤В
8	╨Ь╤Г╨┤╤А╤Л╨╡ ╤В╨░╨╜╤Ж╤Л	╘╗╒┤╒б╒╜╒┐╒╕╓В╒╢ ╒║╒б╓А╒е╓А	Wise Dances	╨С╨╡╨╖ ╨╗╨╕╨▒╤А╨╡╤В╤В╨╛	╘▒╒╢ ╒м╒л╒в╓А╒е╒┐╒╕	Without libretto	2013	114	Ballet	╘▓╒б╒м╒е╒┐	╨С╨░╨╗╨╡╤В
9	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ1	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ1	Symphony No. 1	╨Э╨░ ╨╛╤Б╨╜╨╛╨▓╨╡ 32-╨│╨╛ ╨┐╤Б╨░╨╗╨╝╨░ (╨▓ ╤А╤Г╤Б╤Б╨║╨╛╨╣ ╨▓╨╡╤А╤Б╨╕╨╕ ╨Я╤Б╨░╨╗╤В╨╕╤А╨╕ - 31-╨│╨╛ ╨┐╤Б╨░╨╗╨╝╨░)	тДЦ32 ╒Н╒б╒▓╒┤╒╕╒╜╒л ╒░╒л╒┤╒б╒╢ ╒╛╓А╒б	Based on Psalm 32	1997	115	Symphony orchestra, soloists, choir	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в, ╒┤╒е╒╣╒е╓А╒г╒л╒╣╒╢╒е╓А ╓З ╒е╓А╒г╒╣╒б╒н╒╕╓В╒┤╒в	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А, ╤Б╨╛╨╗╨╕╤Б╤В╤Л ╨╕ ╤Е╨╛╤А
10	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ2	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ2	Symphony No. 2				2001	115	Symphony orchestra	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А
11	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ3	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ3	Symphony No. 3				2004	115	Symphony orchestra	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А
12	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ4 ┬л╨У╨╕╨╝╨╜ ╨Т╤Б╨╡╨▓╤Л╤И╨╜╨╡╨╝╤Г┬╗	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ4 тАЬ╒Х╓А╒░╒╢╒е╓А╒г ╘▓╒б╓А╒▒╓А╒╡╒б╒м╒л╒╢тАЭ	Symphony No. 4 "Hymn to the Highest"				2005	115	Symphony orchestra	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А
13	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ5	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ5	Symphony No. 5				2007	115	Symphony orchestra	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А
14	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ6 ┬л╨а╨░╤Б╨┐╤П╤В╨╕╨╡┬╗	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ6 тАЬ╘╜╒б╒╣╒е╒м╒╕╓В╒й╒╡╒╕╓В╒╢тАЭ	Symphony No. 6 "Crucifixion"				2009	115	Symphony orchestra	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А
15	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ7	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ7	Symphony No. 7				2010	115	Symphony orchestra	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А
16	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ8	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ8	Symphony No. 8	╨б╨╗╨╛╨▓╨░ ╨Щ.╨Т. ╨У╤С╤В╨╡ (╨▓ ╨┐╨╡╤А. ╨Ю. ╨в╤Г╨╝╨░╨╜╤П╨╜╨░)	╘╜╒╕╒╜╓Д ╘│╒╡╒╕╒й╒е╒╡╒л, ╒й╒б╓А╒г╒┤╒б╒╢╒╕╓В╒й╒╡╒╕╓В╒╢╒в ╒А╒╕╒╛╒░. ╘╣╒╕╓В╒┤╒б╒╢╒╡╒б╒╢╒л	Lyrics by Johann Wolfgang Goethe, Hovhannes Tumanyan (trans.)	2011	115	Symphony orchestra and baritone soloist	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в ╓З ╒┤╒е╒╢╒е╓А╒г╒л╒╣ ╒в╒б╓А╒л╒┐╒╕╒╢	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А ╨╕ ╤Б╨╛╨╗╨╕╤Б╤В ╨▒╨░╤А╨╕╤В╨╛╨╜
17	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ9	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ9	Symphony No. 9	╨б╨╗╨╛╨▓╨░ ╨╕╨╖ ╨░╤А╨╝╤П╨╜╤Б╨║╨╛╨╣ ╨╗╨╕╤В╤Г╤А╨│╨╕╨╕	╘╜╒╕╒╜╓Д╒и╒Э ╒░╒б╒╡╒╕╓Б ╒К╒б╒┐╒б╓А╒б╒г╒л╓Б	Text from Armenian Liturgy	2013	115	Symphony orchestra, choir	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в, ╒е╓А╒г╒╣╒б╒н╒╕╓В╒┤╒в	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А, ╤Е╨╛╤А
18	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ10 ┬л╨Ф╨╡╤В╤Б╨║╨░╤П┬╗	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ10╓Й ╒Д╒б╒╢╒п╒б╒п╒б╒╢	Symphony No. 10 "Children's"				2016	115	Symphony orchestra	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А
19	╨Ъ╨░╨╝╨╡╤А╨╜╨░╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ1	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╜╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ1	Chamber symphony No. 1				1990	116	Chamber orchestra	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в	╨Ъ╨░╨╝╨╡╤А╨╜╤Л╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А
20	╨Ъ╨░╨╝╨╡╤А╨╜╨░╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ2	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╜╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ2	Chamber symphony No. 2				2005	116	Chamber orchestra	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в	╨Ъ╨░╨╝╨╡╤А╨╜╤Л╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А
21	╨Ъ╨░╨╝╨╡╤А╨╜╨░╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ3	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╜╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ3	Chamber symphony No. 3				2007	116	Chamber orchestra	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в	╨Ъ╨░╨╝╨╡╤А╨╜╤Л╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А
26	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ1	╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ1	Concerto No. 1				1994	117	for violin and chamber orchestra	╒╗╒╕╓В╒й╒б╒п╒л ╓З ╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨║╤А╨╕╨┐╨║╨╕ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
27	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ2	╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ2	Concerto No. 2				2002	117	for violin and chamber orchestra	╒╗╒╕╓В╒й╒б╒п╒л ╓З ╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨║╤А╨╕╨┐╨║╨╕ ╨╕ ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
28	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ3	╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ3	Concerto No. 3				2017	117	for violin and chamber orchestra	╒╗╒╕╓В╒й╒б╒п╒л ╓З ╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨║╤А╨╕╨┐╨║╨╕ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
31	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ2	╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ2	Concerto No. 2	\N	\N	\N	2017	117	for pipe organ and chamber orchestra	╒е╓А╒г╒е╒░╒╕╒╢╒л ╓З ╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╛╤А╨│╨░╨╜╨░ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
29	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В	╘┐╒╕╒╢╓Б╒е╓А╒┐	Concerto				1995	117	for cello and chamber orchestra	╒й╒б╒╛╒╗╒╕╓В╒й╒б╒п╒л ╓З ╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨▓╨╕╨╛╨╗╨╛╨╜╤З╨╡╨╗╨╕ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
33	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В	╘┐╒╕╒╢╓Б╒е╓А╒┐	Concerto	\N	\N	\N	2002	117	for string orchestra	╒м╒б╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╤В╤А╤Г╨╜╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
30	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В тДЦ1	╘┐╒╕╒╢╓Б╒е╓А╒┐ тДЦ1	Concerto No. 1				2016	117	for pipe organ and chamber orchestra	╒е╓А╒г╒е╒░╒╕╒╢╒л ╓З ╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╛╤А╨│╨░╨╜╨░ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
35	╨и╤Г╤В╨║╨░	╘┐╒б╒┐╒б╒п	Scherzo	╨С╨╡╨╖ ╤Б╨╗╨╛╨▓	╘▒╒╢ ╒н╒╕╒╜╓Д	No lyrics	1990	118	for female choir and chamber orchestra	╒п╒б╒╢╒б╒╢╓Б ╒е╓А╒г╒╣╒б╒н╒┤╒в╒л ╓З ╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╢╨╡╨╜╤Б╨║╨╛╨│╨╛ ╤Е╨╛╤А╨░ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
38	╨Ъ╨░╨╝╨╡╤А╨╜╨░╤П ╨║╨░╨╜╤В╨░╤В╨░ тДЦ3	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒п╒б╒╢╒┐╒б╒┐ тДЦ3	Chamber Cantata No. 3	\N	\N	\N	1998	119	for soprano and chamber orchestra	╒╜╒╕╒║╓А╒б╒╢╒╕╒╡╒л ╓З ╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╛╨┐╤А╨░╨╜╨╛ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
32	╨Ъ╨╛╨╜╤Ж╨╡╤А╤В	╘┐╒╕╒╢╓Б╒е╓А╒┐	Concerto	╨д╨╗╨╡╨╣╤В╨░, ╨│╨╛╨▒╨╛╨╣, ╨║╨╗╨░╤А╨╜╨╡╤В, ╤Д╨░╨│╨╛╤В, ╨▓╨░╨╗╤В╨╛╤А╨╜╨░, ╨║╨╗╨░╨▓╨╡╤Б╨╕╨╜, ╤Б╨║╤А╨╕╨┐╨║╨░, ╨▓╨╕╨╛╨╗╨╛╨╜╤З╨╡╨╗╤М	╓Ж╒м╒е╒╡╒┐╒б, ╒░╒╕╒в╒╕╒╡, ╒п╒м╒б╓А╒╢╒е╒┐, ╓Ж╒б╒г╒╕╒┐, ╒г╒б╒м╒б╓А╒б╓Г╒╕╒▓, ╒п╒м╒б╒╛╒е╒╜╒л╒╢, ╒╗╒╕╓В╒й╒б╒п, ╒й╒б╒╛╒╗╒╕╓В╒й╒б╒п	Flute, oboe, clarinet, bassoon, French horn, harpsichord, violin, cello	1995	117	for eight instruments	╒╕╓В╒й ╒г╒╕╓А╒о╒л╓Д╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨▓╨╛╤Б╤М╨╝╨╕ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨╛╨▓
51	╨Ь╨╜╨╛╨│╨╛╤В╨╛╤З╨╕╨╡	╘▓╒б╒ж╒┤╒б╒п╒е╒┐	Ellipsis	\N	\N	\N	2005	118	for string orchestra	╒м╒б╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╤В╤А╤Г╨╜╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
37	╨Ъ╨░╨╝╨╡╤А╨╜╨░╤П ╨║╨░╨╜╤В╨░╤В╨░ тДЦ2 ┬л╨Р╨╗╨╗╨╕╨╗╤Г╨╣╤П┬╗	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒п╒б╒╢╒┐╒б╒┐ тДЦ2 ┬л╘▒╒м╒е╒м╒╕╓В╒╡╒б┬╗	Chamber Cantata "Hallelujah"	╨Э╨░ ╤Б╨╗╨╛╨▓╨░ ╨╕╨╖ ╨░╤А╨╝╤П╨╜╤Б╨║╨╛╨╣ ╨Ы╨╕╤В╤Г╤А╨│╨╕╨╕	╒░╒б╒╡╒п╒б╒п╒б╒╢ ╒К╒б╒┐╒б╓А╒б╒г╒л ╒н╒╕╒╜╓Д╒е╓А╒╕╒╛	Based on the text of Armenian Liturgy	1996	119			
39	╨Т╨╕╤Б╨╛╨║╨╛╤Б╨╜╤Л╨╣ ╨│╨╛╨┤	╒Ж╒б╒░╒б╒╢╒╗ ╒┐╒б╓А╒л	The Leap Year				1990	120	for symphony orchestra	╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
40	╨н╨╗╨╡╨│╨╕╤П	╘╡╒▓╒е╓А╒е╓А╒г	Elegy				1996	120	for symphony orchestra	╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
41	Adagio	Adagio	Adagio				2000	120	for symphony orchestra	╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
42	Presto	Presto	Presto				2000	120	for symphony orchestra	╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
43	╨Я╤А╨╡╨╗╤О╨┤╨╕╤П ╨╕ ╤Д╤Г╨│╨░	╒К╓А╒е╒м╒╡╒╕╓В╒д ╓З ╓Ж╒╕╓В╒г╒б	Prelude and Fugue				2000	120	for symphony orchestra	╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
44	╨Я╨░╤Б╤Б╨░╨║╨░╨╗╤М╤П ╨╕ ╤Д╤Г╨│╨░	╒К╒б╒╜╒╜╒б╒п╒б╒м╒л╒б ╓З ╓Ж╒╕╓В╒г╒б	Passacaglia and Fugue				2006	120	for symphony orchestra	╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
45	╨Я╤Б╨░╨╗╨╛╨╝	╒Н╒б╒▓╒┤╒╕╒╜	Psalm				2011	120	for symphony orchestra	╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
46	╨Я╨░╤Б╤Б╨░╨║╨░╨╗╤М╤П	╒К╒б╒╜╒╜╒б╒п╒б╒м╒л╒б	Passacaglia				2012	120	for symphony orchestra	╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
47	╨з╨░╨║╨╛╨╜╨░	╒Й╒б╒п╒╕╒╢╒б	Chaconne				2015	120	for symphony orchestra	╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
48	╨Я╤Б╨░╨╗╨╛╨╝	╒Н╒б╒▓╒┤╒╕╒╜	Psalm	╨Я╨╛ 23 ╨┐╤Б╨░╨╗╨╝╤Г ╨Ф╨░╨▓╨╕╨┤╨░. ╨Э╨╛╨╝╨╡╤А ╨┐╤Б╨░╨╗╨╝╨░ ╤Г╨║╨░╨╖╨░╨╜ ╨▓ ╤Б╨╛╨╛╤В╨▓╨╡╤В╤Б╤В╨▓╨╕╨╕ ╤Б ╨░╤А╨╝╤П╨╜╤Б╨║╨╛╨╣ ╨╜╤Г╨╝╨╡╤А╨░╤Ж╨╕╨╡╨╣ ╨┐╤Б╨░╨╗╨╝╨╛╨▓. ╨Т ╨б╨╡╨┐╤В╤Г╨░╨│╨╕╨╜╤В╨╡ (╨╕ ╤А╤Г╤Б╤Б╨║╨╛╤П╨╖╤Л╤З╨╜╨╛╨╣ ╨▓╨╡╤А╤Б╨╕╨╕ ╨Я╤Б╨░╨╗╤В╨╕╤А╨╕) ╨╡╨╝╤Г ╤Б╨╛╨╛╤В╨▓╨╡╤В╤Б╤В╨▓╤Г╨╡╤В 22 ╨┐╤Б╨░╨╗╨╛╨╝.	╒и╒╜╒┐ ╘┤╒б╒╛╒й╒л тДЦ23 ╒╜╒б╒▓╒┤╒╕╒╜╒л	Psalm 23 of David	2015	120	for symphony orchestra	╒е╓А╒г╒╣╒б╒н╒┤╒в╒л ╓З ╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Е╨╛╤А╨░ ╨╕ ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
49	╨Я╨░╤Б╤Б╨░╨║╨░╨╗╤М╤П ╨╕ ╤Д╤Г╨│╨░ тДЦ2	╒К╒б╒╜╒╜╒б╒п╒б╒м╒л╒б ╓З ╓Ж╒╕╓В╒г╒б тДЦ2	Passacaglia and Fugue No.2				2017	120	for symphony orchestra	╒╜╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
50	╨н╨╗╨╡╨│╨╕╤П	╘╡╒▓╒е╓А╒е╓А╒г	Elegy				1996	118	for flute (or violine) and string orchestra	╓Ж╒м╒е╒╡╒┐╒б╒╡╒л (╒п╒б╒┤ ╒╗╒╕╓В╒й╒б╒п╒л) ╓З ╒м╒б╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╗╨╡╨╣╤В╤Л (╨╕╨╗╨╕ ╤Б╨║╤А╨╕╨┐╨║╨╕) ╨╕ ╤Б╤В╤А╤Г╨╜╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
52	╨У╤А╨╡╤И╨╡╨╜	╒Д╒е╒▓╒б	Peccavi				2006	118	for string orchestra	╒м╒б╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╤В╤А╤Г╨╜╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
53	Largo	Largo	Largo				2007	118	for cello and string orchestra	╒й╒б╒╛╒╗╒╕╓В╒й╒б╒п╒л ╓З ╒м╒б╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨▓╨╕╨╛╨╗╨╛╨╜╤З╨╡╨╗╨╕ ╨╕ ╤Б╤В╤А╤Г╨╜╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
54	╨в╨╕╤Е╨░╤П ╨╝╨╛╨╗╨╕╤В╨▓╨░ ╨║ ╨С╨╛╨│╨╛╨╝╨░╤В╨╡╤А╨╕	╒Д╒е╒▓╒┤ ╒б╒▓╒╕╒й╓Д ╒П╒л╓А╒б╒┤╒╕╓А╒и	Quiet Prayer to Mother of God				2007	118	for string orchestra	╒м╒б╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╤В╤А╤Г╨╜╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
55	╨Я╤П╤В╤М ╨┤╤Г╤Е╨╛╨▓╨╜╤Л╤Е ╨┐╤А╨╡╨╗╤О╨┤╨╕╨╣ ╨╕ ╤Д╤Г╨│	╒А╒л╒╢╒г ╒░╒╕╒г╓З╒╕╓А ╒║╓А╒е╒м╒╡╒╕╓В╒д ╓З ╓Ж╒╕╓В╒г╒б	Five spiritual Preludes and Fugues				2008	118	for string orchestra	╒м╒б╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╤В╤А╤Г╨╜╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
56	╨Ъ╨▓╨╕╨╜╤В╨╡╤В	╘┐╒╛╒л╒╢╒┐╒е╒┐	Quintet				2004	118	for flute, clarinet, violin, cello, and piano	 ╓Ж╒м╒е╒╡╒┐╒б╒╡╒л, ╒п╒м╒б╓А╒╢╒е╒┐╒л, ╒╗╒╕╓В╒й╒б╒п╒л, ╒й╒б╒╛╒╗╒╕╓В╒й╒б╒п╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╗╨╡╨╣╤В╤Л, ╨║╨╗╨░╤А╨╜╨╡╤В╨░, ╤Б╨║╤А╨╕╨┐╨║╨╕, ╨▓╨╕╨╛╨╗╨╛╨╜╤З╨╡╨╗╨╕ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
71	╨н╤В╨░ ╤Б╤В╤А╨░╨╜╨╜╨░╤П ╨╝╤Г╨╖╤Л╨║╨░ A.D.Es	╘▒╒╡╒╜ , ╒┐╒б╓А╓Е╓А╒л╒╢╒б╒п A. D. Es. ╒е╓А╒б╒к╒╖╒┐╒╕╓В╒й╒╡╒╕╓В╒╢╒и	This Strange Music A.D.Es	\N	\N	\N	2011	118	for instrumental ensemble	╒г╒╕╓А╒о╒л╓Д╒б╒╡╒л╒╢ ╒░╒б╒┤╒╕╓В╒╡╒й╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╗╤М╨╜╨╛╨│╨╛ ╨░╨╜╤Б╨░╨╝╨▒╨╗╤П
57	╨б╤В╤А╤Г╨╜╨╜╤Л╨╣ ╨║╨▓╨░╤А╤В╨╡╤В тДЦ1	╘╝╒б╓А╒б╒╡╒л╒╢ ╒п╒╛╒б╓А╒┐╒е╒┐ тДЦ1	String Quartet No.1				1993	118			
1	╨Ъ╨╕╨║╨╛╤Б ╨╕ ╨Ъ╨╕╤А╨░╨║╨╛╤Б	╘┐╒л╒п╒╕╒╜╒╢ ╒╕╓В ╘┐╒л╓А╒б╒п╒╕╒╜╒и	Kikos and Kirakos	╨Э╨░ ╨╛╤Б╨╜╨╛╨▓╨╡ ╨╜╨░╤А╨╛╨┤╨╜╤Л╤Е ╨┐╨╡╤Б╨╡╨╜	╘║╒╕╒▓╒╕╒╛╓А╒д╒б╒п╒б╒╢ ╒е╓А╒г╒е╓А╒л ╒░╒л╒┤╒б╒╢ ╒╛╓А╒б	Based on folk songs	1981	111	An opera for children	╒Д╒б╒╢╒п╒б╒п╒б╒╢ ╓Е╒║╒е╓А╒б	╨Ф╨╡╤В╤Б╨║╨░╤П ╨╛╨┐╨╡╤А╨░
58	╨б╤В╤А╤Г╨╜╨╜╤Л╨╣ ╨║╨▓╨░╤А╤В╨╡╤В тДЦ2	╘╝╒б╓А╒б╒╡╒л╒╢ ╒п╒╛╒б╓А╒┐╒е╒┐ тДЦ2	String Quartet No.2				1997	118			
78	╨Ю╨▒╤А╨░╨▒╨╛╤В╨║╨░ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╜╨╛╨╣ ╨┐╤М╨╡╤Б╤Л ╨н. ╨Ь╨╕╤А╨╖╨╛╤П╨╜╨░ "╨У╤А╤Г╤Б╤В╨╜╤Л╨╣ ╨▓╨░╨╗╤М╤Б"	╘╖╒д. ╒Д╒л╓А╒ж╒╕╒╡╒б╒╢╒л ┬л╒П╒н╒╕╓В╓А ╒╛╒б╒м╒╜┬╗ ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒б╒╡╒л╒╢ ╒║╒л╒е╒╜╒л ╒┤╒╖╒б╒п╒╕╓В╒┤	Arrangement of the piano piece by Edvard Mirzoyan "Sad Waltz"	\N	\N	\N	2008	118	for instrumental ensemble	╒г╒╕╓А╒о╒л╓Д╒б╒╡╒л╒╢ ╒░╒б╒┤╒╕╓В╒╡╒й╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╗╤М╨╜╨╛╨│╨╛ ╨░╨╜╤Б╨░╨╝╨▒╨╗╤П
59	╨в╤А╨╕╨╛	╒П╓А╒л╒╕	Trio				1999	118	for two cellos and piano	╒е╓А╒п╒╕╓В ╒й╒б╒╛╒╗╒╕╓В╒й╒б╒п╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨┤╨▓╤Г╤Е ╨▓╨╕╨╛╨╗╨╛╨╜╤З╨╡╨╗╨╡╨╣ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
60	╨в╤А╨╕╨╛	╒П╓А╒л╒╕	Trio				2006	118	for violin, cello, and piano	╒╗╒╕╓В╒й╒б╒п╒л, ╒й╒б╒╛╒╗╒╕╓В╒й╒б╒п╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨║╤А╨╕╨┐╨║╨╕, ╨▓╨╕╨╛╨╗╨╛╨╜╤З╨╡╨╗╨╕ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
61	╨б╨╛╨╜╨░╤В╨░	╒Н╒╕╒╢╒б╒┐	Sonata				2010	121	for flute and piano	╓Ж╒м╒е╒╡╒┐╒б╒╡╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╗╨╡╨╣╤В╤Л ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
62	╨б╨╛╨╜╨░╤В╨░	╒Н╒╕╒╢╒б╒┐	Sonata				2005	121	for violin and piano	╒╗╒╕╓В╒й╒б╒п╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨║╤А╨╕╨┐╨║╨╕ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
63	╨б╨╛╨╜╨░╤В╨░	╒Н╒╕╒╢╒б╒┐	Sonata				2006	121	for cello and piano	╒й╒б╒╛╒╗╒╕╓В╒й╒б╒п╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨▓╨╕╨╛╨╗╨╛╨╜╤З╨╡╨╗╨╕ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
64	╨б╨╛╨╜╨░╤В╨░ тДЦ1	╒Н╒╕╒╢╒б╒┐ тДЦ1	Sonata No.1				1992	121	for piano	╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
65	╨б╨╛╨╜╨░╤В╨░ тДЦ2	╒Н╒╕╒╢╒б╒┐ тДЦ2	Sonata No.2				2007	121	for piano	╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
66	╨Ь╨░╨╗╨░╤П ╤Б╨╛╨╜╨░╤В╨░	╒У╒╕╓Д╓А ╒╜╒╕╒╢╒б╒┐	Small Sonata				1999	121	for piano	╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
67	╨Т╨╛╨║╨░╨╗╨╕╨╖ тДЦ1	╒О╒╕╒п╒б╒м╒л╒ж тДЦ1	Vocalise N1				2001	118	for soprano and instrumental ensemble	╒╜╒╕╒║╓А╒б╒╢╒╕╒╡╒л ╓З ╒г╒╕╓А╒о╒л╓Д╒б╒╡╒л╒╢ ╒░╒б╒┤╒╕╓В╒╡╒й╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╛╨┐╤А╨░╨╜╨╛ ╨╕ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╗╤М╨╜╨╛╨│╨╛ ╨░╨╜╤Б╨░╨╝╨▒╨╗╤П
68	Andante	Andante	Andante				2002	118	for instrumental ensemble	╒г╒╕╓А╒о╒л╓Д╒б╒╡╒л╒╢ ╒░╒б╒┤╒╕╓В╒╡╒й╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╗╤М╨╜╨╛╨│╨╛ ╨░╨╜╤Б╨░╨╝╨▒╨╗╤П
69	╨Ъ╨╛╨╗╤Л╨▒╨╡╨╗╤М╨╜╨░╤П ╤Б ╨│╨╕╨╝╨╜╨╛╨╝	╒Х╓А╒╕╓А ╓З ╓Е╓А╒░╒╢╒е╓А╒г	Lullaby with hymn				2002	118	for instrumental ensemble	╒г╒╕╓А╒о╒л╓Д╒б╒╡╒л╒╢ ╒░╒б╒┤╒╕╓В╒╡╒й╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╗╤М╨╜╨╛╨│╨╛ ╨░╨╜╤Б╨░╨╝╨▒╨╗╤П
70	Mysticos	Mysticos	Mysticos				2009	118	for instrumental ensemble	╒г╒╕╓А╒о╒л╓Д╒б╒╡╒л╒╢ ╒░╒б╒┤╒╕╓В╒╡╒й╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╗╤М╨╜╨╛╨│╨╛ ╨░╨╜╤Б╨░╨╝╨▒╨╗╤П
72	╨Ъ ╨Р╨╗╨╗╨╡	╘▒╒м╒м╒б╒╡╒л╒╢	For Alla				2014	118	for instrumental ensemble	╒г╒╕╓А╒о╒л╓Д╒б╒╡╒л╒╢ ╒░╒б╒┤╒╕╓В╒╡╒й╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╗╤М╨╜╨╛╨│╨╛ ╨░╨╜╤Б╨░╨╝╨▒╨╗╤П
73	╨Т╨╛╨┐╨╗╨╛╤Й╨╡╨╜╨╕╨╡	╒Д╒б╓А╒┤╒╢╒б╓Б╒╕╓В╒╢	The Incarnation				2015	118	for instrumental ensemble	╒г╒╕╓А╒о╒л╓Д╒б╒╡╒л╒╢ ╒░╒б╒┤╒╕╓В╒╡╒й╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╗╤М╨╜╨╛╨│╨╛ ╨░╨╜╤Б╨░╨╝╨▒╨╗╤П
75	╨б╨╡╨╝╤М ╨║╨╕╤В╨░╨╣╤Б╨║╨╕╤Е ╨╝╨╡╨╗╨╛╨┤╨╕╨╣	╒Й╒л╒╢╒б╒п╒б╒╢ ╒╡╒╕╒й ╒┤╒е╒▓╒е╒д╒л	Seven Chinese Melodies				1994	118	for instrumental ensemble	╒г╒╕╓А╒о╒л╓Д╒б╒╡╒л╒╢ ╒░╒б╒┤╒╕╓В╒╡╒й╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╗╤М╨╜╨╛╨│╨╛ ╨░╨╜╤Б╨░╨╝╨▒╨╗╤П
76	╨Ф╨▓╨╡ ╨░╤А╨╝╤П╨╜╤Б╨║╨╕╨╡ ╨╝╨╡╨╗╨╛╨┤╨╕╨╕	╒А╒б╒╡╒п╒б╒п╒б╒╢ ╒е╓А╒п╒╕╓В ╒┤╒е╒▓╒е╒д╒л	Two Armenian Melodies				2011	118	for solo santur and instrumental ensemble	╒┤╒е╒╢╒б╒╢╒╛╒б╒г ╒╜╒б╒╢╒й╒╕ ╓В╓А╒л ╓З ╒г╒╕╓А╒о╒л╓Д╒б╒╡╒л╒╢ ╒░╒б╒┤╒╕╓В╒╡╒й╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨░╨╜╤В╤Г╤А╨░ ╤Б╨╛╨╗╨╛ ╨╕ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╗╤М╨╜╨╛╨│╨╛ ╨░╨╜╤Б╨░╨╝╨▒╨╗╤П
79	╨в╤А╨░╨│╨╕╤З╨╡╤Б╨║╨░╤П ╤Д╤Г╨│╨░	╒И╒▓╒в╒е╓А╒г╒б╒п╒б╒╢ ╓Ж╒╕╓В╒г╒б	Tragic Fugue				2003	118	for pipe organ	╒е╓А╒г╒е╒░╒╕╒╢╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╛╤А╨│╨░╨╜╨░
80	╨Я╤А╨╡╨╗╤О╨┤╨╕╤П ╨╕ ╤Д╤Г╨│╨░	╒К╓А╒е╒м╒╡╒╕╓В╒д ╓З ╓Ж╒╕╓В╒г╒б	Prelude and Fugue				2015	118	for pipe organ	╒е╓А╒г╒е╒░╒╕╒╢╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╛╤А╨│╨░╨╜╨░
81	╨Ф╨▓╨╡ ╨┐╤А╨╡╨╗╤О╨┤╨╕╨╕ ╨╕ ╤Д╤Г╨│╨╕	╘╡╓А╒п╒╕╓В ╒║╓А╒е╒м╒╡╒╕╓В╒д ╓З ╓Ж╒╕╓В╒г╒б	Two preludes and Fugues				2012	118	for cello and piano	╒й╒б╒╛╒╗╒╕╓В╒й╒б╒п╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨▓╨╕╨╛╨╗╨╛╨╜╤З╨╡╨╗╨╕ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
82	╨Т╨╛╤Б╨╡╨╝╤М ╨╝╨╛╨╗╨╕╤В╨▓	╒И╓В╒й ╒б╒▓╒╕╒й╓Д	Eight Prayers				2009	118	for piano	╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
83	╨У╤А╤Г╤Б╤В╨╜╤Л╨╡ ╨╝╨╡╨╗╨╛╨┤╨╕╨╕ ╨╝╨╜╨╛╨│╨╛╨│╤А╨╡╤И╨╜╨╛╨│╨╛	╘▓╒б╒ж╒┤╒б╒┤╒е╒▓╒л ╒┐╒н╒╕╓В╓А ╒┤╒е╒▓╒е╒д╒л╒╢╒е╓А╒и	Sad Melodies by the one of Many Sins				2009	118	ten pieces for piano	╒┐╒б╒╜╒и ╒║╒л╒е╒╜ ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨Ф╨╡╤Б╤П╤В╤М ╨┐╤М╨╡╤Б ╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
84	╨Я╤А╨╛╤Б╤В╨░╤П ╨╝╤Г╨╖╤Л╨║╨░	╒К╒б╓А╒ж ╒е╓А╒б╒к╒╖╒┐╒╕╓В╒й╒╡╒╕╓В╒╢	Simple Music				2011	118	ten pieces for piano	╒┐╒б╒╜╒и ╒║╒л╒е╒╜ ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨Ф╨╡╤Б╤П╤В╤М ╨┐╤М╨╡╤Б ╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
85	╨в╤А╨╕ ╤Н╤В╤О╨┤╨░	╘╡╓А╒е╓Д ╒з╒┐╒╡╒╕╓В╒д	Three ├йtudes				2011	118	for piano	╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
86	╨в╨╛╨║╨║╨░╤В╨░	╒П╒╕╒п╒б╒┐	Toccata				1996	118	for piano	╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
87	╨Ф╨▓╨░ ╤А╨╛╨╝╨░╨╜╤Б╨░	╘╡╓А╒п╒╕╓В ╒╝╒╕╒┤╒б╒╢╒╜	Two Romances				1997	118	for soprano and piano	╒╜╒╕╒║╓А╒б╒╢╒╕╒╡╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╛╨┐╤А╨░╨╜╨╛ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
88	╨в╨╕╤И╨╕╨╜╨░ ╨▓╨╖╨│╨╗╤П╨┤╨╛╨▓ ╤В╨▓╨╛╨╕╤Е	╘╝╒╝╒╕╓В╒й╒л╓В╒╢╒и ╒╢╒б╒╡╒╕╓В╒б╒о╓Д ╒╢╒е╓А╒╕╓В╒д	Quietness of your gaze			Romance for soprano and piano	1997	123	romance for soprano and piano	╒╝╒╕╒┤╒б╒╢╒╜ ╒╜╒╕╒║╓А╒б╒╢╒╕╒╡╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╤А╨╛╨╝╨░╨╜╤Б ╨┤╨╗╤П ╤Б╨╛╨┐╤А╨░╨╜╨╛ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
34	╨а╨╡╨║╨▓╨╕╨╡╨╝	╒М╒е╓Д╒╛╒л╒е╒┤	Requiem	\N	\N	\N	1990	118	for Female Choir, Soprano Soloist, and Chamber Orchestra	╒п╒б╒╢╒б╒╢╓Б ╒е╓А╒г╒╣╒б╒н╒┤╒в╒л, ╒┤╒е╒╢╒е╓А╒г╒╣╒╕╓В╒░╒л ╒╜╒╕╒║╓А╒б╒╢╒╕╒╡╒л ╓З ╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╢╨╡╨╜╤Б╨║╨╛╨│╨╛ ╤Е╨╛╤А╨░, ╤Б╨╛╨╗╨╕╤Б╤В╨║╨╕ ╤Б╨╛╨┐╤А╨░╨╜╨╛ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
36	╨Ъ╨░╨╝╨╡╤А╨╜╨░╤П ╨║╨░╨╜╤В╨░╤В╨░ тДЦ1 ┬л╨Ш╨╖ ╨│╨╗╤Г╨▒╨╕╨╜ ╤Б╨╡╤А╨┤╤Ж╨░┬╗	╘┐╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒п╒б╒╢╒┐╒б╒┐ тДЦ1 ┬л╘╗ ╒н╒╕╓А╒╕╓Б ╒╜╓А╒┐╒л┬╗	Chamber Cantata No. 1 "From the Depths of the Heart"	╨Я╨╛ ┬л╨Ъ╨╜╨╕╨│╨╡ ╤Б╨║╨╛╤А╨▒╨╜╤Л╤Е ╨┐╨╡╤Б╨╜╨╛╨┐╨╡╨╜╨╕╨╣┬╗ ╨У╤А╨╕╨│╨╛╤А╨░ ╨Э╨░╤А╨╡╨║╨░╤Ж╨╕	╒и╒╜╒┐ ╘│╓А. ╒Ж╒б╓А╒е╒п╒б╓Б╒╕╓В ┬л╒Д╒б╒┐╒╡╒б╒╢ ╒И╒▓╒в╒е╓А╒г╒╕╓В╒й╒╡╒╕╓В╒╢┬╗	Based on The Book of Lamentations by Gregory of Narek	1995	119	for two sopranos, alto, tenor, baritone and chamber orchestra	╒е╓А╒п╒╕╓В ╒╜╒╕╒║╓А╒б╒╢╒╕╒╡╒л, ╒б╒м╒┐╒л, ╒┐╒е╒╢╒╕╓А╒л, ╒в╒б╓А╒л╒┐╒╕╒╢╒л ╓З ╒п╒б╒┤╒е╓А╒б╒╡╒л╒╢ ╒╢╒╛╒б╒г╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨┤╨▓╤Г╤Е ╤Б╨╛╨┐╤А╨░╨╜╨╛, ╨░╨╗╤М╤В╨░, ╤В╨╡╨╜╨╛╤А╨░, ╨▒╨░╤А╨╕╤В╨╛╨╜╨░ ╨╕ ╨║╨░╨╝╨╡╤А╨╜╨╛╨│╨╛ ╨╛╤А╨║╨╡╤Б╤В╤А╨░
90	╨Ф╨▓╨╡ ╨┐╨╡╤Б╨╜╨╕	╘╡╓А╒п╒╕╓В ╒е╓А╒г	Two songs				2005	118	for soprano and piano	╒╜╒╕╒║╓А╒б╒╢╒╕╒╡╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╛╨┐╤А╨░╨╜╨╛ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
91	╨Т╨╛╨║╨░╨╗╨╕╨╖	╒О╒╕╒п╒б╒м╒л╒ж	Vocalise		╒в╒б╒╜╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А		2007	118	for bass and piano	╒в╒б╒╜╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨▒╨░╤Б╨░ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
74	╨Ь╨╛╨╗╨╕╤В╨▓╨░ ╨С╨╛╨│╨╛╤А╨╛╨┤╨╕╤Ж╨╡ ╨┤╨╗╤П ╨Ь╨░╤А╨╕╨░╨╝╨╕╨║	╘▒╒▓╒╕╒й╓Д ╒П╒л╓А╒б╒┤╒╕╓А╒и ╒Д╒б╓А╒л╒б╒┤╒л╒п╒л ╒░╒б╒┤╒б╓А	Prayer to Mother of God for Mariamik	\N	\N	\N	2016	118	for piano and instrumental ensemble	╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╓З ╒г╒╕╓А╒о╒л╓Д╒б╒╡╒л╒╢ ╒░╒б╒┤╒╕╓В╒╡╒й╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛ ╨╕ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╗╤М╨╜╨╛╨│╨╛ ╨░╨╜╤Б╨░╨╝╨▒╨╗╤П
77	╨Я╤П╤В╤М ╨░╤А╨╝╤П╨╜╤Б╨║╨╕╤Е ╨╜╨░╤А╨╛╨┤╨╜╤Л╤Е ╨┐╨╡╤Б╨╡╨╜	╒А╒б╒╡╒п╒б╒п╒б╒╢ ╒к╒╕╒▓╒╕╒╛╓А╒д╒б╒п╒б╒╢ ╒░╒л╒╢╒г ╒е╓А╒г	Five Armenian Folk Songs	\N	\N	\N	2006	118	for soprano and instrumental ensemble	╒╜╒╕╒║╓А╒б╒╢╒╕╒╡╒л ╓З ╒г╒╕╓А╒о╒л╓Д╒б╒╡╒л╒╢ ╒░╒б╒┤╒╕╓В╒╡╒й╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╛╨┐╤А╨░╨╜╨╛ ╨╕ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░╨╗╤М╨╜╨╛╨│╨╛ ╨░╨╜╤Б╨░╨╝╨▒╨╗╤П
93	╨Я╤Б╨░╨╗╨╛╨╝	╒Н╒б╒▓╒┤╒╕╒╜	Psalm	╨Я╨╛ ╨┐╤Б╨░╨╗╨╝╤Г тДЦ13 ╨Ф╨░╨▓╨╕╨┤╨░ (╨▓ ╨▓╨░╤А╨╕╨░╨╜╤В╨╡ ╨б╨╡╨┐╤В╤Г╨░╨│╨╕╨╜╤В╤Л - ╨┐╤Б╨░╨╗╨╛╨╝ тДЦ12)	╒и╒╜╒┐ ╘┤╒б╒╛╒й╒л тДЦ13 ╒╜╒б╒▓╒┤╒╕╒╜╒л	Based on Psalm 13 of David	2001	118	for mezzo-soprano and piano	╒┤╒е╒▒╒╕-╒╜╒╕╒║╓А╒б╒╢╒╕╒╡╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╝╨╡╤Ж╤Ж╨╛-╤Б╨╛╨┐╤А╨░╨╜╨╛ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
89	╨Я╤Б╨░╨╗╨╛╨╝	╒Н╒б╒▓╒┤╒╕╒╜	Psalm	╨Я╨╛ 23 ╨┐╤Б╨░╨╗╨╝╤Г ╨Ф╨░╨▓╨╕╨┤╨░. ╨Э╨╛╨╝╨╡╤А ╨┐╤Б╨░╨╗╨╝╨░ ╤Г╨║╨░╨╖╨░╨╜ ╨▓ ╤Б╨╛╨╛╤В╨▓╨╡╤В╤Б╤В╨▓╨╕╨╕ ╤Б ╨░╤А╨╝╤П╨╜╤Б╨║╨╛╨╣ ╨╜╤Г╨╝╨╡╤А╨░╤Ж╨╕╨╡╨╣ ╨┐╤Б╨░╨╗╨╝╨╛╨▓. ╨Т ╨б╨╡╨┐╤В╤Г╨░╨│╨╕╨╜╤В╨╡ (╨╕ ╤А╤Г╤Б╤Б╨║╨╛╤П╨╖╤Л╤З╨╜╨╛╨╣ ╨▓╨╡╤А╤Б╨╕╨╕ ╨Я╤Б╨░╨╗╤В╨╕╤А╨╕) ╨╡╨╝╤Г ╤Б╨╛╨╛╤В╨▓╨╡╤В╤Б╤В╨▓╤Г╨╡╤В 22 ╨┐╤Б╨░╨╗╨╛╨╝.	╒и╒╜╒┐ ╘┤╒б╒╛╒й╒л тДЦ23 ╒╜╒б╒▓╒┤╒╕╒╜╒л	Based on Psalm 23 of David	1997	118	for mezzo-soprano and piano	╒┤╒е╒▒╒╕-╒╜╒╕╒║╓А╒б╒╢╒╕╒╡╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨╝╨╡╤Ж╤Ж╨╛-╤Б╨╛╨┐╤А╨░╨╜╨╛ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
92	╨а╨╛╨╖╨░	╒О╒б╓А╒д╒и	Rose	╨б╨╗╨╛╨▓╨░ ╨Щ.╨Т. ╨У╤С╤В╨╡ (╨▓ ╨┐╨╡╤А. ╨Ю. ╨в╤Г╨╝╨░╨╜╤П╨╜╨░)	╘╜╒╕╒╜╓Д ╘│╒╡╒╕╒й╒е╒╡╒л ╒А╒╕╒╛╒░. ╘╣╒╕╓В╒┤╒б╒╢╒╡╒б╒╢╒л ╒й╒б╓А╒г╒┤╒б╒╢╒╕╓В╒й╒╡╒б╒┤╒в	Lyrics by Johann Wolfgang Goethe, Hovhannes Tumanyan (trans.)	2010	123	for baritone and piano	╒╝╒╕╒┤╒б╒╢╒╜ ╒в╒б╓А╒л╒┐╒╕╒╢╒л ╓З ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╒░╒б╒┤╒б╓А	╨а╨╛╨╝╨░╨╜╤Б ╨┤╨╗╤П ╨▒╨░╤А╨╕╤В╨╛╨╜╨░ ╨╕ ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛
94	╨н╨╗╨╡╨│╨╕╤П	╘╡╒▓╒е╓А╒е╓А╒г	Elegy	╨С╨╡╨╖ ╤Б╨╗╨╛╨▓	╘▒╒╢ ╒н╒╕╒╜╓Д	No lyrics	2000	124	for children's choir	╒┤╒б╒╢╒п╒б╒п╒б╒╢ ╒е╓А╒г╒╣╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨┤╨╡╤В╤Б╨║╨╛╨│╨╛ ╤Е╨╛╤А╨░
95	╨в╨╛╨║╨║╨░╤В╨░	╒П╒╕╒п╒б╒┐	Toccata	╨С╨╡╨╖ ╤Б╨╗╨╛╨▓	╘▒╒╢ ╒н╒╕╒╜╓Д	No lyrics	2008	124	for children's choir	╒┤╒б╒╢╒п╒б╒п╒б╒╢ ╒е╓А╒г╒╣╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨┤╨╡╤В╤Б╨║╨╛╨│╨╛ ╤Е╨╛╤А╨░
96	╨Ю╤В╤З╨╡ ╨╜╨░╤И	╒А╒б╒╡╓А ╒┤╒е╓А	Pater Noster	\N	\N	for mixed choir	2008	124	for mixed choir	╒н╒б╒╝╒и ╒е╓А╒г╒╣╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╝╨╡╤И╨░╨╜╨╜╨╛╨│╨╛ ╤Е╨╛╤А╨░
98	╨в╤А╨╕╨╛	╒П╓А╒л╒╕	Trio				2018	118	for two pianos and cello	╒е╓А╒п╒╕╓В ╒д╒б╒╖╒╢╒б╒┤╒╕╓В╓А╒л ╓З ╒й╒б╒╛╒╗╒╕╓В╒й╒б╒п╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╨┤╨▓╤Г╤Е ╤Д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛ ╨╕ ╨▓╨╕╨╛╨╗╨╛╨╜╤З╨╡╨╗╨╕
97	╨в╨╛╨║╨║╨░╤В╨░	╒П╒╕╒п╒б╒┐	Toccata	╨С╨╡╨╖ ╤Б╨╗╨╛╨▓	╘▒╒╢ ╒н╒╕╒╜╓Д	No lyrics	2009	124	for mixed choir	╒н╒б╒╝╒и ╒е╓А╒г╒╣╒б╒н╒┤╒в╒л ╒░╒б╒┤╒б╓А	╨┤╨╗╤П ╤Б╨╝╨╡╤И╨░╨╜╨╜╨╛╨│╨╛ ╤Е╨╛╤А╨░
99	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤П тДЦ11 ┬л╨Т╨╛╤Б╨║╤А╨╡╤Б╨╡╨╜╨╕╨╡┬╗	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒б тДЦ11 "╒А╒б╓А╒╕╓В╒й╒╡╒╕╓В╒╢"	Symphony No. 11 Resurrection	╨б╨╕╨╝╤Д╨╛╨╜╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╤А╨║╨╡╤Б╤В╤А	╒Н╒л╒┤╓Ж╒╕╒╢╒л╒п ╒╢╒╛╒б╒г╒б╒н╒╕╓В╒┤╒в		2018	115	Symphony orchestra		
\.


--
-- Data for Name: works_opus_libretto_by; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_opus_libretto_by (id, opus_id, person_id) FROM stdin;
1	1	11
2	2	12
3	3	12
4	4	12
5	5	13
6	6	13
7	7	14
8	7	12
\.


--
-- Data for Name: works_opus_lyrics_by; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_opus_lyrics_by (id, opus_id, person_id) FROM stdin;
1	16	15
2	34	16
3	38	17
4	87	18
5	88	13
6	90	19
7	92	15
\.


--
-- Data for Name: works_performance; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_performance (perform_date, opus_id, audio_url, conductor_id, performance_id, video_url, band_id, name_en, name_hy, name_ru) FROM stdin;
2008-11-05	5	608355465	13	1122	_TE-c12dGw4	11111	\N	\N	\N
\N	39	\N	\N	1117	5lsyDfcca2E	\N	\N	\N	\N
\N	2	\N	\N	1116	84Khom_Gx9Y	\N	Ouverture	╒И╓В╒╛╒е╓А╒┐╒╡╒╕╓В╓А╒б	╨г╨▓╨╡╤А╤В╤О╤А╨░
\N	63	\N	\N	1115	pzPw6vDMdbM	\N	Part 2	\N	╨з╨░╤Б╤В╤М II
\N	63	\N	\N	1114	2FOVCYyO0Z8	\N	Part 1	\N	╨з╨░╤Б╤В╤М I
\N	2	\N	13	1112	0dwuh5xALaM	11112	Ouverture	╒И╓В╒╛╒е╓А╒┐╒╡╒╕╓В╓А╒б	╨г╨▓╨╡╤А╤В╤О╤А╨░
\N	10	\N	\N	1123	StNEPKYIEns	\N	Part 1	\N	╨з╨░╤Б╤В╤М I
\N	55	\N	13	1111	anXJR_Zyvls	11112	\N	\N	╨д╤Г╨│╨░ ╨╕╨╖ ╨┐╨╡╤А╨▓╨╛╨╣ ╤З╨░╤Б╤В╨╕ ╤Ж╨╕╨║╨╗╨░
\N	30	\N	13	1124	kktj_SorjCU	\N	\N	\N	\N
\N	88	\N	\N	1118	1fO89wwEtco	\N	\N	\N	\N
\N	75	\N	13	1119	ctYHilyz_Xc	11111	Murmuring Streams	╘╜╒╕╒н╒╕╒╗╒л╓В╒╢ ╒г╒е╒┐╒б╒п╒╢╒е╓А	╨Ц╤Г╤А╤З╨░╤Й╨╕╨╡ ╤А╨╡╤З╨║╨╕
\N	64	\N	\N	1121	WjNE3PZz-r8	\N	\N	\N	\N
\.


--
-- Data for Name: works_performer; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_performer (id, role_ru, performance_id, performer_id, role_en, role_hy) FROM stdin;
1	╨б╨╛╨┐╤А╨░╨╜╨╛	1118	20	Soprano	╒Н╒╕╒║╓А╒б╒╢╒╕
2	╨д╨╛╤А╤В╨╡╨┐╨╕╨░╨╜╨╛	1118	13	Piano	╘┤╒б╒╖╒╢╒б╒┤╒╕╓В╓А
3	╨б╨╛╨┐╤А╨░╨╜╨╛	1119	21	Soprano	╒Н╒╕╒║╓А╒б╒╢╒╕
\.


--
-- Data for Name: works_person; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_person (person_id, fname_ru, lname_ru, fname_hy, lname_hy, fname_en, lname_en) FROM stdin;
12	╨Ф╨░╨▓╨╕╨┤	╨б╨░╨║╨╛╤П╨╜	╘┤╒б╒╛╒л╒й	╒Н╒б╓Д╒╕╒╡╒б╒╢	David	Sakoyan
13	╨б╨╡╨┤╤А╨░╨║	╨Х╤А╨║╨░╨╜╤П╨╜	╒Н╒е╒д╓А╒б╒п	╘╡╓А╒п╒б╒╢╒╡╒б╒╢	Sedrak	Yerkanyan
14	╨Ь╨░╨║╤Б╨╕╨╝	╨Ь╨░╤А╤В╨╕╤А╨╛╤Б╤П╨╜	╒Д╒б╓Д╒╜╒л╒┤	╒Д╒б╓А╒┐╒л╓А╒╕╒╜╒╡╒б╒╢	Maxim	Martirosyan
15	╨Щ╨╛╤Е╨░╨╜ ╨Т╨╛╨╗╤М╤Д╨│╨░╨╜╨│	╨У╤С╤В╨╡	╒Е╒╕╒░╒б╒╢ ╒О╒╕╒м╓Ж╒г╒б╒╢╒г	╘│╒╡╒╕╒й╒е	Johann Wolfgang	Goethe
16	╨Р╨▓╨╡╤В╨╕╨║	╨Ш╤Б╨░╨░╨║╤П╨╜	╘▒╒╛╒е╒┐╒л╓Д	╘╗╒╜╒б╒░╒б╒п╒╡╒б╒╢	Avetik	Isahakyan
17	╨Ь╨╕╤Б╨░╨║	╨Ь╨╡╤Ж╨░╤А╨╡╨╜╤Ж	╒Д╒л╒╜╒б╓Д	╒Д╒е╒о╒б╓А╒е╒╢╓Б	Misak	Metsarents
18	╨Р╤А╤Е╨╕╨╡╨┐╨╕╤Б╨║╨╛╨┐ ╨Р╤А╤В╨░╨║		╘▒╓А╒┐╒б╒п ╘▒╓А╓Д╒е╒║╒л╒╜╒п╒╕╒║╒╕╒╜		Archbishop Artak	
19	╨Р╨╜╨░╨╕╤В	╨Ы╨░╤В╨╛╤П╨╜	╘▒╒╢╒б╒░╒л╒┐	╘╝╒б╒й╒╕╒╡╒б╒╢	Anahit	Latoyan
20	╨Ы╤Г╤Б╨╕╨╜╨╡	╨Ь╨░╤А╨║╨╛╤Б╤П╨╜	╘╝╒╕╓В╒╜╒л╒╢╒е	╒Д╒б╓А╒п╒╕╒╜╒╡╒б╒╢	Lusine	Markosyan
21	╨У╤А╨╡╤В╨░	╨Р╨╜╤В╨╛╨╜╤П╨╜	╘│╓А╒е╒┐╒б	╘▒╒╢╒┐╒╕╒╢╒╡╒б╒╢	Greta	Antonyan
11	╨Р╨╗╨╡╨║╤Б╨░╨╜╨┤╤А	╨Ю╨▓╤Б╨╡╨┐╤П╨╜	╘▒╒м╒е╓Д╒╜╒б╒╢╒д╓А	╒А╒╕╒╛╒╜╒е╓Г╒╡╒б╒╢	Alexander	Hovsepyan
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 77, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: catalog_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.catalog_genre_id_seq', 1, false);


--
-- Name: catalog_opus_libretto_by_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.catalog_opus_libretto_by_id_seq', 1, false);


--
-- Name: catalog_opus_lyrics_by_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.catalog_opus_lyrics_by_id_seq', 1, false);


--
-- Name: catalog_opus_performances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.catalog_opus_performances_id_seq', 1, false);


--
-- Name: catalog_performance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.catalog_performance_id_seq', 1, false);


--
-- Name: catalog_performance_performers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.catalog_performance_performers_id_seq', 1, false);


--
-- Name: catalog_performer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.catalog_performer_id_seq', 1, false);


--
-- Name: catalog_performer_performer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.catalog_performer_performer_id_seq', 1, false);


--
-- Name: catalog_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.catalog_person_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 90, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);


--
-- Name: works_about_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.works_about_id_seq', 11, true);


--
-- Name: works_bio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.works_bio_id_seq', 5, true);


--
-- Name: works_home_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.works_home_id_seq', 3, true);


--
-- Name: works_opus_libretto_by_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.works_opus_libretto_by_id_seq', 8, true);


--
-- Name: works_opus_lyrics_by_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.works_opus_lyrics_by_id_seq', 7, true);


--
-- Name: works_performer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dswuser
--

SELECT pg_catalog.setval('public.works_performer_id_seq', 3, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: catalog_genre catalog_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_genre
    ADD CONSTRAINT catalog_genre_pkey PRIMARY KEY (id);


--
-- Name: catalog_opus_libretto_by catalog_opus_libretto_by_opus_id_person_id_bbd0d55d_uniq; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_libretto_by
    ADD CONSTRAINT catalog_opus_libretto_by_opus_id_person_id_bbd0d55d_uniq UNIQUE (opus_id, person_id);


--
-- Name: catalog_opus_libretto_by catalog_opus_libretto_by_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_libretto_by
    ADD CONSTRAINT catalog_opus_libretto_by_pkey PRIMARY KEY (id);


--
-- Name: catalog_opus_lyrics_by catalog_opus_lyrics_by_opus_id_person_id_4b823d08_uniq; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_lyrics_by
    ADD CONSTRAINT catalog_opus_lyrics_by_opus_id_person_id_4b823d08_uniq UNIQUE (opus_id, person_id);


--
-- Name: catalog_opus_lyrics_by catalog_opus_lyrics_by_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_lyrics_by
    ADD CONSTRAINT catalog_opus_lyrics_by_pkey PRIMARY KEY (id);


--
-- Name: catalog_opus_performances catalog_opus_performances_opus_id_performance_id_f78265eb_uniq; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_performances
    ADD CONSTRAINT catalog_opus_performances_opus_id_performance_id_f78265eb_uniq UNIQUE (opus_id, performance_id);


--
-- Name: catalog_opus_performances catalog_opus_performances_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_performances
    ADD CONSTRAINT catalog_opus_performances_pkey PRIMARY KEY (id);


--
-- Name: catalog_opus catalog_opus_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus
    ADD CONSTRAINT catalog_opus_pkey PRIMARY KEY (table_pk);


--
-- Name: catalog_performance_performers catalog_performance_perf_performance_id_performer_ad431332_uniq; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performance_performers
    ADD CONSTRAINT catalog_performance_perf_performance_id_performer_ad431332_uniq UNIQUE (performance_id, performer_id);


--
-- Name: catalog_performance_performers catalog_performance_performers_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performance_performers
    ADD CONSTRAINT catalog_performance_performers_pkey PRIMARY KEY (id);


--
-- Name: catalog_performance catalog_performance_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performance
    ADD CONSTRAINT catalog_performance_pkey PRIMARY KEY (id);


--
-- Name: catalog_performer_performer catalog_performer_perfor_performer_id_person_id_e0347bb1_uniq; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performer_performer
    ADD CONSTRAINT catalog_performer_perfor_performer_id_person_id_e0347bb1_uniq UNIQUE (performer_id, person_id);


--
-- Name: catalog_performer_performer catalog_performer_performer_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performer_performer
    ADD CONSTRAINT catalog_performer_performer_pkey PRIMARY KEY (id);


--
-- Name: catalog_performer catalog_performer_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performer
    ADD CONSTRAINT catalog_performer_pkey PRIMARY KEY (id);


--
-- Name: catalog_person catalog_person_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_person
    ADD CONSTRAINT catalog_person_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: works_about works_about_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_about
    ADD CONSTRAINT works_about_pkey PRIMARY KEY (id);


--
-- Name: works_band works_band_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_band
    ADD CONSTRAINT works_band_pkey PRIMARY KEY (band_id);


--
-- Name: works_bio works_bio_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_bio
    ADD CONSTRAINT works_bio_pkey PRIMARY KEY (id);


--
-- Name: works_genre works_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_genre
    ADD CONSTRAINT works_genre_pkey PRIMARY KEY (genre_id);


--
-- Name: works_home works_home_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_home
    ADD CONSTRAINT works_home_pkey PRIMARY KEY (id);


--
-- Name: works_opus_libretto_by works_opus_libretto_by_opus_id_person_id_6d690cd4_uniq; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_opus_libretto_by
    ADD CONSTRAINT works_opus_libretto_by_opus_id_person_id_6d690cd4_uniq UNIQUE (opus_id, person_id);


--
-- Name: works_opus_libretto_by works_opus_libretto_by_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_opus_libretto_by
    ADD CONSTRAINT works_opus_libretto_by_pkey PRIMARY KEY (id);


--
-- Name: works_opus_lyrics_by works_opus_lyrics_by_opus_id_person_id_e39c0743_uniq; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_opus_lyrics_by
    ADD CONSTRAINT works_opus_lyrics_by_opus_id_person_id_e39c0743_uniq UNIQUE (opus_id, person_id);


--
-- Name: works_opus_lyrics_by works_opus_lyrics_by_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_opus_lyrics_by
    ADD CONSTRAINT works_opus_lyrics_by_pkey PRIMARY KEY (id);


--
-- Name: works_opus works_opus_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_opus
    ADD CONSTRAINT works_opus_pkey PRIMARY KEY (opus_id);


--
-- Name: works_performance works_performance_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_performance
    ADD CONSTRAINT works_performance_pkey PRIMARY KEY (performance_id);


--
-- Name: works_performer works_performer_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_performer
    ADD CONSTRAINT works_performer_pkey PRIMARY KEY (id);


--
-- Name: works_person works_person_pkey; Type: CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_person
    ADD CONSTRAINT works_person_pkey PRIMARY KEY (person_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: catalog_opus_genre_id_5c60d058; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_opus_genre_id_5c60d058 ON public.catalog_opus USING btree (genre_id);


--
-- Name: catalog_opus_libretto_by_opus_id_ef82f1f0; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_opus_libretto_by_opus_id_ef82f1f0 ON public.catalog_opus_libretto_by USING btree (opus_id);


--
-- Name: catalog_opus_libretto_by_opus_id_ef82f1f0_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_opus_libretto_by_opus_id_ef82f1f0_like ON public.catalog_opus_libretto_by USING btree (opus_id varchar_pattern_ops);


--
-- Name: catalog_opus_libretto_by_person_id_53aa57ad; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_opus_libretto_by_person_id_53aa57ad ON public.catalog_opus_libretto_by USING btree (person_id);


--
-- Name: catalog_opus_lyrics_by_opus_id_04783bfa; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_opus_lyrics_by_opus_id_04783bfa ON public.catalog_opus_lyrics_by USING btree (opus_id);


--
-- Name: catalog_opus_lyrics_by_opus_id_04783bfa_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_opus_lyrics_by_opus_id_04783bfa_like ON public.catalog_opus_lyrics_by USING btree (opus_id varchar_pattern_ops);


--
-- Name: catalog_opus_lyrics_by_person_id_72fb2fac; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_opus_lyrics_by_person_id_72fb2fac ON public.catalog_opus_lyrics_by USING btree (person_id);


--
-- Name: catalog_opus_performances_opus_id_ca86a3e8; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_opus_performances_opus_id_ca86a3e8 ON public.catalog_opus_performances USING btree (opus_id);


--
-- Name: catalog_opus_performances_opus_id_ca86a3e8_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_opus_performances_opus_id_ca86a3e8_like ON public.catalog_opus_performances USING btree (opus_id varchar_pattern_ops);


--
-- Name: catalog_opus_performances_performance_id_282c9652; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_opus_performances_performance_id_282c9652 ON public.catalog_opus_performances USING btree (performance_id);


--
-- Name: catalog_opus_table_pk_c169cb01_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_opus_table_pk_c169cb01_like ON public.catalog_opus USING btree (table_pk varchar_pattern_ops);


--
-- Name: catalog_performance_performers_performance_id_c7831768; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_performance_performers_performance_id_c7831768 ON public.catalog_performance_performers USING btree (performance_id);


--
-- Name: catalog_performance_performers_performer_id_a77d7dbb; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_performance_performers_performer_id_a77d7dbb ON public.catalog_performance_performers USING btree (performer_id);


--
-- Name: catalog_performer_performer_performer_id_fe527079; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_performer_performer_performer_id_fe527079 ON public.catalog_performer_performer USING btree (performer_id);


--
-- Name: catalog_performer_performer_person_id_b54d568b; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX catalog_performer_performer_person_id_b54d568b ON public.catalog_performer_performer USING btree (person_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: works_band_band_id_f7555b3f_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_band_band_id_f7555b3f_like ON public.works_band USING btree (band_id varchar_pattern_ops);


--
-- Name: works_genre_genre_id_0eb5f795_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_genre_genre_id_0eb5f795_like ON public.works_genre USING btree (genre_id varchar_pattern_ops);


--
-- Name: works_opus_genre_id_191dafa6; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_opus_genre_id_191dafa6 ON public.works_opus USING btree (genre_id);


--
-- Name: works_opus_libretto_by_opus_id_8b76e625; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_opus_libretto_by_opus_id_8b76e625 ON public.works_opus_libretto_by USING btree (opus_id);


--
-- Name: works_opus_libretto_by_opus_id_8b76e625_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_opus_libretto_by_opus_id_8b76e625_like ON public.works_opus_libretto_by USING btree (opus_id varchar_pattern_ops);


--
-- Name: works_opus_libretto_by_person_id_563dcdb0; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_opus_libretto_by_person_id_563dcdb0 ON public.works_opus_libretto_by USING btree (person_id);


--
-- Name: works_opus_libretto_by_person_id_563dcdb0_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_opus_libretto_by_person_id_563dcdb0_like ON public.works_opus_libretto_by USING btree (person_id varchar_pattern_ops);


--
-- Name: works_opus_lyrics_by_opus_id_18ead1d0; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_opus_lyrics_by_opus_id_18ead1d0 ON public.works_opus_lyrics_by USING btree (opus_id);


--
-- Name: works_opus_lyrics_by_opus_id_18ead1d0_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_opus_lyrics_by_opus_id_18ead1d0_like ON public.works_opus_lyrics_by USING btree (opus_id varchar_pattern_ops);


--
-- Name: works_opus_lyrics_by_person_id_b2f43cc9; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_opus_lyrics_by_person_id_b2f43cc9 ON public.works_opus_lyrics_by USING btree (person_id);


--
-- Name: works_opus_lyrics_by_person_id_b2f43cc9_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_opus_lyrics_by_person_id_b2f43cc9_like ON public.works_opus_lyrics_by USING btree (person_id varchar_pattern_ops);


--
-- Name: works_opus_opus_id_238ecb1b_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_opus_opus_id_238ecb1b_like ON public.works_opus USING btree (opus_id varchar_pattern_ops);


--
-- Name: works_performance_band_id_b51891e5; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_performance_band_id_b51891e5 ON public.works_performance USING btree (band_id);


--
-- Name: works_performance_band_id_b51891e5_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_performance_band_id_b51891e5_like ON public.works_performance USING btree (band_id varchar_pattern_ops);


--
-- Name: works_performance_conductor_id_a4ea641d; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_performance_conductor_id_a4ea641d ON public.works_performance USING btree (conductor_id);


--
-- Name: works_performance_conductor_id_a4ea641d_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_performance_conductor_id_a4ea641d_like ON public.works_performance USING btree (conductor_id varchar_pattern_ops);


--
-- Name: works_performance_opus_id_41b3c392; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_performance_opus_id_41b3c392 ON public.works_performance USING btree (opus_id);


--
-- Name: works_performance_opus_id_41b3c392_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_performance_opus_id_41b3c392_like ON public.works_performance USING btree (opus_id varchar_pattern_ops);


--
-- Name: works_performance_performance_id_42db23b7_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_performance_performance_id_42db23b7_like ON public.works_performance USING btree (performance_id varchar_pattern_ops);


--
-- Name: works_performer_performance_id_42c94eaa; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_performer_performance_id_42c94eaa ON public.works_performer USING btree (performance_id);


--
-- Name: works_performer_performer_id_cfbc0f49; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_performer_performer_id_cfbc0f49 ON public.works_performer USING btree (performer_id);


--
-- Name: works_performer_performer_id_cfbc0f49_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_performer_performer_id_cfbc0f49_like ON public.works_performer USING btree (performer_id varchar_pattern_ops);


--
-- Name: works_person_person_id_a686f5ad_like; Type: INDEX; Schema: public; Owner: dswuser
--

CREATE INDEX works_person_person_id_a686f5ad_like ON public.works_person USING btree (person_id varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_opus catalog_opus_genre_id_5c60d058_fk_catalog_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus
    ADD CONSTRAINT catalog_opus_genre_id_5c60d058_fk_catalog_genre_id FOREIGN KEY (genre_id) REFERENCES public.catalog_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_opus_libretto_by catalog_opus_librett_opus_id_ef82f1f0_fk_catalog_o; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_libretto_by
    ADD CONSTRAINT catalog_opus_librett_opus_id_ef82f1f0_fk_catalog_o FOREIGN KEY (opus_id) REFERENCES public.catalog_opus(table_pk) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_opus_libretto_by catalog_opus_librett_person_id_53aa57ad_fk_catalog_p; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_libretto_by
    ADD CONSTRAINT catalog_opus_librett_person_id_53aa57ad_fk_catalog_p FOREIGN KEY (person_id) REFERENCES public.catalog_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_opus_lyrics_by catalog_opus_lyrics__opus_id_04783bfa_fk_catalog_o; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_lyrics_by
    ADD CONSTRAINT catalog_opus_lyrics__opus_id_04783bfa_fk_catalog_o FOREIGN KEY (opus_id) REFERENCES public.catalog_opus(table_pk) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_opus_lyrics_by catalog_opus_lyrics_by_person_id_72fb2fac_fk_catalog_person_id; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_lyrics_by
    ADD CONSTRAINT catalog_opus_lyrics_by_person_id_72fb2fac_fk_catalog_person_id FOREIGN KEY (person_id) REFERENCES public.catalog_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_opus_performances catalog_opus_perform_opus_id_ca86a3e8_fk_catalog_o; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_performances
    ADD CONSTRAINT catalog_opus_perform_opus_id_ca86a3e8_fk_catalog_o FOREIGN KEY (opus_id) REFERENCES public.catalog_opus(table_pk) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_opus_performances catalog_opus_perform_performance_id_282c9652_fk_catalog_p; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_opus_performances
    ADD CONSTRAINT catalog_opus_perform_performance_id_282c9652_fk_catalog_p FOREIGN KEY (performance_id) REFERENCES public.catalog_performance(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_performance_performers catalog_performance__performance_id_c7831768_fk_catalog_p; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performance_performers
    ADD CONSTRAINT catalog_performance__performance_id_c7831768_fk_catalog_p FOREIGN KEY (performance_id) REFERENCES public.catalog_performance(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_performance_performers catalog_performance__performer_id_a77d7dbb_fk_catalog_p; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performance_performers
    ADD CONSTRAINT catalog_performance__performer_id_a77d7dbb_fk_catalog_p FOREIGN KEY (performer_id) REFERENCES public.catalog_performer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_performer_performer catalog_performer_pe_performer_id_fe527079_fk_catalog_p; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performer_performer
    ADD CONSTRAINT catalog_performer_pe_performer_id_fe527079_fk_catalog_p FOREIGN KEY (performer_id) REFERENCES public.catalog_performer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_performer_performer catalog_performer_pe_person_id_b54d568b_fk_catalog_p; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.catalog_performer_performer
    ADD CONSTRAINT catalog_performer_pe_person_id_b54d568b_fk_catalog_p FOREIGN KEY (person_id) REFERENCES public.catalog_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: works_opus_libretto_by works_opus_libretto__person_id_563dcdb0_fk_works_per; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_opus_libretto_by
    ADD CONSTRAINT works_opus_libretto__person_id_563dcdb0_fk_works_per FOREIGN KEY (person_id) REFERENCES public.works_person(person_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: works_opus_libretto_by works_opus_libretto_by_opus_id_8b76e625_fk_works_opus_opus_id; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_opus_libretto_by
    ADD CONSTRAINT works_opus_libretto_by_opus_id_8b76e625_fk_works_opus_opus_id FOREIGN KEY (opus_id) REFERENCES public.works_opus(opus_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: works_opus_lyrics_by works_opus_lyrics_by_opus_id_18ead1d0_fk_works_opus_opus_id; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_opus_lyrics_by
    ADD CONSTRAINT works_opus_lyrics_by_opus_id_18ead1d0_fk_works_opus_opus_id FOREIGN KEY (opus_id) REFERENCES public.works_opus(opus_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: works_opus_lyrics_by works_opus_lyrics_by_person_id_b2f43cc9_fk_works_per; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_opus_lyrics_by
    ADD CONSTRAINT works_opus_lyrics_by_person_id_b2f43cc9_fk_works_per FOREIGN KEY (person_id) REFERENCES public.works_person(person_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: works_performance works_performance_band_id_b51891e5_fk_works_band_band_id; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_performance
    ADD CONSTRAINT works_performance_band_id_b51891e5_fk_works_band_band_id FOREIGN KEY (band_id) REFERENCES public.works_band(band_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: works_performance works_performance_conductor_id_a4ea641d_fk_works_per; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_performance
    ADD CONSTRAINT works_performance_conductor_id_a4ea641d_fk_works_per FOREIGN KEY (conductor_id) REFERENCES public.works_person(person_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: works_performance works_performance_opus_id_41b3c392_fk_works_opus_opus_id; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_performance
    ADD CONSTRAINT works_performance_opus_id_41b3c392_fk_works_opus_opus_id FOREIGN KEY (opus_id) REFERENCES public.works_opus(opus_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: works_performer works_performer_performer_id_cfbc0f49_fk_works_person_person_id; Type: FK CONSTRAINT; Schema: public; Owner: dswuser
--

ALTER TABLE ONLY public.works_performer
    ADD CONSTRAINT works_performer_performer_id_cfbc0f49_fk_works_person_person_id FOREIGN KEY (performer_id) REFERENCES public.works_person(person_id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

