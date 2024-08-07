PGDMP      	    
            |            laravel    16.3 (Debian 16.3-1.pgdg120+1) #   16.3 (Ubuntu 16.3-0ubuntu0.24.04.1) �    8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            :           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ;           1262    27045    laravel    DATABASE     r   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE laravel;
                diary    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            <           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    56025 
   acquirings    TABLE     �   CREATE TABLE public.acquirings (
    id bigint NOT NULL,
    code character varying(32) NOT NULL,
    name character varying(65) NOT NULL
);
    DROP TABLE public.acquirings;
       public         heap    diary    false    4            �            1259    56024    acquirings_id_seq    SEQUENCE     z   CREATE SEQUENCE public.acquirings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.acquirings_id_seq;
       public          diary    false    218    4            =           0    0    acquirings_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.acquirings_id_seq OWNED BY public.acquirings.id;
          public          diary    false    217            �            1259    56103    auths    TABLE     e   CREATE TABLE public.auths (
    token character varying(25) NOT NULL,
    user_id bigint NOT NULL
);
    DROP TABLE public.auths;
       public         heap    diary    false    4            �            1259    56058    avatars    TABLE     b   CREATE TABLE public.avatars (
    id bigint NOT NULL,
    path character varying(255) NOT NULL
);
    DROP TABLE public.avatars;
       public         heap    diary    false    4            �            1259    56057    avatars_id_seq    SEQUENCE     w   CREATE SEQUENCE public.avatars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.avatars_id_seq;
       public          diary    false    226    4            >           0    0    avatars_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.avatars_id_seq OWNED BY public.avatars.id;
          public          diary    false    225            �            1259    56114    bans    TABLE     �   CREATE TABLE public.bans (
    id bigint NOT NULL,
    date_start date NOT NULL,
    date_end date NOT NULL,
    reason_description character varying(255) NOT NULL,
    user_id bigint NOT NULL
);
    DROP TABLE public.bans;
       public         heap    diary    false    4            �            1259    56113    bans_id_seq    SEQUENCE     t   CREATE SEQUENCE public.bans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.bans_id_seq;
       public          diary    false    4    233            ?           0    0    bans_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.bans_id_seq OWNED BY public.bans.id;
          public          diary    false    232                       1259    56302    chapter_review_likes    TABLE     q   CREATE TABLE public.chapter_review_likes (
    user_id bigint NOT NULL,
    chapter_review_id bigint NOT NULL
);
 (   DROP TABLE public.chapter_review_likes;
       public         heap    diary    false    4                        1259    56286    chapter_reviews    TABLE       CREATE TABLE public.chapter_reviews (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    chapter_id bigint NOT NULL,
    content character varying(255) NOT NULL,
    last_update_date timestamp(0) without time zone NOT NULL,
    is_moderated boolean NOT NULL
);
 #   DROP TABLE public.chapter_reviews;
       public         heap    diary    false    4            �            1259    56285    chapter_reviews_id_seq    SEQUENCE        CREATE SEQUENCE public.chapter_reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.chapter_reviews_id_seq;
       public          diary    false    256    4            @           0    0    chapter_reviews_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.chapter_reviews_id_seq OWNED BY public.chapter_reviews.id;
          public          diary    false    255            �            1259    56221    chapters    TABLE     �   CREATE TABLE public.chapters (
    id bigint NOT NULL,
    comic_id bigint NOT NULL,
    name character varying(45) NOT NULL,
    chapter_number integer NOT NULL,
    volume_number smallint NOT NULL,
    date_added date NOT NULL
);
    DROP TABLE public.chapters;
       public         heap    diary    false    4            �            1259    56220    chapters_id_seq    SEQUENCE     x   CREATE SEQUENCE public.chapters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.chapters_id_seq;
       public          diary    false    249    4            A           0    0    chapters_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.chapters_id_seq OWNED BY public.chapters.id;
          public          diary    false    248                       1259    56351    comic_creators    TABLE     e   CREATE TABLE public.comic_creators (
    comic_id bigint NOT NULL,
    creator_id bigint NOT NULL
);
 "   DROP TABLE public.comic_creators;
       public         heap    diary    false    4            �            1259    56205    comic_genres    TABLE     a   CREATE TABLE public.comic_genres (
    comic_id bigint NOT NULL,
    genre_id bigint NOT NULL
);
     DROP TABLE public.comic_genres;
       public         heap    diary    false    4            �            1259    56257    comic_names    TABLE     �   CREATE TABLE public.comic_names (
    comic_id bigint NOT NULL,
    name character varying(75) NOT NULL,
    is_default boolean DEFAULT false NOT NULL
);
    DROP TABLE public.comic_names;
       public         heap    diary    false    4                       1259    56317    comic_ratings    TABLE     �   CREATE TABLE public.comic_ratings (
    user_id bigint NOT NULL,
    comic_id bigint NOT NULL,
    value numeric(2,0) NOT NULL
);
 !   DROP TABLE public.comic_ratings;
       public         heap    diary    false    4            �            1259    56178    comic_reading_statuses    TABLE     �   CREATE TABLE public.comic_reading_statuses (
    user_id bigint NOT NULL,
    comic_id bigint NOT NULL,
    reading_status_id bigint NOT NULL
);
 *   DROP TABLE public.comic_reading_statuses;
       public         heap    diary    false    4            �            1259    56269    comic_reviews    TABLE     �   CREATE TABLE public.comic_reviews (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    comic_id bigint NOT NULL,
    content character varying(255) NOT NULL,
    last_update_date timestamp(0) without time zone NOT NULL,
    is_moderated boolean
);
 !   DROP TABLE public.comic_reviews;
       public         heap    diary    false    4            �            1259    56268    comic_reviews_id_seq    SEQUENCE     }   CREATE SEQUENCE public.comic_reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.comic_reviews_id_seq;
       public          diary    false    254    4            B           0    0    comic_reviews_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.comic_reviews_id_seq OWNED BY public.comic_reviews.id;
          public          diary    false    253            �            1259    56133    comic_types    TABLE     g   CREATE TABLE public.comic_types (
    id smallint NOT NULL,
    name character varying(25) NOT NULL
);
    DROP TABLE public.comic_types;
       public         heap    diary    false    4            �            1259    56132    comic_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comic_types_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.comic_types_id_seq;
       public          diary    false    4    237            C           0    0    comic_types_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.comic_types_id_seq OWNED BY public.comic_types.id;
          public          diary    false    236            �            1259    56147    comics    TABLE     ,  CREATE TABLE public.comics (
    id bigint NOT NULL,
    description text NOT NULL,
    release_year numeric(4,0) NOT NULL,
    age_limit character varying(255) NOT NULL,
    poster_path character varying(255) NOT NULL,
    comic_type_id bigint NOT NULL,
    release_status_id bigint NOT NULL,
    translate_status_id bigint NOT NULL,
    CONSTRAINT comics_age_limit_check CHECK (((age_limit)::text = ANY ((ARRAY['18+'::character varying, '16+'::character varying, '12+'::character varying, '6+'::character varying, '0+'::character varying])::text[])))
);
    DROP TABLE public.comics;
       public         heap    diary    false    4            �            1259    56146    comics_id_seq    SEQUENCE     v   CREATE SEQUENCE public.comics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.comics_id_seq;
       public          diary    false    241    4            D           0    0    comics_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.comics_id_seq OWNED BY public.comics.id;
          public          diary    false    240                       1259    56333    creator_roles    TABLE     i   CREATE TABLE public.creator_roles (
    id smallint NOT NULL,
    name character varying(25) NOT NULL
);
 !   DROP TABLE public.creator_roles;
       public         heap    diary    false    4                       1259    56332    creator_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.creator_roles_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.creator_roles_id_seq;
       public          diary    false    4    260            E           0    0    creator_roles_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.creator_roles_id_seq OWNED BY public.creator_roles.id;
          public          diary    false    259                       1259    56340    creators    TABLE     �   CREATE TABLE public.creators (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    creator_role_id bigint NOT NULL
);
    DROP TABLE public.creators;
       public         heap    diary    false    4                       1259    56339    creators_id_seq    SEQUENCE     x   CREATE SEQUENCE public.creators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.creators_id_seq;
       public          diary    false    4    262            F           0    0    creators_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.creators_id_seq OWNED BY public.creators.id;
          public          diary    false    261            �            1259    56232    frames    TABLE     �   CREATE TABLE public.frames (
    chapter_id bigint NOT NULL,
    number smallint NOT NULL,
    path character varying(255) NOT NULL
);
    DROP TABLE public.frames;
       public         heap    diary    false    4            �            1259    56199    genres    TABLE     b   CREATE TABLE public.genres (
    id smallint NOT NULL,
    name character varying(25) NOT NULL
);
    DROP TABLE public.genres;
       public         heap    diary    false    4            �            1259    56198    genres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genres_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genres_id_seq;
       public          diary    false    246    4            G           0    0    genres_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;
          public          diary    false    245            �            1259    56242    like_chapters    TABLE     c   CREATE TABLE public.like_chapters (
    user_id bigint NOT NULL,
    chapter_id bigint NOT NULL
);
 !   DROP TABLE public.like_chapters;
       public         heap    diary    false    4            �            1259    56018 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    diary    false    4            �            1259    56017    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          diary    false    216    4            H           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          diary    false    215            �            1259    56172    reading_statuses    TABLE     l   CREATE TABLE public.reading_statuses (
    id smallint NOT NULL,
    name character varying(25) NOT NULL
);
 $   DROP TABLE public.reading_statuses;
       public         heap    diary    false    4            �            1259    56171    reading_statuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reading_statuses_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.reading_statuses_id_seq;
       public          diary    false    243    4            I           0    0    reading_statuses_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.reading_statuses_id_seq OWNED BY public.reading_statuses.id;
          public          diary    false    242            �            1259    56140    release_statuses    TABLE     l   CREATE TABLE public.release_statuses (
    id smallint NOT NULL,
    name character varying(25) NOT NULL
);
 $   DROP TABLE public.release_statuses;
       public         heap    diary    false    4            �            1259    56139    release_statuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.release_statuses_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.release_statuses_id_seq;
       public          diary    false    4    239            J           0    0    release_statuses_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.release_statuses_id_seq OWNED BY public.release_statuses.id;
          public          diary    false    238            �            1259    56051    roles    TABLE     a   CREATE TABLE public.roles (
    id smallint NOT NULL,
    code character varying(25) NOT NULL
);
    DROP TABLE public.roles;
       public         heap    diary    false    4            �            1259    56050    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          diary    false    4    224            K           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          diary    false    223            �            1259    56039    subscription_prices    TABLE     �   CREATE TABLE public.subscription_prices (
    id bigint NOT NULL,
    price numeric(16,2) NOT NULL,
    discount_percent numeric(2,0) NOT NULL,
    days_count smallint NOT NULL,
    subscription_id bigint NOT NULL
);
 '   DROP TABLE public.subscription_prices;
       public         heap    diary    false    4            �            1259    56038    subscription_prices_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscription_prices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.subscription_prices_id_seq;
       public          diary    false    4    222            L           0    0    subscription_prices_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.subscription_prices_id_seq OWNED BY public.subscription_prices.id;
          public          diary    false    221            �            1259    56032    subscriptions    TABLE     �   CREATE TABLE public.subscriptions (
    id bigint NOT NULL,
    is_available boolean NOT NULL,
    name character varying(65) NOT NULL,
    description character varying(255) NOT NULL
);
 !   DROP TABLE public.subscriptions;
       public         heap    diary    false    4            �            1259    56031    subscriptions_id_seq    SEQUENCE     }   CREATE SEQUENCE public.subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.subscriptions_id_seq;
       public          diary    false    220    4            M           0    0    subscriptions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;
          public          diary    false    219            �            1259    56126    translate_statuses    TABLE     n   CREATE TABLE public.translate_statuses (
    id smallint NOT NULL,
    name character varying(25) NOT NULL
);
 &   DROP TABLE public.translate_statuses;
       public         heap    diary    false    4            �            1259    56125    translate_statuses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.translate_statuses_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.translate_statuses_id_seq;
       public          diary    false    4    235            N           0    0    translate_statuses_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.translate_statuses_id_seq OWNED BY public.translate_statuses.id;
          public          diary    false    234            �            1259    56082    user_subscriptions    TABLE     �  CREATE TABLE public.user_subscriptions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    acquiring_id bigint NOT NULL,
    subscription_price_id bigint NOT NULL,
    date_payment timestamp(0) without time zone NOT NULL,
    date_end timestamp(0) without time zone NOT NULL,
    date_cancel timestamp(0) without time zone,
    pay_amount numeric(16,2) NOT NULL,
    refund_amount numeric(16,2),
    id_payment character varying(255)
);
 &   DROP TABLE public.user_subscriptions;
       public         heap    diary    false    4            �            1259    56081    user_subscriptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.user_subscriptions_id_seq;
       public          diary    false    230    4            O           0    0    user_subscriptions_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.user_subscriptions_id_seq OWNED BY public.user_subscriptions.id;
          public          diary    false    229            �            1259    56065    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    nickname character varying(25) NOT NULL,
    email character varying(65) NOT NULL,
    password character varying(255) NOT NULL,
    avatar_id bigint NOT NULL,
    role_id bigint NOT NULL
);
    DROP TABLE public.users;
       public         heap    diary    false    4            �            1259    56064    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          diary    false    4    228            P           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          diary    false    227                       2604    56028    acquirings id    DEFAULT     n   ALTER TABLE ONLY public.acquirings ALTER COLUMN id SET DEFAULT nextval('public.acquirings_id_seq'::regclass);
 <   ALTER TABLE public.acquirings ALTER COLUMN id DROP DEFAULT;
       public          diary    false    218    217    218                       2604    56061 
   avatars id    DEFAULT     h   ALTER TABLE ONLY public.avatars ALTER COLUMN id SET DEFAULT nextval('public.avatars_id_seq'::regclass);
 9   ALTER TABLE public.avatars ALTER COLUMN id DROP DEFAULT;
       public          diary    false    225    226    226                       2604    56117    bans id    DEFAULT     b   ALTER TABLE ONLY public.bans ALTER COLUMN id SET DEFAULT nextval('public.bans_id_seq'::regclass);
 6   ALTER TABLE public.bans ALTER COLUMN id DROP DEFAULT;
       public          diary    false    233    232    233                       2604    56289    chapter_reviews id    DEFAULT     x   ALTER TABLE ONLY public.chapter_reviews ALTER COLUMN id SET DEFAULT nextval('public.chapter_reviews_id_seq'::regclass);
 A   ALTER TABLE public.chapter_reviews ALTER COLUMN id DROP DEFAULT;
       public          diary    false    255    256    256                       2604    56224    chapters id    DEFAULT     j   ALTER TABLE ONLY public.chapters ALTER COLUMN id SET DEFAULT nextval('public.chapters_id_seq'::regclass);
 :   ALTER TABLE public.chapters ALTER COLUMN id DROP DEFAULT;
       public          diary    false    249    248    249                       2604    56272    comic_reviews id    DEFAULT     t   ALTER TABLE ONLY public.comic_reviews ALTER COLUMN id SET DEFAULT nextval('public.comic_reviews_id_seq'::regclass);
 ?   ALTER TABLE public.comic_reviews ALTER COLUMN id DROP DEFAULT;
       public          diary    false    254    253    254                       2604    56136    comic_types id    DEFAULT     p   ALTER TABLE ONLY public.comic_types ALTER COLUMN id SET DEFAULT nextval('public.comic_types_id_seq'::regclass);
 =   ALTER TABLE public.comic_types ALTER COLUMN id DROP DEFAULT;
       public          diary    false    237    236    237                       2604    56150 	   comics id    DEFAULT     f   ALTER TABLE ONLY public.comics ALTER COLUMN id SET DEFAULT nextval('public.comics_id_seq'::regclass);
 8   ALTER TABLE public.comics ALTER COLUMN id DROP DEFAULT;
       public          diary    false    241    240    241                       2604    56336    creator_roles id    DEFAULT     t   ALTER TABLE ONLY public.creator_roles ALTER COLUMN id SET DEFAULT nextval('public.creator_roles_id_seq'::regclass);
 ?   ALTER TABLE public.creator_roles ALTER COLUMN id DROP DEFAULT;
       public          diary    false    259    260    260                       2604    56343    creators id    DEFAULT     j   ALTER TABLE ONLY public.creators ALTER COLUMN id SET DEFAULT nextval('public.creators_id_seq'::regclass);
 :   ALTER TABLE public.creators ALTER COLUMN id DROP DEFAULT;
       public          diary    false    261    262    262                       2604    56202 	   genres id    DEFAULT     f   ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);
 8   ALTER TABLE public.genres ALTER COLUMN id DROP DEFAULT;
       public          diary    false    245    246    246                       2604    56021    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          diary    false    216    215    216                       2604    56175    reading_statuses id    DEFAULT     z   ALTER TABLE ONLY public.reading_statuses ALTER COLUMN id SET DEFAULT nextval('public.reading_statuses_id_seq'::regclass);
 B   ALTER TABLE public.reading_statuses ALTER COLUMN id DROP DEFAULT;
       public          diary    false    243    242    243                       2604    56143    release_statuses id    DEFAULT     z   ALTER TABLE ONLY public.release_statuses ALTER COLUMN id SET DEFAULT nextval('public.release_statuses_id_seq'::regclass);
 B   ALTER TABLE public.release_statuses ALTER COLUMN id DROP DEFAULT;
       public          diary    false    238    239    239            
           2604    56054    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          diary    false    223    224    224            	           2604    56042    subscription_prices id    DEFAULT     �   ALTER TABLE ONLY public.subscription_prices ALTER COLUMN id SET DEFAULT nextval('public.subscription_prices_id_seq'::regclass);
 E   ALTER TABLE public.subscription_prices ALTER COLUMN id DROP DEFAULT;
       public          diary    false    222    221    222                       2604    56035    subscriptions id    DEFAULT     t   ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);
 ?   ALTER TABLE public.subscriptions ALTER COLUMN id DROP DEFAULT;
       public          diary    false    220    219    220                       2604    56129    translate_statuses id    DEFAULT     ~   ALTER TABLE ONLY public.translate_statuses ALTER COLUMN id SET DEFAULT nextval('public.translate_statuses_id_seq'::regclass);
 D   ALTER TABLE public.translate_statuses ALTER COLUMN id DROP DEFAULT;
       public          diary    false    234    235    235                       2604    56085    user_subscriptions id    DEFAULT     ~   ALTER TABLE ONLY public.user_subscriptions ALTER COLUMN id SET DEFAULT nextval('public.user_subscriptions_id_seq'::regclass);
 D   ALTER TABLE public.user_subscriptions ALTER COLUMN id DROP DEFAULT;
       public          diary    false    229    230    230                       2604    56068    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          diary    false    227    228    228                      0    56025 
   acquirings 
   TABLE DATA           4   COPY public.acquirings (id, code, name) FROM stdin;
    public          diary    false    218   ��                 0    56103    auths 
   TABLE DATA           /   COPY public.auths (token, user_id) FROM stdin;
    public          diary    false    231   ��                 0    56058    avatars 
   TABLE DATA           +   COPY public.avatars (id, path) FROM stdin;
    public          diary    false    226   0�                 0    56114    bans 
   TABLE DATA           U   COPY public.bans (id, date_start, date_end, reason_description, user_id) FROM stdin;
    public          diary    false    233   ��       /          0    56302    chapter_review_likes 
   TABLE DATA           J   COPY public.chapter_review_likes (user_id, chapter_review_id) FROM stdin;
    public          diary    false    257   	�       .          0    56286    chapter_reviews 
   TABLE DATA           k   COPY public.chapter_reviews (id, user_id, chapter_id, content, last_update_date, is_moderated) FROM stdin;
    public          diary    false    256   H�       '          0    56221    chapters 
   TABLE DATA           a   COPY public.chapters (id, comic_id, name, chapter_number, volume_number, date_added) FROM stdin;
    public          diary    false    249   ��       5          0    56351    comic_creators 
   TABLE DATA           >   COPY public.comic_creators (comic_id, creator_id) FROM stdin;
    public          diary    false    263   y�       %          0    56205    comic_genres 
   TABLE DATA           :   COPY public.comic_genres (comic_id, genre_id) FROM stdin;
    public          diary    false    247   ��       *          0    56257    comic_names 
   TABLE DATA           A   COPY public.comic_names (comic_id, name, is_default) FROM stdin;
    public          diary    false    252   �       0          0    56317    comic_ratings 
   TABLE DATA           A   COPY public.comic_ratings (user_id, comic_id, value) FROM stdin;
    public          diary    false    258   �      "          0    56178    comic_reading_statuses 
   TABLE DATA           V   COPY public.comic_reading_statuses (user_id, comic_id, reading_status_id) FROM stdin;
    public          diary    false    244         ,          0    56269    comic_reviews 
   TABLE DATA           g   COPY public.comic_reviews (id, user_id, comic_id, content, last_update_date, is_moderated) FROM stdin;
    public          diary    false    254   9                0    56133    comic_types 
   TABLE DATA           /   COPY public.comic_types (id, name) FROM stdin;
    public          diary    false    237   U                0    56147    comics 
   TABLE DATA           �   COPY public.comics (id, description, release_year, age_limit, poster_path, comic_type_id, release_status_id, translate_status_id) FROM stdin;
    public          diary    false    241   �      2          0    56333    creator_roles 
   TABLE DATA           1   COPY public.creator_roles (id, name) FROM stdin;
    public          diary    false    260   �      4          0    56340    creators 
   TABLE DATA           =   COPY public.creators (id, name, creator_role_id) FROM stdin;
    public          diary    false    262   7      (          0    56232    frames 
   TABLE DATA           :   COPY public.frames (chapter_id, number, path) FROM stdin;
    public          diary    false    250   s      $          0    56199    genres 
   TABLE DATA           *   COPY public.genres (id, name) FROM stdin;
    public          diary    false    246         )          0    56242    like_chapters 
   TABLE DATA           <   COPY public.like_chapters (user_id, chapter_id) FROM stdin;
    public          diary    false    251                   0    56018 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          diary    false    216   V      !          0    56172    reading_statuses 
   TABLE DATA           4   COPY public.reading_statuses (id, name) FROM stdin;
    public          diary    false    243   �                0    56140    release_statuses 
   TABLE DATA           4   COPY public.release_statuses (id, name) FROM stdin;
    public          diary    false    239   �                0    56051    roles 
   TABLE DATA           )   COPY public.roles (id, code) FROM stdin;
    public          diary    false    224   .                0    56039    subscription_prices 
   TABLE DATA           g   COPY public.subscription_prices (id, price, discount_percent, days_count, subscription_id) FROM stdin;
    public          diary    false    222   Z      
          0    56032    subscriptions 
   TABLE DATA           L   COPY public.subscriptions (id, is_available, name, description) FROM stdin;
    public          diary    false    220   �                0    56126    translate_statuses 
   TABLE DATA           6   COPY public.translate_statuses (id, name) FROM stdin;
    public          diary    false    235   �                0    56082    user_subscriptions 
   TABLE DATA           �   COPY public.user_subscriptions (id, user_id, acquiring_id, subscription_price_id, date_payment, date_end, date_cancel, pay_amount, refund_amount, id_payment) FROM stdin;
    public          diary    false    230   @                0    56065    users 
   TABLE DATA           R   COPY public.users (id, nickname, email, password, avatar_id, role_id) FROM stdin;
    public          diary    false    228   �      Q           0    0    acquirings_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.acquirings_id_seq', 2, true);
          public          diary    false    217            R           0    0    avatars_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.avatars_id_seq', 12, true);
          public          diary    false    225            S           0    0    bans_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.bans_id_seq', 1, true);
          public          diary    false    232            T           0    0    chapter_reviews_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.chapter_reviews_id_seq', 11, true);
          public          diary    false    255            U           0    0    chapters_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.chapters_id_seq', 30, true);
          public          diary    false    248            V           0    0    comic_reviews_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.comic_reviews_id_seq', 11, true);
          public          diary    false    253            W           0    0    comic_types_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.comic_types_id_seq', 7, true);
          public          diary    false    236            X           0    0    comics_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.comics_id_seq', 6, true);
          public          diary    false    240            Y           0    0    creator_roles_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.creator_roles_id_seq', 3, true);
          public          diary    false    259            Z           0    0    creators_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.creators_id_seq', 3, true);
          public          diary    false    261            [           0    0    genres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.genres_id_seq', 18, true);
          public          diary    false    245            \           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 28, true);
          public          diary    false    215            ]           0    0    reading_statuses_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.reading_statuses_id_seq', 1, true);
          public          diary    false    242            ^           0    0    release_statuses_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.release_statuses_id_seq', 2, true);
          public          diary    false    238            _           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
          public          diary    false    223            `           0    0    subscription_prices_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.subscription_prices_id_seq', 5, true);
          public          diary    false    221            a           0    0    subscriptions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.subscriptions_id_seq', 5, true);
          public          diary    false    219            b           0    0    translate_statuses_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.translate_statuses_id_seq', 2, true);
          public          diary    false    234            c           0    0    user_subscriptions_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.user_subscriptions_id_seq', 2, true);
          public          diary    false    229            d           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          diary    false    227                       2606    56030    acquirings acquirings_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.acquirings
    ADD CONSTRAINT acquirings_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.acquirings DROP CONSTRAINT acquirings_pkey;
       public            diary    false    218            -           2606    56112    auths auths_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.auths
    ADD CONSTRAINT auths_pkey PRIMARY KEY (token);
 :   ALTER TABLE ONLY public.auths DROP CONSTRAINT auths_pkey;
       public            diary    false    231            '           2606    56063    avatars avatars_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.avatars
    ADD CONSTRAINT avatars_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.avatars DROP CONSTRAINT avatars_pkey;
       public            diary    false    226            /           2606    56124    bans bans_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.bans
    ADD CONSTRAINT bans_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.bans DROP CONSTRAINT bans_pkey;
       public            diary    false    233            M           2606    56316 .   chapter_review_likes chapter_review_likes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.chapter_review_likes
    ADD CONSTRAINT chapter_review_likes_pkey PRIMARY KEY (user_id, chapter_review_id);
 X   ALTER TABLE ONLY public.chapter_review_likes DROP CONSTRAINT chapter_review_likes_pkey;
       public            diary    false    257    257            K           2606    56301 $   chapter_reviews chapter_reviews_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.chapter_reviews
    ADD CONSTRAINT chapter_reviews_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.chapter_reviews DROP CONSTRAINT chapter_reviews_pkey;
       public            diary    false    256            A           2606    56231    chapters chapters_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.chapters
    ADD CONSTRAINT chapters_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.chapters DROP CONSTRAINT chapters_pkey;
       public            diary    false    249            U           2606    56365 "   comic_creators comic_creators_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.comic_creators
    ADD CONSTRAINT comic_creators_pkey PRIMARY KEY (comic_id, creator_id);
 L   ALTER TABLE ONLY public.comic_creators DROP CONSTRAINT comic_creators_pkey;
       public            diary    false    263    263            ?           2606    56219    comic_genres comic_genres_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.comic_genres
    ADD CONSTRAINT comic_genres_pkey PRIMARY KEY (comic_id, genre_id);
 H   ALTER TABLE ONLY public.comic_genres DROP CONSTRAINT comic_genres_pkey;
       public            diary    false    247    247            G           2606    56267    comic_names comic_names_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.comic_names
    ADD CONSTRAINT comic_names_pkey PRIMARY KEY (comic_id, name);
 F   ALTER TABLE ONLY public.comic_names DROP CONSTRAINT comic_names_pkey;
       public            diary    false    252    252            O           2606    56331     comic_ratings comic_ratings_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.comic_ratings
    ADD CONSTRAINT comic_ratings_pkey PRIMARY KEY (user_id, comic_id);
 J   ALTER TABLE ONLY public.comic_ratings DROP CONSTRAINT comic_ratings_pkey;
       public            diary    false    258    258            ;           2606    56197 2   comic_reading_statuses comic_reading_statuses_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.comic_reading_statuses
    ADD CONSTRAINT comic_reading_statuses_pkey PRIMARY KEY (user_id, comic_id);
 \   ALTER TABLE ONLY public.comic_reading_statuses DROP CONSTRAINT comic_reading_statuses_pkey;
       public            diary    false    244    244            I           2606    56284     comic_reviews comic_reviews_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.comic_reviews
    ADD CONSTRAINT comic_reviews_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.comic_reviews DROP CONSTRAINT comic_reviews_pkey;
       public            diary    false    254            3           2606    56138    comic_types comic_types_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.comic_types
    ADD CONSTRAINT comic_types_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.comic_types DROP CONSTRAINT comic_types_pkey;
       public            diary    false    237            7           2606    56155    comics comics_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.comics
    ADD CONSTRAINT comics_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.comics DROP CONSTRAINT comics_pkey;
       public            diary    false    241            Q           2606    56338     creator_roles creator_roles_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.creator_roles
    ADD CONSTRAINT creator_roles_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.creator_roles DROP CONSTRAINT creator_roles_pkey;
       public            diary    false    260            S           2606    56345    creators creators_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.creators
    ADD CONSTRAINT creators_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.creators DROP CONSTRAINT creators_pkey;
       public            diary    false    262            C           2606    56241    frames frames_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.frames
    ADD CONSTRAINT frames_pkey PRIMARY KEY (chapter_id, number);
 <   ALTER TABLE ONLY public.frames DROP CONSTRAINT frames_pkey;
       public            diary    false    250    250            =           2606    56204    genres genres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            diary    false    246            E           2606    56256     like_chapters like_chapters_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.like_chapters
    ADD CONSTRAINT like_chapters_pkey PRIMARY KEY (user_id, chapter_id);
 J   ALTER TABLE ONLY public.like_chapters DROP CONSTRAINT like_chapters_pkey;
       public            diary    false    251    251                       2606    56023    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            diary    false    216            9           2606    56177 &   reading_statuses reading_statuses_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.reading_statuses
    ADD CONSTRAINT reading_statuses_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.reading_statuses DROP CONSTRAINT reading_statuses_pkey;
       public            diary    false    243            5           2606    56145 &   release_statuses release_statuses_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.release_statuses
    ADD CONSTRAINT release_statuses_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.release_statuses DROP CONSTRAINT release_statuses_pkey;
       public            diary    false    239            %           2606    56056    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            diary    false    224            #           2606    56049 ,   subscription_prices subscription_prices_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.subscription_prices
    ADD CONSTRAINT subscription_prices_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.subscription_prices DROP CONSTRAINT subscription_prices_pkey;
       public            diary    false    222            !           2606    56037     subscriptions subscriptions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_pkey;
       public            diary    false    220            1           2606    56131 *   translate_statuses translate_statuses_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.translate_statuses
    ADD CONSTRAINT translate_statuses_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.translate_statuses DROP CONSTRAINT translate_statuses_pkey;
       public            diary    false    235            +           2606    56102 *   user_subscriptions user_subscriptions_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.user_subscriptions DROP CONSTRAINT user_subscriptions_pkey;
       public            diary    false    230            )           2606    56070    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            diary    false    228            \           2606    56106    auths auths_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.auths
    ADD CONSTRAINT auths_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;
 E   ALTER TABLE ONLY public.auths DROP CONSTRAINT auths_user_id_foreign;
       public          diary    false    3369    231    228            ]           2606    56118    bans bans_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.bans
    ADD CONSTRAINT bans_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;
 C   ALTER TABLE ONLY public.bans DROP CONSTRAINT bans_user_id_foreign;
       public          diary    false    233    228    3369            o           2606    56310 C   chapter_review_likes chapter_review_likes_chapter_review_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.chapter_review_likes
    ADD CONSTRAINT chapter_review_likes_chapter_review_id_foreign FOREIGN KEY (chapter_review_id) REFERENCES public.chapter_reviews(id) ON UPDATE CASCADE;
 m   ALTER TABLE ONLY public.chapter_review_likes DROP CONSTRAINT chapter_review_likes_chapter_review_id_foreign;
       public          diary    false    256    3403    257            p           2606    56305 9   chapter_review_likes chapter_review_likes_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.chapter_review_likes
    ADD CONSTRAINT chapter_review_likes_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;
 c   ALTER TABLE ONLY public.chapter_review_likes DROP CONSTRAINT chapter_review_likes_user_id_foreign;
       public          diary    false    257    3369    228            m           2606    56295 2   chapter_reviews chapter_reviews_chapter_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.chapter_reviews
    ADD CONSTRAINT chapter_reviews_chapter_id_foreign FOREIGN KEY (chapter_id) REFERENCES public.chapters(id) ON UPDATE CASCADE;
 \   ALTER TABLE ONLY public.chapter_reviews DROP CONSTRAINT chapter_reviews_chapter_id_foreign;
       public          diary    false    249    3393    256            n           2606    56290 /   chapter_reviews chapter_reviews_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.chapter_reviews
    ADD CONSTRAINT chapter_reviews_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;
 Y   ALTER TABLE ONLY public.chapter_reviews DROP CONSTRAINT chapter_reviews_user_id_foreign;
       public          diary    false    3369    256    228            f           2606    56225 "   chapters chapters_comic_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.chapters
    ADD CONSTRAINT chapters_comic_id_foreign FOREIGN KEY (comic_id) REFERENCES public.comics(id) ON UPDATE CASCADE;
 L   ALTER TABLE ONLY public.chapters DROP CONSTRAINT chapters_comic_id_foreign;
       public          diary    false    3383    249    241            t           2606    56354 .   comic_creators comic_creators_comic_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comic_creators
    ADD CONSTRAINT comic_creators_comic_id_foreign FOREIGN KEY (comic_id) REFERENCES public.comics(id) ON UPDATE CASCADE;
 X   ALTER TABLE ONLY public.comic_creators DROP CONSTRAINT comic_creators_comic_id_foreign;
       public          diary    false    241    3383    263            u           2606    56359 0   comic_creators comic_creators_creator_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comic_creators
    ADD CONSTRAINT comic_creators_creator_id_foreign FOREIGN KEY (creator_id) REFERENCES public.creators(id) ON UPDATE CASCADE;
 Z   ALTER TABLE ONLY public.comic_creators DROP CONSTRAINT comic_creators_creator_id_foreign;
       public          diary    false    262    3411    263            d           2606    56208 *   comic_genres comic_genres_comic_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comic_genres
    ADD CONSTRAINT comic_genres_comic_id_foreign FOREIGN KEY (comic_id) REFERENCES public.comics(id) ON UPDATE CASCADE;
 T   ALTER TABLE ONLY public.comic_genres DROP CONSTRAINT comic_genres_comic_id_foreign;
       public          diary    false    241    247    3383            e           2606    56213 *   comic_genres comic_genres_genre_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comic_genres
    ADD CONSTRAINT comic_genres_genre_id_foreign FOREIGN KEY (genre_id) REFERENCES public.genres(id) ON UPDATE CASCADE;
 T   ALTER TABLE ONLY public.comic_genres DROP CONSTRAINT comic_genres_genre_id_foreign;
       public          diary    false    3389    247    246            j           2606    56261 (   comic_names comic_names_comic_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comic_names
    ADD CONSTRAINT comic_names_comic_id_foreign FOREIGN KEY (comic_id) REFERENCES public.comics(id) ON UPDATE CASCADE;
 R   ALTER TABLE ONLY public.comic_names DROP CONSTRAINT comic_names_comic_id_foreign;
       public          diary    false    3383    252    241            q           2606    56325 ,   comic_ratings comic_ratings_comic_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comic_ratings
    ADD CONSTRAINT comic_ratings_comic_id_foreign FOREIGN KEY (comic_id) REFERENCES public.comics(id) ON UPDATE CASCADE;
 V   ALTER TABLE ONLY public.comic_ratings DROP CONSTRAINT comic_ratings_comic_id_foreign;
       public          diary    false    258    3383    241            r           2606    56320 +   comic_ratings comic_ratings_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comic_ratings
    ADD CONSTRAINT comic_ratings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;
 U   ALTER TABLE ONLY public.comic_ratings DROP CONSTRAINT comic_ratings_user_id_foreign;
       public          diary    false    3369    228    258            a           2606    56186 >   comic_reading_statuses comic_reading_statuses_comic_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comic_reading_statuses
    ADD CONSTRAINT comic_reading_statuses_comic_id_foreign FOREIGN KEY (comic_id) REFERENCES public.comics(id) ON UPDATE CASCADE;
 h   ALTER TABLE ONLY public.comic_reading_statuses DROP CONSTRAINT comic_reading_statuses_comic_id_foreign;
       public          diary    false    241    3383    244            b           2606    56191 G   comic_reading_statuses comic_reading_statuses_reading_status_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comic_reading_statuses
    ADD CONSTRAINT comic_reading_statuses_reading_status_id_foreign FOREIGN KEY (reading_status_id) REFERENCES public.reading_statuses(id) ON UPDATE CASCADE;
 q   ALTER TABLE ONLY public.comic_reading_statuses DROP CONSTRAINT comic_reading_statuses_reading_status_id_foreign;
       public          diary    false    244    243    3385            c           2606    56181 =   comic_reading_statuses comic_reading_statuses_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comic_reading_statuses
    ADD CONSTRAINT comic_reading_statuses_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;
 g   ALTER TABLE ONLY public.comic_reading_statuses DROP CONSTRAINT comic_reading_statuses_user_id_foreign;
       public          diary    false    244    3369    228            k           2606    56278 ,   comic_reviews comic_reviews_comic_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comic_reviews
    ADD CONSTRAINT comic_reviews_comic_id_foreign FOREIGN KEY (comic_id) REFERENCES public.comics(id) ON UPDATE CASCADE;
 V   ALTER TABLE ONLY public.comic_reviews DROP CONSTRAINT comic_reviews_comic_id_foreign;
       public          diary    false    241    254    3383            l           2606    56273 +   comic_reviews comic_reviews_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comic_reviews
    ADD CONSTRAINT comic_reviews_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;
 U   ALTER TABLE ONLY public.comic_reviews DROP CONSTRAINT comic_reviews_user_id_foreign;
       public          diary    false    3369    254    228            ^           2606    56156 #   comics comics_comic_type_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comics
    ADD CONSTRAINT comics_comic_type_id_foreign FOREIGN KEY (comic_type_id) REFERENCES public.comic_types(id) ON UPDATE CASCADE;
 M   ALTER TABLE ONLY public.comics DROP CONSTRAINT comics_comic_type_id_foreign;
       public          diary    false    241    3379    237            _           2606    56161 '   comics comics_release_status_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comics
    ADD CONSTRAINT comics_release_status_id_foreign FOREIGN KEY (release_status_id) REFERENCES public.release_statuses(id) ON UPDATE CASCADE;
 Q   ALTER TABLE ONLY public.comics DROP CONSTRAINT comics_release_status_id_foreign;
       public          diary    false    239    3381    241            `           2606    56166 )   comics comics_translate_status_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.comics
    ADD CONSTRAINT comics_translate_status_id_foreign FOREIGN KEY (translate_status_id) REFERENCES public.translate_statuses(id) ON UPDATE CASCADE;
 S   ALTER TABLE ONLY public.comics DROP CONSTRAINT comics_translate_status_id_foreign;
       public          diary    false    235    241    3377            s           2606    56346 )   creators creators_creator_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.creators
    ADD CONSTRAINT creators_creator_role_id_foreign FOREIGN KEY (creator_role_id) REFERENCES public.creator_roles(id) ON UPDATE CASCADE;
 S   ALTER TABLE ONLY public.creators DROP CONSTRAINT creators_creator_role_id_foreign;
       public          diary    false    262    3409    260            g           2606    56235     frames frames_chapter_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.frames
    ADD CONSTRAINT frames_chapter_id_foreign FOREIGN KEY (chapter_id) REFERENCES public.chapters(id) ON UPDATE CASCADE;
 J   ALTER TABLE ONLY public.frames DROP CONSTRAINT frames_chapter_id_foreign;
       public          diary    false    249    250    3393            h           2606    56250 .   like_chapters like_chapters_chapter_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.like_chapters
    ADD CONSTRAINT like_chapters_chapter_id_foreign FOREIGN KEY (chapter_id) REFERENCES public.chapters(id) ON UPDATE CASCADE;
 X   ALTER TABLE ONLY public.like_chapters DROP CONSTRAINT like_chapters_chapter_id_foreign;
       public          diary    false    249    251    3393            i           2606    56245 +   like_chapters like_chapters_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.like_chapters
    ADD CONSTRAINT like_chapters_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;
 U   ALTER TABLE ONLY public.like_chapters DROP CONSTRAINT like_chapters_user_id_foreign;
       public          diary    false    251    228    3369            V           2606    56043 ?   subscription_prices subscription_prices_subscription_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.subscription_prices
    ADD CONSTRAINT subscription_prices_subscription_id_foreign FOREIGN KEY (subscription_id) REFERENCES public.subscriptions(id) ON UPDATE CASCADE;
 i   ALTER TABLE ONLY public.subscription_prices DROP CONSTRAINT subscription_prices_subscription_id_foreign;
       public          diary    false    222    220    3361            Y           2606    56091 :   user_subscriptions user_subscriptions_acquiring_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_acquiring_id_foreign FOREIGN KEY (acquiring_id) REFERENCES public.acquirings(id) ON UPDATE CASCADE;
 d   ALTER TABLE ONLY public.user_subscriptions DROP CONSTRAINT user_subscriptions_acquiring_id_foreign;
       public          diary    false    218    3359    230            Z           2606    56096 C   user_subscriptions user_subscriptions_subscription_price_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_subscription_price_id_foreign FOREIGN KEY (subscription_price_id) REFERENCES public.subscription_prices(id) ON UPDATE CASCADE;
 m   ALTER TABLE ONLY public.user_subscriptions DROP CONSTRAINT user_subscriptions_subscription_price_id_foreign;
       public          diary    false    3363    222    230            [           2606    56086 5   user_subscriptions user_subscriptions_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_subscriptions
    ADD CONSTRAINT user_subscriptions_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE;
 _   ALTER TABLE ONLY public.user_subscriptions DROP CONSTRAINT user_subscriptions_user_id_foreign;
       public          diary    false    3369    230    228            W           2606    56071    users users_avatar_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_avatar_id_foreign FOREIGN KEY (avatar_id) REFERENCES public.avatars(id) ON UPDATE CASCADE;
 G   ALTER TABLE ONLY public.users DROP CONSTRAINT users_avatar_id_foreign;
       public          diary    false    228    226    3367            X           2606    56076    users users_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE CASCADE;
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_foreign;
       public          diary    false    224    3365    228               ,   x�3�,NJ-�M,��Ʌ��E�y�\F��9i� 	������  ��         P   x��t7�L��I
�2J
6�L���4�J
/)
F�VFED�zzx�rq� U{���xx�%U&9�rs��qqq ]�s         d   x�e�1@0E��_��ABo�0&E�~3/�kϭ�V&�%��	_x����t�%�𖼅w��'����=���|$���XS�r)���Ӷ�_���Cc         U   x�3�4202�50"�� �8/̸�xa��}v_칰Ho�����;.lU��x��¾�@��@�����.̿0�ӄ+F��� DZ*[      /   /   x��I   �wWC����X����X3^�O|cׄ�+��bD      .   .  x�}U[NA��b�,{1r�#0k�L�(R�	��>�,�/~���s�!U�c<&��L?������Ǐ��"���s/����>�R��K)���R�},%>+Y�0���aħ~�Å�_�ezQ�za��w����V��ku���o�^�{��\�8���� 0g^D�C(|�����q�r��g^��v��垆�,Ὸ���DD�fk�B��Bꤐ�@���b�F����2Ӛr��x3қ2�����F��4�� v�.&�æ��p�Q/�,�>�S�;hd�� ��	yG�"��}�����C/����;R�J'4(a_Z��]��_�yM`��3${�
�ћ-����C'���6�Q~f p�0fV�xq�,^��c�T���P�GK��û�����A��u��р�t���7	�Y
�-`J�F!�v�Q!4����9V|}@���ɩE�L5����8udׯ |l%UN{R����k��9���b=�(������1E�� .�h�!x�����+yZ�ΰ6eƣ͸��[�!�ʌ�ڧ��+h�����[��
>rd ��k�6 ���s�v�+�X���N>q&7�	�GA�:��׉
?
km��z[����1d|��2���G�R!�>��DX��k�3�g�t�6����#����o�2�c|�S�rX�9�Tb��G)n�W��mgm<��t���I=��i�
wS��`�NN5CM��)>�&�|��rv]�m����st{��XE�ٵ����Ę�����7�?�T+��D�w� \����*r)w	�n
�e��h�j�J      '   �  x�}�[r�@E��UhviF/��,�@\��T%IU*�8+�1� y=;����������~�nT�"�F[jhIM���E�����z�T�Nu~��W������ӿ��Z��&�F=�q��U�]ig�4����	Ć�K�z\�v���x�෋2�I�q�;�p�a��ΠlDg�����E�+.����^k}G{���>�f�"*�ƥoRJ8�ډ"��z+*]yW�����p��?���q���Ȩ�&���a����8j�6�@�(�* /#%�G#ע�kߢ>��H�G0��}��1:�Ҁ�T��q��{������UH�_|�<A�Z���!� ?�}-���<nN�w:�1�$��w�����s��u@����:|� ��}#&�'�h�hf�.KnA/%]�	aT�o�4>s���BX�L<����Jߢ<z(�ry��GU��g� (��!�j���[��{�.�Qվ���~�j-c����"6�q2w!�:8Km^Y$Ԟ�d�n!�Z����:���tn?�$Q@�ah�֩�Me�����=�w
��x�S�u�[]ޯ�X2���!�v�=!M(׹�K�ہh^�-ml	�S�=H<$]�I!d4h��?�F���R�ץoZ��8{S6Q��O��/��i�m8��-�az�$6����$�o���^�rh�\�p<t������s��ȩ�fd�t2���IWgs��:���A�      5   &   x�3�4�2�4bc.# ����L���6�1z\\\ f{�      %   \   x����0��0L�8���t�9*?$죢�B�`C��^�۪?�m�9]QB<kY����� ��X'�a;l��B;l��{����]��} G      *   �  x�eTKO�V^�_q�T�*��S@0�.`�*ucO��8REÊ�6	���d2`
�<!��d�޹Yy��$�!���{:@9���{�w>��'�S��+34K�)-��o{��	���y�
��o��Ͻ�7O@r9Fx�;�4��F\���oc��bUݫN������A��K�CGU����2SU���<�[.�Q��{B�1/��_NXg�FM[���%[>���Ĺx��@�j�_H�ux��6W?�6+c�_���"��^��.�+�c�O��Ҩ��ȏ��%�t�f��3zB3�`%D�P]� pJS`�4�?�������ՊR���l�����C��K�&���ǧ7�D�ґA�ɏ�nqT�x��Z�M!feK�le#��d�[�~b�+����SÖ�j�ۖ��� �[Vv
���4�����{K[����i��v�F
l3̄��1��<��󣹉�^a�B8�ZFyI����U����tyE��C�.R�2Q	Ud�+_���f��*(�^	�~ϸb+������z<�myޖ���-[������Й�>H��[�斴<w��#��1w��Of�@I10�a��:c�G�w'XS>��=��/xI_@�!�^Qi	[B�9K��A	J�F��J�j{��$�an��]��O_�����e.��-o�r
�C�X��h�=���q�����x�^?]h�/c��E��H�g�!bhF�4��Jy�(b��n~6�P�n��>0[���{�q��2�����x/�!/$���^r�n�-p�B;��.�lS6i��<��P�}2MyPvY�$��7b��Q�ى4֖I#�46��i{���K}�� z�_����#��G���
�,����P����^�Iud4y�d)�h�%xI Vƅ��F�<k䍌Q0�A¦t�X0��;0�M3gYbD�b�D��pS8n.�?tX�ys�]c5�`���O��*��ܝܠ�!/%��������5RQI�o�(̾O4�>H�6�Pf��L�������F$An�����S���Ǐj�����<��6�&���F9yC�\��v��}�v���_�<.���1Gi;9l�0��9|rfA�֧+�#8�
8
���(�4K�v��2(ɶqxA��=Z�Hl�
� �������/�z�,      0   ;   x����0�jr_D9�w��s��J���oO�.E=���GOu1�h�=l:��      "      x�3�4�4�2��`2F��� !g�      ,     xڍU[n�P�vVq�o��)���C)(U"��P�į�ڍc����3c�r[��!���y��ip��n��,��������
�mc�~z�,v؉�P[���J<$V����K��K?�W��9�me�_೰��٭����g̃V�X־*�B��C�~ζد��a7�� �g����p�����ގ� $�;?�8D�>r�9j�1k���\���f@2��ǱjT-�Gh �B䯝j��᳏pN�	q��N��WRTQ�ڂ�{����Z$8F}b)P���l�ޏC"�����Fr1m�5$4�.�����T��o��;Ԛ�q�l��YpFZ7)@�����A�2�P�Ąڍ�,�|�4���怍9�ǎL���GK@�VV�.n����*�Lm�~�?5 O!AQ2�� ��`��*Y�r��d
�%��_�+:�(έ�'m@��	��d�F�j�.�W�v>$�y��wR/��g������Ъ,u+�A�l�����I#t>�ߩq	7 �Q�_r(��#"@�H6�I�$�V�,p~N�%ú?�M��=3�v�p)����Vy��!y_"���t��;�8k:�\�}#,�tw&�Z���� ��̤C���%��ML.K�)m۞V���N��z�4�ݥ�|o��nd>�g��I���v|vŚ�KM�vPѲ�>$��ZO���ä��A_��r�i�LQa;i 7�R����g����F%'�r�Tv'K�����ctӋʐ��q(�E����I��~s2���0�t         w   x�]̱� ���n
'0QQ�q����DF �
�m�+41W�/��ƸѰ����"箸��2�8�"x�:q��b������Z�_:W}�D=��*��85�8i�
{?���Wc,         �  xڝX�N#G]��h�6�c�l�#�,� 	�LHv~K�D�b&�ʾ�h0~����%��ܪ�6f�QM��[��=��۔
棙��M��fn���fd��ض�4���co��̈́�33�m�����,?,���-�G6��Y8����%ȍ����c9)��@6w����3��S6b�,��m1��<��^.�,�T��b��z`>!�K�#�cY����<H��*S�
�x2��bt9v&Z��D��~�]M�vd/�ƁC �cƌ���-$�#0{��@��<��[�."����W`ˢXp��;���k	<��"� a.&��+�[Iv0��p$;�M d�4���V�1��埢�I��Q�Q^���xf;�� 7�[�"�A̫@*;� �FA"��@VO�1
(�\�DVŤH���p��0T�_�f�q�\��=L"y}��F�����@*'	PE)���<�XT|��S�M�Ii&Y��,
x_Y�����L��l����v�T����l�~��q��{������Q�{P�h4�Ӎ��0lV�Gau�\�Tm���v�k���W�����ו���V)|U���M�\��	���J[����
�B�PZ+�g���gH��I@�T�����P@�6pT����,	~�8�wD��d��x�V����;@Tt�����Oe*�F�R���t!�EP��|E{ �"jsJ:K��'9&�`B*�iYL-�b��(��6�)�i,��=�J�U�#��Zd2��@��O@�Iȩ����f津��%�4��+nഄL#aj7u)e�2E_!wg(tG��=�0�X&�����*f�/z�j���<�}���ymk��l��$����yAK�$�b�ܹ��� ����{���N�>��B�f1��m9���`��]�u<��{q�'�1wW�%���RW 
|쉣�z\\n1�#،%sn��}���5���dx@YĹ�y@�K���0\�i-{�Y��z�^}}vp�{P��8n�6��$
/�m̇@����)e9q�H��hE� ^�Jʤׁ4�X��!}2�Z�2
aN#�+���埰#%��h�l�������v;>Z�y��$��$?˹��g*9��ͤF,����Ğ������	����Wn��f�j ��]�
���L���8-(�	0�w'g��%'�_�nJHjōX`�z"<��k_��P��eG�P����Q�@vdE�<�c.�~�r�H5af#B-
��uB����yu�hT͏A�!Sx�1����'���3bٗ*d�����~G]R������D��r���QCy|�F��z^C.��7�������I�vX�998=8��LaoAث
�f;t�IԿ�� ���^�C�AKr�	G*�&I�ٱ]��M�p�@���­zg������I	?.�<AWbcc���K]�YT8�u���4�(йr�i<r��E�A��������Âb�J�bED9c�;�k\]�쎹~��ؔ�]�9�k"cU�5'q���������h�ٌ<:�����^�	�R\r?s�P�cw3}�y�^�De����m6��H����[)%	��ƱE�?[�i�#��j�Q�j��gu���_-k��m�oh�vn`���Y��1N�����6OA�UD�C+ȍ�nb���O~������������_q�t�JTd�vm
��uZApE�/��#��3����9&��:�:E��G��/?T�2'te�Ŷ=ӑLS���[hn�ˍxB	�A�U�:�9���r���'��3����Y�,���O|�l�=����~��+�q�au7�V�k�0�BƎ��DG��fEg�L&��h4b�;N��-V6���O�0म��B8V
o���z�:���>/9	��P��?�_ ��/'�������5��yW=��z�q����*��bg�Z9T��:n��*��չ^	3c�7�L��h�{��6���c?=��GR����Z���h�%�
s�ߖ���oΚg'a���WO��U������"d��      2   A   x�3�0���[.l��ta��{��8/L��	��w��˘��ҋ�@�}�]�{aǅ]\1z\\\ � ?      4   ,   x�3�OM*����4�2��K,K-��9���*9��b���� Ǐ	`      (   �   x�m�K
�0��urcWk�wq��0f���EV����	Ă�T��ﳥ�����O����W� �p5::��\8o�E�bs��(��D��v��b3s3����"\�+��I��nmn���E��g��=W�.�x�o��      $   �   x�uP[NA��>�'0�(��p��G4 &|������q_\��FV/�����nOoUWU�r{F�J�3K��D�-��쎍j���ر��7�� �����b=�[��AuĶkl�YBt֌ݿ�.ͧF��l�_������O�����)�#W��A#mF�B�Z�S�k��JԽ=yǦ�p���s֟���D ���7�񃨁_�1�GG�}I3��	E<��"0҂ՉF�d6�w�KU��      )   /   x��I   �wWC����X����X3^�O|cׄ�+��bD         S  x�u��n�0E��c*{�"�R�2�M��Ƥ�ߗ"��1�$�s<�{-�H˴a�-�m�w�[�~�!��6���_x�6�o�47SØ��gA�<�C�&�&ԦšC������O�\̨.P����hX3������Ѹ9�3x-�=�ơ9;�B�}��[SL.-�B���#o�Ghm�1����w��A���:��5��~,���|UH��kUSU���|1J����*�T�|��~F�J��gtt.Ъ��7�_'�m��c�?N�-�h����A+6
Ȯ�#G�;�ZH�}״����K�jV�������!�Oj(I����[(�oUU�(���      !      x�3估��M6\������ Z�         :   x�3�0��.컰�b����rq^��(��w_���z��b��~�=... N��            x�3�LL����2�,-N-����� : �         B   x�5���0�jj��Ź]��1`�P!R��ݣ�ILL�:��+�<��~�J�_T�S�v�ˢ�I?���      
   5  xڭRKN�0]ǧ������ ��(�,�"q����&�s�77��ꦛ�3~3����s8I%�'lQJn� `ů���DL%CcQYlP����]$Xh�v|fY���ڜ+ç��wd����J��{��y�2_�3Kf,�6�x�H�	3Vi��I��Z�E���vb����J��j�� �8l�X5x��Ls�"��+Z�4�����.'����H�~(kY�
�����m��p������p��55~���Dm}ċnK�5�����b�h-�Y�lhQc��Ꟊ
�Ɓnx��'���=5���C�         ?   x�3�0��.컰�b����rq^�waۅ� %�^lR��H5 �6U�b���� L�#�         l   x�3�4C##]S R00�#��B,Ə���R���Jt�M6��K6
�M�� ���ܣ�8A�T,���45h�[v�qT�ļ�ܔ�(��l�mQ�\1z\\\ �R)�           x�]��r�0 E��;\�$ȣ�N��"�����(��^���3�t:n�=�s0H��T��c��J(z0#r���<�_�bV3�E���b�R;�#�v���5:T���{^�X! �9��p/��_�bʠ�v�ɉ�^Bn`��m;ڭ��J�����W�Z+]V� �����!��^|H�Ze�h�s]jgrm�q̈́V�}<�K֮K�5�f���}����'�������ٮ����:J�^MP�Kv�Pʩ4G�֥%�UT�,�}�˥F��'T��}t�     