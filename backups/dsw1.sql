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
1	2019-05-01 15:31:54.407469+03	1122	Житие дураков - Վարք հիմարաց - Житие дураков	2	[{"changed": {"fields": ["perform_date", "name_ru", "name_hy", "name_en"]}}]	13	1
2	2019-05-01 15:45:29.713738+03	1122	Житие дураков - Վարք հիմարաց - Житие дураков	2	[{"changed": {"fields": ["video_url"]}}]	13	1
3	2019-05-01 16:02:46.406223+03	1122	Житие дураков - Վարք հիմարաց - Житие дураков	2	[{"changed": {"fields": ["audio_url"]}}]	13	1
4	2019-05-01 16:08:53.072819+03	1117	Високосный год - Նահանջ տարի - None	2	[{"changed": {"fields": ["video_url"]}}]	13	1
5	2019-05-01 16:09:05.781686+03	1117	Високосный год - Նահանջ տարի - None	2	[]	13	1
6	2019-05-01 16:10:00.554763+03	1116	Христос - Քրիստոս - Увертюра	2	[{"changed": {"fields": ["video_url"]}}]	13	1
7	2019-05-01 16:10:55.217337+03	1115	Соната - Սոնատ - Часть II	2	[{"changed": {"fields": ["video_url"]}}]	13	1
8	2019-05-01 16:11:41.053912+03	1114	Соната - Սոնատ - Часть I	2	[{"changed": {"fields": ["video_url"]}}]	13	1
9	2019-05-01 16:12:15.551748+03	1112	Христос - Քրիստոս - Увертюра	2	[{"changed": {"fields": ["video_url"]}}]	13	1
10	2019-05-07 12:33:09.338307+03	1122	Житие дураков - Վարք հիմարաց - None	2	[{"changed": {"fields": ["name_ru", "name_hy", "name_en"]}}]	13	1
11	2019-05-07 12:42:23.197716+03	1122	Житие дураков - Վարք հիմարաց - None	2	[{"changed": {"fields": ["video_url"]}}]	13	1
12	2019-05-07 12:44:28.960657+03	1117	Високосный год - Նահանջ տարի - None	2	[{"changed": {"fields": ["video_url"]}}]	13	1
13	2019-05-07 12:44:42.16516+03	1116	Христос - Քրիստոս - Увертюра	2	[{"changed": {"fields": ["video_url"]}}]	13	1
14	2019-05-07 12:44:50.513795+03	1115	Соната - Սոնատ - Часть II	2	[{"changed": {"fields": ["video_url"]}}]	13	1
15	2019-05-07 12:45:00.203396+03	1114	Соната - Սոնատ - Часть I	2	[{"changed": {"fields": ["video_url"]}}]	13	1
16	2019-05-07 12:45:07.750821+03	1112	Христос - Քրիստոս - Увертюра	2	[{"changed": {"fields": ["video_url"]}}]	13	1
17	2019-05-10 22:35:49.173878+03	71	Эта странная музыка A.D.Es - Այս , տարօրինակ A. D. Es. երաժշտությունը	2	[{"changed": {"fields": ["title_hy"]}}]	16	1
18	2019-05-12 03:18:59.267439+03	1123	None - Часть I	1	[{"added": {}}]	13	1
19	2019-05-12 03:31:46.389002+03	1123	Симфония №2 - Սիմֆոնիա №2 - Часть I	2	[{"changed": {"fields": ["opus"]}}]	13	1
20	2019-05-12 23:46:26.54129+03	1111	Пять духовных прелюдий и фуг - Հինգ հոգևոր պրելյուդ և ֆուգա - Фуга из первой части цикла	1	[{"added": {}}]	13	1
21	2019-05-13 00:18:31.352977+03	1124	Концерт №1 - Կոնցերտ №1 - None	1	[{"added": {}}]	13	1
22	2019-05-13 10:51:52.623633+03	1118	Тишина взглядов твоих - Լռութիւնը նայուածք ներուդ - None	1	[{"added": {}}]	13	1
23	2019-05-13 11:13:35.423875+03	20	Лусине Маркосян	1	[{"added": {}}]	12	1
24	2019-05-13 11:15:50.039135+03	1	Лусине Маркосян	1	[{"added": {}}]	15	1
25	2019-05-13 11:16:22.018206+03	2	Седрак Ерканян	1	[{"added": {}}]	15	1
26	2019-05-13 11:16:59.446053+03	2	Седрак Ерканян	2	[{"changed": {"fields": ["role_hy", "role_en"]}}]	15	1
27	2019-05-13 11:29:55.628449+03	21	Грета Антонян	1	[{"added": {}}]	12	1
28	2019-05-13 11:37:06.462738+03	1119	1119: 75: Семь китайских мелодий - Չինական յոթ մեղեդի - Журчащие речки	1	[{"added": {}}]	13	1
29	2019-05-13 11:38:26.731447+03	3	Грета Антонян	1	[{"added": {}}]	15	1
30	2019-05-13 12:36:43.305226+03	1121	1121: 64: Соната №1 - Սոնատ №1 - None	2	[{"changed": {"fields": ["video_url"]}}]	13	1
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
51	2019-06-10 10:42:31.779145+03	1	1: Кикос и Киракос - Կիկոսն ու Կիրակոսը	2	[{"changed": {"fields": ["title_hy"]}}]	16	1
52	2019-06-10 10:45:54.197878+03	3	3: Без заглавия - Անվերնագիր	2	[{"changed": {"fields": ["comment_hy"]}}]	16	1
53	2019-06-10 10:52:35.67944+03	22	22: Концерт №1 - Կոնցերտ №1	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
54	2019-06-10 10:53:16.364422+03	23	23: Концерт №2 - Կոնցերտ №2	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
55	2019-06-10 10:53:33.148308+03	25	25: Концерт №4 - Կոնցերտ №4	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
56	2019-06-10 10:54:11.374272+03	24	24: Концерт №3 - Կոնցերտ №3	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
57	2019-06-10 11:08:57.589655+03	31	31: Концерт №2 - Կոնցերտ №2	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
58	2019-06-10 11:09:20.365255+03	33	33: Концерт - Կոնցերտ	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
59	2019-06-10 11:09:36.905848+03	34	34: Реквием - Ռեքվիեմ	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
60	2019-06-10 11:10:58.197218+03	11	Александр Овсепян	2	[{"changed": {"fields": ["fname_hy"]}}]	12	1
61	2019-06-10 11:35:27.007731+03	35	35: Шутка - Կատակ	2	[{"changed": {"fields": ["subtitle_hy"]}}]	16	1
62	2019-06-10 11:48:25.617503+03	36	36: Камерная кантата №1 «Из глубин сердца» - Կամերային կանտատ №1 «Ի խորոց սրտի»	2	[{"changed": {"fields": ["subtitle_ru", "subtitle_hy", "subtitle_en"]}}]	16	1
63	2019-06-10 12:31:52.536071+03	38	38: Камерная кантата №3 - Կամերային կանտատ №3	2	[{"changed": {"fields": ["subtitle_ru", "subtitle_hy", "subtitle_en"]}}]	16	1
64	2019-06-10 12:33:46.517938+03	51	51: Многоточие - Բազմակետ	2	[{"changed": {"fields": ["title_hy"]}}]	16	1
65	2019-06-10 12:40:14.502979+03	74	74: Молитва Богородице для Мариамик - Աղոթք Տիրամորը Մարիամիկի համար	2	[{"changed": {"fields": ["subtitle_ru", "title_hy", "subtitle_hy", "subtitle_en"]}}]	16	1
66	2019-06-10 12:40:50.588981+03	74	74: Молитва Богородице для Мариамик - Աղոթք Տիրամորը Մարիամիկի համար	2	[{"changed": {"fields": ["subtitle_en"]}}]	16	1
67	2019-06-10 12:47:57.447313+03	77	77: Пять армянских народных песен - Հայկական ժողովրդական հինգ երգ	2	[{"changed": {"fields": ["title_ru", "title_hy", "title_en"]}}]	16	1
68	2019-06-10 12:48:45.969187+03	78	78: Обработка фортепианной пьесы Э. Мирзояна "Грустный вальс" - Էդ. Միրզոյանի «Տխուր վալս» դաշնամուրային պիեսի մշակում	2	[{"changed": {"fields": ["title_hy"]}}]	16	1
69	2019-06-10 12:49:43.636974+03	89	89: Псалом - Սաղմոս	2	[{"changed": {"fields": ["title_hy"]}}]	16	1
70	2019-06-10 12:52:20.880966+03	92	92: Роза - Վարդը	2	[{"changed": {"fields": ["comment_hy"]}}]	16	1
71	2019-06-10 12:59:02.210671+03	124	Хоровые сочинения	1	[{"added": {}}]	14	1
72	2019-06-10 12:59:23.917763+03	94	94: Элегия - Եղերերգ	2	[{"changed": {"fields": ["genre"]}}]	16	1
73	2019-06-10 12:59:34.00801+03	95	95: Токката - Տոկատ	2	[{"changed": {"fields": ["genre"]}}]	16	1
74	2019-06-10 12:59:45.035762+03	96	96: Отче наш - Հայր մեր	2	[{"changed": {"fields": ["genre"]}}]	16	1
75	2019-06-10 12:59:55.102484+03	97	97: Токката - Տոկատ	2	[{"changed": {"fields": ["genre"]}}]	16	1
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
7	privacy	Политика конфиденциальности	Этот проект не собирает информацию о посетителях сайта. Однако на нем размещены ссылки на внешние ресурсы, а также встроены проигрыватели с внешних ресурсов. У них может быть иной подход к обработке пользовательских данных в соответствии с их правилами соблюдения конфиденциальности.	ru
2	general	\N	This project presents the works by Armenian composer David Sakoyan. It includes a catalogue of his works, as well as some recordings and some information about his music. The idea is to collect all about his work on a single platform in order to make this music more available for everybody who is interested. Unfortunately, there are not so many recordings at the moment, and most of them are live performances. But we hope that our recordings collection will gradually extend. The catalogue is also updated as new pieces are created.	en
5	sections	Разделы	На <strong>главной странице</strong> находится плейлист со всеми записями исполнений, которые сейчас доступны и размещены на разных каналах YouTube.<br>\r\nВ разделе &ldquo;<strong>Каталог</strong>&rdquo; находится перечень сочинений, который пополняется по мере появления новых. Для удобства просмотра записей каталог снабжен инструментами фильтрации (по жанрам и годам) и поиска. В каталоге представлены преимущественно произведения, написанные начиная с 1990 года. От большинства своих более ранних произведений Давид Сакоян отказался.<br>\r\nРаздел &ldquo;<strong>Творчество</strong>&rdquo; рассказывает о том, какую музыку пишет Давид Сакоян, и о контексте создания этой музыки.	ru
6	license	Условия использования	Материалы этого сайта доступны по лицензии <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0</a>. Это касается всех опубликованных на страницах текстов и данных каталога сочинений. Все материалы, распространяемые под этой лицензией, можно свободно распространять, использовать и перерабатывать при условии ссылки на источник. Помимо этого, на сайте публикуются записи сочинений, опубликованные на платформе YouTube. Большинство из них имеют стандартную лицензию YouTube, однако в каждом конкретном случае возможны особые условия.	ru
8	contacts	Контакты	Если вы столкнулись с какими-либо техническими проблемами на сайте, вы можете написать по адресу: <a href="mailto:support@davidsakoyan.info">support@davidsakoyan.info</a>.<br>\r\nПо иным вопросам обращайтесь по адресу <a href="mailto:info@davidsakoyan.info">info@davidsakoyan.info</a> или через страницу в Facebook.<br>\r\nЕсли у вас есть записанные исполнения сочинений Давида Сакояна, и этих записей еще нет на сайте, мы будем признательны, если вы ими поделитесь.<br>\r\nЕсли вы заинтересовались какими-либо сочинениями и хотели бы посмотреть партитуру, напишите нам.<br>\r\nПрямых контактов для связи с Давидом Сакояном мы предоставить не можем (у него нет электронной почты). Однако если вы пришлете нам свои вопросы или отзывы, адресованные ему, мы готовы передать.	ru
9	license	Terms of use	Most content on this site is available under <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0</a> license. It applies to all texts on the site’s pages, as well as the catalogue data. As to the materials hosted on outside resources, such as YouTube, they may have their specific terms of use.	en
10	privacy	Privacy policy	This site does not collect any information about its visitors. However, it contains links and embedded materials to and from other platforms, which have their own privacy policies and rules of personal data handling . For details, please see their corresponding privacy policy descriptions.	en
11	contacts	Contacts	<p>If you have run into some technical issues at this website, feel free to send a message to <a href="mailto:info@davidsakoyan.info">support@davidsakoyan.com</a>.</p>\r\n<p>On other matters, please feel free to send an email to <a href="mailto:info@davidsakoyan.info">info@davidsakoyan.com</a>. Alternatively, you could get in touch via Facebook.</p>\r\n<p>If you have some recordings of David Sakoyan’s pieces, and these recordings are not yet presented at this site, we would be extremely grateful if you shared them with us.</p>\r\n<p>If you are interested in getting sheet music, please contact us.</p>\r\n<p>We cannot provide contacts for direct connection with David Sakoyan (he has no email address). But we are ready to communicate to him questions or other feedback.</p>	en
1	general	\N	Этот проект посвящен творчеству армянского композитора Давида Сакояна. Здесь можно найти каталог его сочинений, послушать некоторые записи, почитать о его музыке. Цель проекта в том, чтобы собрать на одной платформе всё, что касается творчества этого композитора, и тем самым дать возможность всем желающим ознакомиться с его произведениями. Доступных записей пока прискорбно мало, и среди них нет студийных (только концертные). Однако мы надеемся на расширение коллекции записей. Каталог также обновляется по мере появления новых сочинений.	ru
\.


