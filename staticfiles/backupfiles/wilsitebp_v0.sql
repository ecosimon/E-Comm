PGDMP     !    +                v           wilsite    9.6.5    9.6.5 �    $	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            %	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            &	           1262    34265    wilsite    DATABASE     �   CREATE DATABASE wilsite WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE wilsite;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            '	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            (	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    34266 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    34269    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    3    185            )	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    186            �            1259    34271    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    34274    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    187    3            *	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    188            �            1259    34276    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    34279    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    3    189            +	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    190            �            1259    34281 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    34287    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    34290    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    192    3            ,	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    193            �            1259    34292    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    3    191            -	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    194            �            1259    34294    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    34297 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    195            .	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    196            �            1259    34480 	   cart_cart    TABLE     �   CREATE TABLE cart_cart (
    id integer NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    checked_out boolean NOT NULL
);
    DROP TABLE public.cart_cart;
       public         postgres    false    3            �            1259    34478    cart_cart_id_seq    SEQUENCE     r   CREATE SEQUENCE cart_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public       postgres    false    3    213            /	           0    0    cart_cart_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE cart_cart_id_seq OWNED BY cart_cart.id;
            public       postgres    false    212            �            1259    34488 	   cart_item    TABLE     b  CREATE TABLE cart_item (
    id integer NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(18,2) NOT NULL,
    object_id integer NOT NULL,
    cart_id integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT cart_item_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT cart_item_quantity_check CHECK ((quantity >= 0))
);
    DROP TABLE public.cart_item;
       public         postgres    false    3            �            1259    34486    cart_item_id_seq    SEQUENCE     r   CREATE SEQUENCE cart_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_item_id_seq;
       public       postgres    false    215    3            0	           0    0    cart_item_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE cart_item_id_seq OWNED BY cart_item.id;
            public       postgres    false    214            �            1259    34299    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    34306    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    197    3            1	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    198            �            1259    34308    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    34311    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    3    199            2	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    200            �            1259    34313    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    34319    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    3    201            3	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    202            �            1259    34321    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    34327    landing_page_newslettersub    TABLE     �   CREATE TABLE landing_page_newslettersub (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    date_added timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL
);
 .   DROP TABLE public.landing_page_newslettersub;
       public         postgres    false    3            �            1259    34333 "   landing_page_newsletteruser_id_seq    SEQUENCE     �   CREATE SEQUENCE landing_page_newsletteruser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.landing_page_newsletteruser_id_seq;
       public       postgres    false    204    3            4	           0    0 "   landing_page_newsletteruser_id_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE landing_page_newsletteruser_id_seq OWNED BY landing_page_newslettersub.id;
            public       postgres    false    205            �            1259    34335    landing_page_sampleshirt    TABLE     �   CREATE TABLE landing_page_sampleshirt (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    descriptions character varying(255) NOT NULL,
    photo_url character varying(100)
);
 ,   DROP TABLE public.landing_page_sampleshirt;
       public         postgres    false    3            �            1259    34341    landing_page_sampleshirt_id_seq    SEQUENCE     �   CREATE SEQUENCE landing_page_sampleshirt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.landing_page_sampleshirt_id_seq;
       public       postgres    false    206    3            5	           0    0    landing_page_sampleshirt_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE landing_page_sampleshirt_id_seq OWNED BY landing_page_sampleshirt.id;
            public       postgres    false    207            �            1259    34343    shopping_page_shoppingcart    TABLE       CREATE TABLE shopping_page_shoppingcart (
    id integer NOT NULL,
    number_of_items integer,
    name_of_items character varying(255) NOT NULL,
    items_id integer NOT NULL,
    CONSTRAINT shopping_page_shoppingcart_number_of_items_check CHECK ((number_of_items >= 0))
);
 .   DROP TABLE public.shopping_page_shoppingcart;
       public         postgres    false    3            �            1259    34347 !   shopping_page_shoppingcart_id_seq    SEQUENCE     �   CREATE SEQUENCE shopping_page_shoppingcart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.shopping_page_shoppingcart_id_seq;
       public       postgres    false    208    3            6	           0    0 !   shopping_page_shoppingcart_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE shopping_page_shoppingcart_id_seq OWNED BY shopping_page_shoppingcart.id;
            public       postgres    false    209            �            1259    34349    shopping_page_shopshirts    TABLE     �  CREATE TABLE shopping_page_shopshirts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    descriptions character varying(255) NOT NULL,
    photo_url character varying(100),
    price numeric(4,2) NOT NULL,
    available boolean NOT NULL,
    stock integer,
    created_at timestamp with time zone NOT NULL,
    CONSTRAINT shopping_page_shopshirts_stock_check CHECK ((stock >= 0))
);
 ,   DROP TABLE public.shopping_page_shopshirts;
       public         postgres    false    3            �            1259    34356    shopping_page_shopshirts_id_seq    SEQUENCE     �   CREATE SEQUENCE shopping_page_shopshirts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.shopping_page_shopshirts_id_seq;
       public       postgres    false    3    210            7	           0    0    shopping_page_shopshirts_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE shopping_page_shopshirts_id_seq OWNED BY shopping_page_shopshirts.id;
            public       postgres    false    211            0           2604    34358    auth_group id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    185            1           2604    34359    auth_group_permissions id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187            2           2604    34360    auth_permission id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189            3           2604    34361    auth_user id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    191            4           2604    34362    auth_user_groups id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    192            5           2604    34363    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    195            @           2604    34483    cart_cart id    DEFAULT     ^   ALTER TABLE ONLY cart_cart ALTER COLUMN id SET DEFAULT nextval('cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart_cart ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            A           2604    34491    cart_item id    DEFAULT     ^   ALTER TABLE ONLY cart_item ALTER COLUMN id SET DEFAULT nextval('cart_item_id_seq'::regclass);
 ;   ALTER TABLE public.cart_item ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214    215            6           2604    34364    django_admin_log id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197            8           2604    34365    django_content_type id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199            9           2604    34366    django_migrations id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201            :           2604    34367    landing_page_newslettersub id    DEFAULT     �   ALTER TABLE ONLY landing_page_newslettersub ALTER COLUMN id SET DEFAULT nextval('landing_page_newsletteruser_id_seq'::regclass);
 L   ALTER TABLE public.landing_page_newslettersub ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204            ;           2604    34368    landing_page_sampleshirt id    DEFAULT     |   ALTER TABLE ONLY landing_page_sampleshirt ALTER COLUMN id SET DEFAULT nextval('landing_page_sampleshirt_id_seq'::regclass);
 J   ALTER TABLE public.landing_page_sampleshirt ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206            <           2604    34369    shopping_page_shoppingcart id    DEFAULT     �   ALTER TABLE ONLY shopping_page_shoppingcart ALTER COLUMN id SET DEFAULT nextval('shopping_page_shoppingcart_id_seq'::regclass);
 L   ALTER TABLE public.shopping_page_shoppingcart ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208            >           2604    34370    shopping_page_shopshirts id    DEFAULT     |   ALTER TABLE ONLY shopping_page_shopshirts ALTER COLUMN id SET DEFAULT nextval('shopping_page_shopshirts_id_seq'::regclass);
 J   ALTER TABLE public.shopping_page_shopshirts ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210            	          0    34266 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    185   ��       8	           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    186            	          0    34271    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    187   �       9	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    188            	          0    34276    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    189   8�       :	           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);
            public       postgres    false    190            		          0    34281 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    191   �       
	          0    34287    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    192   �       ;	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    193            <	           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 2, true);
            public       postgres    false    194            	          0    34294    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    195    �       =	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    196            	          0    34480 	   cart_cart 
   TABLE DATA               <   COPY cart_cart (id, creation_date, checked_out) FROM stdin;
    public       postgres    false    213   =�       >	           0    0    cart_cart_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('cart_cart_id_seq', 1, false);
            public       postgres    false    212            !	          0    34488 	   cart_item 
   TABLE DATA               [   COPY cart_item (id, quantity, unit_price, object_id, cart_id, content_type_id) FROM stdin;
    public       postgres    false    215   Z�       ?	           0    0    cart_item_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('cart_item_id_seq', 1, false);
            public       postgres    false    214            	          0    34299    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    197   w�       @	           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 30, true);
            public       postgres    false    198            	          0    34308    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   ��       A	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 11, true);
            public       postgres    false    200            	          0    34313    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    201   q�       B	           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 23, true);
            public       postgres    false    202            	          0    34321    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    203   ��       	          0    34327    landing_page_newslettersub 
   TABLE DATA               J   COPY landing_page_newslettersub (id, email, date_added, name) FROM stdin;
    public       postgres    false    204   }�       C	           0    0 "   landing_page_newsletteruser_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('landing_page_newsletteruser_id_seq', 10, true);
            public       postgres    false    205            	          0    34335    landing_page_sampleshirt 
   TABLE DATA               O   COPY landing_page_sampleshirt (id, title, descriptions, photo_url) FROM stdin;
    public       postgres    false    206   ��       D	           0    0    landing_page_sampleshirt_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('landing_page_sampleshirt_id_seq', 11, true);
            public       postgres    false    207            	          0    34343    shopping_page_shoppingcart 
   TABLE DATA               [   COPY shopping_page_shoppingcart (id, number_of_items, name_of_items, items_id) FROM stdin;
    public       postgres    false    208   _�       E	           0    0 !   shopping_page_shoppingcart_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('shopping_page_shoppingcart_id_seq', 1, true);
            public       postgres    false    209            	          0    34349    shopping_page_shopshirts 
   TABLE DATA               t   COPY shopping_page_shopshirts (id, title, descriptions, photo_url, price, available, stock, created_at) FROM stdin;
    public       postgres    false    210   |�       F	           0    0    shopping_page_shopshirts_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('shopping_page_shopshirts_id_seq', 2, true);
            public       postgres    false    211            F           2606    34372    auth_group auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    185    185            K           2606    34374 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    187    187    187            N           2606    34376 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    187    187            H           2606    34378    auth_group auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    185    185            Q           2606    34380 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    189    189    189            S           2606    34382 $   auth_permission auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    189    189            [           2606    34384 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    192    192            ^           2606    34386 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    192    192    192            U           2606    34388    auth_user auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    191    191            a           2606    34390 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    195    195            d           2606    34392 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    195    195    195            X           2606    34394     auth_user auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    191    191            }           2606    34485    cart_cart cart_cart_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY cart_cart
    ADD CONSTRAINT cart_cart_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cart_cart DROP CONSTRAINT cart_cart_pkey;
       public         postgres    false    213    213            �           2606    34495    cart_item cart_item_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY cart_item
    ADD CONSTRAINT cart_item_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_pkey;
       public         postgres    false    215    215            g           2606    34396 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    197    197            j           2606    34398 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199    199            l           2606    34400 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199    199            n           2606    34402 (   django_migrations django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    201    201            q           2606    34404 "   django_session django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    203    203            t           2606    34406 ;   landing_page_newslettersub landing_page_newsletteruser_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY landing_page_newslettersub
    ADD CONSTRAINT landing_page_newsletteruser_pkey PRIMARY KEY (id);
 e   ALTER TABLE ONLY public.landing_page_newslettersub DROP CONSTRAINT landing_page_newsletteruser_pkey;
       public         postgres    false    204    204            v           2606    34408 6   landing_page_sampleshirt landing_page_sampleshirt_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY landing_page_sampleshirt
    ADD CONSTRAINT landing_page_sampleshirt_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.landing_page_sampleshirt DROP CONSTRAINT landing_page_sampleshirt_pkey;
       public         postgres    false    206    206            y           2606    34410 :   shopping_page_shoppingcart shopping_page_shoppingcart_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY shopping_page_shoppingcart
    ADD CONSTRAINT shopping_page_shoppingcart_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.shopping_page_shoppingcart DROP CONSTRAINT shopping_page_shoppingcart_pkey;
       public         postgres    false    208    208            {           2606    34412 6   shopping_page_shopshirts shopping_page_shopshirts_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY shopping_page_shopshirts
    ADD CONSTRAINT shopping_page_shopshirts_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.shopping_page_shopshirts DROP CONSTRAINT shopping_page_shopshirts_pkey;
       public         postgres    false    210    210            D           1259    34413    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    185            I           1259    34414 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    187            L           1259    34415 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    187            O           1259    34416 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    189            Y           1259    34417 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    192            \           1259    34418 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    192            _           1259    34419 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    195            b           1259    34420 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    195            V           1259    34421     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    191            ~           1259    34506    cart_item_cart_id_157ecf5f    INDEX     L   CREATE INDEX cart_item_cart_id_157ecf5f ON cart_item USING btree (cart_id);
 .   DROP INDEX public.cart_item_cart_id_157ecf5f;
       public         postgres    false    215                       1259    34507 "   cart_item_content_type_id_5737916f    INDEX     \   CREATE INDEX cart_item_content_type_id_5737916f ON cart_item USING btree (content_type_id);
 6   DROP INDEX public.cart_item_content_type_id_5737916f;
       public         postgres    false    215            e           1259    34422 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    197            h           1259    34423 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    197            o           1259    34424 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    203            r           1259    34425 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    203            w           1259    34426 ,   shopping_page_shoppingcart_items_id_ce044266    INDEX     p   CREATE INDEX shopping_page_shoppingcart_items_id_ce044266 ON shopping_page_shoppingcart USING btree (items_id);
 @   DROP INDEX public.shopping_page_shoppingcart_items_id_ce044266;
       public         postgres    false    208            �           2606    34427 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    2131    189    187            �           2606    34432 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    187    185    2120            �           2606    34437 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2156    189    199            �           2606    34442 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    192    185    2120            �           2606    34447 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    192    2133    191            �           2606    34452 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    2131    195    189            �           2606    34457 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    191    2133    195            �           2606    34496 4   cart_item cart_item_cart_id_157ecf5f_fk_cart_cart_id    FK CONSTRAINT     �   ALTER TABLE ONLY cart_item
    ADD CONSTRAINT cart_item_cart_id_157ecf5f_fk_cart_cart_id FOREIGN KEY (cart_id) REFERENCES cart_cart(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_cart_id_157ecf5f_fk_cart_cart_id;
       public       postgres    false    215    2173    213            �           2606    34501 F   cart_item cart_item_content_type_id_5737916f_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY cart_item
    ADD CONSTRAINT cart_item_content_type_id_5737916f_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_content_type_id_5737916f_fk_django_content_type_id;
       public       postgres    false    2156    215    199            �           2606    34462 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    197    199    2156            �           2606    34467 5   django_admin_log django_admin_log_user_id_c564eba6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk;
       public       postgres    false    191    197    2133            �           2606    34472 N   shopping_page_shoppingcart shopping_page_shoppi_items_id_ce044266_fk_shopping_    FK CONSTRAINT     �   ALTER TABLE ONLY shopping_page_shoppingcart
    ADD CONSTRAINT shopping_page_shoppi_items_id_ce044266_fk_shopping_ FOREIGN KEY (items_id) REFERENCES shopping_page_shopshirts(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.shopping_page_shoppingcart DROP CONSTRAINT shopping_page_shoppi_items_id_ce044266_fk_shopping_;
       public       postgres    false    2171    208    210            	      x������ � �      	      x������ � �      	   �  x�}�]n�0���Sp�*��>��*�X)DUn_�^�]C�ow&c%��>i���>����%���{��L�ܚ�5�rR 5�Ws7��̛�fzt���H�52��Dc�Ԛ��M�һ����cx���^��#j�h�u���L"���T��Ƿ��)]� nw���/C��>��5��	J�"UF�"=�S���/|�ٸ��'�J 0�����-=V{������b&�P	�A���uߏ`�xJ�0�)O����1��ϸu�"*�H��T�N8�C������!��G-���]IV�i�#7��f�7��]A0S�KU��?���S�ӇT�q*�­݆��:���[��S�f_���.���;�۝<c1Ʈo�Kc/X)dWM�<��x&�q6B����<N�      		     x�m�KO�@���Sp荴�ξ����b@_���Tʣ`��V�~zKԋ1��a���o�l^��_�2A!}&�?�De��p5}�?Ǉ�W�j�zR��Kq3����wZ�|�Ȳj��m��@� D �A#�� �D* NJ��yVB"�6��(]�J�ֆS��i���dDä�S��I����ח7����1q��m;T���u��\ߏWݻ�\�ŨJ�@CL����0��Z�jPeP�Bθ@��uYn��r�����q���N���4��y�9�<�60\U      
	      x������ � �      	      x������ � �      	      x������ � �      !	      x������ � �      	   G  x����n�0���S�����\��=��!XF�"���9�A޽4)7�,9��0�8*�-?"��"k6�Hإ�T����e���x��f�<����ǯ*T�] �`�1٩�z�գ&�Z��xO�%��#�0N�z��,2�qt���%Z5�y�8��������Y��ǅk;Bd<��
��.U?��zY��"�!I�M�`?����m.�5��r�:�ۧc�>��C�~{����l�����#`��Ga�콻�Z��;=bA8���]w\rӭ;eMErqCu�7�ے��$yD8gmS�XkC��e���9lv��*����`2O�JL%��nۺo�:=��a�yV .EXw~�A�\�F��Ӯ?����Rj�i�t�K��[��� _d�vBH�gkвz-�� �؈�(�x��A>I���T�W���iA��Q�/��^��L��Y:%��qs��5���L?�9M ���NBP�۩�V<ܔ�#�B>W<�����%���rh	&�Hl�*��촳m��꧹���q�ZJ]�H�B$o��Xr�����������n�Bv�:(U��l?�j������      	   �   x�m��
�0F�����"H�BW�ڒ���޺!*�.'�8�~	b��L&�U���A5����%ׂ�������i6�_�(϶~<C�ԇ��<C�F6c������4��:1��BK�$Ӛ鶠C.��6�ME�V�7u�·"� ��[.      	     x����n� �����Ě���e%��(��5Nw��;����n�7�2��3g,^�a	ò�O! ��ڥ�]A��tB:�R�ʖJZ��@��,��ZT�()D᛾�K2I!?���>�w7�~|���o�}{��6ҝp�pi���(hUBUk��|���Ma���q�z��?�ÙO}��+J�P��K�}�=�TJ�\�Y)򑒖lg����0(Q$�]������[.��}�&�A&�
�8�_�v^�ͩ���}3�滶��8��f�y�]b��_�E���1�f7�'[),�P1�����,�E燦�nb�{R��#��D�tI ��S�j#��'H��7�<SD-EM����&X�onB���|e��I��zcAl,(���$�JR��)f�¿�X��J��@�)�2���1#!���" �A��`�A�B�cF�&ta��~G��9����$��s��E|��ު�lM�FU�)1ki�%w�����@�Za����apX��Ν�	�u��U�I���< A��      	   �  x���ˎ�8�u�S�
���,Z��(QC�R*	h6���\��������z6,�,a}:G�oB:��c��u�BË�4��9��κr���Y*[$�Ng����J��p������p�|�E���H��Gy×ѽb�zʎپ�g]vC�0ܥqx�e �̹�w�J�(3wW��
���n��c���s� ���\0P�G�;�j��N��o�x9�n� ]�J� %�?�}����]�"����swe�/��{W��	[�#=n���;A}�����_~�|�	����t9|�%	�08���9�^'�B���˘N�/�z��8�W�Nw���ܽ�K�|��!�����r�=~RGL_�m7�v�R�n�ܹ��q�G��	Y����չ����o����q���:������m2�nb�1F��g;҈0�8��N��7^dtO��PAQ�j����4t�� i�C��l��<l=N��~���HA'�:�A_�v�툉p�2�)�ۢ�kyu!@ZCOJ�=�1_�~�!hdB��ݘ��''�G�N�C$���˚�:w���M��h�b,v2�Bк!^��U�T�#ˆ<�d����CSȒ).4�l�+`ȁ"�Wճ��j��$�^B���O;���$��m
Y���N�cG��
�0m�PT9-�>��E&�j���d&4L�4�A��}�
(X"{�ʪ\Q������~�j�ێO��X�u��������	���PL��ޣ���H�w�+�'�9g5!Ѧ�Bv�Lj��dd�>ץ_?�;ʣ1Hǻ!�����Q��"��?$���j����M��,�U���-v��N�Y8E������, �S=�m�{t�p	_a+�}������@ÜB�tc����%#J8#�A��	�9[�f;h��,s�!��2w�T/ʖ���A��u#	J=����n�Cp�(���̑�d�������xC      	   I   x�34���,�/���ϋOM�w�L����K���420��50�50U02�20�25׳00643�50�������� ��5      	   y   x���N�-�I�7�t�/RH�,.�I���KWH��+I�+�,�gd���y�s��������4���c�7�r�4���6��6ƪ[!1=13ӌ3��r�1z\\\ }>�      	      x������ � �      	   �   x�]��
�0�7_�0�I|�k��� A���	&B���ҕpf8�jrc߸�vkࡍ�ۆ��fڿ�����f	�����~�pܐ�&��c��R��TfE�1P�����L��Ce��F�1�A���6���?���(e��"��O�d��/�f6�     