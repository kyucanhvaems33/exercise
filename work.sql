PGDMP     :    ,                z            TODO    14.3    14.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25485    TODO    DATABASE     j   CREATE DATABASE "TODO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "TODO";
                postgres    false            ?            1259    25523    status    TABLE     ?   CREATE TABLE public.status (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    created_at timestamp(6) without time zone DEFAULT now() NOT NULL,
    updated_at timestamp(6) without time zone
);
    DROP TABLE public.status;
       public         heap    postgres    false            ?            1259    25541    to_do    TABLE       CREATE TABLE public.to_do (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    user_id uuid NOT NULL,
    status_id uuid NOT NULL,
    name text NOT NULL,
    created_at timestamp(6) without time zone DEFAULT now() NOT NULL,
    updated_at timestamp(6) without time zone
);
    DROP TABLE public.to_do;
       public         heap    postgres    false            ?            1259    25532    users    TABLE     ?   CREATE TABLE public.users (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    full_name text NOT NULL,
    created_at timestamp(6) without time zone DEFAULT now() NOT NULL,
    updated_at timestamp(6) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?          0    25523    status 
   TABLE DATA           B   COPY public.status (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    209   ?       ?          0    25541    to_do 
   TABLE DATA           U   COPY public.to_do (id, user_id, status_id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    211   C       ?          0    25532    users 
   TABLE DATA           F   COPY public.users (id, full_name, created_at, updated_at) FROM stdin;
    public          postgres    false    210   `       j           2606    25531    status status_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    209            n           2606    25549    to_do to_do_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.to_do
    ADD CONSTRAINT to_do_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.to_do DROP CONSTRAINT to_do_pkey;
       public            postgres    false    211            l           2606    25540    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210            p           2606    25555    to_do to_do_status_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.to_do
    ADD CONSTRAINT to_do_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.status(id) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.to_do DROP CONSTRAINT to_do_status_id_fkey;
       public          postgres    false    211    3178    209            o           2606    25550    to_do to_do_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.to_do
    ADD CONSTRAINT to_do_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.to_do DROP CONSTRAINT to_do_user_id_fkey;
       public          postgres    false    211    3180    210            ?   ?   x??̱!@????e?]؅Kͭ?`d?4?Kp????????ॡ?$?+)?J?WE?HT?@2???p?????:?NC?B???iI??'Z?z?4X?	??C??$?A?d???|???5{,?)??[k??/?      ?      x?????? ? ?      ?      x?????? ? ?     