--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: bookings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bookings (
    id integer NOT NULL,
    booking_date character(50) NOT NULL,
    car_id integer,
    customer_id integer
);


ALTER TABLE public.bookings OWNER TO postgres;

--
-- Name: cars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cars (
    id integer NOT NULL,
    owner character(50) NOT NULL,
    brand character(100) NOT NULL,
    yom integer NOT NULL,
    rno character(50) NOT NULL
);


ALTER TABLE public.cars OWNER TO postgres;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name character(50) NOT NULL,
    email character(50),
    phone character(12),
    gender character(10),
    address character(300)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Data for Name: bookings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bookings (id, booking_date, car_id, customer_id) FROM stdin;
1	07-12-2020                                        	2	1
\.


--
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cars (id, owner, brand, yom, rno) FROM stdin;
1	ahladh                                            	Nisson terrano                                                                                      	2016	 AP31AU5478                                       
2	chan                                              	Tata Ertiga                                                                                         	2014	AP31AT6578                                        
3	ahladh2                                           	Maruthi suzuki                                                                                      	2016	 AP32AU5478                                       
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, name, email, phone, gender, address) FROM stdin;
1	John                                              	john@gmail.com                                    	1345689998  	Male      	Opp taj mahal                                                                                                                                                                                                                                                                                               
2	alex                                              	alex@gmail.com                                    	3567687878  	Male      	Opp charminar                                                                                                                                                                                                                                                                                               
\.


--
-- Name: bookings bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (id);


--
-- Name: cars cars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: bookings fk_cars; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT fk_cars FOREIGN KEY (car_id) REFERENCES public.cars(id);


--
-- Name: bookings fk_customers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT fk_customers FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- PostgreSQL database dump complete
--

