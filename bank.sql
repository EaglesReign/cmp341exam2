--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: account; Type: TABLE; Schema: public; Owner: eaglesreign; Tablespace: 
--

CREATE TABLE account (
    acctno integer NOT NULL,
    balance integer,
    type character varying
);


ALTER TABLE account OWNER TO eaglesreign;

--
-- Name: bank; Type: TABLE; Schema: public; Owner: eaglesreign; Tablespace: 
--

CREATE TABLE bank (
    code character varying NOT NULL,
    name character varying,
    addr character varying
);


ALTER TABLE bank OWNER TO eaglesreign;

--
-- Name: bank_branch; Type: TABLE; Schema: public; Owner: eaglesreign; Tablespace: 
--

CREATE TABLE bank_branch (
    branchno integer NOT NULL,
    addr character varying,
    bcode character varying
);


ALTER TABLE bank_branch OWNER TO eaglesreign;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: eaglesreign; Tablespace: 
--

CREATE TABLE customer (
    ssn character(9) NOT NULL,
    name character varying,
    addr character varying
);


ALTER TABLE customer OWNER TO eaglesreign;

--
-- Name: loan; Type: TABLE; Schema: public; Owner: eaglesreign; Tablespace: 
--

CREATE TABLE loan (
    loanno integer NOT NULL,
    amount integer,
    type character varying
);


ALTER TABLE loan OWNER TO eaglesreign;

--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: eaglesreign
--

COPY account (acctno, balance, type) FROM stdin;
\.


--
-- Data for Name: bank; Type: TABLE DATA; Schema: public; Owner: eaglesreign
--

COPY bank (code, name, addr) FROM stdin;
\.


--
-- Data for Name: bank_branch; Type: TABLE DATA; Schema: public; Owner: eaglesreign
--

COPY bank_branch (branchno, addr, bcode) FROM stdin;
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: eaglesreign
--

COPY customer (ssn, name, addr) FROM stdin;
\.


--
-- Data for Name: loan; Type: TABLE DATA; Schema: public; Owner: eaglesreign
--

COPY loan (loanno, amount, type) FROM stdin;
\.


--
-- Name: account_pkey; Type: CONSTRAINT; Schema: public; Owner: eaglesreign; Tablespace: 
--

ALTER TABLE ONLY account
    ADD CONSTRAINT account_pkey PRIMARY KEY (acctno);


--
-- Name: bank_branch_pkey; Type: CONSTRAINT; Schema: public; Owner: eaglesreign; Tablespace: 
--

ALTER TABLE ONLY bank_branch
    ADD CONSTRAINT bank_branch_pkey PRIMARY KEY (branchno);


--
-- Name: bank_pkey; Type: CONSTRAINT; Schema: public; Owner: eaglesreign; Tablespace: 
--

ALTER TABLE ONLY bank
    ADD CONSTRAINT bank_pkey PRIMARY KEY (code);


--
-- Name: customer_pkey; Type: CONSTRAINT; Schema: public; Owner: eaglesreign; Tablespace: 
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (ssn);


--
-- Name: loan_pkey; Type: CONSTRAINT; Schema: public; Owner: eaglesreign; Tablespace: 
--

ALTER TABLE ONLY loan
    ADD CONSTRAINT loan_pkey PRIMARY KEY (loanno);


--
-- Name: bank_branch_bcode_fkey; Type: FK CONSTRAINT; Schema: public; Owner: eaglesreign
--

ALTER TABLE ONLY bank_branch
    ADD CONSTRAINT bank_branch_bcode_fkey FOREIGN KEY (bcode) REFERENCES bank(code);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