--
-- Data for Name: works_band; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_band (band_id, url, type_ru, name_ru, type_hy, name_hy, type_en, name_en) FROM stdin;
11111	https://www.facebook.com/Tagharan/	Ансамбль	Тагаран	Անսամբլ	Տաղարան	Ensemble	Tagharan
11112	http://ncoarmenia.am		Государственный камерный оркестр Армении		Հայաստանի ազգային կամերային նվագախումբ		National Chamber Orchestra of Armenia
\.


--
-- Data for Name: works_bio; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_bio (id, text, language, section_code, section_name, page_title) FROM stdin;
5	Давид Сакоян пишет академическую музыку. Первоначально он увлекался авангардом, и на протяжении двадцати лет писал свои сочинения в этом ключе. Фактически его творчество разделяется на два больших этапа, условная граница между которыми - 1990 год. Отказавшись от авангардного творчества, он отказался и от основной части произведений, написанных до того года. Сочинения, представленные на этом сайте, относятся ко второму этапу.	ru	general	\N	\N
1	<p>Давид Сакоян пишет академическую музыку. Первоначально он увлекался авангардом, и на протяжении двадцати лет писал свои сочинения в этом ключе. Фактически его творчество разделяется на два больших этапа, условная граница между которыми - 1990 год. Отказавшись от авангардного творчества, он отказался и от основной части произведений, написанных до того года. Сочинения, представленные на этом сайте, относятся ко второму этапу.</p>\r\n<h3>Формирование</h3>\r\n<p>Давид Сакоян начал интересоваться музыкой еще в детстве и уже тогда начал сочинять песни и мелодии. Но в музыкальной школе он не учился: родители не считали нужным поддерживать интерес к музыке.<br />Поступить в консерваторию без начального музыкального образования было нельзя, поэтому по окончании школы он поступил на музыкальное отделение факультета эстетики в Армянский педагогический институт им. X. Абовяна, где специализировался на дирижировании. Параллельно с этим писал музыку.<br />Окончив институт в 1970 году, он собирался поступить в Ереванскую консерваторию на дирижерское отделение, но друзья убедили его подать документы на теоретико-композиторский факультет. К тому моменту у него уже было множество сочинений, в том числе опера &ldquo;Ара Прекрасный и Шамирам&rdquo; и литургия для хора солистов симфонического оркестра, и он успешно поступил.<br />Еще в школьные годы он отличался строптивым нравом и из-за этого систематически не находил общего языка с руководством, и в дальнейшем эта конфронтация только усиливалась. В частности, увлекался армянской средневековой философией и поэзией, читал армянских историков V века и прочую не поощрявшуюся в СССР литературу. За свой бескомпромиссный характер он получил от профессоров прозвище &ldquo;нигилист&rdquo;, однако оставался на хорошем счету в качестве студента. В 1977 году окончил консерваторию по классу композиции <a href="https://ru.wikipedia.org/wiki/%D0%95%D0%B3%D0%B8%D0%B0%D0%B7%D0%B0%D1%80%D1%8F%D0%BD,_%D0%93%D1%80%D0%B8%D0%B3%D0%BE%D1%80%D0%B8%D0%B9_%D0%95%D0%B3%D0%B8%D0%B0%D0%B7%D0%B0%D1%80%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">Григория Егиазаряна</a>.</p>\r\n<h3>Авангард</h3>\r\n<p>Еще будучи студентом института, начал увлекаться авангардной музыкой, в частности под впечатлением от произведений <a href="https://ru.wikipedia.org/wiki/%D0%A1%D1%82%D1%80%D0%B0%D0%B2%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9,_%D0%98%D0%B3%D0%BE%D1%80%D1%8C_%D0%A4%D1%91%D0%B4%D0%BE%D1%80%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">И.Ф. Стравинского</a>. В этом его поддерживал преподававший там композитор <a href="http://ru.hayazg.info/%D0%93%D0%B5%D0%B2%D0%BE%D1%80%D0%BA%D1%8F%D0%BD_%D0%AE%D1%80%D0%B8%D0%B9_%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">Юрий Геворкян</a>. В консерватории он заинтересовался творчеством преподававшего там композитора-авангардиста <a href="https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D1%80%D1%82%D0%B5%D1%80%D1%8F%D0%BD,_%D0%90%D0%B2%D0%B5%D1%82_%D0%A0%D1%83%D0%B1%D0%B5%D0%BD%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">Авета Тертеряна</a>. При этом он оставался в классе Егиазаряна, категорически не одобрявшего такие тенденции в музыке.<br />Один из своих опусов тех времен Давид Сакоян пересказывает следующим образом: &ldquo;Перед собой я поставил серьезную и весьма сложную задачу: всё наизнанку - люди и всё остальное. Видеть и слышать, как кровь течет по артериям, как работают мозг, сердце, легкие. Как разъедает организм какой-то недуг. Сначала он возникает незаметно, потом едва ощутимое, потом легкое, незначительное недомогание, далее больше и больше, потом постепенный распад, всё черно и смерть&rdquo;.</p>\r\n<h3>"Традиционализм"</h3>\r\n<p>Переход к новому этапу начался в 1986 году, когда Давид Сакоян попал в больницу с инфарктом. За этим последовал длительный период лечения и выздоровления, во время которого у него начало формироваться представление о музыке, противоположное прежнему негативистскому взгляду.<br />В конце 1988 года произошло страшное <a href="https://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%82%D0%B0%D0%BA%D1%81%D0%BA%D0%BE%D0%B5_%D0%B7%D0%B5%D0%BC%D0%BB%D0%B5%D1%82%D1%80%D1%8F%D1%81%D0%B5%D0%BD%D0%B8%D0%B5" target="_blank" rel="noopener">землетрясение в Спитаке</a>, последствия которого Давид Сакоян наблюдал воочию. Эти впечатления сделали большой вклад в изменение представлений о творческих задачах. В частности, стремление &ldquo;выворачивать наизнанку&rdquo; сменилось пониманием, что некоторые вещи нужно не выворачивать, а, наоборот, защищать, то есть скрывать, как жизненно важные органы человека защищены (скрыты) костями и мышцами.<br />К 1990 году окончательно сформировалась новая творческая концепция, которая подразумевала не только переход от авангарда к &ldquo;традиционализму&rdquo;, но и отказ от ранее созданных авангардистских сочинений. Из более раннего остались только два произведения: детская опера &ldquo;Кикос и Киракос&rdquo; (1981 г.) и Концерт №1 для фортепиано и камерного оркестра (1985 г.).</p>	ru	\N	\N	\N
2	Давид Сакоян начал интересоваться музыкой еще в детстве и уже тогда начал сочинять песни и мелодии. Но в музыкальной школе он не учился: родители не считали нужным поддерживать интерес к музыке.<br />Поступить в консерваторию без начального музыкального образования было нельзя, поэтому по окончании школы он поступил на музыкальное отделение факультета эстетики в Армянский педагогический институт им. X. Абовяна, где специализировался на дирижировании. Параллельно с этим писал музыку.<br />Окончив институт в 1970 году, он собирался поступить в Ереванскую консерваторию на дирижерское отделение, но друзья убедили его подать документы на теоретико-композиторский факультет. К тому моменту у него уже было множество сочинений, в том числе опера &ldquo;Ара Прекрасный и Шамирам&rdquo; и литургия для хора солистов симфонического оркестра, и он успешно поступил.<br />Еще в школьные годы он отличался строптивым нравом и из-за этого систематически не находил общего языка с руководством, и в дальнейшем эта конфронтация только усиливалась. В частности, увлекался армянской средневековой философией и поэзией, читал армянских историков V века и прочую не поощрявшуюся в СССР литературу. За свой бескомпромиссный характер он получил от профессоров прозвище &ldquo;нигилист&rdquo;, однако оставался на хорошем счету в качестве студента. В 1977 году окончил консерваторию по классу композиции <a href="https://ru.wikipedia.org/wiki/%D0%95%D0%B3%D0%B8%D0%B0%D0%B7%D0%B0%D1%80%D1%8F%D0%BD,_%D0%93%D1%80%D0%B8%D0%B3%D0%BE%D1%80%D0%B8%D0%B9_%D0%95%D0%B3%D0%B8%D0%B0%D0%B7%D0%B0%D1%80%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">Григория Егиазаряна</a>.	ru	evolution	Формирование	\N
4	Переход к новому этапу начался в 1986 году, когда Давид Сакоян попал в больницу с инфарктом. За этим последовал длительный период лечения и выздоровления, во время которого у него начало формироваться представление о музыке, противоположное прежнему негативистскому взгляду.<br />В конце 1988 года произошло страшное <a href="https://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%82%D0%B0%D0%BA%D1%81%D0%BA%D0%BE%D0%B5_%D0%B7%D0%B5%D0%BC%D0%BB%D0%B5%D1%82%D1%80%D1%8F%D1%81%D0%B5%D0%BD%D0%B8%D0%B5" target="_blank" rel="noopener">землетрясение в Спитаке</a>, последствия которого Давид Сакоян наблюдал воочию. Эти впечатления сделали большой вклад в изменение представлений о творческих задачах. В частности, стремление &ldquo;выворачивать наизнанку&rdquo; сменилось пониманием, что некоторые вещи нужно не выворачивать, а, наоборот, защищать, то есть скрывать, как жизненно важные органы человека защищены (скрыты) костями и мышцами.<br />К 1990 году окончательно сформировалась новая творческая концепция, которая подразумевала не только переход от авангарда к &ldquo;традиционализму&rdquo;, но и отказ от ранее созданных авангардистских сочинений. Из более раннего остались только два произведения: детская опера &ldquo;Кикос и Киракос&rdquo; (1981 г.) и Концерт №1 для фортепиано и камерного оркестра (1985 г.).	ru	tradit	Традиционализм	\N
3	Еще будучи студентом института, начал увлекаться авангардной музыкой, в частности под впечатлением от произведений <a href="https://ru.wikipedia.org/wiki/%D0%A1%D1%82%D1%80%D0%B0%D0%B2%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9,_%D0%98%D0%B3%D0%BE%D1%80%D1%8C_%D0%A4%D1%91%D0%B4%D0%BE%D1%80%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">И.Ф. Стравинского</a>. В этом его поддерживал преподававший там композитор <a href="http://ru.hayazg.info/%D0%93%D0%B5%D0%B2%D0%BE%D1%80%D0%BA%D1%8F%D0%BD_%D0%AE%D1%80%D0%B8%D0%B9_%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">Юрий Геворкян</a>. В консерватории он заинтересовался творчеством преподававшего там композитора-авангардиста <a href="https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D1%80%D1%82%D0%B5%D1%80%D1%8F%D0%BD,_%D0%90%D0%B2%D0%B5%D1%82_%D0%A0%D1%83%D0%B1%D0%B5%D0%BD%D0%BE%D0%B2%D0%B8%D1%87" target="_blank" rel="noopener">Авета Тертеряна</a>. При этом он оставался в классе Егиазаряна, категорически не одобрявшего такие тенденции в музыке.<br />Один из своих опусов тех времен Давид Сакоян пересказывает следующим образом: &ldquo;Перед собой я поставил серьезную и весьма сложную задачу: всё наизнанку - люди и всё остальное. Видеть и слышать, как кровь течет по артериям, как работают мозг, сердце, легкие. Как разъедает организм какой-то недуг. Сначала он возникает незаметно, потом едва ощутимое, потом легкое, незначительное недомогание, далее больше и больше, потом постепенный распад, всё черно и смерть&rdquo;.	ru	avant	Авангард	\N
\.


