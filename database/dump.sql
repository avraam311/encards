--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Debian 17.0-1.pgdg120+1)
-- Dumped by pg_dump version 17.0 (Debian 17.0-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: banner; Type: TABLE; Schema: public; Owner: avraam311
--

CREATE TABLE public.banner (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    image character varying(150),
    description text,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.banner OWNER TO avraam311;

--
-- Name: banner_id_seq; Type: SEQUENCE; Schema: public; Owner: avraam311
--

CREATE SEQUENCE public.banner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banner_id_seq OWNER TO avraam311;

--
-- Name: banner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: avraam311
--

ALTER SEQUENCE public.banner_id_seq OWNED BY public.banner.id;


--
-- Name: category; Type: TABLE; Schema: public; Owner: avraam311
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.category OWNER TO avraam311;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: avraam311
--

CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.category_id_seq OWNER TO avraam311;

--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: avraam311
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- Name: item; Type: TABLE; Schema: public; Owner: avraam311
--

CREATE TABLE public.item (
    id integer NOT NULL,
    item_media character varying(150),
    media_text text,
    sub_category_id integer NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.item OWNER TO avraam311;

--
-- Name: item_id_seq; Type: SEQUENCE; Schema: public; Owner: avraam311
--

CREATE SEQUENCE public.item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.item_id_seq OWNER TO avraam311;

--
-- Name: item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: avraam311
--

ALTER SEQUENCE public.item_id_seq OWNED BY public.item.id;


--
-- Name: sub_category; Type: TABLE; Schema: public; Owner: avraam311
--

CREATE TABLE public.sub_category (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    category_id integer NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.sub_category OWNER TO avraam311;

--
-- Name: sub_category_id_seq; Type: SEQUENCE; Schema: public; Owner: avraam311
--

CREATE SEQUENCE public.sub_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sub_category_id_seq OWNER TO avraam311;

--
-- Name: sub_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: avraam311
--

ALTER SEQUENCE public.sub_category_id_seq OWNED BY public.sub_category.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: avraam311
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    first_name character varying(150),
    last_name character varying(150),
    phone character varying(13),
    spec_pack bigint NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public."user" OWNER TO avraam311;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: avraam311
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_id_seq OWNER TO avraam311;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: avraam311
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: banner id; Type: DEFAULT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public.banner ALTER COLUMN id SET DEFAULT nextval('public.banner_id_seq'::regclass);


--
-- Name: category id; Type: DEFAULT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- Name: item id; Type: DEFAULT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public.item ALTER COLUMN id SET DEFAULT nextval('public.item_id_seq'::regclass);


--
-- Name: sub_category id; Type: DEFAULT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public.sub_category ALTER COLUMN id SET DEFAULT nextval('public.sub_category_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Data for Name: banner; Type: TABLE DATA; Schema: public; Owner: avraam311
--

COPY public.banner (id, name, image, description, created, updated) FROM stdin;
1	main	AgACAgIAAxkBAAIBk2csn98XvDx9vW505Olq4SNOIojxAAK55TEbkw9oSRK7eT1LDKRUAQADAgADeAADNgQ	╨Р╤Б╤Б╨░╨╗╤П╨╝╤Г 1╨░╨╗╤П╨╣╨║╤Г╨╝, ╨Ф╨╛╨▒╤А╨╛ ╨┐╨╛╨╢╨░╨╗╨╛╨▓╨░╤В╤М!ЁЯдЭ	2024-11-08 17:35:06.283123	2024-11-08 17:35:23.415742
3	spec_pack	AgACAgIAAxkBAAICv2cstfT-_NJ4hQSKzgOgAushP25aAAKb5jEbkw9oSSKtAAH0DtsnoAEAAwIAA3gAAzYE	<b>╨б╨┐╨╡╤Ж. ╨┐╨░╨║╨╡╤В ╨▓╨║╨╗╤О╤З╨░╨╡╤В ╨▓ ╤Б╨╡╨▒╤П:\n</b>\nтЬЕ ╨Ь╨╡╨╝╤Л\nтЬЕ ╨Ь╨╛╤В╨╕╨▓╨░╤Ж╨╕╤П\nтЬЕ ╨У╤А╨░╨╝╨╝╨░╤В╨╕╨║╨░\nтЬЕ ╨б╨╗╨╡╨╜╨│\nтЬЕ ╨б╤Г╨▒╤В╨╕╤В╤А╤Л ╨║ ╤Д╨╕╨╗╤М╨╝╨░╨╝\nтЬЕ ╨в╨╡╤Б╤В╤Л	2024-11-08 17:35:06.283123	2024-11-09 15:03:25.497523
2	read!	AgACAgIAAxkBAAICu2cstepEhGx_q69Vt3WapYBygfmXAAKY5jEbkw9oSQye-72fzfugAQADAgADeAADNgQ	╨Ю╨▒╤П╨╖╨░╤В╨╡╨╗╤М╨╜╨╛ ╨┤╨╗╤П ╨┐╤А╨╛╤З╤В╨╡╨╜╨╕╤П ╨┤╨╗╤П ╨▓╤Б╨╡╤Е!тЭЧ\n\n╨Ш╨╖╤Г╤З╨╡╨╜╨╕╨╡ ╨░╨╜╨│╨╗╨╕╨╣╤Б╨║╨╛╨│╨╛ ╤П╨╖╤Л╨║╨░ ╨▒╨╡╨╖ ╨╜╨░╨┤╨╛╨▒╨╜╨╛╤Б╤В╨╕ ╨▓ ╤Н╤В╨╛╨╝ ╨▓ ╨╝╨╕╤А╤Б╨║╨╕╤Е ╨┤╨╡╨╗╨░╤Е ╨╕ ╨▒╨╡╨╖ ╨┐╨╛╨╗╤М╨╖╤Л (╤В╨╛ ╨╡╤Б╤В╤М ╨╕╨╖╤Г╤З╨╡╨╜╨╕╨╡ ╤П╨╖╤Л╨║╨░ ╨┐╤А╨╛╤Б╤В╨╛ ╤В╨░╨║, ╤З╤В╨╛╨▒╤Л ╨┐╨╛╨╜╨╕╨╝╨░╤В╤М ╤Б╨╡╤А╨╕╨░╨╗╤Л, ╨┐╨╛╤В╨╛╨╝╤Г ╤З╤В╨╛ ╨╜╤А╨░╨▓╨╕╤В╤Б╤П ╨╕╤Е ╨║╤Г╨╗╤М╤В╤Г╤А╨░ ╨╕ ╤В.╨┤.) ╤П╨▓╨╗╤П╨╡╤В╤Б╤П ╨╖╨░╨┐╤А╨╡╤В╨╜╤Л╨╝.тЭМ\n\n╨п, ╨║╨░╨║ ╨▓╨╗╨░╨┤╨╡╨╗╨╡╤Ж ╤Н╤В╨╛╨│╨╛ ╨▒╨╛╤В╨░, ╨┐╨╛╨╗╨╜╨╛╤Б╤В╤М╤О ╨╖╨░╨┐╤А╨╡╤Й╨░╤О ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╤В╤М ╨╡╨│╨╛ ╨▓ ╨╗╤О╨▒╤Л╤Е ╨┤╤А╤Г╨│╨╕╤Е ╤Ж╨╡╨╗╤П╤Е.тЭМ\n\n╨н╤В╨╛╤В ╨▒╨╛╤В ╨╕ ╨▓╤Б╤П ╨┐╨╛╨╗╤М╨╖╨░ ╨╕╨╖ ╨╜╨╡╨│╨╛ - ╨╝╨╛╨╣ ╨░╨╝╨░╨╜╨░╤В, ╤Б╨╗╨╡╨┤╨╛╨▓╨░╤В╨╡╨╗╤М╨╜╨╛ ╨╗╤О╨▒╨╛╨╣, ╨║╤В╨╛ ╨╜╨░╤А╤Г╤И╨░╨╡╤В ╨┤╨░╨╜╨╜╤Л╨╣ ╨╖╨░╨┐╤А╨╡╤В,╨▒╤Г╨┤╨╡╤В ╨▓╤Л╤Б╤В╤Г╨┐╨░╤В╤М ╨┐╤А╨╛╤В╨╕╨▓ ╨╝╨╡╨╜╤П.ЁЯФе\n\n╨Э╨╡ ╨▒╨╡╤А╨╕╤В╨╡ ╨╜╨░ ╨╝╨╡╨╜╤П ╨╕ ╨╜╨░ ╤Б╨╡╨▒╤П ╤Н╤В╨╛╤В ╨│╤А╨╡╤Е!ЁЯТЯ	2024-11-08 17:35:06.283123	2024-11-09 15:03:44.646341
4	catalog	AgACAgIAAxkBAAICr2cstbCPxwS61xdnkfzYRqDI82oxAAKT5jEbkw9oSZxRB2JI4N-bAQADAgADeAADNgQ	╨Ъ╨░╤В╨╡╨│╨╛╤А╨╕╨╕:\n	2024-11-08 17:35:06.283123	2024-11-09 15:03:56.217349
5	sub_catalog	AgACAgIAAxkBAAICs2cstcIvWNECSLLTl8zggxCH6KvxAAKV5jEbkw9oSbCT4BrMeUKHAQADAgADeAADNgQ	╨Я╨╛╨┤╨║╨░╤В╨╡╨│╨╛╤А╨╕╨╕:\n	2024-11-08 17:35:06.283123	2024-11-09 15:04:09.017456
6	media	AgACAgIAAxkBAAICt2cstdg0VQiw7fUWsgkp4Yw5RfpuAAKW5jEbkw9oSTOTdW4MGn8CAQADAgADeAADNgQ	╨б╨┐╨╕╤Б╨╛╨║ ╨╝╨╡╨┤╨╕╨░ ╨┐╤Г╤Б╤ВЁЯТФ\n	2024-11-08 17:35:06.283123	2024-11-09 15:04:20.492866
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: avraam311
--

COPY public.category (id, name, created, updated) FROM stdin;
1	╨Р╤Г╨┤╨╕╤А╨╛╨▓╨░╨╜╨╕╨╡ЁЯУг	2024-11-08 17:35:06.246762	2024-11-08 17:35:06.246762
2	╨У╨╛╨▓╨╛╤А╨╡╨╜╨╕╨╡ЁЯЧг	2024-11-08 17:35:06.246762	2024-11-08 17:35:06.246762
3	╨з╤В╨╡╨╜╨╕╨╡ЁЯУЧ	2024-11-08 17:35:06.246762	2024-11-08 17:35:06.246762
4	╨Я╨╕╤Б╤М╨╝╨╛ЁЯЦК	2024-11-08 17:35:06.246762	2024-11-08 17:35:06.246762
5	╨б╨┐╨╡╤Ж. ╨┐╨░╨║╨╡╤ВЁЯСС	2024-11-08 17:35:06.246762	2024-11-08 17:35:06.246762
6	╨Ф╤А╤Г╨│╨╛╨╡ЁЯЯв	2024-11-08 17:35:06.246762	2024-11-08 17:35:06.246762
\.


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: avraam311
--

COPY public.item (id, item_media, media_text, sub_category_id, created, updated) FROM stdin;
1	AgACAgIAAxkBAAIFP2cvgDArwFBc5T0BUNPg4FNl1jh5AAJs6DEbT6x4SdNj6TTnUzhvAQADAgADeAADNgQ	╨Э╨░╨╖╨▓╨░╨╜╨╕╨╡: ╨Т╨╡╨╗╨╕╨║╨╕╨╣ ╨У╤Н╤В╤Б╨▒╨╕\n\n╨в╨╕╨┐: ╨д╨╕╨╗╤М╨╝\n\n╨Ц╨░╨╜╤А: ╨Ф╤А╨░╨╝╨░\n\n╨Ю╨┐╨╕╤Б╨░╨╜╨╕╨╡: ╨Т╨╡╤Б╨╜╨╛╨╣ 1922 ╨│╨╛╨┤╨░, ╨▓ ╤Н╨┐╨╛╤Е╤Г ╤А╨░╨╖╨╗╨░╨│╨░╤О╤Й╨╡╨╣╤Б╤П ╨╝╨╛╤А╨░╨╗╨╕, ╨▒╨╗╨╕╤Б╤В╨░╤В╨╡╨╗╤М╨╜╨╛╨│╨╛ ╨┤╨╢╨░╨╖╨░ ╨╕ ┬л╨║╨╛╤А╨╛╨╗╨╡╨╣ ╨║╨╛╨╜╤В╤А╨░╨▒╨░╨╜╨┤╨╜╨╛╨│╨╛ ╨░╨╗╨║╨╛╨│╨╛╨╗╤П┬╗, ╨Э╨╕╨║ ╨Ъ╨░╤А╤А╨░╤Г╤Н╨╣ ╨┐╤А╨╕╨╡╨╖╨╢╨░╨╡╤В ╨╕╨╖ ╨б╤А╨╡╨┤╨╜╨╡╨│╨╛ ╨Ч╨░╨┐╨░╨┤╨░ ╨▓ ╨Э╤М╤О-╨Щ╨╛╤А╨║. ╨Я╤А╨╡╤Б╨╗╨╡╨┤╤Г╤П ╤Б╨╛╨▒╤Б╤В╨▓╨╡╨╜╨╜╤Г╤О ╨░╨╝╨╡╤А╨╕╨║╨░╨╜╤Б╨║╤Г╤О ╨╝╨╡╤З╤В╤Г, ╨╛╨╜ ╤Б╨╡╨╗╨╕╤В╤Б╤П ╨┐╨╛ ╤Б╨╛╤Б╨╡╨┤╤Б╤В╨▓╤Г ╤Б ╤В╨░╨╕╨╜╤Б╤В╨▓╨╡╨╜╨╜╤Л╨╝, ╨╕╨╖╨▓╨╡╤Б╤В╨╜╤Л╨╝ ╤Б╨▓╨╛╨╕╨╝╨╕ ╨▓╨╡╤З╨╡╤А╨╕╨╜╨║╨░╨╝╨╕ ╨╝╨╕╨╗╨╗╨╕╨╛╨╜╨╡╤А╨╛╨╝ ╨Ф╨╢╨╡╨╡╨╝ ╨У╤Н╤В╤Б╨▒╨╕, ╨░ ╨╜╨░ ╨┐╤А╨╛╤В╨╕╨▓╨╛╨┐╨╛╨╗╨╛╨╢╨╜╨╛╨╝ ╨▒╨╡╤А╨╡╨│╤Г ╨▒╤Г╤Е╤В╤Л ╨┐╤А╨╛╨╢╨╕╨▓╨░╤О╤В ╨╡╨│╨╛ ╨║╤Г╨╖╨╕╨╜╨░ ╨Ф╤Н╨╣╨╖╨╕ ╨╕ ╨╡╤С ╨╝╤Г╨╢, ╨┐╨╛╨▓╨╡╤Б╨░ ╨╕ ╨░╤А╨╕╤Б╤В╨╛╨║╤А╨░╤В, ╨в╨╛╨╝ ╨С╤М╤О╨║╨╡╨╜╨╡╨╜. ╨в╨░╨║ ╨Э╨╕╨║ ╨╛╨║╨░╨╖╤Л╨▓╨░╨╡╤В╤Б╤П ╨▓╨╛╨▓╨╗╨╡╤З╤С╨╜╨╜╤Л╨╝ ╨▓ ╨╖╨░╤Е╨▓╨░╤В╤Л╨▓╨░╤О╤Й╨╕╨╣ ╨╝╨╕╤А ╨▒╨╛╨│╨░╤В╤Л╤Е тАФ ╨╕╤Е ╨╕╨╗╨╗╤О╨╖╨╕╨╣, ╨╗╤О╨▒╨▓╨╕ ╨╕ ╨╛╨▒╨╝╨░╨╜╨╛╨▓. ╨Ю╨╜ ╤Б╤В╨░╨╜╨╛╨▓╨╕╤В╤Б╤П ╤Б╨▓╨╕╨┤╨╡╤В╨╡╨╗╨╡╨╝ ╨┐╤А╨╛╨╕╤Б╤Е╨╛╨┤╤П╤Й╨╡╨│╨╛ ╨▓ ╤Н╤В╨╛╨╝ ╨╝╨╕╤А╨╡ ╨╕ ╨┐╨╕╤И╨╡╤В ╨╕╤Б╤В╨╛╤А╨╕╤О ╨╜╨╡╨▓╨╛╨╖╨╝╨╛╨╢╨╜╨╛╨╣ ╨╗╤О╨▒╨▓╨╕, ╨▓╨╡╤З╨╜╤Л╤Е ╨╝╨╡╤З╤В╨░╨╜╨╕╨╣ ╨╕ ╤З╨╡╨╗╨╛╨▓╨╡╤З╨╡╤Б╨║╨╛╨╣ ╤В╤А╨░╨│╨╡╨┤╨╕╨╕, ╨║╨╛╤В╨╛╤А╤Л╨╡ ╤П╨▓╨╗╤П╤О╤В╤Б╤П ╨╛╤В╤А╨░╨╢╨╡╨╜╨╕╨╡╨╝ ╤Б╨╛╨▓╤А╨╡╨╝╨╡╨╜╨╜╤Л╤Е ╨▓╤А╨╡╨╝╨╡╨╜ ╨╕ ╨╜╤А╨░╨▓╨╛╨▓.\n\n╨Ю╤Ж╨╡╨╜╨║╨░: 10/10\n\n╨г╤А╨╛╨▓╨╡╨╜╤М ╨░╨╜╨│╨╗╨╕╨╣╤Б╨║╨╛╨│╨╛: b2	1	2024-11-09 15:34:28.277738	2024-11-09 15:34:28.277738
2	AgACAgIAAxkBAAIFR2cvgQQnEs-J2SkM37-rhTsjM9R3AAJw6DEbT6x4SXcEf5pOMh8LAQADAgADeAADNgQ	╨Э╨░╨╖╨▓╨░╨╜╨╕╨╡: ╨Ъ╤Г╨╜╨│-╤Д╤Г ╨┐╨░╨╜╨┤╨░ 1\n\n╨в╨╕╨┐: ╨Ь╤Г╨╗╤М╤В╤Д╨╕╨╗╤М╨╝\n\n╨Ц╨░╨╜╤А: ╨Я╤А╨╕╨║╨╗╤О╤З╨╡╨╜╨╕╤П\n\n╨Ю╨┐╨╕╤Б╨░╨╜╨╕╨╡: ╨б╨┐╨░╤Б╨╡╨╜╨╕╨╡ ╨Ф╨╛╨╗╨╕╨╜╤Л ╨Ь╨╕╤А╨░ ╨╕ ╨▓╤Б╨╡╤Е ╨╡╨╡ ╨╛╨▒╨╕╤В╨░╤В╨╡╨╗╨╡╨╣ ╨╛╤В ╨╜╨╡╨┐╨╛╨▒╨╡╨┤╨╕╨╝╨╛╨│╨╛ ╨╕ ╨▒╨╡╨╖╨╢╨░╨╗╨╛╤Б╤В╨╜╨╛╨│╨╛ ╨╝╨░╤Б╤В╨╡╤А╨░ ╨в╨░╨╣ ╨Ы╤Г╨╜╨│╨░ ╨┤╨╛╨╗╨╢╨╜╨╛ ╨╗╨╡╤З╤М ╨╜╨░ ╨┐╨╗╨╡╤З╨╕ ╨Т╨╛╨╕╨╜╨░ ╨Ф╤А╨░╨║╨╛╨╜╨░, ╨Ш╨╖╨▒╤А╨░╨╜╨╜╨╛╨│╨╛ ╤Б╤А╨╡╨┤╨╕ ╨╗╤Г╤З╤И╨╕╤Е ╨╕╨╖ ╨╗╤Г╤З╤И╨╕╤Е, ╨║╨╛╨╕╨╝ ╤Б╤В╨░╨╜╨╛╨▓╨╕╤В╤Б╤ПтАж ╨╜╨╡╤Г╨║╨╗╤О╨╢╨╕╨╣, ╨╗╨╡╨╜╨╕╨▓╤Л╨╣ ╨╕ ╨▓╨╡╤З╨╜╨╛ ╨│╨╛╨╗╨╛╨┤╨╜╤Л╨╣ ╨┐╨░╨╜╨┤╨░ ╨Я╨╛. ╨Х╨╝╤Г ╨┐╤А╨╡╨┤╤Б╤В╨╛╨╕╤В ╨┤╨╛╨╗╨│╨╕╨╣ ╨╕ ╤В╤А╤Г╨┤╨╜╤Л╨╣ ╨┐╤Г╤В╤М ╨║ ╨▓╨╡╤А╤И╨╕╨╜╨░╨╝ ╨╝╨░╤Б╤В╨╡╤А╤Б╤В╨▓╨░ ╨║╤Г╨╜╨│-╤Д╤Г ╨▒╨╛╨║ ╨╛ ╨▒╨╛╨║ ╤Б ╨╗╨╡╨│╨╡╨╜╨┤╨░╤А╨╜╤Л╨╝╨╕ ╨▓╨╛╨╕╨╜╨░╨╝╨╕: ╨в╨╕╨│╤А╨╛╨╣, ╨Ю╨▒╨╡╨╖╤М╤П╨╜╨╛╨╣, ╨С╨╛╨│╨╛╨╝╨╛╨╗╨╛╨╝, ╨У╨░╨┤╤О╨║╨╛╨╣ ╨╕ ╨Ц╤Г╤А╨░╨▓╨╗╨╡╨╝. ╨Я╨╛ ╨┐╨╛╤Б╤В╨╕╨│╨╜╨╡╤В ╤В╨░╨╣╨╜╤Г ╨┤╤А╨╡╨▓╨╜╨╡╨│╨╛ ╨б╨▓╨╕╤В╨║╨░ ╨╕ ╤Б╤В╨░╨╜╨╡╤В ╨Т╨╛╨╕╨╜╨╛╨╝ ╨Ф╤А╨░╨║╨╛╨╜╨░ ╤В╨╛╨╗╤М╨║╨╛ ╨▓ ╤В╨╛╨╝ ╤Б╨╗╤Г╤З╨░╨╡, ╨╡╤Б╨╗╨╕ ╤Б╨╝╨╛╨╢╨╡╤В ╨┐╨╛╨▓╨╡╤А╨╕╤В╤М ╨▓ ╤Б╨╡╨▒╤ПтАж\n\n╨Ю╤Ж╨╡╨╜╨║╨░: 9/10\n\n╨г╤А╨╛╨▓╨╡╨╜╤М ╨░╨╜╨│╨╗╨╕╨╣╤Б╨║╨╛╨│╨╛: b1	1	2024-11-09 15:36:57.169369	2024-11-09 15:36:57.169369
3	AgACAgIAAxkBAAIFT2cvgZQ9EdddU7k554KC_LhmKt68AAJ16DEbT6x4SW-Bq6s0kt7OAQADAgADeQADNgQ	╨Э╨░╨╖╨▓╨░╨╜╨╕╨╡: ╨Ф╤Н╨┤╨┐╤Г╨╗ ╨╕ ╨а╨╛╤Б╨╛╨╝╨░╤Е╨░\n\n╨в╨╕╨┐: ╨д╨╕╨╗╤М╨╝\n\n╨Ц╨░╨╜╤А: ╨С╨╛╨╡╨▓╨╕╨║\n\n╨Ю╨┐╨╕╤Б╨░╨╜╨╕╨╡: ╨г╤Н╨╣╨┤ ╨г╨╕╨╗╤Б╨╛╨╜ ╨┐╨╛╨┐╨░╨┤╨░╨╡╤В ╨▓ ╨╛╤А╨│╨░╨╜╨╕╨╖╨░╤Ж╨╕╤О ┬л╨г╨┐╤А╨░╨▓╨╗╨╡╨╜╨╕╨╡ ╨▓╤А╨╡╨╝╨╡╨╜╨╜╤Л╨╝╨╕ ╨╕╨╖╨╝╨╡╨╜╨╡╨╜╨╕╤П╨╝╨╕┬╗, ╤З╤В╨╛ ╨▓╤Л╨╜╤Г╨╢╨┤╨░╨╡╤В ╨╡╨│╨╛ ╨▓╨╡╤А╨╜╤Г╤В╤М╤Б╤П ╨║ ╤Б╨▓╨╛╨╡╨╝╤Г ╨░╨╗╤М╤В╨╡╤А-╤Н╨│╨╛ ╨Ф╤Н╨┤╨┐╤Г╨╗╤Г ╨╕ ╨╕╨╖╨╝╨╡╨╜╨╕╤В╤М ╨╕╤Б╤В╨╛╤А╨╕╤О ╤Б ╨┐╨╛╨╝╨╛╤Й╤М╤О ╨а╨╛╤Б╨╛╨╝╨░╤Е╨╕.\n\n╨Ю╤Ж╨╡╨╜╨║╨░: 7/10\n\n╨г╤А╨╛╨▓╨╡╨╜╤М ╨░╨╜╨│╨╗╨╕╨╣╤Б╨║╨╛╨│╨╛: b2	1	2024-11-09 15:38:35.984898	2024-11-09 15:38:35.984898
5	BAACAgIAAxkBAAIFZmcviUV-ISxg9LhfITEoiUxfcjERAAIJXAACT6x4SQdeDM-eFBOwNgQ	- do you wear wigs?\n- no, i do not\n- have you worn wigs?\n- no, i have not\n- will you wear?\n- maybe\n- when will you wear wigs?\n- hahahahaah	2	2024-11-09 16:10:20.270685	2024-11-09 16:10:20.270685
7	AgACAgIAAxkBAAIFbmcviaStQjFUyywCeZJMIrTcdphPAAK36DEbT6x4SZOW-rNWJhC2AQADAgADeAADNgQ	╨в╨╡╨╝╨░: ╨Ь╨░╨║╨┤╨╛╨╜╨░╨╗╤М╨┤╤Б\n\n╨г╤А╨╛╨▓╨╡╨╜╤М ╨░╨╜╨│╨╗╨╕╨╣╤Б╨║╨╛╨│╨╛: a2\n\n╨в╨╛╨┐╨╕╨║: Everybody of us at least once in the life had time to visit the McDonald's restaurant. This is a well-known American company, which, under its own name, opens cafes and fast food restaurants all over the world. McDonald's has long won the love of both children and adults. These cafes are never empty, you can see a lot of people there always. McDonald's restaurants offer an easy, friendly atmosphere where you can easily find a free table and order your favorite dish. The menu of such restaurants is very diverse and consists of fast food: hamburgers, French fries, cheeseburgers, hot dogs, milkshakes, salads with different sauces, chicken wings, coca-cola, and many other delicious dishes. A large choice of dishes, excellent quality of products, and first-class staff service, and affordable prices, attract thousands of people who want to visit McDonald's again and again.	4	2024-11-09 16:24:09.033726	2024-11-09 16:24:09.033726
8	AgACAgIAAxkBAAIFbmcviaStQjFUyywCeZJMIrTcdphPAAK36DEbT6x4SZOW-rNWJhC2AQADAgADeAADNgQ	╨б╨╗╨╛╨╢╨╜╨╛╤Б╤В╤М: a2\n\n╨Т╨╛╨┐╤А╨╛╤Б: Do you study/work? Tell a bit of it	3	2024-11-09 16:26:20.71589	2024-11-09 16:26:20.71589
9	AgACAgIAAxkBAAIFbmcviaStQjFUyywCeZJMIrTcdphPAAK36DEbT6x4SZOW-rNWJhC2AQADAgADeAADNgQ	╨Э╨░╨╖╨▓╨░╨╜╨╕╨╡: 1984\n\n╨Ц╨░╨╜╤А: ╨Р╨╜╤В╨╕╤Г╤В╨╛╨┐╨╕╤П\n\n╨б╨╗╨╛╨╢╨╜╨╛╤Б╤В╤М: c1\n\n╨Ю╨┐╨╕╤Б╨░╨╜╨╕╨╡: "1984" is a dystopian novel by George Orwell, published in 1949. It is set in a totalitarian society governed by the Party, led by the figurehead Big Brother. The story follows Winston Smith, a low-ranking Party member who works at the Ministry of Truth, where he alters historical records to fit the Party's propaganda. As Winston becomes increasingly disillusioned with the oppressive regime, he seeks truth and rebellion against the Party's control over reality, language, and individual thought. The novel explores themes of surveillance, censorship, and the manipulation of truth, ultimately serving as a cautionary tale about the dangers of totalitarianism.	5	2024-11-09 16:31:43.651303	2024-11-09 16:31:43.651303
10	AgACAgIAAxkBAAIFbmcviaStQjFUyywCeZJMIrTcdphPAAK36DEbT6x4SZOW-rNWJhC2AQADAgADeAADNgQ	╨б╨╗╨╛╨╢╨╜╨╛╤Б╤В╤М: a2\n\n╨Т╨╛╨┐╤А╨╛╤Б: Do you like cats? Write about it	6	2024-11-09 16:32:45.322779	2024-11-09 16:32:45.322779
11	AgACAgIAAxkBAAIFxmcvktdPobaaDR8uxLLIO4upWv9_AAJL6TEbT6x4SWPX7Mm0NsgLAQADAgADbQADNgQ	╨Я╨╡╤А╨╡╨▓╨╛╨┤: \n- Hi. What can I do for you(╨Я╤А╨╕╨▓╨╡╤В, ╤З╨╡╨╝ ╤П ╨╝╨╛╨│╤Г ╤Б╨┤╨╡╨╗╨░╤В╤М ╨┤╨╗╤П ╨▓╨░╤Б?)\n\n- tell a joke(╤А╨░╤Б╤Б╨║╨░╨╢╨╕ ╤И╤Г╤В╨║╤Г)\n\n-One joke, coming up(╨Ю╨┤╨╜╨░ ╤И╤Г╤В╨║╨░ ╨╜╨░ ╨┐╨╛╨┤╤Е╨╛╨┤╨╡)\n\n-What do you call a can opener that doesn't work?(╨Ъ╨░╨║ ╨╜╨░╨╖╤Л╨▓╨░╨╡╤В╤Б╤П ╨╛╤В╨║╤А╤Л╨▓╨░╤И╨║╨░, ╨║╨╛╤В╨╛╤А╨░╤П ╨╜╨╡ ╨╛╤В╨║╤А╤Л╨▓╨░╨╡╤В?)\n\n- A can't opener(╨Э╨╡ ╨╝╨╛╨╢╨╡╤В ╨╛╤В╨║╤А╤Л╨▓╨░╤В╨╡╨╗╤М)\n\n╨Ю╨▒╤К╤П╤Б╨╜╨╡╨╜╨╕╨╡: ╨Ф╨╡╨╗╨╛ ╨▓ ╤В╨╛╨╝, ╤З╤В╨╛ can ╨┐╨╡╤А╨╡╨▓╨╛╨┤╨╕╤В╤Б╤П ╨╕ ╨║╨░╨║ ╨╝╨╛╤З╤М, ╨╕ ╨║╨░╨║ ╨▒╨░╨╜╨║╨░. ╨Р can opener - ╤Н╤В╨╛ ╨╛╤В╨║╤А╤Л╨▓╨░╤И╨║╨░. ╨Ъ╨╛╨│╨┤╨░ ╨╛╤В╨║╤А╤Л╨▓╨░╤И╨║╨░ ╨╜╨╡ ╨╛╤В╨║╤А╤Л╨▓╨░╨╡╤В, a can ╨║╨░╨║ ╨▒╤Л ╨▒╨░╨╜╨║╨░ ╨┐╤А╨╡╨▓╤А╨░╤Й╨░╨╡╤В╤Б╤П ╨▓ ╨╝╨╛╨┤╨░╨╗╤М╨╜╤Л╨╣ ╨│╨╗╨░╨│╨╛╨╗ can - ╨╕ ╨╡╤Б╨╗╨╕ ╨╛╤В╨║╤А╤Л╨▓╨░╤И╨║╨░ ╨╜╨╡ ╨╛╤В╨║╤А╤Л╨▓╨░╨╡╤В ╤Б╨╛╨╛╤В╨▓╨╡╤В╤Б╤В╨▓╨╡╨╜╨╜╨╛ a can ╤Б╤В╨░╨╜╨╛╨▓╨╕╤В╤Б╤П can't.	7	2024-11-09 16:57:00.25011	2024-11-09 16:57:00.25011
12	AgACAgIAAxkBAAIFbmcviaStQjFUyywCeZJMIrTcdphPAAK36DEbT6x4SZOW-rNWJhC2AQADAgADeAADNgQ	╨г╨╢╨╡ ╨║╨╛╨│╨┤╨░ ╤В╤Л ╨┤╨╛╤Б╤В╨╕╨│╨╜╨╡╤И╤М ╤Г╤А╨╛╨▓╨╜╤П b1, ╤В╤Л ╤Б╨┐╨╛╨║╨╛╨╣╨╜╨╛ ╤Б╨╝╨╛╨╢╨╡╤И╤М ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╛╨▓╨░╤В╤М ╨┐╨╛ ╨▓╤Б╨╡╨╝╤Г ╨╝╨╕╤А╤Г ╨▒╨╡╨╖ ╤П╨╖╤Л╨║╨╛╨▓╨╛╨│╨╛ ╨▒╨░╤А╤М╨╡╤А╨░, ╤В╨░╨║ ╤З╤В╨╛ ╨▓╨┐╨╡╤А╨╡╨┤!	8	2024-11-09 16:58:42.325195	2024-11-09 16:58:42.325195
13	AgACAgIAAxkBAAIFbmcviaStQjFUyywCeZJMIrTcdphPAAK36DEbT6x4SZOW-rNWJhC2AQADAgADeAADNgQ	╨в╨╡╨╝╨░: ╨╝╨╛╨┤╨░╨╗╤М╨╜╤Л╨╣ ╨│╨╗╨░╨│╨╛╨╗ ought to\n\n╨Ю╨▒╤К╤П╤Б╨╜╨╡╨╜╨╕╨╡: ╨╝╨╛╨┤╨░╨╗╤М╨╜╤Л╨╣ ╨│╨╗╨░╨│╨╛╨╗ ought to - ╤Н╤В╨╛ ╤В╨╛ ╨╢╨╡ ╤Б╨░╨╝╨╛╨╡, ╤З╤В╨╛ ╨╕ should(╤Б╨╗╨╡╨┤╤Г╨╡╤В). ╨в╨╛╨╗╤М╨║╨╛ ╤З╤Г╤В╤М ╨▒╨╛╨╗╨╡╨╡ ╤Д╨╛╤А╨╝╨░╨╗╤М╨╜╤Л╨╣. ╨Ю╨╜ ╤Г╨║╨░╨╖╤Л╨▓╨░╨╡╤В ╨╜╨░ ╤В╨╛ ╤З╤В╨╛ ╨┤╨╛╨╗╨╢╨╜╨╛ ╨┐╤А╨╛╨╕╨╖╨╛╨╣╤В╨╕ ╨╕╨╗╨╕ ╨║╨░╨║ ╤А╨╡╨║╨╛╨╝╨╡╨╜╨┤╨░╤Ж╨╕╤О ╨║╨╛╨╝╤Г-╤В╨╛:\n\nYou ought to learn English - ╨Т╨░╨╝ ╤Б╨╗╨╡╨┤╤Г╨╡╤В ╤Г╤З╨╕╤В╤М ╨░╨╜╨│╨╗╨╕╨╣╤Б╨║╨╕╨╝.	9	2024-11-09 17:01:37.834933	2024-11-09 17:01:37.834933
14	AgACAgIAAxkBAAIFbmcviaStQjFUyywCeZJMIrTcdphPAAK36DEbT6x4SZOW-rNWJhC2AQADAgADeAADNgQ	╨б╨╗╨╛╨▓╨╛: aura\n\n╨Ю╨▒╤К╤П╤Б╨╜╨╡╨╜╨╕╨╡: ╨┐╨╡╤А╨╡╨▓╨╛╨┤╨╕╤В╤Б╤П ╨║╨░╨║ "╨░╤Г╤А╨░, ╤Н╨╜╨╡╤А╨│╨╕╤П". ╨Т ╤Б╨╛╨▓╤А╨╡╨╝╨╡╨╜╨╜╨╛╨╝ ╤Б╨╗╤Н╨╜╨│╨╡ ╨╛╨╖╨╜╨░╤З╨░╨╡╤В ╤А╨╡╨┐╤Г╤В╨░╤Ж╨╕╤О ╤З╨╡╨╗╨╛╨▓╨╡╨║╨░. ╨в╨╛ ╨╡╤Б╤В╤М +999 aura ╨╖╨╜╨░╤З╨╕╤В, ╤З╤В╨╛ ╤З╨╡╨╗╨╛╨▓╨╡╨║ ╤Г╨╗╤Г╤З╤И╨╕╨╗ ╤Б╨▓╨╛╨╣ ╨░╨▓╤В╨╛╤А╨╕╤В╨╡╤В, ╨╕ ╨╜╨░╨╛╨▒╨╛╤А╨╛╤В.	10	2024-11-09 17:03:15.522373	2024-11-09 17:03:15.522373
15	AgACAgIAAxkBAAIFbmcviaStQjFUyywCeZJMIrTcdphPAAK36DEbT6x4SZOW-rNWJhC2AQADAgADeAADNgQ	https://drive.google.com/file/d/1vNceKbGjPaP9eTyI2hXGy4RiIN4xBgUW/view?usp=sharing	11	2024-11-09 17:05:02.959089	2024-11-09 17:05:02.959089
16	AgACAgIAAxkBAAIFbmcviaStQjFUyywCeZJMIrTcdphPAAK36DEbT6x4SZOW-rNWJhC2AQADAgADeAADNgQ	╨з╤В╨╛ ╨┐╨╛╨┤╤Б╤В╨░╨▓╨╕╤В╤М ╤В╤Г╤В?\n\nplayed/play/to play\n\nHave you ever ... football?	12	2024-11-09 17:06:22.442178	2024-11-09 17:06:22.442178
\.


--
-- Data for Name: sub_category; Type: TABLE DATA; Schema: public; Owner: avraam311
--

COPY public.sub_category (id, name, category_id, created, updated) FROM stdin;
1	╨д╨╕╨╗╤М╨╝╤Л/╨б╨╡╤А╨╕╨░╨╗╤ЛЁЯОе	1	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
2	╨б╨╝╨╛╤В╤А╨╡╤В╤М ╤В╤Г╤ВЁЯФ╜	1	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
3	╨Т╨╛╨┐╤А╨╛╤Б╤Л ╨┤╨╗╤П ╨│╨╛╨▓╨╛╤А╨╡╨╜╨╕╤ПтЭУ	2	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
4	╨в╨╛╨┐╨╕╨║╨╕ ╨┤╨╗╤П ╤З╤В╨╡╨╜╨╕╤ПЁЯз╛	3	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
5	╨Ъ╨╜╨╕╨│╨╕ ╨┤╨╗╤П ╤З╤В╨╡╨╜╨╕╤ПЁЯУЪ	3	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
6	╨Т╨╛╨┐╤А╨╛╤Б╤Л ╨┤╨╗╤П ╨┐╨╕╤Б╤М╨╝╨░тЭФ	4	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
7	╨Ь╨╡╨╝╤ЛЁЯТб	5	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
8	╨Ь╨╛╤В╨╕╨▓╨░╤Ж╨╕╤ПЁЯФе	5	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
9	╨У╤А╨░╨╝╨╝╨░╤В╨╕╨║╨░ЁЯУЦ	5	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
10	╨б╨╗╤Н╨╜╨│ЁЯЫ┤	5	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
11	╨б╤Г╨▒╤В╨╕╤В╤А╤Л ╨║ ╤Д╨╕╨╗╤М╨╝╨░╨╝ЁЯФд	5	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
12	╨в╨╡╤Б╤В╤ЛтБЙ	5	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
13	╨Ф╤А╤Г╨│╨╛╨╡ЁЯЯв	6	2024-11-08 17:35:06.268418	2024-11-08 17:35:06.268418
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: avraam311
--

COPY public."user" (id, user_id, first_name, last_name, phone, spec_pack, created, updated) FROM stdin;
5	8163869278	Light	\N	\N	0	2024-11-09 17:15:06.496283	2024-11-09 17:15:06.496283
4	6176317974	Ibrohimyand	\N	\N	9999999999999999	2024-11-09 17:13:54.412752	2024-11-09 17:13:54.412752
\.


--
-- Name: banner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: avraam311
--

SELECT pg_catalog.setval('public.banner_id_seq', 6, true);


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: avraam311
--

SELECT pg_catalog.setval('public.category_id_seq', 6, true);


--
-- Name: item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: avraam311
--

SELECT pg_catalog.setval('public.item_id_seq', 16, true);


--
-- Name: sub_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: avraam311
--

SELECT pg_catalog.setval('public.sub_category_id_seq', 13, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: avraam311
--

SELECT pg_catalog.setval('public.user_id_seq', 5, true);


--
-- Name: banner banner_name_key; Type: CONSTRAINT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public.banner
    ADD CONSTRAINT banner_name_key UNIQUE (name);


--
-- Name: banner banner_pkey; Type: CONSTRAINT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public.banner
    ADD CONSTRAINT banner_pkey PRIMARY KEY (id);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: item item_pkey; Type: CONSTRAINT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);


--
-- Name: sub_category sub_category_pkey; Type: CONSTRAINT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public.sub_category
    ADD CONSTRAINT sub_category_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: user user_user_id_key; Type: CONSTRAINT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_user_id_key UNIQUE (user_id);


--
-- Name: item item_sub_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_sub_category_id_fkey FOREIGN KEY (sub_category_id) REFERENCES public.sub_category(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: sub_category sub_category_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: avraam311
--

ALTER TABLE ONLY public.sub_category
    ADD CONSTRAINT sub_category_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(id);


--
-- PostgreSQL database dump complete
--

