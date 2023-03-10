toc.dat                                                                                             0000600 0004000 0002000 00000046107 14364072563 0014461 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       ;                     {         	   prestamos    15.1    15.1 C    G           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         H           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         I           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         J           1262    41132 	   prestamos    DATABASE     |   CREATE DATABASE prestamos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE prestamos;
                postgres    false         ?            1259    41179    area_puesto    TABLE     p   CREATE TABLE public.area_puesto (
    id_area_puesto integer NOT NULL,
    nombre character varying NOT NULL
);
    DROP TABLE public.area_puesto;
       public         heap    postgres    false         ?            1259    41178    area_puesto_id_area_puesto_seq    SEQUENCE     ?   CREATE SEQUENCE public.area_puesto_id_area_puesto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.area_puesto_id_area_puesto_seq;
       public          postgres    false    223         K           0    0    area_puesto_id_area_puesto_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.area_puesto_id_area_puesto_seq OWNED BY public.area_puesto.id_area_puesto;
          public          postgres    false    222         ?            1259    41161    carrera    TABLE     h   CREATE TABLE public.carrera (
    id_carrera integer NOT NULL,
    nombre character varying NOT NULL
);
    DROP TABLE public.carrera;
       public         heap    postgres    false         ?            1259    41160    carrera_id_carrera_seq    SEQUENCE     ?   CREATE SEQUENCE public.carrera_id_carrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.carrera_id_carrera_seq;
       public          postgres    false    219         L           0    0    carrera_id_carrera_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.carrera_id_carrera_seq OWNED BY public.carrera.id_carrera;
          public          postgres    false    218         ?            1259    41236    grupo    TABLE     ?   CREATE TABLE public.grupo (
    id_grupo integer NOT NULL,
    nombre character varying NOT NULL,
    id_semestre integer NOT NULL,
    id_carrera integer NOT NULL
);
    DROP TABLE public.grupo;
       public         heap    postgres    false         ?            1259    41235    grupo_id_grupo_seq    SEQUENCE     ?   CREATE SEQUENCE public.grupo_id_grupo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.grupo_id_grupo_seq;
       public          postgres    false    229         M           0    0    grupo_id_grupo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.grupo_id_grupo_seq OWNED BY public.grupo.id_grupo;
          public          postgres    false    228         ?            1259    41170    puesto    TABLE     f   CREATE TABLE public.puesto (
    id_puesto integer NOT NULL,
    nombre character varying NOT NULL
);
    DROP TABLE public.puesto;
       public         heap    postgres    false         ?            1259    41169    puesto_id_puesto_seq    SEQUENCE     ?   CREATE SEQUENCE public.puesto_id_puesto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.puesto_id_puesto_seq;
       public          postgres    false    221         N           0    0    puesto_id_puesto_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.puesto_id_puesto_seq OWNED BY public.puesto.id_puesto;
          public          postgres    false    220         ?            1259    41152    semestre    TABLE     j   CREATE TABLE public.semestre (
    id_semestre integer NOT NULL,
    nombre character varying NOT NULL
);
    DROP TABLE public.semestre;
       public         heap    postgres    false         ?            1259    41151    semestre_id_semestre_seq    SEQUENCE     ?   CREATE SEQUENCE public.semestre_id_semestre_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.semestre_id_semestre_seq;
       public          postgres    false    217         O           0    0    semestre_id_semestre_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.semestre_id_semestre_seq OWNED BY public.semestre.id_semestre;
          public          postgres    false    216         ?            1259    41197    servicios_escolares    TABLE     ?   CREATE TABLE public.servicios_escolares (
    is_servicio integer NOT NULL,
    nombre character varying NOT NULL,
    apellido character varying NOT NULL,
    usuario character varying NOT NULL
);
 '   DROP TABLE public.servicios_escolares;
       public         heap    postgres    false         ?            1259    41196 #   servicios_escolares_is_servicio_seq    SEQUENCE     ?   CREATE SEQUENCE public.servicios_escolares_is_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.servicios_escolares_is_servicio_seq;
       public          postgres    false    227         P           0    0 #   servicios_escolares_is_servicio_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.servicios_escolares_is_servicio_seq OWNED BY public.servicios_escolares.is_servicio;
          public          postgres    false    226         ?            1259    41188    tipo_usuario    TABLE     m   CREATE TABLE public.tipo_usuario (
    id_tipo_us integer NOT NULL,
    nombre character varying NOT NULL
);
     DROP TABLE public.tipo_usuario;
       public         heap    postgres    false         ?            1259    41187    tipo_usuario_id_tipo_us_seq    SEQUENCE     ?   CREATE SEQUENCE public.tipo_usuario_id_tipo_us_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tipo_usuario_id_tipo_us_seq;
       public          postgres    false    225         Q           0    0    tipo_usuario_id_tipo_us_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tipo_usuario_id_tipo_us_seq OWNED BY public.tipo_usuario.id_tipo_us;
          public          postgres    false    224         ?            1259    41134    usuario    TABLE     k  CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying NOT NULL,
    apellido character varying NOT NULL,
    matricula character varying,
    correo character varying,
    telefono character varying,
    id_grupo integer,
    id_puesto integer,
    id_area_puesto integer,
    id_tipo_us integer,
    id_servicios integer
);
    DROP TABLE public.usuario;
       public         heap    postgres    false         ?            1259    41133    usuario_id_usuario_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public          postgres    false    215         R           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    214         ?           2604    41182    area_puesto id_area_puesto    DEFAULT     ?   ALTER TABLE ONLY public.area_puesto ALTER COLUMN id_area_puesto SET DEFAULT nextval('public.area_puesto_id_area_puesto_seq'::regclass);
 I   ALTER TABLE public.area_puesto ALTER COLUMN id_area_puesto DROP DEFAULT;
       public          postgres    false    223    222    223         ?           2604    41164    carrera id_carrera    DEFAULT     x   ALTER TABLE ONLY public.carrera ALTER COLUMN id_carrera SET DEFAULT nextval('public.carrera_id_carrera_seq'::regclass);
 A   ALTER TABLE public.carrera ALTER COLUMN id_carrera DROP DEFAULT;
       public          postgres    false    219    218    219         ?           2604    41239    grupo id_grupo    DEFAULT     p   ALTER TABLE ONLY public.grupo ALTER COLUMN id_grupo SET DEFAULT nextval('public.grupo_id_grupo_seq'::regclass);
 =   ALTER TABLE public.grupo ALTER COLUMN id_grupo DROP DEFAULT;
       public          postgres    false    228    229    229         ?           2604    41173    puesto id_puesto    DEFAULT     t   ALTER TABLE ONLY public.puesto ALTER COLUMN id_puesto SET DEFAULT nextval('public.puesto_id_puesto_seq'::regclass);
 ?   ALTER TABLE public.puesto ALTER COLUMN id_puesto DROP DEFAULT;
       public          postgres    false    221    220    221         ?           2604    41155    semestre id_semestre    DEFAULT     |   ALTER TABLE ONLY public.semestre ALTER COLUMN id_semestre SET DEFAULT nextval('public.semestre_id_semestre_seq'::regclass);
 C   ALTER TABLE public.semestre ALTER COLUMN id_semestre DROP DEFAULT;
       public          postgres    false    216    217    217         ?           2604    41200    servicios_escolares is_servicio    DEFAULT     ?   ALTER TABLE ONLY public.servicios_escolares ALTER COLUMN is_servicio SET DEFAULT nextval('public.servicios_escolares_is_servicio_seq'::regclass);
 N   ALTER TABLE public.servicios_escolares ALTER COLUMN is_servicio DROP DEFAULT;
       public          postgres    false    226    227    227         ?           2604    41191    tipo_usuario id_tipo_us    DEFAULT     ?   ALTER TABLE ONLY public.tipo_usuario ALTER COLUMN id_tipo_us SET DEFAULT nextval('public.tipo_usuario_id_tipo_us_seq'::regclass);
 F   ALTER TABLE public.tipo_usuario ALTER COLUMN id_tipo_us DROP DEFAULT;
       public          postgres    false    225    224    225         ?           2604    41137    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    215    214    215         >          0    41179    area_puesto 
   TABLE DATA           =   COPY public.area_puesto (id_area_puesto, nombre) FROM stdin;
    public          postgres    false    223       3390.dat :          0    41161    carrera 
   TABLE DATA           5   COPY public.carrera (id_carrera, nombre) FROM stdin;
    public          postgres    false    219       3386.dat D          0    41236    grupo 
   TABLE DATA           J   COPY public.grupo (id_grupo, nombre, id_semestre, id_carrera) FROM stdin;
    public          postgres    false    229       3396.dat <          0    41170    puesto 
   TABLE DATA           3   COPY public.puesto (id_puesto, nombre) FROM stdin;
    public          postgres    false    221       3388.dat 8          0    41152    semestre 
   TABLE DATA           7   COPY public.semestre (id_semestre, nombre) FROM stdin;
    public          postgres    false    217       3384.dat B          0    41197    servicios_escolares 
   TABLE DATA           U   COPY public.servicios_escolares (is_servicio, nombre, apellido, usuario) FROM stdin;
    public          postgres    false    227       3394.dat @          0    41188    tipo_usuario 
   TABLE DATA           :   COPY public.tipo_usuario (id_tipo_us, nombre) FROM stdin;
    public          postgres    false    225       3392.dat 6          0    41134    usuario 
   TABLE DATA           ?   COPY public.usuario (id_usuario, nombre, apellido, matricula, correo, telefono, id_grupo, id_puesto, id_area_puesto, id_tipo_us, id_servicios) FROM stdin;
    public          postgres    false    215       3382.dat S           0    0    area_puesto_id_area_puesto_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.area_puesto_id_area_puesto_seq', 1, false);
          public          postgres    false    222         T           0    0    carrera_id_carrera_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.carrera_id_carrera_seq', 1, false);
          public          postgres    false    218         U           0    0    grupo_id_grupo_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.grupo_id_grupo_seq', 1, false);
          public          postgres    false    228         V           0    0    puesto_id_puesto_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.puesto_id_puesto_seq', 1, false);
          public          postgres    false    220         W           0    0    semestre_id_semestre_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.semestre_id_semestre_seq', 1, false);
          public          postgres    false    216         X           0    0 #   servicios_escolares_is_servicio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.servicios_escolares_is_servicio_seq', 1, false);
          public          postgres    false    226         Y           0    0    tipo_usuario_id_tipo_us_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tipo_usuario_id_tipo_us_seq', 1, false);
          public          postgres    false    224         Z           0    0    usuario_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);
          public          postgres    false    214         ?           2606    41168    carrera carrera_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (id_carrera);
 >   ALTER TABLE ONLY public.carrera DROP CONSTRAINT carrera_pkey;
       public            postgres    false    219         ?           2606    41186    area_puesto pk_area_puesto 
   CONSTRAINT     d   ALTER TABLE ONLY public.area_puesto
    ADD CONSTRAINT pk_area_puesto PRIMARY KEY (id_area_puesto);
 D   ALTER TABLE ONLY public.area_puesto DROP CONSTRAINT pk_area_puesto;
       public            postgres    false    223         ?           2606    41243    grupo pk_grupo 
   CONSTRAINT     R   ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT pk_grupo PRIMARY KEY (id_grupo);
 8   ALTER TABLE ONLY public.grupo DROP CONSTRAINT pk_grupo;
       public            postgres    false    229         ?           2606    41177    puesto pk_puesto 
   CONSTRAINT     U   ALTER TABLE ONLY public.puesto
    ADD CONSTRAINT pk_puesto PRIMARY KEY (id_puesto);
 :   ALTER TABLE ONLY public.puesto DROP CONSTRAINT pk_puesto;
       public            postgres    false    221         ?           2606    41159    semestre pk_semestre 
   CONSTRAINT     [   ALTER TABLE ONLY public.semestre
    ADD CONSTRAINT pk_semestre PRIMARY KEY (id_semestre);
 >   ALTER TABLE ONLY public.semestre DROP CONSTRAINT pk_semestre;
       public            postgres    false    217         ?           2606    41204    servicios_escolares pk_servicio 
   CONSTRAINT     f   ALTER TABLE ONLY public.servicios_escolares
    ADD CONSTRAINT pk_servicio PRIMARY KEY (is_servicio);
 I   ALTER TABLE ONLY public.servicios_escolares DROP CONSTRAINT pk_servicio;
       public            postgres    false    227         ?           2606    41195    tipo_usuario tipo_usuario_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (id_tipo_us);
 H   ALTER TABLE ONLY public.tipo_usuario DROP CONSTRAINT tipo_usuario_pkey;
       public            postgres    false    225         ?           2606    41141    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    215         ?           2606    41244    grupo fk_carrera    FK CONSTRAINT     |   ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT fk_carrera FOREIGN KEY (id_carrera) REFERENCES public.carrera(id_carrera);
 :   ALTER TABLE ONLY public.grupo DROP CONSTRAINT fk_carrera;
       public          postgres    false    229    3221    219         ?           2606    41254    usuario fk_grupo    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_grupo FOREIGN KEY (id_grupo) REFERENCES public.grupo(id_grupo) NOT VALID;
 :   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_grupo;
       public          postgres    false    3231    229    215         ?           2606    41215    usuario fk_puesto    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_puesto FOREIGN KEY (id_puesto) REFERENCES public.puesto(id_puesto) NOT VALID;
 ;   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_puesto;
       public          postgres    false    215    3223    221         ?           2606    41249    grupo fk_semestre    FK CONSTRAINT     ?   ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT fk_semestre FOREIGN KEY (id_semestre) REFERENCES public.semestre(id_semestre);
 ;   ALTER TABLE ONLY public.grupo DROP CONSTRAINT fk_semestre;
       public          postgres    false    229    3219    217         ?           2606    41230    usuario fk_servicios    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_servicios FOREIGN KEY (id_servicios) REFERENCES public.servicios_escolares(is_servicio) NOT VALID;
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_servicios;
       public          postgres    false    3229    215    227         ?           2606    41225    usuario fk_tipo_usuario    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_tipo_usuario FOREIGN KEY (id_tipo_us) REFERENCES public.tipo_usuario(id_tipo_us) NOT VALID;
 A   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_tipo_usuario;
       public          postgres    false    225    215    3227         ?           2606    41220    usuario kf_area_puesto    FK CONSTRAINT     ?   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT kf_area_puesto FOREIGN KEY (id_area_puesto) REFERENCES public.area_puesto(id_area_puesto) NOT VALID;
 @   ALTER TABLE ONLY public.usuario DROP CONSTRAINT kf_area_puesto;
       public          postgres    false    223    3225    215                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3390.dat                                                                                            0000600 0004000 0002000 00000000151 14364072563 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Servicios Escolares
2	Biblioteca
3	Departamento de Red
4	Recursos Humanos
5	Financieros
6	Almacen
\.


                                                                                                                                                                                                                                                                                                                                                                                                                       3386.dat                                                                                            0000600 0004000 0002000 00000000343 14364072563 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	IngenierÃ­a Forestal
2	Licenciatura en Ciencias Ambientales
3	Licenciatura en InformÃ¡tica
4	Licenciatura en BiologÃ­a
5	IngenierÃ­a en TecnologÃ­a de la Madera
6	Licenciatura en AdministraciÃ³n TurÃ­stica
\.


                                                                                                                                                                                                                                                                                             3396.dat                                                                                            0000600 0004000 0002000 00000001037 14364072563 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	101	1	1
2	201	2	1
3	301	3	1
4	401	4	1
5	501	5	1
6	601	6	1
7	701	7	1
8	801	8	1
9	901	9	1
10	1001	10	1
11	102	1	2
12	202	2	2
13	302	3	2
14	402	4	2
15	502	5	2
16	602	6	2
17	702	7	2
18	802	8	2
19	902	9	2
20	103	1	3
21	203	2	3
22	303	3	3
23	403	4	3
24	503	5	3
25	603	6	3
26	703	7	3
27	803	8	3
28	903	9	3
29	1003	10	3
30	104	1	4
31	204	2	4
32	304	3	4
33	404	4	4
34	504	5	4
35	604	6	4
36	704	7	4
37	804	8	4
38	904	9	4
39	1004	10	4
40	105	1	5
41	205	2	5
42	305	3	5
43	405	4	5
44	505	5	5
45	605	6	5
46	705	7	5
47	805	8	5
48	905	9	5
49	1005	10	5
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3388.dat                                                                                            0000600 0004000 0002000 00000000031 14364072563 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	jefe
2	secretaria
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       3384.dat                                                                                            0000600 0004000 0002000 00000000144 14364072563 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Primero
2	Segundo 
3	Tercero
4	Cuarto
5	Quinto
6	Sexto
7	Septimo
8	Octavo
9	Noveno
10	Decimo
\.


                                                                                                                                                                                                                                                                                                                                                                                                                            3394.dat                                                                                            0000600 0004000 0002000 00000000045 14364072563 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Maria	Menderz JuÃ¡rez	Maria
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3392.dat                                                                                            0000600 0004000 0002000 00000000056 14364072563 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	estudiante
2	administrativo
3	docentes
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  3382.dat                                                                                            0000600 0004000 0002000 00000000210 14364072563 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Alba	Alcantara Juarez	12345678	alba@gmail.com	9513951511	1	\N	\N	1	1
2	Paola	Ortega	e	e	e	1	\N	\N	1	\N
3	a	s	ss	s	s	1	\N	\N	1	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                        restore.sql                                                                                         0000600 0004000 0002000 00000036472 14364072564 0015413 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE prestamos;
--
-- Name: prestamos; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE prestamos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE prestamos OWNER TO postgres;

\connect prestamos

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: area_puesto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.area_puesto (
    id_area_puesto integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.area_puesto OWNER TO postgres;

--
-- Name: area_puesto_id_area_puesto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.area_puesto_id_area_puesto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.area_puesto_id_area_puesto_seq OWNER TO postgres;

--
-- Name: area_puesto_id_area_puesto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.area_puesto_id_area_puesto_seq OWNED BY public.area_puesto.id_area_puesto;


--
-- Name: carrera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrera (
    id_carrera integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.carrera OWNER TO postgres;

--
-- Name: carrera_id_carrera_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.carrera_id_carrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carrera_id_carrera_seq OWNER TO postgres;

--
-- Name: carrera_id_carrera_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.carrera_id_carrera_seq OWNED BY public.carrera.id_carrera;


--
-- Name: grupo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grupo (
    id_grupo integer NOT NULL,
    nombre character varying NOT NULL,
    id_semestre integer NOT NULL,
    id_carrera integer NOT NULL
);


ALTER TABLE public.grupo OWNER TO postgres;

--
-- Name: grupo_id_grupo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grupo_id_grupo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grupo_id_grupo_seq OWNER TO postgres;

--
-- Name: grupo_id_grupo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grupo_id_grupo_seq OWNED BY public.grupo.id_grupo;


--
-- Name: puesto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.puesto (
    id_puesto integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.puesto OWNER TO postgres;

--
-- Name: puesto_id_puesto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.puesto_id_puesto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.puesto_id_puesto_seq OWNER TO postgres;

--
-- Name: puesto_id_puesto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.puesto_id_puesto_seq OWNED BY public.puesto.id_puesto;


--
-- Name: semestre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.semestre (
    id_semestre integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.semestre OWNER TO postgres;

--
-- Name: semestre_id_semestre_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.semestre_id_semestre_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.semestre_id_semestre_seq OWNER TO postgres;

--
-- Name: semestre_id_semestre_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.semestre_id_semestre_seq OWNED BY public.semestre.id_semestre;


--
-- Name: servicios_escolares; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servicios_escolares (
    is_servicio integer NOT NULL,
    nombre character varying NOT NULL,
    apellido character varying NOT NULL,
    usuario character varying NOT NULL
);


ALTER TABLE public.servicios_escolares OWNER TO postgres;

--
-- Name: servicios_escolares_is_servicio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.servicios_escolares_is_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.servicios_escolares_is_servicio_seq OWNER TO postgres;

--
-- Name: servicios_escolares_is_servicio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.servicios_escolares_is_servicio_seq OWNED BY public.servicios_escolares.is_servicio;


--
-- Name: tipo_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_usuario (
    id_tipo_us integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.tipo_usuario OWNER TO postgres;

--
-- Name: tipo_usuario_id_tipo_us_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_usuario_id_tipo_us_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_usuario_id_tipo_us_seq OWNER TO postgres;

--
-- Name: tipo_usuario_id_tipo_us_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_usuario_id_tipo_us_seq OWNED BY public.tipo_usuario.id_tipo_us;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre character varying NOT NULL,
    apellido character varying NOT NULL,
    matricula character varying,
    correo character varying,
    telefono character varying,
    id_grupo integer,
    id_puesto integer,
    id_area_puesto integer,
    id_tipo_us integer,
    id_servicios integer
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- Name: area_puesto id_area_puesto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area_puesto ALTER COLUMN id_area_puesto SET DEFAULT nextval('public.area_puesto_id_area_puesto_seq'::regclass);


--
-- Name: carrera id_carrera; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera ALTER COLUMN id_carrera SET DEFAULT nextval('public.carrera_id_carrera_seq'::regclass);


--
-- Name: grupo id_grupo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupo ALTER COLUMN id_grupo SET DEFAULT nextval('public.grupo_id_grupo_seq'::regclass);


--
-- Name: puesto id_puesto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puesto ALTER COLUMN id_puesto SET DEFAULT nextval('public.puesto_id_puesto_seq'::regclass);


--
-- Name: semestre id_semestre; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.semestre ALTER COLUMN id_semestre SET DEFAULT nextval('public.semestre_id_semestre_seq'::regclass);


--
-- Name: servicios_escolares is_servicio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicios_escolares ALTER COLUMN is_servicio SET DEFAULT nextval('public.servicios_escolares_is_servicio_seq'::regclass);


--
-- Name: tipo_usuario id_tipo_us; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_usuario ALTER COLUMN id_tipo_us SET DEFAULT nextval('public.tipo_usuario_id_tipo_us_seq'::regclass);


--
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- Data for Name: area_puesto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.area_puesto (id_area_puesto, nombre) FROM stdin;
\.
COPY public.area_puesto (id_area_puesto, nombre) FROM '$$PATH$$/3390.dat';

--
-- Data for Name: carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrera (id_carrera, nombre) FROM stdin;
\.
COPY public.carrera (id_carrera, nombre) FROM '$$PATH$$/3386.dat';

--
-- Data for Name: grupo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grupo (id_grupo, nombre, id_semestre, id_carrera) FROM stdin;
\.
COPY public.grupo (id_grupo, nombre, id_semestre, id_carrera) FROM '$$PATH$$/3396.dat';

--
-- Data for Name: puesto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.puesto (id_puesto, nombre) FROM stdin;
\.
COPY public.puesto (id_puesto, nombre) FROM '$$PATH$$/3388.dat';

--
-- Data for Name: semestre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.semestre (id_semestre, nombre) FROM stdin;
\.
COPY public.semestre (id_semestre, nombre) FROM '$$PATH$$/3384.dat';

--
-- Data for Name: servicios_escolares; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.servicios_escolares (is_servicio, nombre, apellido, usuario) FROM stdin;
\.
COPY public.servicios_escolares (is_servicio, nombre, apellido, usuario) FROM '$$PATH$$/3394.dat';

--
-- Data for Name: tipo_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_usuario (id_tipo_us, nombre) FROM stdin;
\.
COPY public.tipo_usuario (id_tipo_us, nombre) FROM '$$PATH$$/3392.dat';

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, nombre, apellido, matricula, correo, telefono, id_grupo, id_puesto, id_area_puesto, id_tipo_us, id_servicios) FROM stdin;
\.
COPY public.usuario (id_usuario, nombre, apellido, matricula, correo, telefono, id_grupo, id_puesto, id_area_puesto, id_tipo_us, id_servicios) FROM '$$PATH$$/3382.dat';

--
-- Name: area_puesto_id_area_puesto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.area_puesto_id_area_puesto_seq', 1, false);


--
-- Name: carrera_id_carrera_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.carrera_id_carrera_seq', 1, false);


--
-- Name: grupo_id_grupo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grupo_id_grupo_seq', 1, false);


--
-- Name: puesto_id_puesto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.puesto_id_puesto_seq', 1, false);


--
-- Name: semestre_id_semestre_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.semestre_id_semestre_seq', 1, false);


--
-- Name: servicios_escolares_is_servicio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.servicios_escolares_is_servicio_seq', 1, false);


--
-- Name: tipo_usuario_id_tipo_us_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_usuario_id_tipo_us_seq', 1, false);


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 1, false);


--
-- Name: carrera carrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (id_carrera);


--
-- Name: area_puesto pk_area_puesto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area_puesto
    ADD CONSTRAINT pk_area_puesto PRIMARY KEY (id_area_puesto);


--
-- Name: grupo pk_grupo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT pk_grupo PRIMARY KEY (id_grupo);


--
-- Name: puesto pk_puesto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puesto
    ADD CONSTRAINT pk_puesto PRIMARY KEY (id_puesto);


--
-- Name: semestre pk_semestre; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.semestre
    ADD CONSTRAINT pk_semestre PRIMARY KEY (id_semestre);


--
-- Name: servicios_escolares pk_servicio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicios_escolares
    ADD CONSTRAINT pk_servicio PRIMARY KEY (is_servicio);


--
-- Name: tipo_usuario tipo_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_usuario
    ADD CONSTRAINT tipo_usuario_pkey PRIMARY KEY (id_tipo_us);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: grupo fk_carrera; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT fk_carrera FOREIGN KEY (id_carrera) REFERENCES public.carrera(id_carrera);


--
-- Name: usuario fk_grupo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_grupo FOREIGN KEY (id_grupo) REFERENCES public.grupo(id_grupo) NOT VALID;


--
-- Name: usuario fk_puesto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_puesto FOREIGN KEY (id_puesto) REFERENCES public.puesto(id_puesto) NOT VALID;


--
-- Name: grupo fk_semestre; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT fk_semestre FOREIGN KEY (id_semestre) REFERENCES public.semestre(id_semestre);


--
-- Name: usuario fk_servicios; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_servicios FOREIGN KEY (id_servicios) REFERENCES public.servicios_escolares(is_servicio) NOT VALID;


--
-- Name: usuario fk_tipo_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_tipo_usuario FOREIGN KEY (id_tipo_us) REFERENCES public.tipo_usuario(id_tipo_us) NOT VALID;


--
-- Name: usuario kf_area_puesto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT kf_area_puesto FOREIGN KEY (id_area_puesto) REFERENCES public.area_puesto(id_area_puesto) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      