--
-- Data for Name: works_genre; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_genre (name_ru, name_hy, name_en, genre_id) FROM stdin;
Опера	Օպերա	Opera	111
Балет	Բալետ	Ballet	114
Симфония	Սիմֆոնիա	Symphony	115
Камерная симфония	Կամերային սիմֆոնիա	Chamber symphony	116
Концерт	Կոնցերտ	Concerto	117
Камерные сочинения	կամերային երկեր	Chamber works	118
Камерные кантаты	Կամերային կանտատ	Chamber cantatas	119
Симфонические сочинения	Սիմֆոնիկ երկեր	Orchestral works	120
Сонаты	Սոնատ	Sonatas	121
Романс	Ռոմանս	Romance	123
Хоровые сочинения	խմբերգային երկեր	Choir works	124
\.


--
-- Data for Name: works_home; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_home (id, page_title, text, language) FROM stdin;
1	Давид Сакоян и его музыка	<p>Этот сайт посвящен творчеству композитора армянского Давида Сакояна, автора многочисленных симфонических произведений. Здесь можно найти каталог его сочинений, а также послушать те из них, которые есть в записи.</p>	ru
2	Դավիթ Սաքոյան և նրա երաժշտություն		hy
3	David Sakoyan and his music		en
\.


--
-- Data for Name: works_opus; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_opus (opus_id, title_ru, title_hy, title_en, comment_ru, comment_hy, comment_en, year, genre_id, subtitle_en, subtitle_hy, subtitle_ru) FROM stdin;
3	Без заглавия	Անվերնագիր	Unnamed	Либретто по пьесе Александра Овсепяна	Լիբրետոն ըստ Ալեքսանդր Հովսեփյանի թատերգության	Libretto is based on a play by Alexander Hovsepyan	1996	111	Opera-oratorio	Օպերա-օրատորիա	Опера-оратория
22	Концерт №1	Կոնցերտ №1	Concerto No. 1	\N	\N	\N	1985	117	for piano and chamber orchestra	դաշնամուրի և կամերային նվագախմբի համար	для фортепиано и камерного оркестра
2	Христос	Քրիստոս	Christ	Либретто на основе четырех Евангелий.	Շորս Ավետարանների հիման վրա։	Libretto is based on the four Gospels	1994	111	Opera	Օպերա	Опера
23	Концерт №2	Կոնցերտ №2	Concerto No. 2	\N	\N	\N	1990	117	for piano and chamber orchestra	դաշնամուրի և լարային նվագախմբի համար	для фортепиано и струнного оркестра
25	Концерт №4	Կոնցերտ №4	Concerto No. 4	\N	\N	\N	1993	117	for piano and chamber orchestra	դաշնամուրի և սիմֆոնիկ նվագախմբի համար	для фортепиано и симфонического оркестра
4	Рипсимэ	Հռիփսիմէ	Hripsime	Либретто по Агафангелу	Լիբրետոն ըստ Ագաթանգեղոսի	Libretto is based on Agathangelos	1997	111	Opera	Օպերա	Опера
24	Концерт №3	Կոնցերտ №3	Concerto No. 3	\N	\N	\N	1991	117	for piano and chamber orchestra	դաշնամուրի և կամերային նվագախմբի համար	для фортепиано и камерного оркестра
5	Житие дураков	Վարք հիմարաց	Life of Fools	Либретто по сказкам Ованнеса Туманяна	Լիբրետոն ըստ Հովհաննես Թումանյանի հեքիաթների	Libretto is based on tales by Hovhannes Tumanyan	2008	111	Chamber opera	Կամերային օպերա	Камерная опера
6	У весельчака веселья не убудет	Քեֆ անողին քեֆ չի պակսիլ	A Merry Fellow won't Lose His Merriment	Либретто по сказке Ованнеса Туманяна	Լիբրետոն ըստ Հովհաննես Թումանյանի հեքիաթի	Libretto is based on a tale by Hovhannes Tumanyan	2012	111	Chamber opera	Կամերային օպերա	Камерная опера
7	Рипсимэ	Հռիփսիմէ		Либретто по Агафангелу	Լիբրետոն ըստ Ագաթանգեղոսի		1999	114	Ballet	Բալետ	Балет
8	Мудрые танцы	Իմաստուն պարեր	Wise Dances	Без либретто	Ան լիբրետո	Without libretto	2013	114	Ballet	Բալետ	Балет
9	Симфония №1	Սիմֆոնիա №1	Symphony No. 1	На основе 32-го псалма (в русской версии Псалтири - 31-го псалма)	№32 Սաղմոսի հիման վրա	Based on Psalm 32	1997	115	Symphony orchestra, soloists, choir	Սիմֆոնիկ նվագախումբ, մեչերգիչներ և երգչախումբ	Симфонический оркестр, солисты и хор
10	Симфония №2	Սիմֆոնիա №2	Symphony No. 2				2001	115	Symphony orchestra	Սիմֆոնիկ նվագախումբ	Симфонический оркестр
11	Симфония №3	Սիմֆոնիա №3	Symphony No. 3				2004	115	Symphony orchestra	Սիմֆոնիկ նվագախումբ	Симфонический оркестр
12	Симфония №4 «Гимн Всевышнему»	Սիմֆոնիա №4 “Օրհներգ Բարձրյալին”	Symphony No. 4 "Hymn to the Highest"				2005	115	Symphony orchestra	Սիմֆոնիկ նվագախումբ	Симфонический оркестр
13	Симфония №5	Սիմֆոնիա №5	Symphony No. 5				2007	115	Symphony orchestra	Սիմֆոնիկ նվագախումբ	Симфонический оркестр
14	Симфония №6 «Распятие»	Սիմֆոնիա №6 “Խաչելություն”	Symphony No. 6 "Crucifixion"				2009	115	Symphony orchestra	Սիմֆոնիկ նվագախումբ	Симфонический оркестр
15	Симфония №7	Սիմֆոնիա №7	Symphony No. 7				2010	115	Symphony orchestra	Սիմֆոնիկ նվագախումբ	Симфонический оркестр
16	Симфония №8	Սիմֆոնիա №8	Symphony No. 8	Слова Й.В. Гёте (в пер. О. Туманяна)	Խոսք Գյոթեյի, թարգմանությունբ Հովհ. Թումանյանի	Lyrics by Johann Wolfgang Goethe, Hovhannes Tumanyan (trans.)	2011	115	Symphony orchestra and baritone soloist	Սիմֆոնիկ նվագախումբ և մեներգիչ բարիտոն	Симфонический оркестр и солист баритон
17	Симфония №9	Սիմֆոնիա №9	Symphony No. 9	Слова из армянской литургии	Խոսքը՝ հայոց Պատարագից	Text from Armenian Liturgy	2013	115	Symphony orchestra, choir	Սիմֆոնիկ նվագախումբ, երգչախումբ	Симфонический оркестр, хор
18	Симфония №10 «Детская»	Սիմֆոնիա №10։ Մանկական	Symphony No. 10 "Children's"				2016	115	Symphony orchestra	Սիմֆոնիկ նվագախումբ	Симфонический оркестр
19	Камерная симфония №1	Կամերային սիմֆոնիա №1	Chamber symphony No. 1				1990	116	Chamber orchestra	Կամերային նվագախումբ	Камерный оркестр
20	Камерная симфония №2	Կամերային սիմֆոնիա №2	Chamber symphony No. 2				2005	116	Chamber orchestra	Կամերային նվագախումբ	Камерный оркестр
21	Камерная симфония №3	Կամերային սիմֆոնիա №3	Chamber symphony No. 3				2007	116	Chamber orchestra	Կամերային նվագախումբ	Камерный оркестр
26	Концерт №1	Կոնցերտ №1	Concerto No. 1				1994	117	for violin and chamber orchestra	ջութակի և կամերային նվագախմբի համար	для скрипки и камерного оркестра
27	Концерт №2	Կոնցերտ №2	Concerto No. 2				2002	117	for violin and chamber orchestra	ջութակի և սիմֆոնիկ նվագախմբի համար	для скрипки и симфонического оркестра
28	Концерт №3	Կոնցերտ №3	Concerto No. 3				2017	117	for violin and chamber orchestra	ջութակի և կամերային նվագախմբի համար	для скрипки и камерного оркестра
31	Концерт №2	Կոնցերտ №2	Concerto No. 2	\N	\N	\N	2017	117	for pipe organ and chamber orchestra	երգեհոնի և կամերային նվագախմբի համար	для органа и камерного оркестра
29	Концерт	Կոնցերտ	Concerto				1995	117	for cello and chamber orchestra	թավջութակի և կամերային նվագախմբի համար	для виолончели и камерного оркестра
33	Концерт	Կոնցերտ	Concerto	\N	\N	\N	2002	117	for string orchestra	լարային նվագախմբի համար	для струнного оркестра
30	Концерт №1	Կոնցերտ №1	Concerto No. 1				2016	117	for pipe organ and chamber orchestra	երգեհոնի և կամերային նվագախմբի համար	для органа и камерного оркестра
35	Шутка	Կատակ	Scherzo	Без слов	Ան խոսք	No lyrics	1990	118	for female choir and chamber orchestra	կանանց երգչախմբի և կամերային նվագախմբի համար	для женского хора и камерного оркестра
38	Камерная кантата №3	Կամերային կանտատ №3	Chamber Cantata No. 3	\N	\N	\N	1998	119	for soprano and chamber orchestra	սոպրանոյի և կամերային նվագախմբի համար	для сопрано и камерного оркестра
32	Концерт	Կոնցերտ	Concerto	Флейта, гобой, кларнет, фагот, валторна, клавесин, скрипка, виолончель	ֆլեյտա, հոբոյ, կլարնետ, ֆագոտ, գալարափող, կլավեսին, ջութակ, թավջութակ	Flute, oboe, clarinet, bassoon, French horn, harpsichord, violin, cello	1995	117	for eight instruments	ութ գործիքի համար	для восьми инструментов
51	Многоточие	Բազմակետ	Ellipsis	\N	\N	\N	2005	118	for string orchestra	լարային նվագախմբի համար	для струнного оркестра
37	Камерная кантата №2 «Аллилуйя»	Կամերային կանտատ №2 «Ալելույա»	Chamber Cantata "Hallelujah"	На слова из армянской Литургии	հայկական Պատարագի խոսքերով	Based on the text of Armenian Liturgy	1996	119			
39	Високосный год	Նահանջ տարի	The Leap Year				1990	120	for symphony orchestra	սիմֆոնիկ նվագախմբի համար	для симфонического оркестра
40	Элегия	Եղերերգ	Elegy				1996	120	for symphony orchestra	սիմֆոնիկ նվագախմբի համար	для симфонического оркестра
41	Adagio	Adagio	Adagio				2000	120	for symphony orchestra	սիմֆոնիկ նվագախմբի համար	для симфонического оркестра
42	Presto	Presto	Presto				2000	120	for symphony orchestra	սիմֆոնիկ նվագախմբի համար	для симфонического оркестра
43	Прелюдия и фуга	Պրելյուդ և ֆուգա	Prelude and Fugue				2000	120	for symphony orchestra	սիմֆոնիկ նվագախմբի համար	для симфонического оркестра
44	Пассакалья и фуга	Պասսակալիա և ֆուգա	Passacaglia and Fugue				2006	120	for symphony orchestra	սիմֆոնիկ նվագախմբի համար	для симфонического оркестра
45	Псалом	Սաղմոս	Psalm				2011	120	for symphony orchestra	սիմֆոնիկ նվագախմբի համար	для симфонического оркестра
46	Пассакалья	Պասսակալիա	Passacaglia				2012	120	for symphony orchestra	սիմֆոնիկ նվագախմբի համար	для симфонического оркестра
47	Чакона	Չակոնա	Chaconne				2015	120	for symphony orchestra	սիմֆոնիկ նվագախմբի համար	для симфонического оркестра
48	Псалом	Սաղմոս	Psalm	По 23 псалму Давида. Номер псалма указан в соответствии с армянской нумерацией псалмов. В Септуагинте (и русскоязычной версии Псалтири) ему соответствует 22 псалом.	ըստ Դավթի №23 սաղմոսի	Psalm 23 of David	2015	120	for symphony orchestra	երգչախմբի և սիմֆոնիկ նվագախմբի համար	для хора и симфонического оркестра
49	Пассакалья и фуга №2	Պասսակալիա և ֆուգա №2	Passacaglia and Fugue No.2				2017	120	for symphony orchestra	սիմֆոնիկ նվագախմբի համար	для симфонического оркестра
50	Элегия	Եղերերգ	Elegy				1996	118	for flute (or violine) and string orchestra	ֆլեյտայի (կամ ջութակի) և լարային նվագախմբի համար	для флейты (или скрипки) и струнного оркестра
52	Грешен	Մեղա	Peccavi				2006	118	for string orchestra	լարային նվագախմբի համար	для струнного оркестра
53	Largo	Largo	Largo				2007	118	for cello and string orchestra	թավջութակի և լարային նվագախմբի համար	для виолончели и струнного оркестра
54	Тихая молитва к Богоматери	Մեղմ աղոթք Տիրամորը	Quiet Prayer to Mother of God				2007	118	for string orchestra	լարային նվագախմբի համար	для струнного оркестра
55	Пять духовных прелюдий и фуг	Հինգ հոգևոր պրելյուդ և ֆուգա	Five spiritual Preludes and Fugues				2008	118	for string orchestra	լարային նվագախմբի համար	для струнного оркестра
56	Квинтет	Կվինտետ	Quintet				2004	118	for flute, clarinet, violin, cello, and piano	 ֆլեյտայի, կլարնետի, ջութակի, թավջութակի և դաշնամուրի համար	для флейты, кларнета, скрипки, виолончели и фортепиано
71	Эта странная музыка A.D.Es	Այս , տարօրինակ A. D. Es. երաժշտությունը	This Strange Music A.D.Es	\N	\N	\N	2011	118	for instrumental ensemble	գործիքային համույթի համար	для инструментального ансамбля
57	Струнный квартет №1	Լարային կվարտետ №1	String Quartet No.1				1993	118			
1	Кикос и Киракос	Կիկոսն ու Կիրակոսը	Kikos and Kirakos	На основе народных песен	Ժողովրդական երգերի հիման վրա	Based on folk songs	1981	111	An opera for children	Մանկական օպերա	Детская опера
58	Струнный квартет №2	Լարային կվարտետ №2	String Quartet No.2				1997	118			
78	Обработка фортепианной пьесы Э. Мирзояна "Грустный вальс"	Էդ. Միրզոյանի «Տխուր վալս» դաշնամուրային պիեսի մշակում	Arrangement of the piano piece by Edvard Mirzoyan "Sad Waltz"	\N	\N	\N	2008	118	for instrumental ensemble	գործիքային համույթի համար	для инструментального ансамбля
59	Трио	Տրիո	Trio				1999	118	for two cellos and piano	երկու թավջութակի և դաշնամուրի համար	для двух виолончелей и фортепиано
60	Трио	Տրիո	Trio				2006	118	for violin, cello, and piano	ջութակի, թավջութակի և դաշնամուրի համար	для скрипки, виолончели и фортепиано
61	Соната	Սոնատ	Sonata				2010	121	for flute and piano	ֆլեյտայի և դաշնամուրի համար	для флейты и фортепиано
62	Соната	Սոնատ	Sonata				2005	121	for violin and piano	ջութակի և դաշնամուրի համար	для скрипки и фортепиано
63	Соната	Սոնատ	Sonata				2006	121	for cello and piano	թավջութակի և դաշնամուրի համար	для виолончели и фортепиано
64	Соната №1	Սոնատ №1	Sonata No.1				1992	121	for piano	դաշնամուրի համար	для фортепиано
65	Соната №2	Սոնատ №2	Sonata No.2				2007	121	for piano	դաշնամուրի համար	для фортепиано
66	Малая соната	Փոքր սոնատ	Small Sonata				1999	121	for piano	դաշնամուրի համար	для фортепиано
67	Вокализ №1	Վոկալիզ №1	Vocalise N1				2001	118	for soprano and instrumental ensemble	սոպրանոյի և գործիքային համույթի համար	для сопрано и инструментального ансамбля
68	Andante	Andante	Andante				2002	118	for instrumental ensemble	գործիքային համույթի համար	для инструментального ансамбля
69	Колыбельная с гимном	Օրոր և օրհներգ	Lullaby with hymn				2002	118	for instrumental ensemble	գործիքային համույթի համար	для инструментального ансамбля
70	Mysticos	Mysticos	Mysticos				2009	118	for instrumental ensemble	գործիքային համույթի համար	для инструментального ансамбля
72	К Алле	Ալլային	For Alla				2014	118	for instrumental ensemble	գործիքային համույթի համար	для инструментального ансамбля
73	Воплощение	Մարմնացուն	The Incarnation				2015	118	for instrumental ensemble	գործիքային համույթի համար	для инструментального ансамбля
75	Семь китайских мелодий	Չինական յոթ մեղեդի	Seven Chinese Melodies				1994	118	for instrumental ensemble	գործիքային համույթի համար	для инструментального ансамбля
76	Две армянские мелодии	Հայկական երկու մեղեդի	Two Armenian Melodies				2011	118	for solo santur and instrumental ensemble	մենանվագ սանթո ւրի և գործիքային համույթի համար	для сантура соло и инструментального ансамбля
79	Трагическая фуга	Ողբերգական ֆուգա	Tragic Fugue				2003	118	for pipe organ	երգեհոնի համար	для органа
80	Прелюдия и фуга	Պրելյուդ և ֆուգա	Prelude and Fugue				2015	118	for pipe organ	երգեհոնի համար	для органа
81	Две прелюдии и фуги	Երկու պրելյուդ և ֆուգա	Two preludes and Fugues				2012	118	for cello and piano	թավջութակի և դաշնամուրի համար	для виолончели и фортепиано
82	Восемь молитв	Ութ աղոթք	Eight Prayers				2009	118	for piano	դաշնամուրի համար	для фортепиано
83	Грустные мелодии многогрешного	Բազմամեղի տխուր մեղեդիները	Sad Melodies by the one of Many Sins				2009	118	ten pieces for piano	տասը պիես դաշնամուրի համար	Десять пьес для фортепиано
84	Простая музыка	Պարզ երաժշտություն	Simple Music				2011	118	ten pieces for piano	տասը պիես դաշնամուրի համար	Десять пьес для фортепиано
85	Три этюда	Երեք էտյուդ	Three études				2011	118	for piano	դաշնամուրի համար	для фортепиано
86	Токката	Տոկատ	Toccata				1996	118	for piano	դաշնամուրի համար	для фортепиано
87	Два романса	Երկու ռոմանս	Two Romances				1997	118	for soprano and piano	սոպրանոյի և դաշնամուրի համար	для сопрано и фортепиано
88	Тишина взглядов твоих	Լռութիւնը նայուածք ներուդ	Quietness of your gaze			Romance for soprano and piano	1997	123	romance for soprano and piano	ռոմանս սոպրանոյի և դաշնամուրի համար	романс для сопрано и фортепиано
34	Реквием	Ռեքվիեմ	Requiem	\N	\N	\N	1990	118	for Female Choir, Soprano Soloist, and Chamber Orchestra	կանանց երգչախմբի, մեներգչուհի սոպրանոյի և կամերային նվագախմբի համար	для женского хора, солистки сопрано и камерного оркестра
36	Камерная кантата №1 «Из глубин сердца»	Կամերային կանտատ №1 «Ի խորոց սրտի»	Chamber Cantata No. 1 "From the Depths of the Heart"	По «Книге скорбных песнопений» Григора Нарекаци	ըստ Գր. Նարեկացու «Մատյան Ողբերգություն»	Based on The Book of Lamentations by Gregory of Narek	1995	119	for two sopranos, alto, tenor, baritone and chamber orchestra	երկու սոպրանոյի, ալտի, տենորի, բարիտոնի և կամերային նվագախմբի համար	для двух сопрано, альта, тенора, баритона и камерного оркестра
90	Две песни	Երկու երգ	Two songs				2005	118	for soprano and piano	սոպրանոյի և դաշնամուրի համար	для сопрано и фортепиано
91	Вокализ	Վոկալիզ	Vocalise		բասի և դաշնամուրի համար		2007	118	for bass and piano	բասի և դաշնամուրի համար	для баса и фортепиано
74	Молитва Богородице для Мариамик	Աղոթք Տիրամորը Մարիամիկի համար	Prayer to Mother of God for Mariamik	\N	\N	\N	2016	118	for piano and instrumental ensemble	դաշնամուրի և գործիքային համույթի համար	для фортепиано и инструментального ансамбля
77	Пять армянских народных песен	Հայկական ժողովրդական հինգ երգ	Five Armenian Folk Songs	\N	\N	\N	2006	118	for soprano and instrumental ensemble	սոպրանոյի և գործիքային համույթի համար	для сопрано и инструментального ансамбля
93	Псалом	Սաղմոս	Psalm	По псалму №13 Давида (в варианте Септуагинты - псалом №12)	ըստ Դավթի №13 սաղմոսի	Based on Psalm 13 of David	2001	118	for mezzo-soprano and piano	մեձո-սոպրանոյի և դաշնամուրի համար	для меццо-сопрано и фортепиано
89	Псалом	Սաղմոս	Psalm	По 23 псалму Давида. Номер псалма указан в соответствии с армянской нумерацией псалмов. В Септуагинте (и русскоязычной версии Псалтири) ему соответствует 22 псалом.	ըստ Դավթի №23 սաղմոսի	Based on Psalm 23 of David	1997	118	for mezzo-soprano and piano	մեձո-սոպրանոյի և դաշնամուրի համար	для меццо-сопрано и фортепиано
92	Роза	Վարդը	Rose	Слова Й.В. Гёте (в пер. О. Туманяна)	Խոսք Գյոթեյի Հովհ. Թումանյանի թարգմանությամբ	Lyrics by Johann Wolfgang Goethe, Hovhannes Tumanyan (trans.)	2010	123	for baritone and piano	ռոմանս բարիտոնի և դաշնամուրի համար	Романс для баритона и фортепиано
94	Элегия	Եղերերգ	Elegy	Без слов	Ան խոսք	No lyrics	2000	124	for children's choir	մանկական երգչախմբի համար	для детского хора
95	Токката	Տոկատ	Toccata	Без слов	Ան խոսք	No lyrics	2008	124	for children's choir	մանկական երգչախմբի համար	для детского хора
96	Отче наш	Հայր մեր	Pater Noster	\N	\N	for mixed choir	2008	124	for mixed choir	խառը երգչախմբի համար	для смешанного хора
98	Трио	Տրիո	Trio				2018	118	for two pianos and cello	երկու դաշնամուրի և թավջութակի համար	для двух фортепиано и виолончели
97	Токката	Տոկատ	Toccata	Без слов	Ան խոսք	No lyrics	2009	124	for mixed choir	խառը երգչախմբի համար	для смешанного хора
99	Симфония №11 «Воскресение»	Սիմֆոնիա №11 "Հարություն"	Symphony No. 11 Resurrection	Симфонический оркестр	Սիմֆոնիկ նվագախումբ		2018	115	Symphony orchestra		
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
\N	2	\N	\N	1116	84Khom_Gx9Y	\N	Ouverture	Ուվերտյուրա	Увертюра
\N	63	\N	\N	1115	pzPw6vDMdbM	\N	Part 2	\N	Часть II
\N	63	\N	\N	1114	2FOVCYyO0Z8	\N	Part 1	\N	Часть I
\N	2	\N	13	1112	0dwuh5xALaM	11112	Ouverture	Ուվերտյուրա	Увертюра
\N	10	\N	\N	1123	StNEPKYIEns	\N	Part 1	\N	Часть I
\N	55	\N	13	1111	anXJR_Zyvls	11112	\N	\N	Фуга из первой части цикла
\N	30	\N	13	1124	kktj_SorjCU	\N	\N	\N	\N
\N	88	\N	\N	1118	1fO89wwEtco	\N	\N	\N	\N
\N	75	\N	13	1119	ctYHilyz_Xc	11111	Murmuring Streams	Խոխոջիւն գետակներ	Журчащие речки
\N	64	\N	\N	1121	WjNE3PZz-r8	\N	\N	\N	\N
\.


--
-- Data for Name: works_performer; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_performer (id, role_ru, performance_id, performer_id, role_en, role_hy) FROM stdin;
1	Сопрано	1118	20	Soprano	Սոպրանո
2	Фортепиано	1118	13	Piano	Դաշնամուր
3	Сопрано	1119	21	Soprano	Սոպրանո
\.


--
-- Data for Name: works_person; Type: TABLE DATA; Schema: public; Owner: dswuser
--

COPY public.works_person (person_id, fname_ru, lname_ru, fname_hy, lname_hy, fname_en, lname_en) FROM stdin;
12	Давид	Сакоян	Դավիթ	Սաքոյան	David	Sakoyan
13	Седрак	Ерканян	Սեդրակ	Երկանյան	Sedrak	Yerkanyan
14	Максим	Мартиросян	Մաքսիմ	Մարտիրոսյան	Maxim	Martirosyan
15	Йохан Вольфганг	Гёте	Յոհան Վոլֆգանգ	Գյոթե	Johann Wolfgang	Goethe
16	Аветик	Исаакян	Ավետիք	Իսահակյան	Avetik	Isahakyan
17	Мисак	Мецаренц	Միսաք	Մեծարենց	Misak	Metsarents
18	Архиепископ Артак		Արտակ Արքեպիսկոպոս		Archbishop Artak	
19	Анаит	Латоян	Անահիտ	Լաթոյան	Anahit	Latoyan
20	Лусине	Маркосян	Լուսինե	Մարկոսյան	Lusine	Markosyan
21	Грета	Антонян	Գրետա	Անտոնյան	Greta	Antonyan
11	Александр	Овсепян	Ալեքսանդր	Հովսեփյան	Alexander	Hovsepyan
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

