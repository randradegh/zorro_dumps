--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

--
-- Name: aux; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA aux;


ALTER SCHEMA aux OWNER TO postgres;

--
-- Name: postgres_fdw; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgres_fdw WITH SCHEMA public;


--
-- Name: EXTENSION postgres_fdw; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgres_fdw IS 'foreign-data wrapper for remote PostgreSQL servers';


--
-- Name: zorro_fdw; Type: SERVER; Schema: -; Owner: postgres
--

CREATE SERVER zorro_fdw FOREIGN DATA WRAPPER postgres_fdw OPTIONS (
    dbname 'zorro_aux',
    host 'localhost'
);


ALTER SERVER zorro_fdw OWNER TO postgres;

--
-- Name: USER MAPPING postgres SERVER zorro_fdw; Type: USER MAPPING; Schema: -; Owner: postgres
--

CREATE USER MAPPING FOR postgres SERVER zorro_fdw OPTIONS (
    password 'pgsql',
    "user" 'postgres'
);


SET default_tablespace = '';

--
-- Name: data_febrero; Type: FOREIGN TABLE; Schema: aux; Owner: postgres
--

CREATE FOREIGN TABLE aux.data_febrero (
    cadena character varying,
    identificador character varying,
    tienda character varying,
    trato_amable numeric,
    rapidez numeric,
    "atención_en_cajas" numeric,
    ofertas_y_precios numeric,
    surtido_y_existencias numeric,
    orden_y_limpieza numeric,
    "calificación_total" numeric,
    seguridad_industrial numeric,
    latitude numeric,
    longitude numeric,
    estado character varying,
    municipio character varying
)
SERVER zorro_fdw
OPTIONS (
    schema_name 'public',
    table_name 'data_febrero'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN cadena OPTIONS (
    column_name 'cadena'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN identificador OPTIONS (
    column_name 'identificador'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN tienda OPTIONS (
    column_name 'tienda'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN trato_amable OPTIONS (
    column_name 'trato_amable'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN rapidez OPTIONS (
    column_name 'rapidez'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN "atención_en_cajas" OPTIONS (
    column_name 'atención_en_cajas'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN ofertas_y_precios OPTIONS (
    column_name 'ofertas_y_precios'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN surtido_y_existencias OPTIONS (
    column_name 'surtido_y_existencias'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN orden_y_limpieza OPTIONS (
    column_name 'orden_y_limpieza'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN "calificación_total" OPTIONS (
    column_name 'calificación_total'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN seguridad_industrial OPTIONS (
    column_name 'seguridad_industrial'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN latitude OPTIONS (
    column_name 'latitude'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN longitude OPTIONS (
    column_name 'longitude'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN estado OPTIONS (
    column_name 'estado'
);
ALTER FOREIGN TABLE aux.data_febrero ALTER COLUMN municipio OPTIONS (
    column_name 'municipio'
);


ALTER FOREIGN TABLE aux.data_febrero OWNER TO postgres;

--
-- Name: data_marzo; Type: FOREIGN TABLE; Schema: aux; Owner: postgres
--

CREATE FOREIGN TABLE aux.data_marzo (
    llave character varying,
    cadena character varying,
    tienda character varying,
    trato_amable numeric,
    rapidez numeric,
    atencion_en_cajas numeric,
    ofertas_y_precios numeric,
    surtido_y_existencias numeric,
    orden_y_limpieza numeric,
    totales numeric,
    seguridad_industrial numeric,
    latitud numeric,
    longitud numeric,
    estado character varying,
    municipio character varying
)
SERVER zorro_fdw
OPTIONS (
    schema_name 'public',
    table_name 'data_marzo'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN llave OPTIONS (
    column_name 'llave'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN cadena OPTIONS (
    column_name 'cadena'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN tienda OPTIONS (
    column_name 'tienda'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN trato_amable OPTIONS (
    column_name 'trato_amable'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN rapidez OPTIONS (
    column_name 'rapidez'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN atencion_en_cajas OPTIONS (
    column_name 'atencion_en_cajas'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN ofertas_y_precios OPTIONS (
    column_name 'ofertas_y_precios'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN surtido_y_existencias OPTIONS (
    column_name 'surtido_y_existencias'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN orden_y_limpieza OPTIONS (
    column_name 'orden_y_limpieza'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN totales OPTIONS (
    column_name 'totales'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN seguridad_industrial OPTIONS (
    column_name 'seguridad_industrial'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN latitud OPTIONS (
    column_name 'latitud'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN longitud OPTIONS (
    column_name 'longitud'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN estado OPTIONS (
    column_name 'estado'
);
ALTER FOREIGN TABLE aux.data_marzo ALTER COLUMN municipio OPTIONS (
    column_name 'municipio'
);


ALTER FOREIGN TABLE aux.data_marzo OWNER TO postgres;

--
-- Name: data_marzo_2019; Type: FOREIGN TABLE; Schema: aux; Owner: postgres
--

CREATE FOREIGN TABLE aux.data_marzo_2019 (
    cadena character varying,
    llave character varying,
    tienda_marzo character varying,
    trato_amable numeric(7,2),
    rapidez numeric(7,2),
    atencion_en_cajas numeric(7,2),
    ofertas_y_precios numeric(7,2),
    surtido_y_existencias numeric(7,2),
    orden_y_limpieza numeric(7,2),
    seguridad_industrial numeric(7,2),
    totales numeric(7,2),
    longitude numeric,
    latitude numeric,
    latitud numeric,
    longitud numeric,
    estado character varying,
    municipio character varying
)
SERVER zorro_fdw
OPTIONS (
    schema_name 'public',
    table_name 'data_marzo_2019'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN cadena OPTIONS (
    column_name 'cadena'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN llave OPTIONS (
    column_name 'llave'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN tienda_marzo OPTIONS (
    column_name 'tienda_marzo'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN trato_amable OPTIONS (
    column_name 'trato_amable'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN rapidez OPTIONS (
    column_name 'rapidez'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN atencion_en_cajas OPTIONS (
    column_name 'atencion_en_cajas'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN ofertas_y_precios OPTIONS (
    column_name 'ofertas_y_precios'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN surtido_y_existencias OPTIONS (
    column_name 'surtido_y_existencias'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN orden_y_limpieza OPTIONS (
    column_name 'orden_y_limpieza'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN seguridad_industrial OPTIONS (
    column_name 'seguridad_industrial'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN totales OPTIONS (
    column_name 'totales'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN longitude OPTIONS (
    column_name 'longitude'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN latitude OPTIONS (
    column_name 'latitude'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN latitud OPTIONS (
    column_name 'latitud'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN longitud OPTIONS (
    column_name 'longitud'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN estado OPTIONS (
    column_name 'estado'
);
ALTER FOREIGN TABLE aux.data_marzo_2019 ALTER COLUMN municipio OPTIONS (
    column_name 'municipio'
);


ALTER FOREIGN TABLE aux.data_marzo_2019 OWNER TO postgres;

SET default_with_oids = false;

--
-- Name: areas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.areas (
    area_id integer NOT NULL,
    area character varying(64) NOT NULL,
    dimension_id integer NOT NULL
);


ALTER TABLE public.areas OWNER TO postgres;

--
-- Name: TABLE areas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.areas IS 'Tabla de las areas que deben revisarse en los levantamientos.';


--
-- Name: COLUMN areas.area_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.areas.area_id IS 'Llave primaria del área.';


--
-- Name: COLUMN areas.area; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.areas.area IS 'Área de la tienda que debe revisarse.';


--
-- Name: COLUMN areas.dimension_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.areas.dimension_id IS 'Identificador de la dimensión.';


--
-- Name: areas_area_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.areas_area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.areas_area_id_seq OWNER TO postgres;

--
-- Name: areas_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.areas_area_id_seq OWNED BY public.areas.area_id;


--
-- Name: cadenas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cadenas (
    cadena_id integer NOT NULL,
    nombre character varying(128) NOT NULL
);


ALTER TABLE public.cadenas OWNER TO postgres;

--
-- Name: TABLE cadenas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.cadenas IS 'Cadenas mayoristas de abarrotes';


--
-- Name: COLUMN cadenas.cadena_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cadenas.cadena_id IS 'Identificador de la cadena mayorista de abarrotes.';


--
-- Name: COLUMN cadenas.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cadenas.nombre IS 'Nombre de la cadena mayorista de abarrotes.';


--
-- Name: cadenas_cadena_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cadenas_cadena_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cadenas_cadena_id_seq OWNER TO postgres;

--
-- Name: cadenas_cadena_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cadenas_cadena_id_seq OWNED BY public.cadenas.cadena_id;


--
-- Name: calificaciones_resumen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calificaciones_resumen (
    calificacion_resumen_id integer NOT NULL,
    dimension_id integer NOT NULL,
    levantamiento_id integer NOT NULL,
    calificacion numeric NOT NULL
);


ALTER TABLE public.calificaciones_resumen OWNER TO postgres;

--
-- Name: TABLE calificaciones_resumen; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.calificaciones_resumen IS 'Resumen de las calificaciones de un levantamiento.';


--
-- Name: COLUMN calificaciones_resumen.calificacion_resumen_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.calificaciones_resumen.calificacion_resumen_id IS 'Llave primaria';


--
-- Name: COLUMN calificaciones_resumen.dimension_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.calificaciones_resumen.dimension_id IS 'Identificador de la dimensión.';


--
-- Name: COLUMN calificaciones_resumen.levantamiento_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.calificaciones_resumen.levantamiento_id IS 'Tabla de los levantamientos de información.';


--
-- Name: COLUMN calificaciones_resumen.calificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.calificaciones_resumen.calificacion IS 'Valor de la calificación.';


--
-- Name: calificaciones_resumen_calificacion_resumen_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.calificaciones_resumen_calificacion_resumen_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.calificaciones_resumen_calificacion_resumen_id_seq OWNER TO postgres;

--
-- Name: calificaciones_resumen_calificacion_resumen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.calificaciones_resumen_calificacion_resumen_id_seq OWNED BY public.calificaciones_resumen.calificacion_resumen_id;


--
-- Name: compradores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compradores (
    comprador_id integer NOT NULL,
    nombre_comprador character varying(128) NOT NULL
);


ALTER TABLE public.compradores OWNER TO postgres;

--
-- Name: TABLE compradores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.compradores IS 'Tabla de los mistery shoppers o compradores.';


--
-- Name: COLUMN compradores.comprador_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.compradores.comprador_id IS 'Identi';


--
-- Name: COLUMN compradores.nombre_comprador; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.compradores.nombre_comprador IS 'Nombre del comprador.';


--
-- Name: compradores_comprador_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compradores_comprador_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compradores_comprador_id_seq OWNER TO postgres;

--
-- Name: compradores_comprador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compradores_comprador_id_seq OWNED BY public.compradores.comprador_id;


--
-- Name: departamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamentos (
    departamento_id integer NOT NULL,
    departamento character varying(64) NOT NULL
);


ALTER TABLE public.departamentos OWNER TO postgres;

--
-- Name: TABLE departamentos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.departamentos IS 'Tabla de departamentos de las tiendas.';


--
-- Name: COLUMN departamentos.departamento_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.departamentos.departamento_id IS 'Identificador de los departamentos.';


--
-- Name: COLUMN departamentos.departamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.departamentos.departamento IS 'Nombre del departamento de la tienda.';


--
-- Name: departamentos_departamento_id_seq_1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departamentos_departamento_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departamentos_departamento_id_seq_1 OWNER TO postgres;

--
-- Name: departamentos_departamento_id_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departamentos_departamento_id_seq_1 OWNED BY public.departamentos.departamento_id;


--
-- Name: dimensiones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dimensiones (
    dimension_id integer NOT NULL,
    dimension character varying(64) NOT NULL
);


ALTER TABLE public.dimensiones OWNER TO postgres;

--
-- Name: TABLE dimensiones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.dimensiones IS 'Tabla de dimensiones: trato amable, rapidez, etc.';


--
-- Name: COLUMN dimensiones.dimension_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.dimensiones.dimension_id IS 'Identificador de la dimensión.';


--
-- Name: COLUMN dimensiones.dimension; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.dimensiones.dimension IS 'Nombre de la dimensión.';


--
-- Name: dimensiones_dimension_id_seq_1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dimensiones_dimension_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dimensiones_dimension_id_seq_1 OWNER TO postgres;

--
-- Name: dimensiones_dimension_id_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dimensiones_dimension_id_seq_1 OWNED BY public.dimensiones.dimension_id;


--
-- Name: estados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estados (
    estado_id integer NOT NULL,
    estado character varying(64) NOT NULL,
    abreviatura character varying(5) NOT NULL
);


ALTER TABLE public.estados OWNER TO postgres;

--
-- Name: TABLE estados; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.estados IS 'Estados de la República Mexicana';


--
-- Name: COLUMN estados.estado_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados.estado_id IS 'Identificador del estado.';


--
-- Name: COLUMN estados.estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados.estado IS 'Nombre del estado.';


--
-- Name: COLUMN estados.abreviatura; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.estados.abreviatura IS 'Abreviatura del nombre del estado.';


--
-- Name: fecha_hora; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fecha_hora (
    fecha_hora timestamp without time zone
);


ALTER TABLE public.fecha_hora OWNER TO postgres;

--
-- Name: levantamientos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.levantamientos (
    levantamiento_id integer NOT NULL,
    fecha_hora timestamp without time zone NOT NULL,
    comprador_id integer NOT NULL,
    tienda_id integer NOT NULL
);


ALTER TABLE public.levantamientos OWNER TO postgres;

--
-- Name: TABLE levantamientos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.levantamientos IS 'Tabla de levantamientos.';


--
-- Name: COLUMN levantamientos.levantamiento_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos.levantamiento_id IS 'Tabla de los levantamientos de información.';


--
-- Name: COLUMN levantamientos.fecha_hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos.fecha_hora IS 'Fecha y hora del levantamiento.';


--
-- Name: COLUMN levantamientos.comprador_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos.comprador_id IS 'Identi';


--
-- Name: COLUMN levantamientos.tienda_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos.tienda_id IS 'Identificador de las tiendas mayoristas de abarrotes.';


--
-- Name: levantamientos_calificaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.levantamientos_calificaciones (
    levantamiento_calificaciones_id integer NOT NULL,
    pregunta_id integer NOT NULL,
    area_id integer NOT NULL,
    calificacion smallint NOT NULL
);


ALTER TABLE public.levantamientos_calificaciones OWNER TO postgres;

--
-- Name: TABLE levantamientos_calificaciones; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.levantamientos_calificaciones IS 'Calificaciones a las preguntas en los levantamientos.';


--
-- Name: COLUMN levantamientos_calificaciones.levantamiento_calificaciones_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_calificaciones.levantamiento_calificaciones_id IS 'Identificador de los levantamientos de calificaciones.';


--
-- Name: COLUMN levantamientos_calificaciones.pregunta_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_calificaciones.pregunta_id IS 'Llave primaria de las preguntas.';


--
-- Name: COLUMN levantamientos_calificaciones.area_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_calificaciones.area_id IS 'Llave primaria del área.';


--
-- Name: COLUMN levantamientos_calificaciones.calificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_calificaciones.calificacion IS 'Calificación a las respuestas de la preguntas.';


--
-- Name: levantamientos_levantamiento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.levantamientos_levantamiento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.levantamientos_levantamiento_id_seq OWNER TO postgres;

--
-- Name: levantamientos_levantamiento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.levantamientos_levantamiento_id_seq OWNED BY public.levantamientos.levantamiento_id;


--
-- Name: levantamientos_precios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.levantamientos_precios (
    levantamiento_precios_id integer NOT NULL,
    producto_id integer NOT NULL,
    precio numeric(10,2),
    comentario character varying(500),
    existe boolean DEFAULT false
);


ALTER TABLE public.levantamientos_precios OWNER TO postgres;

--
-- Name: TABLE levantamientos_precios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.levantamientos_precios IS 'Tabla de los precios capturados en los levantamientos';


--
-- Name: COLUMN levantamientos_precios.levantamiento_precios_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_precios.levantamiento_precios_id IS 'Identificador de los levantamientos de información.';


--
-- Name: COLUMN levantamientos_precios.producto_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_precios.producto_id IS 'Identificador del producto.';


--
-- Name: COLUMN levantamientos_precios.precio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_precios.precio IS 'Precio capturado para los productos en el levantamiento.';


--
-- Name: COLUMN levantamientos_precios.comentario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_precios.comentario IS 'Comentarios sobre los precios o inexistencia de los productos.';


--
-- Name: COLUMN levantamientos_precios.existe; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_precios.existe IS '¿Existe el producto en la tienda?';


--
-- Name: levantamientos_precios_levantamiento_precios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.levantamientos_precios_levantamiento_precios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.levantamientos_precios_levantamiento_precios_id_seq OWNER TO postgres;

--
-- Name: levantamientos_precios_levantamiento_precios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.levantamientos_precios_levantamiento_precios_id_seq OWNED BY public.levantamientos_precios.levantamiento_precios_id;


--
-- Name: levantamientos_tiempos_fila; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.levantamientos_tiempos_fila (
    levantamiento_fila_id integer NOT NULL,
    levantamiento_id integer NOT NULL,
    area_id integer NOT NULL,
    evaluacion character varying(16)
);


ALTER TABLE public.levantamientos_tiempos_fila OWNER TO postgres;

--
-- Name: TABLE levantamientos_tiempos_fila; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.levantamientos_tiempos_fila IS 'Tabla para las evaluaciones de los tiempos de espera en las diversas filas.';


--
-- Name: COLUMN levantamientos_tiempos_fila.levantamiento_fila_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_tiempos_fila.levantamiento_fila_id IS 'Llave primaria del levantamiento del tiempo de espera en filas.';


--
-- Name: COLUMN levantamientos_tiempos_fila.levantamiento_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_tiempos_fila.levantamiento_id IS 'Tabla de los levantamientos de información.';


--
-- Name: COLUMN levantamientos_tiempos_fila.area_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_tiempos_fila.area_id IS 'Llave primaria del área.';


--
-- Name: COLUMN levantamientos_tiempos_fila.evaluacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.levantamientos_tiempos_fila.evaluacion IS 'Evaluación de los tiempos en fila: 
< 3  Entre 3 y 5  Entre 5.1 y 7Entre 7.1 y 10> 10.1  > 15
5  4  2  1  0  Alarma';


--
-- Name: levantamientos_tiempos_fila_levantamiento_fila_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.levantamientos_tiempos_fila_levantamiento_fila_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.levantamientos_tiempos_fila_levantamiento_fila_id_seq OWNER TO postgres;

--
-- Name: levantamientos_tiempos_fila_levantamiento_fila_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.levantamientos_tiempos_fila_levantamiento_fila_id_seq OWNED BY public.levantamientos_tiempos_fila.levantamiento_fila_id;


--
-- Name: municipios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipios (
    municipio_id integer NOT NULL,
    nombre_municipio character varying(128) NOT NULL,
    estado_id integer NOT NULL
);


ALTER TABLE public.municipios OWNER TO postgres;

--
-- Name: TABLE municipios; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.municipios IS 'Tabla de municipios.';


--
-- Name: COLUMN municipios.municipio_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.municipios.municipio_id IS 'Tabla de los municipios o alcaldias (CDMX).';


--
-- Name: COLUMN municipios.nombre_municipio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.municipios.nombre_municipio IS 'Nombre del municipio o la alcaldía (CDMX).';


--
-- Name: COLUMN municipios.estado_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.municipios.estado_id IS 'Identificador del estado.';


--
-- Name: preguntas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preguntas (
    pregunta_id integer NOT NULL,
    pregunta character varying(128) NOT NULL,
    protocolo_id integer NOT NULL,
    calificacion_maxima smallint
);


ALTER TABLE public.preguntas OWNER TO postgres;

--
-- Name: TABLE preguntas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.preguntas IS 'Tabla de las preguntas de los protocolos,';


--
-- Name: COLUMN preguntas.pregunta_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.preguntas.pregunta_id IS 'Llave primaria de las preguntas.';


--
-- Name: COLUMN preguntas.pregunta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.preguntas.pregunta IS 'Texto de las preguntas de los pasos del protocolo.';


--
-- Name: COLUMN preguntas.protocolo_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.preguntas.protocolo_id IS 'Llave primaria de los pasos de los protocolos en las tiendas.';


--
-- Name: COLUMN preguntas.calificacion_maxima; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.preguntas.calificacion_maxima IS 'Valor máximo que puede tomar la calificacón de la pregunta.';


--
-- Name: preguntas_pregunta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.preguntas_pregunta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.preguntas_pregunta_id_seq OWNER TO postgres;

--
-- Name: preguntas_pregunta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.preguntas_pregunta_id_seq OWNED BY public.preguntas.pregunta_id;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    producto_id integer NOT NULL,
    producto character varying(128) NOT NULL
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- Name: TABLE productos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.productos IS 'Tabla de los productos a los que se les dará seguimiento.';


--
-- Name: COLUMN productos.producto_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.productos.producto_id IS 'Identificador del producto.';


--
-- Name: COLUMN productos.producto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.productos.producto IS 'Nombre del producto.';


--
-- Name: productos_producto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_producto_id_seq OWNER TO postgres;

--
-- Name: productos_producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_producto_id_seq OWNED BY public.productos.producto_id;


--
-- Name: tiendas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiendas (
    tienda_id integer NOT NULL,
    siglas character varying(16),
    nombre_tienda character varying(128) DEFAULT 'Por definir'::character varying,
    cadena_id integer NOT NULL,
    calle_numero character varying(128),
    cp character(5),
    telefonos character varying(128),
    colonia character varying(128),
    estado_id integer NOT NULL,
    municipio_id integer NOT NULL,
    latitude numeric(14,10),
    longitude numeric(14,10)
);


ALTER TABLE public.tiendas OWNER TO postgres;

--
-- Name: TABLE tiendas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.tiendas IS 'Tabla de las tiendas mayoristas de abarrotes.';


--
-- Name: COLUMN tiendas.tienda_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tiendas.tienda_id IS 'Identificador de las tiendas mayoristas de abarrotes.';


--
-- Name: COLUMN tiendas.siglas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tiendas.siglas IS 'Siglas que identifican a las tiendas mayoristas de abarrotes.';


--
-- Name: COLUMN tiendas.nombre_tienda; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tiendas.nombre_tienda IS 'Nombre de la tienda.';


--
-- Name: COLUMN tiendas.cadena_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tiendas.cadena_id IS 'Identificador de la cadena mayorista de abarrotes.';


--
-- Name: COLUMN tiendas.calle_numero; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tiendas.calle_numero IS 'Calle y número de la dirección de la tienda.';


--
-- Name: COLUMN tiendas.cp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tiendas.cp IS 'Código postal de la dirección de la tienda.';


--
-- Name: COLUMN tiendas.telefonos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tiendas.telefonos IS 'Teléfonos de la tienda.';


--
-- Name: COLUMN tiendas.colonia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tiendas.colonia IS 'Colonia de la tienda.';


--
-- Name: COLUMN tiendas.estado_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tiendas.estado_id IS 'Identificador del estado.';


--
-- Name: COLUMN tiendas.municipio_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tiendas.municipio_id IS 'Tabla de los municipios o alcaldias (CDMX).';


--
-- Name: COLUMN tiendas.latitude; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tiendas.latitude IS 'Latitud de la localización de la tienda';


--
-- Name: COLUMN tiendas.longitude; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.tiendas.longitude IS 'Laongitud de la localización de la tienda.';


--
-- Name: promedios_calificaciones; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.promedios_calificaciones AS
 SELECT c.cadena_id,
    c.nombre AS cadena,
    t.siglas,
    t.nombre_tienda,
    d.dimension,
    count(l.*) AS mediciones,
    (avg(cr.calificacion))::numeric(5,2) AS promedio
   FROM ((((public.levantamientos l
     JOIN public.tiendas t ON ((t.tienda_id = l.tienda_id)))
     JOIN public.calificaciones_resumen cr ON ((l.levantamiento_id = cr.levantamiento_id)))
     JOIN public.dimensiones d ON ((cr.dimension_id = d.dimension_id)))
     JOIN public.cadenas c ON ((t.cadena_id = c.cadena_id)))
  GROUP BY c.cadena_id, c.nombre, t.siglas, t.nombre_tienda, d.dimension
  ORDER BY c.cadena_id, d.dimension, ((avg(cr.calificacion))::numeric(5,2)) DESC, t.siglas;


ALTER TABLE public.promedios_calificaciones OWNER TO postgres;

--
-- Name: protocolos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.protocolos (
    protocolo_id integer NOT NULL,
    protocolo character varying(64) NOT NULL
);


ALTER TABLE public.protocolos OWNER TO postgres;

--
-- Name: TABLE protocolos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.protocolos IS 'Tabla de los protocolos del servicio';


--
-- Name: COLUMN protocolos.protocolo_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.protocolos.protocolo_id IS 'Llave primaria de los pasos de los protocolos en las tiendas.';


--
-- Name: COLUMN protocolos.protocolo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.protocolos.protocolo IS 'Definición del paso del protocolo.';


--
-- Name: protocolos_protocolo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.protocolos_protocolo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.protocolos_protocolo_id_seq OWNER TO postgres;

--
-- Name: protocolos_protocolo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.protocolos_protocolo_id_seq OWNED BY public.protocolos.protocolo_id;


--
-- Name: tiendas_tienda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiendas_tienda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiendas_tienda_id_seq OWNER TO postgres;

--
-- Name: tiendas_tienda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiendas_tienda_id_seq OWNED BY public.tiendas.tienda_id;


--
-- Name: areas area_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas ALTER COLUMN area_id SET DEFAULT nextval('public.areas_area_id_seq'::regclass);


--
-- Name: cadenas cadena_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cadenas ALTER COLUMN cadena_id SET DEFAULT nextval('public.cadenas_cadena_id_seq'::regclass);


--
-- Name: calificaciones_resumen calificacion_resumen_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones_resumen ALTER COLUMN calificacion_resumen_id SET DEFAULT nextval('public.calificaciones_resumen_calificacion_resumen_id_seq'::regclass);


--
-- Name: compradores comprador_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compradores ALTER COLUMN comprador_id SET DEFAULT nextval('public.compradores_comprador_id_seq'::regclass);


--
-- Name: departamentos departamento_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos ALTER COLUMN departamento_id SET DEFAULT nextval('public.departamentos_departamento_id_seq_1'::regclass);


--
-- Name: dimensiones dimension_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dimensiones ALTER COLUMN dimension_id SET DEFAULT nextval('public.dimensiones_dimension_id_seq_1'::regclass);


--
-- Name: levantamientos levantamiento_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos ALTER COLUMN levantamiento_id SET DEFAULT nextval('public.levantamientos_levantamiento_id_seq'::regclass);


--
-- Name: levantamientos_precios levantamiento_precios_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos_precios ALTER COLUMN levantamiento_precios_id SET DEFAULT nextval('public.levantamientos_precios_levantamiento_precios_id_seq'::regclass);


--
-- Name: levantamientos_tiempos_fila levantamiento_fila_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos_tiempos_fila ALTER COLUMN levantamiento_fila_id SET DEFAULT nextval('public.levantamientos_tiempos_fila_levantamiento_fila_id_seq'::regclass);


--
-- Name: preguntas pregunta_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preguntas ALTER COLUMN pregunta_id SET DEFAULT nextval('public.preguntas_pregunta_id_seq'::regclass);


--
-- Name: productos producto_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN producto_id SET DEFAULT nextval('public.productos_producto_id_seq'::regclass);


--
-- Name: protocolos protocolo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.protocolos ALTER COLUMN protocolo_id SET DEFAULT nextval('public.protocolos_protocolo_id_seq'::regclass);


--
-- Name: tiendas tienda_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiendas ALTER COLUMN tienda_id SET DEFAULT nextval('public.tiendas_tienda_id_seq'::regclass);


--
-- Data for Name: areas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.areas (area_id, area, dimension_id) FROM stdin;
1	Cremería	8
2	Mostrador	5
3	Checador	5
4	Estacionamiento	8
5	Carritos	4
6	Pasillos y anaqueles	4
7	Sanitarios	4
8	Entrega	8
9	Cajas	5
10	Oferta y precios	3
11	Surtido y Existencias	7
12	Seguridad industrial	6
13	Afluencia	2
14	Cajas abiertas	2
15	Personas en fila de cajas	2
16	Edad de mayoría de empacadores	2
17	Tamaño de formato	2
18	Tipo de formato	2
19	Faltantes	2
\.


--
-- Data for Name: cadenas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cadenas (cadena_id, nombre) FROM stdin;
1	Zorro Abarrotero
2	Scorpion
3	Abarrotera San Jorge
4	Sahuayo
5	Punto de Venta
6	DZ
7	Puma Abarrotero
8	MPPD
9	Marber
\.


--
-- Data for Name: calificaciones_resumen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.calificaciones_resumen (calificacion_resumen_id, dimension_id, levantamiento_id, calificacion) FROM stdin;
111	1	1286	90.91
112	3	1286	37.5
113	4	1286	71.43
114	5	1286	96.97
115	6	1286	82.0
116	7	1286	50.0
117	8	1286	79.17
118	9	1286	79.0
119	1	1287	100.0
120	3	1287	100.0
121	4	1287	78.57
122	5	1287	93.94
123	6	1287	82.0
124	7	1287	100.0
125	8	1287	75.0
126	9	1287	89.0
127	1	1288	90.91
128	3	1288	62.5
129	4	1288	85.71
130	5	1288	60.61
131	6	1288	90.0
132	7	1288	100.0
133	8	1288	87.5
134	9	1288	78.0
135	1	1289	54.55
136	3	1289	0.0
137	4	1289	50.0
138	5	1289	87.88
139	6	1289	56.0
140	7	1289	0.0
141	8	1289	54.17
142	9	1289	55.0
143	1	1290	90.91
144	3	1290	50.0
145	4	1290	85.71
146	5	1290	96.97
147	6	1290	90.0
148	7	1290	100.0
149	8	1290	100.0
150	9	1290	92.0
151	1	1291	100.0
152	3	1291	100.0
153	4	1291	78.57
154	5	1291	84.85
155	6	1291	100.0
156	7	1291	50.0
157	8	1291	54.17
158	9	1291	76.0
159	1	1292	100.0
160	3	1292	0.0
161	4	1292	64.29
162	5	1292	30.3
163	6	1292	100.0
164	7	1292	0.0
165	8	1292	37.5
166	9	1292	39.0
167	1	1293	36.36
168	3	1293	50.0
169	4	1293	50.0
170	5	1293	100.0
171	6	1293	74.0
172	7	1293	100.0
173	8	1293	95.83
174	9	1293	81.0
175	1	1294	90.91
176	3	1294	62.5
177	4	1294	78.57
178	5	1294	81.82
179	6	1294	100.0
180	7	1294	100.0
181	8	1294	62.5
182	9	1294	78.0
183	1	1295	90.91
184	3	1295	62.5
185	4	1295	85.71
186	5	1295	100.0
187	6	1295	84.0
188	7	1295	50.0
189	8	1295	100.0
190	9	1295	89.0
191	1	1296	72.73
192	3	1296	100.0
193	4	1296	78.57
194	5	1296	84.85
195	6	1296	82.0
196	7	1296	50.0
197	8	1296	62.5
198	9	1296	75.0
199	1	1297	63.64
200	3	1297	75.0
201	4	1297	64.29
202	5	1297	69.7
203	6	1297	72.0
204	7	1297	50.0
205	8	1297	41.67
206	9	1297	60.0
207	1	1298	72.73
208	3	1298	100.0
209	4	1298	78.57
210	5	1298	81.82
211	6	1298	100.0
212	7	1298	0.0
213	8	1298	50.0
214	9	1298	66.0
215	1	1299	81.82
216	3	1299	75.0
217	4	1299	100.0
218	5	1299	100.0
219	6	1299	100.0
220	7	1299	50.0
221	8	1299	100.0
222	9	1299	91.0
223	1	1300	72.73
224	3	1300	100.0
225	4	1300	92.86
226	5	1300	100.0
227	6	1300	70.0
228	7	1300	100.0
229	8	1300	87.5
230	9	1300	93.0
231	1	1301	100.0
232	3	1301	75.0
233	4	1301	78.57
234	5	1301	100.0
235	6	1301	62.0
236	7	1301	100.0
237	8	1301	100.0
238	9	1301	95.0
239	1	1302	90.91
240	3	1302	62.5
241	4	1302	100.0
242	5	1302	100.0
243	6	1302	100.0
244	7	1302	50.0
245	8	1302	91.67
246	9	1302	89.0
247	1	1303	100.0
248	3	1303	100.0
249	4	1303	92.86
250	5	1303	100.0
251	6	1303	100.0
252	7	1303	100.0
253	8	1303	100.0
254	9	1303	99.0
255	1	1304	90.91
256	3	1304	25.0
257	4	1304	57.14
258	5	1304	100.0
259	6	1304	100.0
260	7	1304	100.0
261	8	1304	83.33
262	9	1304	83.0
263	1	1305	100.0
264	3	1305	62.5
265	4	1305	78.57
266	5	1305	100.0
267	6	1305	100.0
268	7	1305	50.0
269	8	1305	62.5
270	9	1305	80.0
271	1	1306	90.91
272	3	1306	62.5
273	4	1306	92.86
274	5	1306	100.0
275	6	1306	82.0
276	7	1306	50.0
277	8	1306	87.5
278	9	1306	87.0
279	1	1307	100.0
280	3	1307	100.0
281	4	1307	100.0
282	5	1307	100.0
283	6	1307	82.0
284	7	1307	100.0
285	8	1307	100.0
286	9	1307	100.0
287	1	1308	90.91
288	3	1308	100.0
289	4	1308	85.71
290	5	1308	100.0
291	6	1308	90.0
292	7	1308	100.0
293	8	1308	100.0
294	9	1308	97.0
295	1	1309	100.0
296	3	1309	50.0
297	4	1309	92.86
298	5	1309	96.97
299	6	1309	70.0
300	7	1309	50.0
301	8	1309	100.0
302	9	1309	89.0
303	1	1310	100.0
304	3	1310	100.0
305	4	1310	92.86
306	5	1310	100.0
307	6	1310	100.0
308	7	1310	100.0
309	8	1310	100.0
310	9	1310	99.0
311	1	1311	72.73
312	3	1311	25.0
313	4	1311	64.29
314	5	1311	69.7
315	6	1311	56.0
316	7	1311	50.0
317	8	1311	58.33
318	9	1311	61.0
319	1	1312	81.82
320	3	1312	50.0
321	4	1312	85.71
322	5	1312	90.91
323	6	1312	90.0
324	7	1312	50.0
325	8	1312	75.0
326	9	1312	78.0
327	1	1313	63.64
328	3	1313	12.5
329	4	1313	50.0
330	5	1313	100.0
331	6	1313	38.0
332	7	1313	100.0
333	8	1313	79.17
334	9	1313	77.0
335	1	1314	81.82
336	3	1314	87.5
337	4	1314	100.0
338	5	1314	100.0
339	6	1314	80.0
340	7	1314	100.0
341	8	1314	100.0
342	9	1314	97.0
343	1	1315	100.0
344	3	1315	87.5
345	4	1315	92.86
346	5	1315	100.0
347	6	1315	90.0
348	7	1315	100.0
349	8	1315	100.0
350	9	1315	98.0
351	1	1395	36.36
352	3	1395	75.0
353	4	1395	57.14
354	5	1395	90.91
355	6	1395	72.0
356	7	1395	100.0
357	8	1395	100.0
358	9	1395	82.0
359	1	1316	100.0
360	3	1316	75.0
361	4	1316	92.86
362	5	1316	100.0
363	6	1316	84.0
364	7	1316	50.0
365	8	1316	100.0
366	9	1316	92.0
367	1	1317	90.91
368	3	1317	100.0
369	4	1317	78.57
370	5	1317	100.0
371	6	1317	82.0
372	7	1317	50.0
373	8	1317	100.0
374	9	1317	91.0
375	1	1318	72.73
376	3	1318	87.5
377	4	1318	78.57
378	5	1318	84.85
379	6	1318	100.0
380	7	1318	50.0
381	8	1318	70.83
382	9	1318	76.0
383	1	1319	100.0
384	3	1319	100.0
385	4	1319	85.71
386	5	1319	100.0
387	6	1319	100.0
388	7	1319	0.0
389	8	1319	100.0
390	9	1319	88.0
391	1	1320	90.91
392	3	1320	62.5
393	4	1320	92.86
394	5	1320	100.0
395	6	1320	90.0
396	7	1320	0.0
397	8	1320	100.0
398	9	1320	85.0
399	1	1321	72.73
400	3	1321	62.5
401	4	1321	92.86
402	5	1321	93.94
403	6	1321	90.0
404	7	1321	100.0
405	8	1321	79.17
406	9	1321	86.0
407	1	1322	100.0
408	3	1322	50.0
409	4	1322	100.0
410	5	1322	100.0
411	6	1322	62.0
412	7	1322	0.0
413	8	1322	100.0
414	9	1322	86.0
415	1	1323	100.0
416	3	1323	100.0
417	4	1323	100.0
418	5	1323	84.85
419	6	1323	100.0
420	7	1323	100.0
421	8	1323	100.0
422	9	1323	95.0
423	1	1324	100.0
424	3	1324	75.0
425	4	1324	57.14
426	5	1324	69.7
427	6	1324	58.0
428	7	1324	100.0
429	8	1324	91.67
430	9	1324	80.0
431	1	1325	81.82
432	3	1325	100.0
433	4	1325	100.0
434	5	1325	96.97
435	6	1325	82.0
436	7	1325	100.0
437	8	1325	95.83
438	9	1325	96.0
439	1	1326	100.0
440	3	1326	100.0
441	4	1326	100.0
442	5	1326	100.0
443	6	1326	100.0
444	7	1326	100.0
445	8	1326	75.0
446	9	1326	94.0
447	1	1327	100.0
448	3	1327	100.0
449	4	1327	64.29
450	5	1327	84.85
451	6	1327	100.0
452	7	1327	50.0
453	8	1327	100.0
454	9	1327	85.0
455	1	1328	100.0
456	3	1328	87.5
457	4	1328	85.71
458	5	1328	100.0
459	6	1328	70.0
460	7	1328	50.0
461	8	1328	100.0
462	9	1328	92.0
463	1	1329	100.0
464	3	1329	75.0
465	4	1329	71.43
466	5	1329	75.76
467	6	1329	72.0
468	7	1329	100.0
469	8	1329	100.0
470	9	1329	86.0
471	1	1330	100.0
472	3	1330	100.0
473	4	1330	85.71
474	5	1330	96.97
475	6	1330	84.0
476	7	1330	100.0
477	8	1330	70.83
478	9	1330	90.0
479	1	1331	81.82
480	3	1331	62.5
481	4	1331	92.86
482	5	1331	96.97
483	6	1331	74.0
484	7	1331	50.0
485	8	1331	58.33
486	9	1331	78.0
487	1	1332	90.91
488	3	1332	75.0
489	4	1332	78.57
490	5	1332	90.91
491	6	1332	100.0
492	7	1332	100.0
493	8	1332	79.17
494	9	1332	86.0
495	1	1333	81.82
496	3	1333	100.0
497	4	1333	92.86
498	5	1333	87.88
499	6	1333	100.0
500	7	1333	50.0
501	8	1333	100.0
502	9	1333	88.0
503	1	1334	100.0
504	3	1334	100.0
505	4	1334	78.57
506	5	1334	84.85
507	6	1334	100.0
508	7	1334	100.0
509	8	1334	62.5
510	9	1334	83.0
511	1	1335	72.73
512	3	1335	62.5
513	4	1335	57.14
514	5	1335	96.97
515	6	1335	66.0
516	7	1335	50.0
517	8	1335	70.83
518	9	1335	75.0
519	1	1336	72.73
520	3	1336	87.5
521	4	1336	78.57
522	5	1336	96.97
523	6	1336	100.0
524	7	1336	100.0
525	8	1336	87.5
526	9	1336	89.0
527	1	1337	100.0
528	3	1337	62.5
529	4	1337	78.57
530	5	1337	84.85
531	6	1337	82.0
532	7	1337	50.0
533	8	1337	62.5
534	9	1337	75.0
535	1	1338	90.91
536	3	1338	62.5
537	4	1338	35.71
538	5	1338	100.0
539	6	1338	56.0
540	7	1338	50.0
541	8	1338	100.0
542	9	1338	82.0
543	1	1339	81.82
544	3	1339	100.0
545	4	1339	92.86
546	5	1339	100.0
547	6	1339	90.0
548	7	1339	50.0
549	8	1339	100.0
550	9	1339	94.0
551	1	1340	90.91
552	3	1340	100.0
553	4	1340	100.0
554	5	1340	96.97
555	6	1340	82.0
556	7	1340	50.0
557	8	1340	70.83
558	9	1340	86.0
559	1	1341	100.0
560	3	1341	87.5
561	4	1341	92.86
562	5	1341	100.0
563	6	1341	100.0
564	7	1341	50.0
565	8	1341	100.0
566	9	1341	93.0
567	1	1342	81.82
568	3	1342	75.0
569	4	1342	78.57
570	5	1342	75.76
571	6	1342	74.0
572	7	1342	100.0
573	8	1342	100.0
574	9	1342	85.0
575	1	1343	90.91
576	3	1343	100.0
577	4	1343	92.86
578	5	1343	84.85
579	6	1343	100.0
580	7	1343	50.0
581	8	1343	75.0
582	9	1343	82.0
583	1	1344	90.91
584	3	1344	100.0
585	4	1344	71.43
586	5	1344	87.88
587	6	1344	100.0
588	7	1344	100.0
589	8	1344	58.33
590	9	1344	81.0
591	1	1345	90.91
592	3	1345	50.0
593	4	1345	100.0
594	5	1345	90.91
595	6	1345	90.0
596	7	1345	50.0
597	8	1345	41.67
598	9	1345	73.0
599	1	1346	54.55
600	3	1346	62.5
601	4	1346	78.57
602	5	1346	87.88
603	6	1346	66.0
604	7	1346	50.0
605	8	1346	33.33
606	9	1346	64.0
607	1	1347	81.82
608	3	1347	100.0
609	4	1347	85.71
610	5	1347	96.97
611	6	1347	74.0
612	7	1347	100.0
613	8	1347	54.17
614	9	1347	84.0
615	1	1348	100.0
616	3	1348	62.5
617	4	1348	85.71
618	5	1348	100.0
619	6	1348	100.0
620	7	1348	50.0
621	8	1348	100.0
622	9	1348	90.0
623	1	1349	100.0
624	3	1349	100.0
625	4	1349	92.86
626	5	1349	100.0
627	6	1349	100.0
628	7	1349	50.0
629	8	1349	79.17
630	9	1349	89.0
631	1	1350	81.82
632	3	1350	87.5
633	4	1350	85.71
634	5	1350	66.67
635	6	1350	66.0
636	7	1350	100.0
637	8	1350	79.17
638	9	1350	79.0
639	1	1351	90.91
640	3	1351	100.0
641	4	1351	64.29
642	5	1351	84.85
643	6	1351	100.0
644	7	1351	100.0
645	8	1351	37.5
646	9	1351	74.0
647	1	1352	72.73
648	3	1352	37.5
649	4	1352	50.0
650	5	1352	54.55
651	6	1352	56.0
652	7	1352	100.0
653	8	1352	50.0
654	9	1352	59.0
655	1	1353	100.0
656	3	1353	87.5
657	4	1353	78.57
658	5	1353	84.85
659	6	1353	70.0
660	7	1353	100.0
661	8	1353	54.17
662	9	1353	80.0
663	1	1354	100.0
664	3	1354	100.0
665	4	1354	100.0
666	5	1354	100.0
667	6	1354	90.0
668	7	1354	50.0
669	8	1354	58.33
670	9	1354	85.0
671	1	1355	90.91
672	3	1355	37.5
673	4	1355	85.71
674	5	1355	96.97
675	6	1355	100.0
676	7	1355	50.0
677	8	1355	58.33
678	9	1355	76.0
679	1	1356	81.82
680	3	1356	0.0
681	4	1356	42.86
682	5	1356	78.79
683	6	1356	56.0
684	7	1356	100.0
685	8	1356	29.17
686	9	1356	58.0
687	1	1357	63.64
688	3	1357	75.0
689	4	1357	100.0
690	5	1357	87.88
691	6	1357	82.0
692	7	1357	50.0
693	8	1357	75.0
694	9	1357	79.0
695	1	1358	100.0
696	3	1358	87.5
697	4	1358	92.86
698	5	1358	75.76
699	6	1358	44.0
700	7	1358	100.0
701	8	1358	100.0
702	9	1358	90.0
703	1	1359	100.0
704	3	1359	62.5
705	4	1359	57.14
706	5	1359	81.82
707	6	1359	60.0
708	7	1359	50.0
709	8	1359	100.0
710	9	1359	80.0
711	1	1360	90.91
712	3	1360	0.0
713	4	1360	64.29
714	5	1360	100.0
715	6	1360	38.0
716	7	1360	100.0
717	8	1360	58.33
718	9	1360	76.0
719	1	1361	100.0
720	3	1361	75.0
721	4	1361	100.0
722	5	1361	100.0
723	6	1361	72.0
724	7	1361	50.0
725	8	1361	95.83
726	9	1361	92.0
727	1	1362	90.91
728	3	1362	75.0
729	4	1362	85.71
730	5	1362	84.85
731	6	1362	64.0
732	7	1362	100.0
733	8	1362	70.83
734	9	1362	83.0
735	1	1363	72.73
736	3	1363	50.0
737	4	1363	64.29
738	5	1363	66.67
739	6	1363	88.0
740	7	1363	0.0
741	8	1363	79.17
742	9	1363	62.0
743	1	1364	81.82
744	3	1364	100.0
745	4	1364	100.0
746	5	1364	100.0
747	6	1364	82.0
748	7	1364	100.0
749	8	1364	100.0
750	9	1364	98.0
751	1	1365	100.0
752	3	1365	100.0
753	4	1365	100.0
754	5	1365	100.0
755	6	1365	84.0
756	7	1365	100.0
757	8	1365	100.0
758	9	1365	100.0
759	1	1366	81.82
760	3	1366	100.0
761	4	1366	92.86
762	5	1366	100.0
763	6	1366	82.0
764	7	1366	100.0
765	8	1366	79.17
766	9	1366	92.0
767	1	1367	100.0
768	3	1367	100.0
769	4	1367	85.71
770	5	1367	100.0
771	6	1367	56.0
772	7	1367	100.0
773	8	1367	87.5
774	9	1367	95.0
775	1	1368	81.82
776	3	1368	100.0
777	4	1368	100.0
778	5	1368	90.91
779	6	1368	100.0
780	7	1368	100.0
781	8	1368	100.0
782	9	1368	95.0
783	1	1369	100.0
784	3	1369	87.5
785	4	1369	92.86
786	5	1369	100.0
787	6	1369	88.0
788	7	1369	50.0
789	8	1369	100.0
790	9	1369	93.0
791	1	1370	81.82
792	3	1370	87.5
793	4	1370	92.86
794	5	1370	84.85
795	6	1370	82.0
796	7	1370	50.0
797	8	1370	29.17
798	9	1370	69.0
799	1	1371	100.0
800	3	1371	87.5
801	4	1371	85.71
802	5	1371	100.0
803	6	1371	82.0
804	7	1371	100.0
805	8	1371	100.0
806	9	1371	97.0
807	1	1372	100.0
808	3	1372	62.5
809	4	1372	28.57
810	5	1372	84.85
811	6	1372	88.0
812	7	1372	50.0
813	8	1372	79.17
814	9	1372	72.0
815	1	1373	90.91
816	3	1373	50.0
817	4	1373	92.86
818	5	1373	84.85
819	6	1373	100.0
820	7	1373	100.0
821	8	1373	100.0
822	9	1373	89.0
823	1	1374	100.0
824	3	1374	37.5
825	4	1374	71.43
826	5	1374	90.91
827	6	1374	90.0
828	7	1374	100.0
829	8	1374	100.0
830	9	1374	88.0
831	1	1375	81.82
832	3	1375	25.0
833	4	1375	78.57
834	5	1375	81.82
835	6	1375	90.0
836	7	1375	50.0
837	8	1375	79.17
838	9	1375	73.0
839	1	1376	91.0
840	3	1376	88.0
841	4	1376	64.0
842	5	1376	70.0
843	6	1376	54.0
844	7	1376	100.0
845	8	1376	88.0
846	9	1376	80.0
847	1	1377	90.91
848	3	1377	100.0
849	4	1377	78.57
850	5	1377	100.0
851	6	1377	100.0
852	7	1377	100.0
853	8	1377	58.33
854	9	1377	86.0
855	1	1378	72.73
856	3	1378	100.0
857	4	1378	100.0
858	5	1378	87.88
859	6	1378	90.0
860	7	1378	100.0
861	8	1378	79.17
862	9	1378	88.0
863	1	1379	36.36
864	3	1379	62.5
865	4	1379	57.14
866	5	1379	69.7
867	6	1379	60.0
868	7	1379	100.0
869	8	1379	75.0
870	9	1379	68.0
871	1	1380	27.27
872	3	1380	37.5
873	4	1380	64.29
874	5	1380	72.73
875	6	1380	72.0
876	7	1380	0.0
877	8	1380	50.0
878	9	1380	51.0
879	1	1381	45.45
880	3	1381	100.0
881	4	1381	78.57
882	5	1381	84.85
883	6	1381	40.0
884	7	1381	50.0
885	8	1381	62.5
886	9	1381	72.0
887	1	1382	100.0
888	3	1382	100.0
889	4	1382	100.0
890	5	1382	100.0
891	6	1382	100.0
892	7	1382	100.0
893	8	1382	62.5
894	9	1382	91.0
895	1	1383	81.82
896	3	1383	50.0
897	4	1383	92.86
898	5	1383	87.88
899	6	1383	90.0
900	7	1383	50.0
901	8	1383	79.17
902	9	1383	79.0
903	1	1394	36.36
904	3	1394	37.5
905	4	1394	57.14
906	5	1394	84.85
907	6	1394	74.0
908	7	1394	0.0
909	8	1394	70.83
910	9	1394	60.0
911	1	1384	100.0
912	3	1384	100.0
913	4	1384	100.0
914	5	1384	100.0
915	6	1384	100.0
916	7	1384	50.0
917	8	1384	87.5
918	9	1384	92.0
919	1	1385	90.91
920	3	1385	100.0
921	4	1385	85.71
922	5	1385	100.0
923	6	1385	82.0
924	7	1385	100.0
925	8	1385	54.17
926	9	1385	86.0
927	1	1386	100.0
928	3	1386	100.0
929	4	1386	100.0
930	5	1386	84.85
931	6	1386	84.0
932	7	1386	50.0
933	8	1386	100.0
934	9	1386	90.0
935	1	1387	81.82
936	3	1387	87.5
937	4	1387	64.29
938	5	1387	81.82
939	6	1387	82.0
940	7	1387	0.0
941	8	1387	100.0
942	9	1387	76.0
943	1	1388	72.73
944	3	1388	62.5
945	4	1388	92.86
946	5	1388	100.0
947	6	1388	72.0
948	7	1388	100.0
949	8	1388	54.17
950	9	1388	82.0
951	1	1389	100.0
952	3	1389	87.5
953	4	1389	85.71
954	5	1389	84.85
955	6	1389	88.0
956	7	1389	50.0
957	8	1389	95.83
958	9	1389	86.0
959	1	1390	100.0
960	3	1390	87.5
961	4	1390	85.71
962	5	1390	90.91
963	6	1390	66.0
964	7	1390	100.0
965	8	1390	75.0
966	9	1390	88.0
967	1	1391	100.0
968	3	1391	100.0
969	4	1391	92.86
970	5	1391	100.0
971	6	1391	82.0
972	7	1391	50.0
973	8	1391	91.67
974	9	1391	92.0
975	1	1392	100.0
976	3	1392	100.0
977	4	1392	100.0
978	5	1392	100.0
979	6	1392	100.0
980	7	1392	100.0
981	8	1392	95.83
982	9	1392	99.0
983	1	1393	90.91
984	3	1393	100.0
985	4	1393	92.86
986	5	1393	96.97
987	6	1393	82.0
988	7	1393	50.0
989	8	1393	79.17
990	9	1393	87.0
991	1	1396	82
992	3	1396	100
993	4	1396	86
994	5	1396	64
995	6	1396	72
996	7	1396	17
997	8	1396	75
998	9	1396	68
999	1	1397	100
1000	3	1397	100
1001	4	1397	71
1002	5	1397	91
1003	6	1397	82
1004	7	1397	8
1005	8	1397	88
1006	9	1397	79
1007	1	1398	91
1008	3	1398	50
1009	4	1398	86
1010	5	1398	100
1011	6	1398	72
1012	7	1398	17
1013	8	1398	100
1014	9	1398	84
1015	1	1399	100
1016	3	1399	100
1017	4	1399	93
1018	5	1399	100
1019	6	1399	100
1020	7	1399	58
1021	8	1399	75
1022	9	1399	88
1023	1	1400	91
1024	3	1400	50
1025	4	1400	100
1026	5	1400	100
1027	6	1400	72
1028	7	1400	100
1029	8	1400	83
1030	9	1400	92
1031	1	1401	100
1032	3	1401	100
1033	4	1401	100
1034	5	1401	100
1035	6	1401	100
1036	7	1401	58
1037	8	1401	75
1038	9	1401	89
1039	1	1402	91
1040	3	1402	50
1041	4	1402	93
1042	5	1402	100
1043	6	1402	100
1044	7	1402	100
1045	8	1402	88
1046	9	1402	92
1047	1	1403	91
1048	3	1403	50
1049	4	1403	100
1050	5	1403	100
1051	6	1403	90
1052	7	1403	58
1053	8	1403	71
1054	9	1403	84
1055	1	1404	73
1056	3	1404	50
1057	4	1404	79
1058	5	1404	73
1059	6	1404	72
1060	7	1404	58
1061	8	1404	75
1062	9	1404	71
1063	1	1405	64
1064	3	1405	50
1065	4	1405	86
1066	5	1405	85
1067	6	1405	100
1068	7	1405	58
1069	8	1405	63
1070	9	1405	72
1071	1	1406	82
1072	3	1406	100
1073	4	1406	86
1074	5	1406	88
1075	6	1406	100
1076	7	1406	92
1077	8	1406	92
1078	9	1406	89
1079	1	1407	64
1080	3	1407	50
1081	4	1407	79
1082	5	1407	100
1083	6	1407	100
1084	7	1407	58
1085	8	1407	71
1086	9	1407	78
1087	1	1408	91
1088	3	1408	100
1089	4	1408	93
1090	5	1408	97
1091	6	1408	88
1092	7	1408	100
1093	8	1408	58
1094	9	1408	87
1095	1	1409	91
1096	3	1409	50
1097	4	1409	100
1098	5	1409	100
1099	6	1409	90
1100	7	1409	100
1101	8	1409	71
1102	9	1409	89
1103	1	1410	55
1104	3	1410	50
1105	4	1410	100
1106	5	1410	97
1107	6	1410	82
1108	7	1410	17
1109	8	1410	42
1110	9	1410	67
1111	1	1411	73
1112	3	1411	50
1113	4	1411	93
1114	5	1411	85
1115	6	1411	100
1116	7	1411	58
1117	8	1411	50
1118	9	1411	71
1119	1	1412	82
1120	3	1412	100
1121	4	1412	100
1122	5	1412	88
1123	6	1412	82
1124	7	1412	92
1125	8	1412	42
1126	9	1412	79
1127	1	1413	100
1128	3	1413	100
1129	4	1413	79
1130	5	1413	85
1131	6	1413	54
1132	7	1413	58
1133	8	1413	75
1134	9	1413	81
1135	1	1414	82
1136	3	1414	100
1137	4	1414	100
1138	5	1414	100
1139	6	1414	82
1140	7	1414	58
1141	8	1414	100
1142	9	1414	93
1143	1	1415	27
1144	3	1415	17
1145	4	1415	57
1146	5	1415	85
1147	6	1415	38
1148	7	1415	0
1149	8	1415	46
1150	9	1415	51
1151	1	1416	91
1152	3	1416	83
1153	4	1416	86
1154	5	1416	100
1155	6	1416	100
1156	7	1416	100
1157	8	1416	100
1158	9	1416	96
1159	1	1417	91
1160	3	1417	50
1161	4	1417	100
1162	5	1417	100
1163	6	1417	100
1164	7	1417	17
1165	8	1417	100
1166	9	1417	86
1167	1	1418	91
1168	3	1418	100
1169	4	1418	86
1170	5	1418	91
1171	6	1418	100
1172	7	1418	100
1173	8	1418	67
1174	9	1418	86
1175	1	1419	100
1176	3	1419	50
1177	4	1419	100
1178	5	1419	100
1179	6	1419	100
1180	7	1419	100
1181	8	1419	83
1182	9	1419	93
1183	1	1420	55
1184	3	1420	50
1185	4	1420	100
1186	5	1420	88
1187	6	1420	88
1188	7	1420	58
1189	8	1420	58
1190	9	1420	73
1191	1	1421	100
1192	3	1421	100
1193	4	1421	100
1194	5	1421	91
1195	6	1421	100
1196	7	1421	58
1197	8	1421	79
1198	9	1421	87
1199	1	1422	91
1200	3	1422	100
1201	4	1422	93
1202	5	1422	100
1203	6	1422	100
1204	7	1422	92
1205	8	1422	63
1206	9	1422	88
1207	1	1423	82
1208	3	1423	50
1209	4	1423	93
1210	5	1423	85
1211	6	1423	88
1212	7	1423	42
1213	8	1423	83
1214	9	1423	78
1215	1	1424	91
1216	3	1424	67
1217	4	1424	57
1218	5	1424	100
1219	6	1424	82
1220	7	1424	58
1221	8	1424	79
1222	9	1424	81
1223	1	1426	91
1224	3	1426	67
1225	4	1426	100
1226	5	1426	100
1227	6	1426	90
1228	7	1426	100
1229	8	1426	92
1230	9	1426	95
1231	1	1425	82
1232	3	1425	100
1233	4	1425	57
1234	5	1425	100
1235	6	1425	72
1236	7	1425	100
1237	8	1425	38
1238	9	1425	77
1239	1	1427	100
1240	3	1427	83
1241	4	1427	57
1242	5	1427	85
1243	6	1427	100
1244	7	1427	100
1245	8	1427	75
1246	9	1427	82
1247	1	1428	100
1248	3	1428	83
1249	4	1428	100
1250	5	1428	85
1251	6	1428	100
1252	7	1428	100
1253	8	1428	100
1254	9	1428	99
1255	1	1429	100
1256	3	1429	50
1257	4	1429	79
1258	5	1429	73
1259	6	1429	88
1260	7	1429	92
1261	8	1429	63
1262	9	1429	75
1263	1	1430	82
1264	3	1430	100
1265	4	1430	79
1266	5	1430	85
1267	6	1430	100
1268	7	1430	58
1269	8	1430	100
1270	9	1430	85
1271	1	1431	36
1272	3	1431	0
1273	4	1431	64
1274	5	1431	85
1275	6	1431	70
1276	7	1431	0
1277	8	1431	100
1278	9	1431	65
1279	1	1432	100
1280	3	1432	100
1281	4	1432	93
1282	5	1432	85
1283	6	1432	100
1284	7	1432	58
1285	8	1432	67
1286	9	1432	81
1287	1	1433	91
1288	3	1433	67
1289	4	1433	100
1290	5	1433	85
1291	6	1433	100
1292	7	1433	58
1293	8	1433	88
1294	9	1433	84
1295	1	1434	82
1296	3	1434	100
1297	4	1434	100
1298	5	1434	85
1299	6	1434	100
1300	7	1434	58
1301	8	1434	75
1302	9	1434	82
1303	1	1435	100
1304	3	1435	100
1305	4	1435	86
1306	5	1435	100
1307	6	1435	60
1308	7	1435	100
1309	8	1435	100
1310	9	1435	98
1311	1	1436	100
1312	3	1436	100
1313	4	1436	100
1314	5	1436	91
1315	6	1436	84
1316	7	1436	17
1317	8	1436	100
1318	9	1436	87
1319	1	1437	100
1320	3	1437	83
1321	4	1437	79
1322	5	1437	67
1323	6	1437	40
1324	7	1437	100
1325	8	1437	92
1326	9	1437	83
1327	1	1438	82
1328	3	1438	50
1329	4	1438	64
1330	5	1438	100
1331	6	1438	72
1332	7	1438	58
1333	8	1438	38
1334	9	1438	70
1335	1	1439	82
1336	3	1439	0
1337	4	1439	50
1338	5	1439	100
1339	6	1439	72
1340	7	1439	42
1341	8	1439	100
1342	9	1439	78
1343	1	1440	100
1344	3	1440	100
1345	4	1440	86
1346	5	1440	97
1347	6	1440	90
1348	7	1440	42
1349	8	1440	96
1350	9	1440	89
1351	1	1441	91
1352	3	1441	50
1353	4	1441	86
1354	5	1441	91
1355	6	1441	100
1356	7	1441	58
1357	8	1441	88
1358	9	1441	83
1359	1	1442	91
1360	3	1442	50
1361	4	1442	71
1362	5	1442	73
1363	6	1442	90
1364	7	1442	83
1365	8	1442	79
1366	9	1442	76
1367	1	1443	82
1368	3	1443	50
1369	4	1443	86
1370	5	1443	64
1371	6	1443	82
1372	7	1443	42
1373	8	1443	88
1374	9	1443	71
1375	1	1444	100
1376	3	1444	0
1377	4	1444	79
1378	5	1444	85
1379	6	1444	100
1380	7	1444	100
1381	8	1444	75
1382	9	1444	80
1383	1	1445	82
1384	3	1445	100
1385	4	1445	100
1386	5	1445	88
1387	6	1445	66
1388	7	1445	92
1389	8	1445	96
1390	9	1445	92
1391	1	1447	100
1392	3	1447	67
1393	4	1447	93
1394	5	1447	45
1395	6	1447	100
1396	7	1447	58
1397	8	1447	75
1398	9	1447	68
1399	1	1448	64
1400	3	1448	50
1401	4	1448	93
1402	5	1448	67
1403	6	1448	82
1404	7	1448	100
1405	8	1448	50
1406	9	1448	69
1407	1	1449	91
1408	3	1449	50
1409	4	1449	93
1410	5	1449	100
1411	6	1449	88
1412	7	1449	58
1413	8	1449	83
1414	9	1449	86
1415	1	1450	100
1416	3	1450	100
1417	4	1450	79
1418	5	1450	100
1419	6	1450	72
1420	7	1450	100
1421	8	1450	96
1422	9	1450	96
1423	1	1451	73
1424	3	1451	83
1425	4	1451	93
1426	5	1451	100
1427	6	1451	100
1428	7	1451	100
1429	8	1451	75
1430	9	1451	89
1431	1	1452	100
1432	3	1452	50
1433	4	1452	100
1434	5	1452	100
1435	6	1452	82
1436	7	1452	100
1437	8	1452	50
1438	9	1452	85
1439	1	1453	91
1440	3	1453	50
1441	4	1453	93
1442	5	1453	85
1443	6	1453	100
1444	7	1453	100
1445	8	1453	88
1446	9	1453	87
1447	1	1454	91
1448	3	1454	50
1449	4	1454	100
1450	5	1454	79
1451	6	1454	82
1452	7	1454	58
1453	8	1454	75
1454	9	1454	78
1455	1	1455	82
1456	3	1455	100
1457	4	1455	100
1458	5	1455	100
1459	6	1455	82
1460	7	1455	100
1461	8	1455	88
1462	9	1455	92
1463	1	1456	100
1464	3	1456	50
1465	4	1456	79
1466	5	1456	100
1467	6	1456	70
1468	7	1456	58
1469	8	1456	100
1470	9	1456	91
1471	1	1457	91
1472	3	1457	50
1473	4	1457	86
1474	5	1457	100
1475	6	1457	72
1476	7	1457	42
1477	8	1457	88
1478	9	1457	84
1479	1	1458	100
1480	3	1458	67
1481	4	1458	93
1482	5	1458	88
1483	6	1458	72
1484	7	1458	17
1485	8	1458	79
1486	9	1458	78
1487	1	1459	100
1488	3	1459	67
1489	4	1459	79
1490	5	1459	76
1491	6	1459	100
1492	7	1459	100
1493	8	1459	58
1494	9	1459	77
1495	1	1460	64
1496	3	1460	50
1497	4	1460	79
1498	5	1460	100
1499	6	1460	84
1500	7	1460	100
1501	8	1460	79
1502	9	1460	85
1503	1	1461	73
1504	3	1461	50
1505	4	1461	64
1506	5	1461	82
1507	6	1461	82
1508	7	1461	100
1509	8	1461	92
1510	9	1461	81
1511	1	1462	100
1512	3	1462	50
1513	4	1462	79
1514	5	1462	85
1515	6	1462	100
1516	7	1462	100
1517	8	1462	63
1518	9	1462	80
1519	1	1463	100
1520	3	1463	100
1521	4	1463	93
1522	5	1463	76
1523	6	1463	82
1524	7	1463	83
1525	8	1463	58
1526	9	1463	79
1527	1	1464	100
1528	3	1464	100
1529	4	1464	64
1530	5	1464	82
1531	6	1464	66
1532	7	1464	50
1533	8	1464	50
1534	9	1464	71
1535	1	1465	91
1536	3	1465	100
1537	4	1465	64
1538	5	1465	100
1539	6	1465	100
1540	7	1465	17
1541	8	1465	46
1542	9	1465	68
1543	1	1466	73
1544	3	1466	100
1545	4	1466	79
1546	5	1466	85
1547	6	1466	100
1548	7	1466	100
1549	8	1466	63
1550	9	1466	83
1551	1	1467	100
1552	3	1467	100
1553	4	1467	93
1554	5	1467	73
1555	6	1467	100
1556	7	1467	83
1557	8	1467	67
1558	9	1467	80
1559	1	1468	82
1560	3	1468	50
1561	4	1468	79
1562	5	1468	85
1563	6	1468	72
1564	7	1468	83
1565	8	1468	83
1566	9	1468	81
1567	1	1469	82
1568	3	1469	100
1569	4	1469	100
1570	5	1469	100
1571	6	1469	72
1572	7	1469	100
1573	8	1469	71
1574	9	1469	91
1575	1	1470	91
1576	3	1470	50
1577	4	1470	64
1578	5	1470	70
1579	6	1470	82
1580	7	1470	42
1581	8	1470	38
1582	9	1470	59
1583	1	1471	73
1584	3	1471	100
1585	4	1471	79
1586	5	1471	73
1587	6	1471	88
1588	7	1471	50
1589	8	1471	42
1590	9	1471	65
1591	1	1472	82
1592	3	1472	67
1593	4	1472	86
1594	5	1472	88
1595	6	1472	100
1596	7	1472	92
1597	8	1472	71
1598	9	1472	82
1599	1	1473	18
1600	3	1473	50
1601	4	1473	79
1602	5	1473	88
1603	6	1473	50
1604	7	1473	50
1605	8	1473	71
1606	9	1473	68
1607	1	1474	100
1608	3	1474	50
1609	4	1474	86
1610	5	1474	100
1611	6	1474	62
1612	7	1474	17
1613	8	1474	75
1614	9	1474	79
1615	1	1475	100
1616	3	1475	100
1617	4	1475	100
1618	5	1475	100
1619	6	1475	84
1620	7	1475	58
1621	8	1475	79
1622	9	1475	90
1623	1	1476	100
1624	3	1476	50
1625	4	1476	100
1626	5	1476	100
1627	6	1476	72
1628	7	1476	100
1629	8	1476	100
1630	9	1476	97
1631	1	1477	100
1632	3	1477	100
1633	4	1477	64
1634	5	1477	82
1635	6	1477	48
1636	7	1477	17
1637	8	1477	88
1638	9	1477	76
1639	1	1478	64
1640	3	1478	100
1641	4	1478	64
1642	5	1478	100
1643	6	1478	82
1644	7	1478	17
1645	8	1478	88
1646	9	1478	78
1647	1	1479	91
1648	3	1479	0
1649	4	1479	86
1650	5	1479	97
1651	6	1479	68
1652	7	1479	100
1653	8	1479	88
1654	9	1479	87
1655	1	1480	91
1656	3	1480	50
1657	4	1480	43
1658	5	1480	100
1659	6	1480	54
1660	7	1480	17
1661	8	1480	100
1662	9	1480	67
1663	1	1481	100
1664	3	1481	100
1665	4	1481	79
1666	5	1481	70
1667	6	1481	70
1668	7	1481	50
1669	8	1481	79
1670	9	1481	76
1671	1	1482	82
1672	3	1482	100
1673	4	1482	57
1674	5	1482	91
1675	6	1482	54
1676	7	1482	0
1677	8	1482	100
1678	9	1482	77
1679	1	1483	91
1680	3	1483	50
1681	4	1483	57
1682	5	1483	85
1683	6	1483	72
1684	7	1483	0
1685	8	1483	100
1686	9	1483	77
1687	1	1484	73
1688	3	1484	100
1689	4	1484	79
1690	5	1484	85
1691	6	1484	100
1692	7	1484	100
1693	8	1484	63
1694	9	1484	80
1695	1	1485	91
1696	3	1485	50
1697	4	1485	100
1698	5	1485	100
1699	6	1485	82
1700	7	1485	58
1701	8	1485	100
1702	9	1485	91
1703	1	1486	100
1704	3	1486	50
1705	4	1486	100
1706	5	1486	100
1707	6	1486	100
1708	7	1486	100
1709	8	1486	83
1710	9	1486	93
1711	1	1487	100
1712	3	1487	100
1713	4	1487	64
1714	5	1487	100
1715	6	1487	82
1716	7	1487	100
1717	8	1487	63
1718	9	1487	86
1719	1	1488	82
1720	3	1488	50
1721	4	1488	93
1722	5	1488	100
1723	6	1488	100
1724	7	1488	100
1725	8	1488	96
1726	9	1488	93
1727	1	1489	100
1728	3	1489	100
1729	4	1489	57
1730	5	1489	97
1731	6	1489	90
1732	7	1489	100
1733	8	1489	88
1734	9	1489	90
1735	1	1490	73
1736	3	1490	100
1737	4	1490	86
1738	5	1490	100
1739	6	1490	72
1740	7	1490	17
1741	8	1490	100
1742	9	1490	85
1743	1	1491	73
1744	3	1491	67
1745	4	1491	100
1746	5	1491	100
1747	6	1491	56
1748	7	1491	58
1749	8	1491	100
1750	9	1491	90
1751	1	1492	91
1752	3	1492	100
1753	4	1492	71
1754	5	1492	94
1755	6	1492	74
1756	7	1492	100
1757	8	1492	58
1758	9	1492	83
1759	1	1493	100
1760	3	1493	100
1761	4	1493	100
1762	5	1493	100
1763	6	1493	64
1764	7	1493	100
1765	8	1493	100
1766	9	1493	100
1767	1	1494	82
1768	3	1494	100
1769	4	1494	93
1770	5	1494	100
1771	6	1494	82
1772	7	1494	42
1773	8	1494	58
1774	9	1494	80
1775	1	1495	91
1776	3	1495	100
1777	4	1495	57
1778	5	1495	100
1779	6	1495	82
1780	7	1495	100
1781	8	1495	100
1782	9	1495	93
1783	1	1496	91
1784	3	1496	100
1785	4	1496	71
1786	5	1496	70
1787	6	1496	48
1788	7	1496	100
1789	8	1496	100
1790	9	1496	85
1791	1	1497	82
1792	3	1497	100
1793	4	1497	71
1794	5	1497	73
1795	6	1497	54
1796	7	1497	58
1797	8	1497	67
1798	9	1497	72
1799	1	1498	100
1800	3	1498	83
1801	4	1498	71
1802	5	1498	91
1803	6	1498	26
1804	7	1498	100
1805	8	1498	88
1806	9	1498	89
1807	1	1499	82
1808	3	1499	100
1809	4	1499	64
1810	5	1499	73
1811	6	1499	82
1812	7	1499	83
1813	8	1499	100
1814	9	1499	82
1815	1	1500	0
1816	3	1500	0
1817	4	1500	21
1818	5	1500	61
1819	6	1500	12
1820	7	1500	83
1821	8	1500	71
1822	9	1500	50
1823	1	1501	91
1824	3	1501	50
1825	4	1501	86
1826	5	1501	82
1827	6	1501	90
1828	7	1501	58
1829	8	1501	100
1830	9	1501	83
1831	1	1502	82
1832	3	1502	100
1833	4	1502	93
1834	5	1502	79
1835	6	1502	100
1836	7	1502	58
1837	8	1502	88
1838	9	1502	82
1839	1	1503	82
1840	3	1503	100
1841	4	1503	86
1842	5	1503	82
1843	6	1503	82
1844	7	1503	100
1845	8	1503	100
1846	9	1503	90
1847	1	1504	100
1848	3	1504	100
1849	4	1504	100
1850	5	1504	100
1851	6	1504	66
1852	7	1504	58
1853	8	1504	100
1854	9	1504	95
1855	1	1505	73
1856	3	1505	100
1857	4	1505	79
1858	5	1505	67
1859	6	1505	28
1860	7	1505	92
1861	8	1505	75
1862	9	1505	76
1863	1	1506	91
1864	3	1506	67
1865	4	1506	79
1866	5	1506	76
1867	6	1506	60
1868	7	1506	100
1869	8	1506	88
1870	9	1506	78
1871	1	1507	18
1872	3	1507	50
1873	4	1507	86
1874	5	1507	76
1875	6	1507	100
1876	7	1507	100
1877	8	1507	88
1878	9	1507	75
1879	1	1508	91
1880	3	1508	67
1881	4	1508	86
1882	5	1508	100
1883	6	1508	72
1884	7	1508	100
1885	8	1508	100
1886	9	1508	95
1887	1	1509	27
1888	3	1509	100
1889	4	1509	50
1890	5	1509	76
1891	6	1509	36
1892	7	1509	83
1893	8	1509	25
1894	9	1509	57
1895	1	1510	100
1896	3	1510	0
1897	4	1510	100
1898	5	1510	100
1899	6	1510	66
1900	7	1510	100
1901	8	1510	83
1902	9	1510	90
1903	1	1511	91
1904	3	1511	100
1905	4	1511	71
1906	5	1511	100
1907	6	1511	72
1908	7	1511	83
1909	8	1511	100
1910	9	1511	93
1911	1	1512	36
1912	3	1512	50
1913	4	1512	36
1914	5	1512	85
1915	6	1512	56
1916	7	1512	83
1917	8	1512	54
1918	9	1512	63
1919	1	1513	90.91
1920	3	1513	87.5
1921	4	1513	78.57
1922	5	1513	69.7
1923	6	1513	67.0
1924	7	1513	50.0
1925	8	1513	45.83
1926	9	1513	88.0
1927	1	1514	100
1928	3	1514	67
1929	4	1514	86
1930	5	1514	85
1931	6	1514	44
1932	7	1514	83
1933	8	1514	100
1934	9	1514	89
1935	1	1515	100
1936	3	1515	100
1937	4	1515	71
1938	5	1515	91
1939	6	1515	56
1940	7	1515	92
1941	8	1515	100
1942	9	1515	92
1943	1	1516	82
1944	3	1516	100
1945	4	1516	86
1946	5	1516	100
1947	6	1516	72
1948	7	1516	100
1949	8	1516	63
1950	9	1516	87
1951	1	1517	100
1952	3	1517	100
1953	4	1517	93
1954	5	1517	100
1955	6	1517	100
1956	7	1517	100
1957	8	1517	79
1958	9	1517	94
1959	1	1518	73
1960	3	1518	50
1961	4	1518	100
1962	5	1518	97
1963	6	1518	84
1964	7	1518	100
1965	8	1518	96
1966	9	1518	92
1967	1	1519	82
1968	3	1519	100
1969	4	1519	100
1970	5	1519	94
1971	6	1519	100
1972	7	1519	100
1973	8	1519	75
1974	9	1519	90
1975	1	1520	82
1976	3	1520	50
1977	4	1520	93
1978	5	1520	85
1979	6	1520	100
1980	7	1520	100
1981	8	1520	71
1982	9	1520	82
1983	1	1521	100
1984	3	1521	100
1985	4	1521	100
1986	5	1521	100
1987	6	1521	100
1988	7	1521	100
1989	8	1521	92
1990	9	1521	98
1991	1	1522	91
1992	3	1522	50
1993	4	1522	93
1994	5	1522	85
1995	6	1522	100
1996	7	1522	58
1997	8	1522	88
1998	9	1522	82
1999	1	1523	45
2000	3	1523	50
2001	4	1523	93
2002	5	1523	85
2003	6	1523	72
2004	7	1523	50
2005	8	1523	100
2006	9	1523	79
2007	1	1524	100
2008	3	1524	100
2009	4	1524	100
2010	5	1524	73
2011	6	1524	72
2012	7	1524	100
2013	8	1524	100
2014	9	1524	91
2015	1	1525	73
2016	3	1525	50
2017	4	1525	50
2018	5	1525	64
2019	6	1525	66
2020	7	1525	100
2021	8	1525	58
2022	9	1525	65
2023	1	1526	45
2024	3	1526	100
2025	4	1526	64
2026	5	1526	91
2027	6	1526	60
2028	7	1526	100
2029	8	1526	79
2030	9	1526	81
2031	1	1527	100
2032	3	1527	67
2033	4	1527	71
2034	5	1527	91
2035	6	1527	72
2036	7	1527	83
2037	8	1527	100
2038	9	1527	89
2039	1	1528	82
2040	3	1528	50
2041	4	1528	93
2042	5	1528	100
2043	6	1528	100
2044	7	1528	100
2045	8	1528	92
2046	9	1528	92
2047	1	1529	100
2048	3	1529	50
2049	4	1529	93
2050	5	1529	70
2051	6	1529	100
2052	7	1529	100
2053	8	1529	75
2054	9	1529	80
2055	1	1530	100
2056	3	1530	100
2057	4	1530	100
2058	5	1530	85
2059	6	1530	100
2060	7	1530	92
2061	8	1530	88
2062	9	1530	91
2063	1	1531	100
2064	3	1531	100
2065	4	1531	100
2066	5	1531	85
2067	6	1531	100
2068	7	1531	100
2069	8	1531	58
2070	9	1531	85
2071	1	1532	100
2072	3	1532	100
2073	4	1532	86
2074	5	1532	85
2075	6	1532	100
2076	7	1532	100
2077	8	1532	71
2078	9	1532	86
2079	1	1533	45
2080	3	1533	100
2081	4	1533	79
2082	5	1533	39
2083	6	1533	82
2084	7	1533	58
2085	8	1533	83
2086	9	1533	62
2087	1	1534	100
2088	3	1534	100
2089	4	1534	86
2090	5	1534	88
2091	6	1534	66
2092	7	1534	100
2093	8	1534	88
2094	9	1534	91
2095	1	1535	82
2096	3	1535	100
2097	4	1535	86
2098	5	1535	100
2099	6	1535	84
2100	7	1535	100
2101	8	1535	100
2102	9	1535	96
2103	1	1536	91
2104	3	1536	33
2105	4	1536	50
2106	5	1536	79
2107	6	1536	72
2108	7	1536	42
2109	8	1536	67
2110	9	1536	66
2111	1	1537	100
2112	3	1537	100
2113	4	1537	100
2114	5	1537	97
2115	6	1537	100
2116	7	1537	100
2117	8	1537	79
2118	9	1537	94
2119	1	1538	73
2120	3	1538	50
2121	4	1538	14
2122	5	1538	76
2123	6	1538	82
2124	7	1538	58
2125	8	1538	88
2126	9	1538	66
2127	1	1539	91
2128	3	1539	100
2129	4	1539	100
2130	5	1539	100
2131	6	1539	100
2132	7	1539	100
2133	8	1539	96
2134	9	1539	98
2135	1	1540	100
2136	3	1540	50
2137	4	1540	93
2138	5	1540	100
2139	6	1540	82
2140	7	1540	92
2141	8	1540	33
2142	9	1540	79
2143	1	1541	100
2144	3	1541	67
2145	4	1541	93
2146	5	1541	100
2147	6	1541	70
2148	7	1541	50
2149	8	1541	88
2150	9	1541	88
2151	1	1542	82
2152	3	1542	50
2153	4	1542	86
2154	5	1542	100
2155	6	1542	82
2156	7	1542	100
2157	8	1542	96
2158	9	1542	92
2159	1	1544	91
2160	3	1544	100
2161	4	1544	86
2162	5	1544	100
2163	6	1544	82
2164	7	1544	100
2165	8	1544	71
2166	9	1544	90
2167	1	1543	100
2168	3	1543	50
2169	4	1543	100
2170	5	1543	100
2171	6	1543	70
2172	7	1543	83
2173	8	1543	83
2174	9	1543	91
2175	1	1545	73
2176	3	1545	0
2177	4	1545	79
2178	5	1545	100
2179	6	1545	100
2180	7	1545	100
2181	8	1545	63
2182	9	1545	79
2183	1	1546	73
2184	3	1546	0
2185	4	1546	86
2186	5	1546	100
2187	6	1546	100
2188	7	1546	100
2189	8	1546	100
2190	9	1546	94
2191	1	1547	100
2192	3	1547	0
2193	4	1547	14
2194	5	1547	82
2195	6	1547	22
2196	7	1547	83
2197	8	1547	100
2198	9	1547	74
2199	1	1548	100
2200	3	1548	50
2201	4	1548	93
2202	5	1548	100
2203	6	1548	100
2204	7	1548	83
2205	8	1548	92
2206	9	1548	92
2207	1	1549	91
2208	3	1549	50
2209	4	1549	93
2210	5	1549	100
2211	6	1549	88
2212	7	1549	100
2213	8	1549	100
2214	9	1549	95
2215	1	1550	100
2216	3	1550	33
2217	4	1550	36
2218	5	1550	100
2219	6	1550	82
2220	7	1550	67
2221	8	1550	58
2222	9	1550	73
2223	1	1551	73
2224	3	1551	50
2225	4	1551	79
2226	5	1551	91
2227	6	1551	66
2228	7	1551	100
2229	8	1551	71
2230	9	1551	81
2231	1	1552	100
2232	3	1552	100
2233	4	1552	100
2234	5	1552	82
2235	6	1552	100
2236	7	1552	100
2237	8	1552	83
2238	9	1552	90
2239	1	1553	91
2240	3	1553	50
2241	4	1553	100
2242	5	1553	100
2243	6	1553	100
2244	7	1553	100
2245	8	1553	75
2246	9	1553	90
2247	1	1554	82
2248	3	1554	100
2249	4	1554	79
2250	5	1554	100
2251	6	1554	84
2252	7	1554	100
2253	8	1554	88
2254	9	1554	92
2255	1	1555	100
2256	3	1555	100
2257	4	1555	100
2258	5	1555	100
2259	6	1555	100
2260	7	1555	100
2261	8	1555	83
2262	9	1555	96
2263	1	1556	82
2264	3	1556	83
2265	4	1556	43
2266	5	1556	91
2267	6	1556	72
2268	7	1556	100
2269	8	1556	100
2270	9	1556	86
2271	1	1557	36
2272	3	1557	50
2273	4	1557	57
2274	5	1557	73
2275	6	1557	46
2276	7	1557	58
2277	8	1557	75
2278	9	1557	64
2279	1	1558	100
2280	3	1558	33
2281	4	1558	57
2282	5	1558	100
2283	6	1558	82
2284	7	1558	58
2285	8	1558	100
2286	9	1558	85
2287	1	1559	82
2288	3	1559	100
2289	4	1559	71
2290	5	1559	82
2291	6	1559	56
2292	7	1559	100
2293	8	1559	75
2294	9	1559	82
2295	1	1560	82
2296	3	1560	100
2297	4	1560	71
2298	5	1560	100
2299	6	1560	54
2300	7	1560	92
2301	8	1560	100
2302	9	1560	93
2303	1	1561	91
2304	3	1561	67
2305	4	1561	64
2306	5	1561	76
2307	6	1561	82
2308	7	1561	100
2309	8	1561	100
2310	9	1561	84
2311	1	1562	100
2312	3	1562	50
2313	4	1562	86
2314	5	1562	82
2315	6	1562	82
2316	7	1562	92
2317	8	1562	88
2318	9	1562	85
2319	1	1563	100
2320	3	1563	100
2321	4	1563	86
2322	5	1563	100
2323	6	1563	100
2324	7	1563	17
2325	8	1563	100
2326	9	1563	88
2327	1	1564	100
2328	3	1564	50
2329	4	1564	93
2330	5	1564	100
2331	6	1564	72
2332	7	1564	100
2333	8	1564	100
2334	9	1564	96
2335	1	1565	82
2336	3	1565	17
2337	4	1565	43
2338	5	1565	39
2339	6	1565	90
2340	7	1565	58
2341	8	1565	88
2342	9	1565	57
2343	1	1566	64
2344	3	1566	50
2345	4	1566	79
2346	5	1566	85
2347	6	1566	82
2348	7	1566	100
2349	8	1566	46
2350	9	1566	72
2351	1	1567	45
2352	3	1567	67
2353	4	1567	21
2354	5	1567	100
2355	6	1567	82
2356	7	1567	17
2357	8	1567	100
2358	9	1567	71
2359	1	1568	82
2360	3	1568	67
2361	4	1568	79
2362	5	1568	100
2363	6	1568	100
2364	7	1568	100
2365	8	1568	83
2366	9	1568	89
2367	1	1569	82
2368	3	1569	100
2369	4	1569	79
2370	5	1569	100
2371	6	1569	100
2372	7	1569	100
2373	8	1569	88
2374	9	1569	92
2375	1	1570	100
2376	3	1570	50
2377	4	1570	71
2378	5	1570	85
2379	6	1570	100
2380	7	1570	58
2381	8	1570	67
2382	9	1570	75
2383	1	1571	91
2384	3	1571	50
2385	4	1571	86
2386	5	1571	100
2387	6	1571	82
2388	7	1571	42
2389	8	1571	83
2390	9	1571	83
2391	1	1572	100
2392	3	1572	67
2393	4	1572	57
2394	5	1572	88
2395	6	1572	64
2396	7	1572	100
2397	8	1572	100
2398	9	1572	88
2399	1	1573	91
2400	3	1573	100
2401	4	1573	57
2402	5	1573	100
2403	6	1573	72
2404	7	1573	92
2405	8	1573	100
2406	9	1573	94
2407	1	1574	100
2408	3	1574	67
2409	4	1574	71
2410	5	1574	100
2411	6	1574	82
2412	7	1574	92
2413	8	1574	100
2414	9	1574	92
2415	1	1575	27
2416	3	1575	0
2417	4	1575	79
2418	5	1575	91
2419	6	1575	82
2420	7	1575	100
2421	8	1575	100
2422	9	1575	80
2423	1	1576	91
2424	3	1576	50
2425	4	1576	93
2426	5	1576	85
2427	6	1576	66
2428	7	1576	50
2429	8	1576	71
2430	9	1576	77
2431	1	1577	100
2432	3	1577	100
2433	4	1577	57
2434	5	1577	85
2435	6	1577	100
2436	7	1577	58
2437	8	1577	63
2438	9	1577	75
2439	1	1578	91
2440	3	1578	50
2441	4	1578	86
2442	5	1578	85
2443	6	1578	84
2444	7	1578	100
2445	8	1578	96
2446	9	1578	88
2447	1	1579	27
2448	3	1579	83
2449	4	1579	57
2450	5	1579	94
2451	6	1579	70
2452	7	1579	100
2453	8	1579	96
2454	9	1579	82
2455	1	1580	100
2456	3	1580	83
2457	4	1580	79
2458	5	1580	73
2459	6	1580	90
2460	7	1580	17
2461	8	1580	58
2462	9	1580	67
2463	1	1581	100
2464	3	1581	83
2465	4	1581	64
2466	5	1581	94
2467	6	1581	70
2468	7	1581	83
2469	8	1581	71
2470	9	1581	83
2471	1	1582	91
2472	3	1582	100
2473	4	1582	93
2474	5	1582	88
2475	6	1582	100
2476	7	1582	58
2477	8	1582	92
2478	9	1582	87
2479	1	1583	82
2480	3	1583	100
2481	4	1583	93
2482	5	1583	97
2483	6	1583	84
2484	7	1583	17
2485	8	1583	79
2486	9	1583	81
2487	1	1584	82
2488	3	1584	83
2489	4	1584	86
2490	5	1584	85
2491	6	1584	88
2492	7	1584	17
2493	8	1584	96
2494	9	1584	79
2495	1	1585	82
2496	3	1585	100
2497	4	1585	93
2498	5	1585	100
2499	6	1585	88
2500	7	1585	92
2501	8	1585	83
2502	9	1585	92
2503	1	1586	82
2504	3	1586	50
2505	4	1586	93
2506	5	1586	100
2507	6	1586	84
2508	7	1586	50
2509	8	1586	96
2510	9	1586	87
2511	1	1587	82
2512	3	1587	50
2513	4	1587	64
2514	5	1587	94
2515	6	1587	82
2516	7	1587	92
2517	8	1587	71
2518	9	1587	80
2519	1	1588	91
2520	3	1588	50
2521	4	1588	71
2522	5	1588	76
2523	6	1588	54
2524	7	1588	83
2525	8	1588	63
2526	9	1588	73
2527	1	1589	100
2528	3	1589	100
2529	4	1589	93
2530	5	1589	100
2531	6	1589	72
2532	7	1589	100
2533	8	1589	100
2534	9	1589	99
2535	1	1590	100
2536	3	1590	67
2537	4	1590	79
2538	5	1590	100
2539	6	1590	72
2540	7	1590	83
2541	8	1590	100
2542	9	1590	93
2543	1	1591	100
2544	3	1591	100
2545	4	1591	100
2546	5	1591	97
2547	6	1591	82
2548	7	1591	100
2549	8	1591	96
2550	9	1591	98
2551	1	1592	91
2552	3	1592	100
2553	4	1592	64
2554	5	1592	100
2555	6	1592	80
2556	7	1592	100
2557	8	1592	100
2558	9	1592	94
2559	1	1593	82
2560	3	1593	100
2561	4	1593	100
2562	5	1593	100
2563	6	1593	84
2564	7	1593	100
2565	8	1593	92
2566	9	1593	96
2567	1	1594	100
2568	3	1594	50
2569	4	1594	86
2570	5	1594	100
2571	6	1594	66
2572	7	1594	100
2573	8	1594	83
2574	9	1594	91
2575	1	1595	91
2576	3	1595	100
2577	4	1595	71
2578	5	1595	76
2579	6	1595	56
2580	7	1595	100
2581	8	1595	100
2582	9	1595	96
2583	1	1596	100
2584	3	1596	100
2585	4	1596	43
2586	5	1596	100
2587	6	1596	70
2588	7	1596	50
2589	8	1596	88
2590	9	1596	83
2591	1	1597	91
2592	3	1597	50
2593	4	1597	71
2594	5	1597	100
2595	6	1597	72
2596	7	1597	100
2597	8	1597	100
2598	9	1597	92
2599	1	1598	91
2600	3	1598	100
2601	4	1598	36
2602	5	1598	88
2603	6	1598	70
2604	7	1598	100
2605	8	1598	38
2606	9	1598	71
2607	1	1599	100
2608	3	1599	83
2609	4	1599	79
2610	5	1599	85
2611	6	1599	70
2612	7	1599	50
2613	8	1599	75
2614	9	1599	79
2615	1	1600	100
2616	3	1600	100
2617	4	1600	79
2618	5	1600	100
2619	6	1600	82
2620	7	1600	17
2621	8	1600	100
2622	9	1600	87
2623	1	1601	100
2624	3	1601	50
2625	4	1601	79
2626	5	1601	85
2627	6	1601	100
2628	7	1601	100
2629	8	1601	88
2630	9	1601	87
2631	1	1602	82
2632	3	1602	100
2633	4	1602	93
2634	5	1602	85
2635	6	1602	100
2636	7	1602	17
2637	8	1602	88
2638	9	1602	79
2639	1	1603	55
2640	3	1603	50
2641	4	1603	79
2642	5	1603	85
2643	6	1603	100
2644	7	1603	100
2645	8	1603	100
2646	9	1603	84
2647	1	1604	91
2648	3	1604	50
2649	4	1604	93
2650	5	1604	94
2651	6	1604	90
2652	7	1604	100
2653	8	1604	88
2654	9	1604	90
2655	1	1605	82
2656	3	1605	50
2657	4	1605	86
2658	5	1605	100
2659	6	1605	68
2660	7	1605	100
2661	8	1605	63
2662	9	1605	84
2663	1	1606	82
2664	3	1606	100
2665	4	1606	100
2666	5	1606	100
2667	6	1606	72
2668	7	1606	100
2669	8	1606	88
2670	9	1606	95
2671	1	1607	73
2672	3	1607	67
2673	4	1607	86
2674	5	1607	100
2675	6	1607	82
2676	7	1607	58
2677	8	1607	75
2678	9	1607	82
2679	1	1608	91
2680	3	1608	100
2681	4	1608	79
2682	5	1608	100
2683	6	1608	100
2684	7	1608	100
2685	8	1608	96
2686	9	1608	95
2687	1	1609	100
2688	3	1609	100
2689	4	1609	86
2690	5	1609	88
2691	6	1609	90
2692	7	1609	17
2693	8	1609	100
2694	9	1609	84
2695	1	1610	100
2696	3	1610	100
2697	4	1610	93
2698	5	1610	100
2699	6	1610	72
2700	7	1610	100
2701	8	1610	100
2702	9	1610	99
2703	1	1611	100
2704	3	1611	67
2705	4	1611	93
2706	5	1611	100
2707	6	1611	82
2708	7	1611	100
2709	8	1611	100
2710	9	1611	97
2711	1	1612	73
2712	3	1612	67
2713	4	1612	79
2714	5	1612	64
2715	6	1612	66
2716	7	1612	100
2717	8	1612	71
2718	9	1612	73
2719	1	1613	100
2720	3	1613	100
2721	4	1613	71
2722	5	1613	100
2723	6	1613	42
2724	7	1613	17
2725	8	1613	100
2726	9	1613	86
2727	1	1614	91
2728	3	1614	83
2729	4	1614	64
2730	5	1614	100
2731	6	1614	72
2732	7	1614	100
2733	8	1614	83
2734	9	1614	89
2735	1	1615	91
2736	3	1615	83
2737	4	1615	21
2738	5	1615	55
2739	6	1615	40
2740	7	1615	83
2741	8	1615	71
2742	9	1615	63
2743	1	1616	91
2744	3	1616	100
2745	4	1616	86
2746	5	1616	85
2747	6	1616	54
2748	7	1616	58
2749	8	1616	83
2750	9	1616	83
2751	1	1617	100
2752	3	1617	50
2753	4	1617	36
2754	5	1617	88
2755	6	1617	72
2756	7	1617	100
2757	8	1617	88
2758	9	1617	81
2759	1	1618	73
2760	3	1618	100
2761	4	1618	71
2762	5	1618	100
2763	6	1618	82
2764	7	1618	100
2765	8	1618	88
2766	9	1618	90
2767	1	1619	82
2768	3	1619	33
2769	4	1619	43
2770	5	1619	61
2771	6	1619	28
2772	7	1619	83
2773	8	1619	67
2774	9	1619	63
2775	1	1620	100
2776	3	1620	50
2777	4	1620	93
2778	5	1620	88
2779	6	1620	100
2780	7	1620	100
2781	8	1620	100
2782	9	1620	92
2783	1	1621	82
2784	3	1621	100
2785	4	1621	86
2786	5	1621	61
2787	6	1621	84
2788	7	1621	100
2789	8	1621	100
2790	9	1621	83
2791	1	1622	91
2792	3	1622	67
2793	4	1622	86
2794	5	1622	82
2795	6	1622	66
2796	7	1622	100
2797	8	1622	92
2798	9	1622	87
2799	1	1623	36
2800	3	1623	50
2801	4	1623	93
2802	5	1623	76
2803	6	1623	38
2804	7	1623	100
2805	8	1623	88
2806	9	1623	78
2807	1	1624	100
2808	3	1624	100
2809	4	1624	50
2810	5	1624	67
2811	6	1624	22
2812	7	1624	100
2813	8	1624	50
2814	9	1624	70
2815	1	1625	82
2816	3	1625	100
2817	4	1625	50
2818	5	1625	100
2819	6	1625	66
2820	7	1625	100
2821	8	1625	88
2822	9	1625	88
2823	1	1626	27
2824	3	1626	100
2825	4	1626	79
2826	5	1626	88
2827	6	1626	88
2828	7	1626	100
2829	8	1626	75
2830	9	1626	79
2831	1	1627	91
2832	3	1627	50
2833	4	1627	50
2834	5	1627	85
2835	6	1627	56
2836	7	1627	100
2837	8	1627	100
2838	9	1627	84
2839	1	1628	91
2840	3	1628	100
2841	4	1628	36
2842	5	1628	82
2843	6	1628	36
2844	7	1628	83
2845	8	1628	88
2846	9	1628	79
2847	1	1629	82
2848	3	1629	50
2849	4	1629	64
2850	5	1629	100
2851	6	1629	38
2852	7	1629	100
2853	8	1629	100
2854	9	1629	90
2855	1	1630	73
2856	3	1630	100
2857	4	1630	79
2858	5	1630	85
2859	6	1630	80
2860	7	1630	83
2861	8	1630	100
2862	9	1630	87
2863	1	1631	73
2864	3	1631	50
2865	4	1631	93
2866	5	1631	97
2867	6	1631	72
2868	7	1631	100
2869	8	1631	79
2870	9	1631	87
\.


--
-- Data for Name: compradores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compradores (comprador_id, nombre_comprador) FROM stdin;
1	Frida
\.


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamentos (departamento_id, departamento) FROM stdin;
1	Atún 
2	Básicos
3	Bebidas
4	Cigarros
5	Cremería
6	Higiene
7	Lácteos
8	Limpieza
9	Pastas
\.


--
-- Data for Name: dimensiones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dimensiones (dimension_id, dimension) FROM stdin;
1	Atención en cajas
2	Infraestructura
3	Ofertas y precios
4	Orden y limpieza
5	Rapidez
6	Seguridad industrial
7	Surtido y existencia
8	Trato amable
9	Calificación Total
\.


--
-- Data for Name: estados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estados (estado_id, estado, abreviatura) FROM stdin;
1	Aguascalientes	AGS
2	Baja California	BCN
3	Baja California Sur	BCS
4	Campeche	CAM
5	Chiapas	CHP
6	Chihuahua	CHI
7	Ciudad de México	CDMX
8	Coahuila	COA
9	Colima	COL
10	Durango	DUR
11	Guanajuato	GTO
12	Guerrero	GRO
13	Hidalgo	HGO
14	Jalisco	JAL
15	México	MEX
16	Michoacán	MIC
17	Morelos	MOR
18	Nayarit	NAY
19	Nuevo León	NLE
20	Oaxaca	OAX
21	Puebla	PUE
22	Querétaro	QRO
23	Quintana Roo	ROO
24	San Luis Potosí	SLP
25	Sinaloa	SIN
26	Sonora	SON
27	Tabasco	TAB
28	Tamaulipas	TAM
29	Tlaxcala	TLX
30	Veracruz	VER
31	Yucatán	YUC
32	Zacatecas	ZAC
\.


--
-- Data for Name: fecha_hora; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fecha_hora (fecha_hora) FROM stdin;
2019-01-01 08:00:00
2019-01-01 08:30:00
2019-01-01 09:00:00
2019-01-01 09:30:00
2019-01-01 10:00:00
2019-01-01 10:30:00
2019-01-01 11:00:00
2019-01-01 11:30:00
2019-01-01 12:00:00
2019-01-01 12:30:00
2019-01-01 13:00:00
2019-01-01 13:30:00
2019-01-01 14:00:00
2019-01-01 14:30:00
2019-01-01 15:00:00
2019-01-01 15:30:00
2019-01-01 16:00:00
2019-01-01 16:30:00
2019-01-01 17:00:00
2019-01-01 17:30:00
2019-01-01 18:00:00
2019-01-01 18:30:00
2019-01-01 19:00:00
2019-01-01 19:30:00
2019-01-01 20:00:00
2019-01-01 20:30:00
2019-01-02 08:00:00
2019-01-02 08:30:00
2019-01-02 09:00:00
2019-01-02 09:30:00
2019-01-02 10:00:00
2019-01-02 10:30:00
2019-01-02 11:00:00
2019-01-02 11:30:00
2019-01-02 12:00:00
2019-01-02 12:30:00
2019-01-02 13:00:00
2019-01-02 13:30:00
2019-01-02 14:00:00
2019-01-02 14:30:00
2019-01-02 15:00:00
2019-01-02 15:30:00
2019-01-02 16:00:00
2019-01-02 16:30:00
2019-01-02 17:00:00
2019-01-02 17:30:00
2019-01-02 18:00:00
2019-01-02 18:30:00
2019-01-02 19:00:00
2019-01-02 19:30:00
2019-01-02 20:00:00
2019-01-02 20:30:00
2019-01-03 08:00:00
2019-01-03 08:30:00
2019-01-03 09:00:00
2019-01-03 09:30:00
2019-01-03 10:00:00
2019-01-03 10:30:00
2019-01-03 11:00:00
2019-01-03 11:30:00
2019-01-03 12:00:00
2019-01-03 12:30:00
2019-01-03 13:00:00
2019-01-03 13:30:00
2019-01-03 14:00:00
2019-01-03 14:30:00
2019-01-03 15:00:00
2019-01-03 15:30:00
2019-01-03 16:00:00
2019-01-03 16:30:00
2019-01-03 17:00:00
2019-01-03 17:30:00
2019-01-03 18:00:00
2019-01-03 18:30:00
2019-01-03 19:00:00
2019-01-03 19:30:00
2019-01-03 20:00:00
2019-01-03 20:30:00
2019-01-04 08:00:00
2019-01-04 08:30:00
2019-01-04 09:00:00
2019-01-04 09:30:00
2019-01-04 10:00:00
2019-01-04 10:30:00
2019-01-04 11:00:00
2019-01-04 11:30:00
2019-01-04 12:00:00
2019-01-04 12:30:00
2019-01-04 13:00:00
2019-01-04 13:30:00
2019-01-04 14:00:00
2019-01-04 14:30:00
2019-01-04 15:00:00
2019-01-04 15:30:00
2019-01-04 16:00:00
2019-01-04 16:30:00
2019-01-04 17:00:00
2019-01-04 17:30:00
2019-01-04 18:00:00
2019-01-04 18:30:00
2019-01-04 19:00:00
2019-01-04 19:30:00
2019-01-04 20:00:00
2019-01-04 20:30:00
2019-01-05 08:00:00
2019-01-05 08:30:00
2019-01-05 09:00:00
2019-01-05 09:30:00
2019-01-05 10:00:00
2019-01-05 10:30:00
2019-01-05 11:00:00
2019-01-05 11:30:00
2019-01-05 12:00:00
2019-01-05 12:30:00
2019-01-05 13:00:00
2019-01-05 13:30:00
2019-01-05 14:00:00
2019-01-05 14:30:00
2019-01-05 15:00:00
2019-01-05 15:30:00
2019-01-05 16:00:00
2019-01-05 16:30:00
2019-01-05 17:00:00
2019-01-05 17:30:00
2019-01-05 18:00:00
2019-01-05 18:30:00
2019-01-05 19:00:00
2019-01-05 19:30:00
2019-01-05 20:00:00
2019-01-05 20:30:00
2019-01-06 08:00:00
2019-01-06 08:30:00
2019-01-06 09:00:00
2019-01-06 09:30:00
2019-01-06 10:00:00
2019-01-06 10:30:00
2019-01-06 11:00:00
2019-01-06 11:30:00
2019-01-06 12:00:00
2019-01-06 12:30:00
2019-01-06 13:00:00
2019-01-06 13:30:00
2019-01-06 14:00:00
2019-01-06 14:30:00
2019-01-06 15:00:00
2019-01-06 15:30:00
2019-01-06 16:00:00
2019-01-06 16:30:00
2019-01-06 17:00:00
2019-01-06 17:30:00
2019-01-06 18:00:00
2019-01-06 18:30:00
2019-01-06 19:00:00
2019-01-06 19:30:00
2019-01-06 20:00:00
2019-01-06 20:30:00
2019-01-07 08:00:00
2019-01-07 08:30:00
2019-01-07 09:00:00
2019-01-07 09:30:00
2019-01-07 10:00:00
2019-01-07 10:30:00
2019-01-07 11:00:00
2019-01-07 11:30:00
2019-01-07 12:00:00
2019-01-07 12:30:00
2019-01-07 13:00:00
2019-01-07 13:30:00
2019-01-07 14:00:00
2019-01-07 14:30:00
2019-01-07 15:00:00
2019-01-07 15:30:00
2019-01-07 16:00:00
2019-01-07 16:30:00
2019-01-07 17:00:00
2019-01-07 17:30:00
2019-01-07 18:00:00
2019-01-07 18:30:00
2019-01-07 19:00:00
2019-01-07 19:30:00
2019-01-07 20:00:00
2019-01-07 20:30:00
2019-01-08 08:00:00
2019-01-08 08:30:00
2019-01-08 09:00:00
2019-01-08 09:30:00
2019-01-08 10:00:00
2019-01-08 10:30:00
2019-01-08 11:00:00
2019-01-08 11:30:00
2019-01-08 12:00:00
2019-01-08 12:30:00
2019-01-08 13:00:00
2019-01-08 13:30:00
2019-01-08 14:00:00
2019-01-08 14:30:00
2019-01-08 15:00:00
2019-01-08 15:30:00
2019-01-08 16:00:00
2019-01-08 16:30:00
2019-01-08 17:00:00
2019-01-08 17:30:00
2019-01-08 18:00:00
2019-01-08 18:30:00
2019-01-08 19:00:00
2019-01-08 19:30:00
2019-01-08 20:00:00
2019-01-08 20:30:00
2019-01-09 08:00:00
2019-01-09 08:30:00
2019-01-09 09:00:00
2019-01-09 09:30:00
2019-01-09 10:00:00
2019-01-09 10:30:00
2019-01-09 11:00:00
2019-01-09 11:30:00
2019-01-09 12:00:00
2019-01-09 12:30:00
2019-01-09 13:00:00
2019-01-09 13:30:00
2019-01-09 14:00:00
2019-01-09 14:30:00
2019-01-09 15:00:00
2019-01-09 15:30:00
2019-01-09 16:00:00
2019-01-09 16:30:00
2019-01-09 17:00:00
2019-01-09 17:30:00
2019-01-09 18:00:00
2019-01-09 18:30:00
2019-01-09 19:00:00
2019-01-09 19:30:00
2019-01-09 20:00:00
2019-01-09 20:30:00
2019-01-10 08:00:00
2019-01-10 08:30:00
2019-01-10 09:00:00
2019-01-10 09:30:00
2019-01-10 10:00:00
2019-01-10 10:30:00
2019-01-10 11:00:00
2019-01-10 11:30:00
2019-01-10 12:00:00
2019-01-10 12:30:00
2019-01-10 13:00:00
2019-01-10 13:30:00
2019-01-10 14:00:00
2019-01-10 14:30:00
2019-01-10 15:00:00
2019-01-10 15:30:00
2019-01-10 16:00:00
2019-01-10 16:30:00
2019-01-10 17:00:00
2019-01-10 17:30:00
2019-01-10 18:00:00
2019-01-10 18:30:00
2019-01-10 19:00:00
2019-01-10 19:30:00
2019-01-10 20:00:00
2019-01-10 20:30:00
2019-01-11 08:00:00
2019-01-11 08:30:00
2019-01-11 09:00:00
2019-01-11 09:30:00
2019-01-11 10:00:00
2019-01-11 10:30:00
2019-01-11 11:00:00
2019-01-11 11:30:00
2019-01-11 12:00:00
2019-01-11 12:30:00
2019-01-11 13:00:00
2019-01-11 13:30:00
2019-01-11 14:00:00
2019-01-11 14:30:00
2019-01-11 15:00:00
2019-01-11 15:30:00
2019-01-11 16:00:00
2019-01-11 16:30:00
2019-01-11 17:00:00
2019-01-11 17:30:00
2019-01-11 18:00:00
2019-01-11 18:30:00
2019-01-11 19:00:00
2019-01-11 19:30:00
2019-01-11 20:00:00
2019-01-11 20:30:00
2019-01-12 08:00:00
2019-01-12 08:30:00
2019-01-12 09:00:00
2019-01-12 09:30:00
2019-01-12 10:00:00
2019-01-12 10:30:00
2019-01-12 11:00:00
2019-01-12 11:30:00
2019-01-12 12:00:00
2019-01-12 12:30:00
2019-01-12 13:00:00
2019-01-12 13:30:00
2019-01-12 14:00:00
2019-01-12 14:30:00
2019-01-12 15:00:00
2019-01-12 15:30:00
2019-01-12 16:00:00
2019-01-12 16:30:00
2019-01-12 17:00:00
2019-01-12 17:30:00
2019-01-12 18:00:00
2019-01-12 18:30:00
2019-01-12 19:00:00
2019-01-12 19:30:00
2019-01-12 20:00:00
2019-01-12 20:30:00
2019-01-13 08:00:00
2019-01-13 08:30:00
2019-01-13 09:00:00
2019-01-13 09:30:00
2019-01-13 10:00:00
2019-01-13 10:30:00
2019-01-13 11:00:00
2019-01-13 11:30:00
2019-01-13 12:00:00
2019-01-13 12:30:00
2019-01-13 13:00:00
2019-01-13 13:30:00
2019-01-13 14:00:00
2019-01-13 14:30:00
2019-01-13 15:00:00
2019-01-13 15:30:00
2019-01-13 16:00:00
2019-01-13 16:30:00
2019-01-13 17:00:00
2019-01-13 17:30:00
2019-01-13 18:00:00
2019-01-13 18:30:00
2019-01-13 19:00:00
2019-01-13 19:30:00
2019-01-13 20:00:00
2019-01-13 20:30:00
2019-01-14 08:00:00
2019-01-14 08:30:00
2019-01-14 09:00:00
2019-01-14 09:30:00
2019-01-14 10:00:00
2019-01-14 10:30:00
2019-01-14 11:00:00
2019-01-14 11:30:00
2019-01-14 12:00:00
2019-01-14 12:30:00
2019-01-14 13:00:00
2019-01-14 13:30:00
2019-01-14 14:00:00
2019-01-14 14:30:00
2019-01-14 15:00:00
2019-01-14 15:30:00
2019-01-14 16:00:00
2019-01-14 16:30:00
2019-01-14 17:00:00
2019-01-14 17:30:00
2019-01-14 18:00:00
2019-01-14 18:30:00
2019-01-14 19:00:00
2019-01-14 19:30:00
2019-01-14 20:00:00
2019-01-14 20:30:00
2019-01-15 08:00:00
2019-01-15 08:30:00
2019-01-15 09:00:00
2019-01-15 09:30:00
2019-01-15 10:00:00
2019-01-15 10:30:00
2019-01-15 11:00:00
2019-01-15 11:30:00
2019-01-15 12:00:00
2019-01-15 12:30:00
2019-01-15 13:00:00
2019-01-15 13:30:00
2019-01-15 14:00:00
2019-01-15 14:30:00
2019-01-15 15:00:00
2019-01-15 15:30:00
2019-01-15 16:00:00
2019-01-15 16:30:00
2019-01-15 17:00:00
2019-01-15 17:30:00
2019-01-15 18:00:00
2019-01-15 18:30:00
2019-01-15 19:00:00
2019-01-15 19:30:00
2019-01-15 20:00:00
2019-01-15 20:30:00
2019-01-16 08:00:00
2019-01-16 08:30:00
2019-01-16 09:00:00
2019-01-16 09:30:00
2019-01-16 10:00:00
2019-01-16 10:30:00
2019-01-16 11:00:00
2019-01-16 11:30:00
2019-01-16 12:00:00
2019-01-16 12:30:00
2019-01-16 13:00:00
2019-01-16 13:30:00
2019-01-16 14:00:00
2019-01-16 14:30:00
2019-01-16 15:00:00
2019-01-16 15:30:00
2019-01-16 16:00:00
2019-01-16 16:30:00
2019-01-16 17:00:00
2019-01-16 17:30:00
2019-01-16 18:00:00
2019-01-16 18:30:00
2019-01-16 19:00:00
2019-01-16 19:30:00
2019-01-16 20:00:00
2019-01-16 20:30:00
2019-01-17 08:00:00
2019-01-17 08:30:00
2019-01-17 09:00:00
2019-01-17 09:30:00
2019-01-17 10:00:00
2019-01-17 10:30:00
2019-01-17 11:00:00
2019-01-17 11:30:00
2019-01-17 12:00:00
2019-01-17 12:30:00
2019-01-17 13:00:00
2019-01-17 13:30:00
2019-01-17 14:00:00
2019-01-17 14:30:00
2019-01-17 15:00:00
2019-01-17 15:30:00
2019-01-17 16:00:00
2019-01-17 16:30:00
2019-01-17 17:00:00
2019-01-17 17:30:00
2019-01-17 18:00:00
2019-01-17 18:30:00
2019-01-17 19:00:00
2019-01-17 19:30:00
2019-01-17 20:00:00
2019-01-17 20:30:00
2019-01-18 08:00:00
2019-01-18 08:30:00
2019-01-18 09:00:00
2019-01-18 09:30:00
2019-01-18 10:00:00
2019-01-18 10:30:00
2019-01-18 11:00:00
2019-01-18 11:30:00
2019-01-18 12:00:00
2019-01-18 12:30:00
2019-01-18 13:00:00
2019-01-18 13:30:00
2019-01-18 14:00:00
2019-01-18 14:30:00
2019-01-18 15:00:00
2019-01-18 15:30:00
2019-01-18 16:00:00
2019-01-18 16:30:00
2019-01-18 17:00:00
2019-01-18 17:30:00
2019-01-18 18:00:00
2019-01-18 18:30:00
2019-01-18 19:00:00
2019-01-18 19:30:00
2019-01-18 20:00:00
2019-01-18 20:30:00
2019-01-19 08:00:00
2019-01-19 08:30:00
2019-01-19 09:00:00
2019-01-19 09:30:00
2019-01-19 10:00:00
2019-01-19 10:30:00
2019-01-19 11:00:00
2019-01-19 11:30:00
2019-01-19 12:00:00
2019-01-19 12:30:00
2019-01-19 13:00:00
2019-01-19 13:30:00
2019-01-19 14:00:00
2019-01-19 14:30:00
2019-01-19 15:00:00
2019-01-19 15:30:00
2019-01-19 16:00:00
2019-01-19 16:30:00
2019-01-19 17:00:00
2019-01-19 17:30:00
2019-01-19 18:00:00
2019-01-19 18:30:00
2019-01-19 19:00:00
2019-01-19 19:30:00
2019-01-19 20:00:00
2019-01-19 20:30:00
2019-01-20 08:00:00
2019-01-20 08:30:00
2019-01-20 09:00:00
2019-01-20 09:30:00
2019-01-20 10:00:00
2019-01-20 10:30:00
2019-01-20 11:00:00
2019-01-20 11:30:00
2019-01-20 12:00:00
2019-01-20 12:30:00
2019-01-20 13:00:00
2019-01-20 13:30:00
2019-01-20 14:00:00
2019-01-20 14:30:00
2019-01-20 15:00:00
2019-01-20 15:30:00
2019-01-20 16:00:00
2019-01-20 16:30:00
2019-01-20 17:00:00
2019-01-20 17:30:00
2019-01-20 18:00:00
2019-01-20 18:30:00
2019-01-20 19:00:00
2019-01-20 19:30:00
2019-01-20 20:00:00
2019-01-20 20:30:00
2019-01-21 08:00:00
2019-01-21 08:30:00
2019-01-21 09:00:00
2019-01-21 09:30:00
2019-01-21 10:00:00
2019-01-21 10:30:00
2019-01-21 11:00:00
2019-01-21 11:30:00
2019-01-21 12:00:00
2019-01-21 12:30:00
2019-01-21 13:00:00
2019-01-21 13:30:00
2019-01-21 14:00:00
2019-01-21 14:30:00
2019-01-21 15:00:00
2019-01-21 15:30:00
2019-01-21 16:00:00
2019-01-21 16:30:00
2019-01-21 17:00:00
2019-01-21 17:30:00
2019-01-21 18:00:00
2019-01-21 18:30:00
2019-01-21 19:00:00
2019-01-21 19:30:00
2019-01-21 20:00:00
2019-01-21 20:30:00
2019-01-22 08:00:00
2019-01-22 08:30:00
2019-01-22 09:00:00
2019-01-22 09:30:00
2019-01-22 10:00:00
2019-01-22 10:30:00
2019-01-22 11:00:00
2019-01-22 11:30:00
2019-01-22 12:00:00
2019-01-22 12:30:00
2019-01-22 13:00:00
2019-01-22 13:30:00
2019-01-22 14:00:00
2019-01-22 14:30:00
2019-01-22 15:00:00
2019-01-22 15:30:00
2019-01-22 16:00:00
2019-01-22 16:30:00
2019-01-22 17:00:00
2019-01-22 17:30:00
2019-01-22 18:00:00
2019-01-22 18:30:00
2019-01-22 19:00:00
2019-01-22 19:30:00
2019-01-22 20:00:00
2019-01-22 20:30:00
2019-01-23 08:00:00
2019-01-23 08:30:00
2019-01-23 09:00:00
2019-01-23 09:30:00
2019-01-23 10:00:00
2019-01-23 10:30:00
2019-01-23 11:00:00
2019-01-23 11:30:00
2019-01-23 12:00:00
2019-01-23 12:30:00
2019-01-23 13:00:00
2019-01-23 13:30:00
2019-01-23 14:00:00
2019-01-23 14:30:00
2019-01-23 15:00:00
2019-01-23 15:30:00
2019-01-23 16:00:00
2019-01-23 16:30:00
2019-01-23 17:00:00
2019-01-23 17:30:00
2019-01-23 18:00:00
2019-01-23 18:30:00
2019-01-23 19:00:00
2019-01-23 19:30:00
2019-01-23 20:00:00
2019-01-23 20:30:00
2019-01-24 08:00:00
2019-01-24 08:30:00
2019-01-24 09:00:00
2019-01-24 09:30:00
2019-01-24 10:00:00
2019-01-24 10:30:00
2019-01-24 11:00:00
2019-01-24 11:30:00
2019-01-24 12:00:00
2019-01-24 12:30:00
2019-01-24 13:00:00
2019-01-24 13:30:00
2019-01-24 14:00:00
2019-01-24 14:30:00
2019-01-24 15:00:00
2019-01-24 15:30:00
2019-01-24 16:00:00
2019-01-24 16:30:00
2019-01-24 17:00:00
2019-01-24 17:30:00
2019-01-24 18:00:00
2019-01-24 18:30:00
2019-01-24 19:00:00
2019-01-24 19:30:00
2019-01-24 20:00:00
2019-01-24 20:30:00
2019-01-25 08:00:00
2019-01-25 08:30:00
2019-01-25 09:00:00
2019-01-25 09:30:00
2019-01-25 10:00:00
2019-01-25 10:30:00
2019-01-25 11:00:00
2019-01-25 11:30:00
2019-01-25 12:00:00
2019-01-25 12:30:00
2019-01-25 13:00:00
2019-01-25 13:30:00
2019-01-25 14:00:00
2019-01-25 14:30:00
2019-01-25 15:00:00
2019-01-25 15:30:00
2019-01-25 16:00:00
2019-01-25 16:30:00
2019-01-25 17:00:00
2019-01-25 17:30:00
2019-01-25 18:00:00
2019-01-25 18:30:00
2019-01-25 19:00:00
2019-01-25 19:30:00
2019-01-25 20:00:00
2019-01-25 20:30:00
2019-01-26 08:00:00
2019-01-26 08:30:00
2019-01-26 09:00:00
2019-01-26 09:30:00
2019-01-26 10:00:00
2019-01-26 10:30:00
2019-01-26 11:00:00
2019-01-26 11:30:00
2019-01-26 12:00:00
2019-01-26 12:30:00
2019-01-26 13:00:00
2019-01-26 13:30:00
2019-01-26 14:00:00
2019-01-26 14:30:00
2019-01-26 15:00:00
2019-01-26 15:30:00
2019-01-26 16:00:00
2019-01-26 16:30:00
2019-01-26 17:00:00
2019-01-26 17:30:00
2019-01-26 18:00:00
2019-01-26 18:30:00
2019-01-26 19:00:00
2019-01-26 19:30:00
2019-01-26 20:00:00
2019-01-26 20:30:00
2019-01-27 08:00:00
2019-01-27 08:30:00
2019-01-27 09:00:00
2019-01-27 09:30:00
2019-01-27 10:00:00
2019-01-27 10:30:00
2019-01-27 11:00:00
2019-01-27 11:30:00
2019-01-27 12:00:00
2019-01-27 12:30:00
2019-01-27 13:00:00
2019-01-27 13:30:00
2019-01-27 14:00:00
2019-01-27 14:30:00
2019-01-27 15:00:00
2019-01-27 15:30:00
2019-01-27 16:00:00
2019-01-27 16:30:00
2019-01-27 17:00:00
2019-01-27 17:30:00
2019-01-27 18:00:00
2019-01-27 18:30:00
2019-01-27 19:00:00
2019-01-27 19:30:00
2019-01-27 20:00:00
2019-01-27 20:30:00
2019-01-28 08:00:00
2019-01-28 08:30:00
2019-01-28 09:00:00
2019-01-28 09:30:00
2019-01-28 10:00:00
2019-01-28 10:30:00
2019-01-28 11:00:00
2019-01-28 11:30:00
2019-01-28 12:00:00
2019-01-28 12:30:00
2019-01-28 13:00:00
2019-01-28 13:30:00
2019-01-28 14:00:00
2019-01-28 14:30:00
2019-01-28 15:00:00
2019-01-28 15:30:00
2019-01-28 16:00:00
2019-01-28 16:30:00
2019-01-28 17:00:00
2019-01-28 17:30:00
2019-01-28 18:00:00
2019-01-28 18:30:00
2019-01-28 19:00:00
2019-01-28 19:30:00
2019-01-28 20:00:00
2019-01-28 20:30:00
2019-01-29 08:00:00
2019-01-29 08:30:00
2019-01-29 09:00:00
2019-01-29 09:30:00
2019-01-29 10:00:00
2019-01-29 10:30:00
2019-01-29 11:00:00
2019-01-29 11:30:00
2019-01-29 12:00:00
2019-01-29 12:30:00
2019-01-29 13:00:00
2019-01-29 13:30:00
2019-01-29 14:00:00
2019-01-29 14:30:00
2019-01-29 15:00:00
2019-01-29 15:30:00
2019-01-29 16:00:00
2019-01-29 16:30:00
2019-01-29 17:00:00
2019-01-29 17:30:00
2019-01-29 18:00:00
2019-01-29 18:30:00
2019-01-29 19:00:00
2019-01-29 19:30:00
2019-01-29 20:00:00
2019-01-29 20:30:00
2019-01-30 08:00:00
2019-01-30 08:30:00
2019-01-30 09:00:00
2019-01-30 09:30:00
2019-01-30 10:00:00
2019-01-30 10:30:00
2019-01-30 11:00:00
2019-01-30 11:30:00
2019-01-30 12:00:00
2019-01-30 12:30:00
2019-01-30 13:00:00
2019-01-30 13:30:00
2019-01-30 14:00:00
2019-01-30 14:30:00
2019-01-30 15:00:00
2019-01-30 15:30:00
2019-01-30 16:00:00
2019-01-30 16:30:00
2019-01-30 17:00:00
2019-01-30 17:30:00
2019-01-30 18:00:00
2019-01-30 18:30:00
2019-01-30 19:00:00
2019-01-30 19:30:00
2019-01-30 20:00:00
2019-01-30 20:30:00
2019-01-31 08:00:00
2019-01-31 08:30:00
2019-01-31 09:00:00
2019-01-31 09:30:00
2019-01-31 10:00:00
2019-01-31 10:30:00
2019-01-31 11:00:00
2019-01-31 11:30:00
2019-01-31 12:00:00
2019-01-31 12:30:00
2019-01-31 13:00:00
2019-01-31 13:30:00
2019-01-31 14:00:00
2019-01-31 14:30:00
2019-01-31 15:00:00
2019-01-31 15:30:00
2019-01-31 16:00:00
2019-01-31 16:30:00
2019-01-31 17:00:00
2019-01-31 17:30:00
2019-01-31 18:00:00
2019-01-31 18:30:00
2019-01-31 19:00:00
2019-01-31 19:30:00
2019-01-31 20:00:00
2019-01-31 20:30:00
2019-02-01 08:00:00
2019-02-01 08:30:00
2019-02-01 09:00:00
2019-02-01 09:30:00
2019-02-01 10:00:00
2019-02-01 10:30:00
2019-02-01 11:00:00
2019-02-01 11:30:00
2019-02-01 12:00:00
2019-02-01 12:30:00
2019-02-01 13:00:00
2019-02-01 13:30:00
2019-02-01 14:00:00
2019-02-01 14:30:00
2019-02-01 15:00:00
2019-02-01 15:30:00
2019-02-01 16:00:00
2019-02-01 16:30:00
2019-02-01 17:00:00
2019-02-01 17:30:00
2019-02-01 18:00:00
2019-02-01 18:30:00
2019-02-01 19:00:00
2019-02-01 19:30:00
2019-02-01 20:00:00
2019-02-01 20:30:00
2019-02-02 08:00:00
2019-02-02 08:30:00
2019-02-02 09:00:00
2019-02-02 09:30:00
2019-02-02 10:00:00
2019-02-02 10:30:00
2019-02-02 11:00:00
2019-02-02 11:30:00
2019-02-02 12:00:00
2019-02-02 12:30:00
2019-02-02 13:00:00
2019-02-02 13:30:00
2019-02-02 14:00:00
2019-02-02 14:30:00
2019-02-02 15:00:00
2019-02-02 15:30:00
2019-02-02 16:00:00
2019-02-02 16:30:00
2019-02-02 17:00:00
2019-02-02 17:30:00
2019-02-02 18:00:00
2019-02-02 18:30:00
2019-02-02 19:00:00
2019-02-02 19:30:00
2019-02-02 20:00:00
2019-02-02 20:30:00
2019-02-03 08:00:00
2019-02-03 08:30:00
2019-02-03 09:00:00
2019-02-03 09:30:00
2019-02-03 10:00:00
2019-02-03 10:30:00
2019-02-03 11:00:00
2019-02-03 11:30:00
2019-02-03 12:00:00
2019-02-03 12:30:00
2019-02-03 13:00:00
2019-02-03 13:30:00
2019-02-03 14:00:00
2019-02-03 14:30:00
2019-02-03 15:00:00
2019-02-03 15:30:00
2019-02-03 16:00:00
2019-02-03 16:30:00
2019-02-03 17:00:00
2019-02-03 17:30:00
2019-02-03 18:00:00
2019-02-03 18:30:00
2019-02-03 19:00:00
2019-02-03 19:30:00
2019-02-03 20:00:00
2019-02-03 20:30:00
2019-02-04 08:00:00
2019-02-04 08:30:00
2019-02-04 09:00:00
2019-02-04 09:30:00
2019-02-04 10:00:00
2019-02-04 10:30:00
2019-02-04 11:00:00
2019-02-04 11:30:00
2019-02-04 12:00:00
2019-02-04 12:30:00
2019-02-04 13:00:00
2019-02-04 13:30:00
2019-02-04 14:00:00
2019-02-04 14:30:00
2019-02-04 15:00:00
2019-02-04 15:30:00
2019-02-04 16:00:00
2019-02-04 16:30:00
2019-02-04 17:00:00
2019-02-04 17:30:00
2019-02-04 18:00:00
2019-02-04 18:30:00
2019-02-04 19:00:00
2019-02-04 19:30:00
2019-02-04 20:00:00
2019-02-04 20:30:00
2019-02-05 08:00:00
2019-02-05 08:30:00
2019-02-05 09:00:00
2019-02-05 09:30:00
2019-02-05 10:00:00
2019-02-05 10:30:00
2019-02-05 11:00:00
2019-02-05 11:30:00
2019-02-05 12:00:00
2019-02-05 12:30:00
2019-02-05 13:00:00
2019-02-05 13:30:00
2019-02-05 14:00:00
2019-02-05 14:30:00
2019-02-05 15:00:00
2019-02-05 15:30:00
2019-02-05 16:00:00
2019-02-05 16:30:00
2019-02-05 17:00:00
2019-02-05 17:30:00
2019-02-05 18:00:00
2019-02-05 18:30:00
2019-02-05 19:00:00
2019-02-05 19:30:00
2019-02-05 20:00:00
2019-02-05 20:30:00
2019-02-06 08:00:00
2019-02-06 08:30:00
2019-02-06 09:00:00
2019-02-06 09:30:00
2019-02-06 10:00:00
2019-02-06 10:30:00
2019-02-06 11:00:00
2019-02-06 11:30:00
2019-02-06 12:00:00
2019-02-06 12:30:00
2019-02-06 13:00:00
2019-02-06 13:30:00
2019-02-06 14:00:00
2019-02-06 14:30:00
2019-02-06 15:00:00
2019-02-06 15:30:00
2019-02-06 16:00:00
2019-02-06 16:30:00
2019-02-06 17:00:00
2019-02-06 17:30:00
2019-02-06 18:00:00
2019-02-06 18:30:00
2019-02-06 19:00:00
2019-02-06 19:30:00
2019-02-06 20:00:00
2019-02-06 20:30:00
2019-02-07 08:00:00
2019-02-07 08:30:00
2019-02-07 09:00:00
2019-02-07 09:30:00
2019-02-07 10:00:00
2019-02-07 10:30:00
2019-02-07 11:00:00
2019-02-07 11:30:00
2019-02-07 12:00:00
2019-02-07 12:30:00
2019-02-07 13:00:00
2019-02-07 13:30:00
2019-02-07 14:00:00
2019-02-07 14:30:00
2019-02-07 15:00:00
2019-02-07 15:30:00
2019-02-07 16:00:00
2019-02-07 16:30:00
2019-02-07 17:00:00
2019-02-07 17:30:00
2019-02-07 18:00:00
2019-02-07 18:30:00
2019-02-07 19:00:00
2019-02-07 19:30:00
2019-02-07 20:00:00
2019-02-07 20:30:00
2019-02-08 08:00:00
2019-02-08 08:30:00
2019-02-08 09:00:00
2019-02-08 09:30:00
2019-02-08 10:00:00
2019-02-08 10:30:00
2019-02-08 11:00:00
2019-02-08 11:30:00
2019-02-08 12:00:00
2019-02-08 12:30:00
2019-02-08 13:00:00
2019-02-08 13:30:00
2019-02-08 14:00:00
2019-02-08 14:30:00
2019-02-08 15:00:00
2019-02-08 15:30:00
2019-02-08 16:00:00
2019-02-08 16:30:00
2019-02-08 17:00:00
2019-02-08 17:30:00
2019-02-08 18:00:00
2019-02-08 18:30:00
2019-02-08 19:00:00
2019-02-08 19:30:00
2019-02-08 20:00:00
2019-02-08 20:30:00
2019-02-09 08:00:00
2019-02-09 08:30:00
2019-02-09 09:00:00
2019-02-09 09:30:00
2019-02-09 10:00:00
2019-02-09 10:30:00
2019-02-09 11:00:00
2019-02-09 11:30:00
2019-02-09 12:00:00
2019-02-09 12:30:00
2019-02-09 13:00:00
2019-02-09 13:30:00
2019-02-09 14:00:00
2019-02-09 14:30:00
2019-02-09 15:00:00
2019-02-09 15:30:00
2019-02-09 16:00:00
2019-02-09 16:30:00
2019-02-09 17:00:00
2019-02-09 17:30:00
2019-02-09 18:00:00
2019-02-09 18:30:00
2019-02-09 19:00:00
2019-02-09 19:30:00
2019-02-09 20:00:00
2019-02-09 20:30:00
2019-02-10 08:00:00
2019-02-10 08:30:00
2019-02-10 09:00:00
2019-02-10 09:30:00
2019-02-10 10:00:00
2019-02-10 10:30:00
2019-02-10 11:00:00
2019-02-10 11:30:00
2019-02-10 12:00:00
2019-02-10 12:30:00
2019-02-10 13:00:00
2019-02-10 13:30:00
2019-02-10 14:00:00
2019-02-10 14:30:00
2019-02-10 15:00:00
2019-02-10 15:30:00
2019-02-10 16:00:00
2019-02-10 16:30:00
2019-02-10 17:00:00
2019-02-10 17:30:00
2019-02-10 18:00:00
2019-02-10 18:30:00
2019-02-10 19:00:00
2019-02-10 19:30:00
2019-02-10 20:00:00
2019-02-10 20:30:00
2019-02-11 08:00:00
2019-02-11 08:30:00
2019-02-11 09:00:00
2019-02-11 09:30:00
2019-02-11 10:00:00
2019-02-11 10:30:00
2019-02-11 11:00:00
2019-02-11 11:30:00
2019-02-11 12:00:00
2019-02-11 12:30:00
2019-02-11 13:00:00
2019-02-11 13:30:00
2019-02-11 14:00:00
2019-02-11 14:30:00
2019-02-11 15:00:00
2019-02-11 15:30:00
2019-02-11 16:00:00
2019-02-11 16:30:00
2019-02-11 17:00:00
2019-02-11 17:30:00
2019-02-11 18:00:00
2019-02-11 18:30:00
2019-02-11 19:00:00
2019-02-11 19:30:00
2019-02-11 20:00:00
2019-02-11 20:30:00
2019-02-12 08:00:00
2019-02-12 08:30:00
2019-02-12 09:00:00
2019-02-12 09:30:00
2019-02-12 10:00:00
2019-02-12 10:30:00
2019-02-12 11:00:00
2019-02-12 11:30:00
2019-02-12 12:00:00
2019-02-12 12:30:00
2019-02-12 13:00:00
2019-02-12 13:30:00
2019-02-12 14:00:00
2019-02-12 14:30:00
2019-02-12 15:00:00
2019-02-12 15:30:00
2019-02-12 16:00:00
2019-02-12 16:30:00
2019-02-12 17:00:00
2019-02-12 17:30:00
2019-02-12 18:00:00
2019-02-12 18:30:00
2019-02-12 19:00:00
2019-02-12 19:30:00
2019-02-12 20:00:00
2019-02-12 20:30:00
2019-02-13 08:00:00
2019-02-13 08:30:00
2019-02-13 09:00:00
2019-02-13 09:30:00
2019-02-13 10:00:00
2019-02-13 10:30:00
2019-02-13 11:00:00
2019-02-13 11:30:00
2019-02-13 12:00:00
2019-02-13 12:30:00
2019-02-13 13:00:00
2019-02-13 13:30:00
2019-02-13 14:00:00
2019-02-13 14:30:00
2019-02-13 15:00:00
2019-02-13 15:30:00
2019-02-13 16:00:00
2019-02-13 16:30:00
2019-02-13 17:00:00
2019-02-13 17:30:00
2019-02-13 18:00:00
2019-02-13 18:30:00
2019-02-13 19:00:00
2019-02-13 19:30:00
2019-02-13 20:00:00
2019-02-13 20:30:00
2019-02-14 08:00:00
2019-02-14 08:30:00
2019-02-14 09:00:00
2019-02-14 09:30:00
2019-02-14 10:00:00
2019-02-14 10:30:00
2019-02-14 11:00:00
2019-02-14 11:30:00
2019-02-14 12:00:00
2019-02-14 12:30:00
2019-02-14 13:00:00
2019-02-14 13:30:00
2019-02-14 14:00:00
2019-02-14 14:30:00
2019-02-14 15:00:00
2019-02-14 15:30:00
2019-02-14 16:00:00
2019-02-14 16:30:00
2019-02-14 17:00:00
2019-02-14 17:30:00
2019-02-14 18:00:00
2019-02-14 18:30:00
2019-02-14 19:00:00
2019-02-14 19:30:00
2019-02-14 20:00:00
2019-02-14 20:30:00
2019-02-15 08:00:00
2019-02-15 08:30:00
2019-02-15 09:00:00
2019-02-15 09:30:00
2019-02-15 10:00:00
2019-02-15 10:30:00
2019-02-15 11:00:00
2019-02-15 11:30:00
2019-02-15 12:00:00
2019-02-15 12:30:00
2019-02-15 13:00:00
2019-02-15 13:30:00
2019-02-15 14:00:00
2019-02-15 14:30:00
2019-02-15 15:00:00
2019-02-15 15:30:00
2019-02-15 16:00:00
2019-02-15 16:30:00
2019-02-15 17:00:00
2019-02-15 17:30:00
2019-02-15 18:00:00
2019-02-15 18:30:00
2019-02-15 19:00:00
2019-02-15 19:30:00
2019-02-15 20:00:00
2019-02-15 20:30:00
2019-02-16 08:00:00
2019-02-16 08:30:00
2019-02-16 09:00:00
2019-02-16 09:30:00
2019-02-16 10:00:00
2019-02-16 10:30:00
2019-02-16 11:00:00
2019-02-16 11:30:00
2019-02-16 12:00:00
2019-02-16 12:30:00
2019-02-16 13:00:00
2019-02-16 13:30:00
2019-02-16 14:00:00
2019-02-16 14:30:00
2019-02-16 15:00:00
2019-02-16 15:30:00
2019-02-16 16:00:00
2019-02-16 16:30:00
2019-02-16 17:00:00
2019-02-16 17:30:00
2019-02-16 18:00:00
2019-02-16 18:30:00
2019-02-16 19:00:00
2019-02-16 19:30:00
2019-02-16 20:00:00
2019-02-16 20:30:00
2019-02-17 08:00:00
2019-02-17 08:30:00
2019-02-17 09:00:00
2019-02-17 09:30:00
2019-02-17 10:00:00
2019-02-17 10:30:00
2019-02-17 11:00:00
2019-02-17 11:30:00
2019-02-17 12:00:00
2019-02-17 12:30:00
2019-02-17 13:00:00
2019-02-17 13:30:00
2019-02-17 14:00:00
2019-02-17 14:30:00
2019-02-17 15:00:00
2019-02-17 15:30:00
2019-02-17 16:00:00
2019-02-17 16:30:00
2019-02-17 17:00:00
2019-02-17 17:30:00
2019-02-17 18:00:00
2019-02-17 18:30:00
2019-02-17 19:00:00
2019-02-17 19:30:00
2019-02-17 20:00:00
2019-02-17 20:30:00
2019-02-18 08:00:00
2019-02-18 08:30:00
2019-02-18 09:00:00
2019-02-18 09:30:00
2019-02-18 10:00:00
2019-02-18 10:30:00
2019-02-18 11:00:00
2019-02-18 11:30:00
2019-02-18 12:00:00
2019-02-18 12:30:00
2019-02-18 13:00:00
2019-02-18 13:30:00
2019-02-18 14:00:00
2019-02-18 14:30:00
2019-02-18 15:00:00
2019-02-18 15:30:00
2019-02-18 16:00:00
2019-02-18 16:30:00
2019-02-18 17:00:00
2019-02-18 17:30:00
2019-02-18 18:00:00
2019-02-18 18:30:00
2019-02-18 19:00:00
2019-02-18 19:30:00
2019-02-18 20:00:00
2019-02-18 20:30:00
2019-02-19 08:00:00
2019-02-19 08:30:00
2019-02-19 09:00:00
2019-02-19 09:30:00
2019-02-19 10:00:00
2019-02-19 10:30:00
2019-02-19 11:00:00
2019-02-19 11:30:00
2019-02-19 12:00:00
2019-02-19 12:30:00
2019-02-19 13:00:00
2019-02-19 13:30:00
2019-02-19 14:00:00
2019-02-19 14:30:00
2019-02-19 15:00:00
2019-02-19 15:30:00
2019-02-19 16:00:00
2019-02-19 16:30:00
2019-02-19 17:00:00
2019-02-19 17:30:00
2019-02-19 18:00:00
2019-02-19 18:30:00
2019-02-19 19:00:00
2019-02-19 19:30:00
2019-02-19 20:00:00
2019-02-19 20:30:00
2019-02-20 08:00:00
2019-02-20 08:30:00
2019-02-20 09:00:00
2019-02-20 09:30:00
2019-02-20 10:00:00
2019-02-20 10:30:00
2019-02-20 11:00:00
2019-02-20 11:30:00
2019-02-20 12:00:00
2019-02-20 12:30:00
2019-02-20 13:00:00
2019-02-20 13:30:00
2019-02-20 14:00:00
2019-02-20 14:30:00
2019-02-20 15:00:00
2019-02-20 15:30:00
2019-02-20 16:00:00
2019-02-20 16:30:00
2019-02-20 17:00:00
2019-02-20 17:30:00
2019-02-20 18:00:00
2019-02-20 18:30:00
2019-02-20 19:00:00
2019-02-20 19:30:00
2019-02-20 20:00:00
2019-02-20 20:30:00
2019-02-21 08:00:00
2019-02-21 08:30:00
2019-02-21 09:00:00
2019-02-21 09:30:00
2019-02-21 10:00:00
2019-02-21 10:30:00
2019-02-21 11:00:00
2019-02-21 11:30:00
2019-02-21 12:00:00
2019-02-21 12:30:00
2019-02-21 13:00:00
2019-02-21 13:30:00
2019-02-21 14:00:00
2019-02-21 14:30:00
2019-02-21 15:00:00
2019-02-21 15:30:00
2019-02-21 16:00:00
2019-02-21 16:30:00
2019-02-21 17:00:00
2019-02-21 17:30:00
2019-02-21 18:00:00
2019-02-21 18:30:00
2019-02-21 19:00:00
2019-02-21 19:30:00
2019-02-21 20:00:00
2019-02-21 20:30:00
2019-02-22 08:00:00
2019-02-22 08:30:00
2019-02-22 09:00:00
2019-02-22 09:30:00
2019-02-22 10:00:00
2019-02-22 10:30:00
2019-02-22 11:00:00
2019-02-22 11:30:00
2019-02-22 12:00:00
2019-02-22 12:30:00
2019-02-22 13:00:00
2019-02-22 13:30:00
2019-02-22 14:00:00
2019-02-22 14:30:00
2019-02-22 15:00:00
2019-02-22 15:30:00
2019-02-22 16:00:00
2019-02-22 16:30:00
2019-02-22 17:00:00
2019-02-22 17:30:00
2019-02-22 18:00:00
2019-02-22 18:30:00
2019-02-22 19:00:00
2019-02-22 19:30:00
2019-02-22 20:00:00
2019-02-22 20:30:00
2019-02-23 08:00:00
2019-02-23 08:30:00
2019-02-23 09:00:00
2019-02-23 09:30:00
2019-02-23 10:00:00
2019-02-23 10:30:00
2019-02-23 11:00:00
2019-02-23 11:30:00
2019-02-23 12:00:00
2019-02-23 12:30:00
2019-02-23 13:00:00
2019-02-23 13:30:00
2019-02-23 14:00:00
2019-02-23 14:30:00
2019-02-23 15:00:00
2019-02-23 15:30:00
2019-02-23 16:00:00
2019-02-23 16:30:00
2019-02-23 17:00:00
2019-02-23 17:30:00
2019-02-23 18:00:00
2019-02-23 18:30:00
2019-02-23 19:00:00
2019-02-23 19:30:00
2019-02-23 20:00:00
2019-02-23 20:30:00
2019-02-24 08:00:00
2019-02-24 08:30:00
2019-02-24 09:00:00
2019-02-24 09:30:00
2019-02-24 10:00:00
2019-02-24 10:30:00
2019-02-24 11:00:00
2019-02-24 11:30:00
2019-02-24 12:00:00
2019-02-24 12:30:00
2019-02-24 13:00:00
2019-02-24 13:30:00
2019-02-24 14:00:00
2019-02-24 14:30:00
2019-02-24 15:00:00
2019-02-24 15:30:00
2019-02-24 16:00:00
2019-02-24 16:30:00
2019-02-24 17:00:00
2019-02-24 17:30:00
2019-02-24 18:00:00
2019-02-24 18:30:00
2019-02-24 19:00:00
2019-02-24 19:30:00
2019-02-24 20:00:00
2019-02-24 20:30:00
2019-02-25 08:00:00
2019-02-25 08:30:00
2019-02-25 09:00:00
2019-02-25 09:30:00
2019-02-25 10:00:00
2019-02-25 10:30:00
2019-02-25 11:00:00
2019-02-25 11:30:00
2019-02-25 12:00:00
2019-02-25 12:30:00
2019-02-25 13:00:00
2019-02-25 13:30:00
2019-02-25 14:00:00
2019-02-25 14:30:00
2019-02-25 15:00:00
2019-02-25 15:30:00
2019-02-25 16:00:00
2019-02-25 16:30:00
2019-02-25 17:00:00
2019-02-25 17:30:00
2019-02-25 18:00:00
2019-02-25 18:30:00
2019-02-25 19:00:00
2019-02-25 19:30:00
2019-02-25 20:00:00
2019-02-25 20:30:00
2019-02-26 08:00:00
2019-02-26 08:30:00
2019-02-26 09:00:00
2019-02-26 09:30:00
2019-02-26 10:00:00
2019-02-26 10:30:00
2019-02-26 11:00:00
2019-02-26 11:30:00
2019-02-26 12:00:00
2019-02-26 12:30:00
2019-02-26 13:00:00
2019-02-26 13:30:00
2019-02-26 14:00:00
2019-02-26 14:30:00
2019-02-26 15:00:00
2019-02-26 15:30:00
2019-02-26 16:00:00
2019-02-26 16:30:00
2019-02-26 17:00:00
2019-02-26 17:30:00
2019-02-26 18:00:00
2019-02-26 18:30:00
2019-02-26 19:00:00
2019-02-26 19:30:00
2019-02-26 20:00:00
2019-02-26 20:30:00
2019-02-27 08:00:00
2019-02-27 08:30:00
2019-02-27 09:00:00
2019-02-27 09:30:00
2019-02-27 10:00:00
2019-02-27 10:30:00
2019-02-27 11:00:00
2019-02-27 11:30:00
2019-02-27 12:00:00
2019-02-27 12:30:00
2019-02-27 13:00:00
2019-02-27 13:30:00
2019-02-27 14:00:00
2019-02-27 14:30:00
2019-02-27 15:00:00
2019-02-27 15:30:00
2019-02-27 16:00:00
2019-02-27 16:30:00
2019-02-27 17:00:00
2019-02-27 17:30:00
2019-02-27 18:00:00
2019-02-27 18:30:00
2019-02-27 19:00:00
2019-02-27 19:30:00
2019-02-27 20:00:00
2019-02-27 20:30:00
2019-02-28 08:00:00
2019-02-28 08:30:00
2019-02-28 09:00:00
2019-02-28 09:30:00
2019-02-28 10:00:00
2019-02-28 10:30:00
2019-02-28 11:00:00
2019-02-28 11:30:00
2019-02-28 12:00:00
2019-02-28 12:30:00
2019-02-28 13:00:00
2019-02-28 13:30:00
2019-02-28 14:00:00
2019-02-28 14:30:00
2019-02-28 15:00:00
2019-02-28 15:30:00
2019-02-28 16:00:00
2019-02-28 16:30:00
2019-02-28 17:00:00
2019-02-28 17:30:00
2019-02-28 18:00:00
2019-02-28 18:30:00
2019-02-28 19:00:00
2019-02-28 19:30:00
2019-02-28 20:00:00
2019-02-28 20:30:00
2019-03-01 08:00:00
2019-03-01 08:30:00
2019-03-01 09:00:00
2019-03-01 09:30:00
2019-03-01 10:00:00
2019-03-01 10:30:00
2019-03-01 11:00:00
2019-03-01 11:30:00
2019-03-01 12:00:00
2019-03-01 12:30:00
2019-03-01 13:00:00
2019-03-01 13:30:00
2019-03-01 14:00:00
2019-03-01 14:30:00
2019-03-01 15:00:00
2019-03-01 15:30:00
2019-03-01 16:00:00
2019-03-01 16:30:00
2019-03-01 17:00:00
2019-03-01 17:30:00
2019-03-01 18:00:00
2019-03-01 18:30:00
2019-03-01 19:00:00
2019-03-01 19:30:00
2019-03-01 20:00:00
2019-03-01 20:30:00
2019-03-02 08:00:00
2019-03-02 08:30:00
2019-03-02 09:00:00
2019-03-02 09:30:00
2019-03-02 10:00:00
2019-03-02 10:30:00
2019-03-02 11:00:00
2019-03-02 11:30:00
2019-03-02 12:00:00
2019-03-02 12:30:00
2019-03-02 13:00:00
2019-03-02 13:30:00
2019-03-02 14:00:00
2019-03-02 14:30:00
2019-03-02 15:00:00
2019-03-02 15:30:00
2019-03-02 16:00:00
2019-03-02 16:30:00
2019-03-02 17:00:00
2019-03-02 17:30:00
2019-03-02 18:00:00
2019-03-02 18:30:00
2019-03-02 19:00:00
2019-03-02 19:30:00
2019-03-02 20:00:00
2019-03-02 20:30:00
2019-03-03 08:00:00
2019-03-03 08:30:00
2019-03-03 09:00:00
2019-03-03 09:30:00
2019-03-03 10:00:00
2019-03-03 10:30:00
2019-03-03 11:00:00
2019-03-03 11:30:00
2019-03-03 12:00:00
2019-03-03 12:30:00
2019-03-03 13:00:00
2019-03-03 13:30:00
2019-03-03 14:00:00
2019-03-03 14:30:00
2019-03-03 15:00:00
2019-03-03 15:30:00
2019-03-03 16:00:00
2019-03-03 16:30:00
2019-03-03 17:00:00
2019-03-03 17:30:00
2019-03-03 18:00:00
2019-03-03 18:30:00
2019-03-03 19:00:00
2019-03-03 19:30:00
2019-03-03 20:00:00
2019-03-03 20:30:00
2019-03-04 08:00:00
2019-03-04 08:30:00
2019-03-04 09:00:00
2019-03-04 09:30:00
2019-03-04 10:00:00
2019-03-04 10:30:00
2019-03-04 11:00:00
2019-03-04 11:30:00
2019-03-04 12:00:00
2019-03-04 12:30:00
2019-03-04 13:00:00
2019-03-04 13:30:00
2019-03-04 14:00:00
2019-03-04 14:30:00
2019-03-04 15:00:00
2019-03-04 15:30:00
2019-03-04 16:00:00
2019-03-04 16:30:00
2019-03-04 17:00:00
2019-03-04 17:30:00
2019-03-04 18:00:00
2019-03-04 18:30:00
2019-03-04 19:00:00
2019-03-04 19:30:00
2019-03-04 20:00:00
2019-03-04 20:30:00
2019-03-05 08:00:00
2019-03-05 08:30:00
2019-03-05 09:00:00
2019-03-05 09:30:00
2019-03-05 10:00:00
2019-03-05 10:30:00
2019-03-05 11:00:00
2019-03-05 11:30:00
2019-03-05 12:00:00
2019-03-05 12:30:00
2019-03-05 13:00:00
2019-03-05 13:30:00
2019-03-05 14:00:00
2019-03-05 14:30:00
2019-03-05 15:00:00
2019-03-05 15:30:00
2019-03-05 16:00:00
2019-03-05 16:30:00
2019-03-05 17:00:00
2019-03-05 17:30:00
2019-03-05 18:00:00
2019-03-05 18:30:00
2019-03-05 19:00:00
2019-03-05 19:30:00
2019-03-05 20:00:00
2019-03-05 20:30:00
2019-03-06 08:00:00
2019-03-06 08:30:00
2019-03-06 09:00:00
2019-03-06 09:30:00
2019-03-06 10:00:00
2019-03-06 10:30:00
2019-03-06 11:00:00
2019-03-06 11:30:00
2019-03-06 12:00:00
2019-03-06 12:30:00
2019-03-06 13:00:00
2019-03-06 13:30:00
2019-03-06 14:00:00
2019-03-06 14:30:00
2019-03-06 15:00:00
2019-03-06 15:30:00
2019-03-06 16:00:00
2019-03-06 16:30:00
2019-03-06 17:00:00
2019-03-06 17:30:00
2019-03-06 18:00:00
2019-03-06 18:30:00
2019-03-06 19:00:00
2019-03-06 19:30:00
2019-03-06 20:00:00
2019-03-06 20:30:00
2019-03-07 08:00:00
2019-03-07 08:30:00
2019-03-07 09:00:00
2019-03-07 09:30:00
2019-03-07 10:00:00
2019-03-07 10:30:00
2019-03-07 11:00:00
2019-03-07 11:30:00
2019-03-07 12:00:00
2019-03-07 12:30:00
2019-03-07 13:00:00
2019-03-07 13:30:00
2019-03-07 14:00:00
2019-03-07 14:30:00
2019-03-07 15:00:00
2019-03-07 15:30:00
2019-03-07 16:00:00
2019-03-07 16:30:00
2019-03-07 17:00:00
2019-03-07 17:30:00
2019-03-07 18:00:00
2019-03-07 18:30:00
2019-03-07 19:00:00
2019-03-07 19:30:00
2019-03-07 20:00:00
2019-03-07 20:30:00
2019-03-08 08:00:00
2019-03-08 08:30:00
2019-03-08 09:00:00
2019-03-08 09:30:00
2019-03-08 10:00:00
2019-03-08 10:30:00
2019-03-08 11:00:00
2019-03-08 11:30:00
2019-03-08 12:00:00
2019-03-08 12:30:00
2019-03-08 13:00:00
2019-03-08 13:30:00
2019-03-08 14:00:00
2019-03-08 14:30:00
2019-03-08 15:00:00
2019-03-08 15:30:00
2019-03-08 16:00:00
2019-03-08 16:30:00
2019-03-08 17:00:00
2019-03-08 17:30:00
2019-03-08 18:00:00
2019-03-08 18:30:00
2019-03-08 19:00:00
2019-03-08 19:30:00
2019-03-08 20:00:00
2019-03-08 20:30:00
2019-03-09 08:00:00
2019-03-09 08:30:00
2019-03-09 09:00:00
2019-03-09 09:30:00
2019-03-09 10:00:00
2019-03-09 10:30:00
2019-03-09 11:00:00
2019-03-09 11:30:00
2019-03-09 12:00:00
2019-03-09 12:30:00
2019-03-09 13:00:00
2019-03-09 13:30:00
2019-03-09 14:00:00
2019-03-09 14:30:00
2019-03-09 15:00:00
2019-03-09 15:30:00
2019-03-09 16:00:00
2019-03-09 16:30:00
2019-03-09 17:00:00
2019-03-09 17:30:00
2019-03-09 18:00:00
2019-03-09 18:30:00
2019-03-09 19:00:00
2019-03-09 19:30:00
2019-03-09 20:00:00
2019-03-09 20:30:00
2019-03-10 08:00:00
2019-03-10 08:30:00
2019-03-10 09:00:00
2019-03-10 09:30:00
2019-03-10 10:00:00
2019-03-10 10:30:00
2019-03-10 11:00:00
2019-03-10 11:30:00
2019-03-10 12:00:00
2019-03-10 12:30:00
2019-03-10 13:00:00
2019-03-10 13:30:00
2019-03-10 14:00:00
2019-03-10 14:30:00
2019-03-10 15:00:00
2019-03-10 15:30:00
2019-03-10 16:00:00
2019-03-10 16:30:00
2019-03-10 17:00:00
2019-03-10 17:30:00
2019-03-10 18:00:00
2019-03-10 18:30:00
2019-03-10 19:00:00
2019-03-10 19:30:00
2019-03-10 20:00:00
2019-03-10 20:30:00
2019-03-11 08:00:00
2019-03-11 08:30:00
2019-03-11 09:00:00
2019-03-11 09:30:00
2019-03-11 10:00:00
2019-03-11 10:30:00
2019-03-11 11:00:00
2019-03-11 11:30:00
2019-03-11 12:00:00
2019-03-11 12:30:00
2019-03-11 13:00:00
2019-03-11 13:30:00
2019-03-11 14:00:00
2019-03-11 14:30:00
2019-03-11 15:00:00
2019-03-11 15:30:00
2019-03-11 16:00:00
2019-03-11 16:30:00
2019-03-11 17:00:00
2019-03-11 17:30:00
2019-03-11 18:00:00
2019-03-11 18:30:00
2019-03-11 19:00:00
2019-03-11 19:30:00
2019-03-11 20:00:00
2019-03-11 20:30:00
2019-03-12 08:00:00
2019-03-12 08:30:00
2019-03-12 09:00:00
2019-03-12 09:30:00
2019-03-12 10:00:00
2019-03-12 10:30:00
2019-03-12 11:00:00
2019-03-12 11:30:00
2019-03-12 12:00:00
2019-03-12 12:30:00
2019-03-12 13:00:00
2019-03-12 13:30:00
2019-03-12 14:00:00
2019-03-12 14:30:00
2019-03-12 15:00:00
2019-03-12 15:30:00
2019-03-12 16:00:00
2019-03-12 16:30:00
2019-03-12 17:00:00
2019-03-12 17:30:00
2019-03-12 18:00:00
2019-03-12 18:30:00
2019-03-12 19:00:00
2019-03-12 19:30:00
2019-03-12 20:00:00
2019-03-12 20:30:00
2019-03-13 08:00:00
2019-03-13 08:30:00
2019-03-13 09:00:00
2019-03-13 09:30:00
2019-03-13 10:00:00
2019-03-13 10:30:00
2019-03-13 11:00:00
2019-03-13 11:30:00
2019-03-13 12:00:00
2019-03-13 12:30:00
2019-03-13 13:00:00
2019-03-13 13:30:00
2019-03-13 14:00:00
2019-03-13 14:30:00
2019-03-13 15:00:00
2019-03-13 15:30:00
2019-03-13 16:00:00
2019-03-13 16:30:00
2019-03-13 17:00:00
2019-03-13 17:30:00
2019-03-13 18:00:00
2019-03-13 18:30:00
2019-03-13 19:00:00
2019-03-13 19:30:00
2019-03-13 20:00:00
2019-03-13 20:30:00
2019-03-14 08:00:00
2019-03-14 08:30:00
2019-03-14 09:00:00
2019-03-14 09:30:00
2019-03-14 10:00:00
2019-03-14 10:30:00
2019-03-14 11:00:00
2019-03-14 11:30:00
2019-03-14 12:00:00
2019-03-14 12:30:00
2019-03-14 13:00:00
2019-03-14 13:30:00
2019-03-14 14:00:00
2019-03-14 14:30:00
2019-03-14 15:00:00
2019-03-14 15:30:00
2019-03-14 16:00:00
2019-03-14 16:30:00
2019-03-14 17:00:00
2019-03-14 17:30:00
2019-03-14 18:00:00
2019-03-14 18:30:00
2019-03-14 19:00:00
2019-03-14 19:30:00
2019-03-14 20:00:00
2019-03-14 20:30:00
2019-03-15 08:00:00
2019-03-15 08:30:00
2019-03-15 09:00:00
2019-03-15 09:30:00
2019-03-15 10:00:00
2019-03-15 10:30:00
2019-03-15 11:00:00
2019-03-15 11:30:00
2019-03-15 12:00:00
2019-03-15 12:30:00
2019-03-15 13:00:00
2019-03-15 13:30:00
2019-03-15 14:00:00
2019-03-15 14:30:00
2019-03-15 15:00:00
2019-03-15 15:30:00
2019-03-15 16:00:00
2019-03-15 16:30:00
2019-03-15 17:00:00
2019-03-15 17:30:00
2019-03-15 18:00:00
2019-03-15 18:30:00
2019-03-15 19:00:00
2019-03-15 19:30:00
2019-03-15 20:00:00
2019-03-15 20:30:00
2019-03-16 08:00:00
2019-03-16 08:30:00
2019-03-16 09:00:00
2019-03-16 09:30:00
2019-03-16 10:00:00
2019-03-16 10:30:00
2019-03-16 11:00:00
2019-03-16 11:30:00
2019-03-16 12:00:00
2019-03-16 12:30:00
2019-03-16 13:00:00
2019-03-16 13:30:00
2019-03-16 14:00:00
2019-03-16 14:30:00
2019-03-16 15:00:00
2019-03-16 15:30:00
2019-03-16 16:00:00
2019-03-16 16:30:00
2019-03-16 17:00:00
2019-03-16 17:30:00
2019-03-16 18:00:00
2019-03-16 18:30:00
2019-03-16 19:00:00
2019-03-16 19:30:00
2019-03-16 20:00:00
2019-03-16 20:30:00
2019-03-17 08:00:00
2019-03-17 08:30:00
2019-03-17 09:00:00
2019-03-17 09:30:00
2019-03-17 10:00:00
2019-03-17 10:30:00
2019-03-17 11:00:00
2019-03-17 11:30:00
2019-03-17 12:00:00
2019-03-17 12:30:00
2019-03-17 13:00:00
2019-03-17 13:30:00
2019-03-17 14:00:00
2019-03-17 14:30:00
2019-03-17 15:00:00
2019-03-17 15:30:00
2019-03-17 16:00:00
2019-03-17 16:30:00
2019-03-17 17:00:00
2019-03-17 17:30:00
2019-03-17 18:00:00
2019-03-17 18:30:00
2019-03-17 19:00:00
2019-03-17 19:30:00
2019-03-17 20:00:00
2019-03-17 20:30:00
2019-03-18 08:00:00
2019-03-18 08:30:00
2019-03-18 09:00:00
2019-03-18 09:30:00
2019-03-18 10:00:00
2019-03-18 10:30:00
2019-03-18 11:00:00
2019-03-18 11:30:00
2019-03-18 12:00:00
2019-03-18 12:30:00
2019-03-18 13:00:00
2019-03-18 13:30:00
2019-03-18 14:00:00
2019-03-18 14:30:00
2019-03-18 15:00:00
2019-03-18 15:30:00
2019-03-18 16:00:00
2019-03-18 16:30:00
2019-03-18 17:00:00
2019-03-18 17:30:00
2019-03-18 18:00:00
2019-03-18 18:30:00
2019-03-18 19:00:00
2019-03-18 19:30:00
2019-03-18 20:00:00
2019-03-18 20:30:00
2019-03-19 08:00:00
2019-03-19 08:30:00
2019-03-19 09:00:00
2019-03-19 09:30:00
2019-03-19 10:00:00
2019-03-19 10:30:00
2019-03-19 11:00:00
2019-03-19 11:30:00
2019-03-19 12:00:00
2019-03-19 12:30:00
2019-03-19 13:00:00
2019-03-19 13:30:00
2019-03-19 14:00:00
2019-03-19 14:30:00
2019-03-19 15:00:00
2019-03-19 15:30:00
2019-03-19 16:00:00
2019-03-19 16:30:00
2019-03-19 17:00:00
2019-03-19 17:30:00
2019-03-19 18:00:00
2019-03-19 18:30:00
2019-03-19 19:00:00
2019-03-19 19:30:00
2019-03-19 20:00:00
2019-03-19 20:30:00
2019-03-20 08:00:00
2019-03-20 08:30:00
2019-03-20 09:00:00
2019-03-20 09:30:00
2019-03-20 10:00:00
2019-03-20 10:30:00
2019-03-20 11:00:00
2019-03-20 11:30:00
2019-03-20 12:00:00
2019-03-20 12:30:00
2019-03-20 13:00:00
2019-03-20 13:30:00
2019-03-20 14:00:00
2019-03-20 14:30:00
2019-03-20 15:00:00
2019-03-20 15:30:00
2019-03-20 16:00:00
2019-03-20 16:30:00
2019-03-20 17:00:00
2019-03-20 17:30:00
2019-03-20 18:00:00
2019-03-20 18:30:00
2019-03-20 19:00:00
2019-03-20 19:30:00
2019-03-20 20:00:00
2019-03-20 20:30:00
2019-03-21 08:00:00
2019-03-21 08:30:00
2019-03-21 09:00:00
2019-03-21 09:30:00
2019-03-21 10:00:00
2019-03-21 10:30:00
2019-03-21 11:00:00
2019-03-21 11:30:00
2019-03-21 12:00:00
2019-03-21 12:30:00
2019-03-21 13:00:00
2019-03-21 13:30:00
2019-03-21 14:00:00
2019-03-21 14:30:00
2019-03-21 15:00:00
2019-03-21 15:30:00
2019-03-21 16:00:00
2019-03-21 16:30:00
2019-03-21 17:00:00
2019-03-21 17:30:00
2019-03-21 18:00:00
2019-03-21 18:30:00
2019-03-21 19:00:00
2019-03-21 19:30:00
2019-03-21 20:00:00
2019-03-21 20:30:00
2019-03-22 08:00:00
2019-03-22 08:30:00
2019-03-22 09:00:00
2019-03-22 09:30:00
2019-03-22 10:00:00
2019-03-22 10:30:00
2019-03-22 11:00:00
2019-03-22 11:30:00
2019-03-22 12:00:00
2019-03-22 12:30:00
2019-03-22 13:00:00
2019-03-22 13:30:00
2019-03-22 14:00:00
2019-03-22 14:30:00
2019-03-22 15:00:00
2019-03-22 15:30:00
2019-03-22 16:00:00
2019-03-22 16:30:00
2019-03-22 17:00:00
2019-03-22 17:30:00
2019-03-22 18:00:00
2019-03-22 18:30:00
2019-03-22 19:00:00
2019-03-22 19:30:00
2019-03-22 20:00:00
2019-03-22 20:30:00
2019-03-23 08:00:00
2019-03-23 08:30:00
2019-03-23 09:00:00
2019-03-23 09:30:00
2019-03-23 10:00:00
2019-03-23 10:30:00
2019-03-23 11:00:00
2019-03-23 11:30:00
2019-03-23 12:00:00
2019-03-23 12:30:00
2019-03-23 13:00:00
2019-03-23 13:30:00
2019-03-23 14:00:00
2019-03-23 14:30:00
2019-03-23 15:00:00
2019-03-23 15:30:00
2019-03-23 16:00:00
2019-03-23 16:30:00
2019-03-23 17:00:00
2019-03-23 17:30:00
2019-03-23 18:00:00
2019-03-23 18:30:00
2019-03-23 19:00:00
2019-03-23 19:30:00
2019-03-23 20:00:00
2019-03-23 20:30:00
2019-03-24 08:00:00
2019-03-24 08:30:00
2019-03-24 09:00:00
2019-03-24 09:30:00
2019-03-24 10:00:00
2019-03-24 10:30:00
2019-03-24 11:00:00
2019-03-24 11:30:00
2019-03-24 12:00:00
2019-03-24 12:30:00
2019-03-24 13:00:00
2019-03-24 13:30:00
2019-03-24 14:00:00
2019-03-24 14:30:00
2019-03-24 15:00:00
2019-03-24 15:30:00
2019-03-24 16:00:00
2019-03-24 16:30:00
2019-03-24 17:00:00
2019-03-24 17:30:00
2019-03-24 18:00:00
2019-03-24 18:30:00
2019-03-24 19:00:00
2019-03-24 19:30:00
2019-03-24 20:00:00
2019-03-24 20:30:00
2019-03-25 08:00:00
2019-03-25 08:30:00
2019-03-25 09:00:00
2019-03-25 09:30:00
2019-03-25 10:00:00
2019-03-25 10:30:00
2019-03-25 11:00:00
2019-03-25 11:30:00
2019-03-25 12:00:00
2019-03-25 12:30:00
2019-03-25 13:00:00
2019-03-25 13:30:00
2019-03-25 14:00:00
2019-03-25 14:30:00
2019-03-25 15:00:00
2019-03-25 15:30:00
2019-03-25 16:00:00
2019-03-25 16:30:00
2019-03-25 17:00:00
2019-03-25 17:30:00
2019-03-25 18:00:00
2019-03-25 18:30:00
2019-03-25 19:00:00
2019-03-25 19:30:00
2019-03-25 20:00:00
2019-03-25 20:30:00
2019-03-26 08:00:00
2019-03-26 08:30:00
2019-03-26 09:00:00
2019-03-26 09:30:00
2019-03-26 10:00:00
2019-03-26 10:30:00
2019-03-26 11:00:00
2019-03-26 11:30:00
2019-03-26 12:00:00
2019-03-26 12:30:00
2019-03-26 13:00:00
2019-03-26 13:30:00
2019-03-26 14:00:00
2019-03-26 14:30:00
2019-03-26 15:00:00
2019-03-26 15:30:00
2019-03-26 16:00:00
2019-03-26 16:30:00
2019-03-26 17:00:00
2019-03-26 17:30:00
2019-03-26 18:00:00
2019-03-26 18:30:00
2019-03-26 19:00:00
2019-03-26 19:30:00
2019-03-26 20:00:00
2019-03-26 20:30:00
2019-03-27 08:00:00
2019-03-27 08:30:00
2019-03-27 09:00:00
2019-03-27 09:30:00
2019-03-27 10:00:00
2019-03-27 10:30:00
2019-03-27 11:00:00
2019-03-27 11:30:00
2019-03-27 12:00:00
2019-03-27 12:30:00
2019-03-27 13:00:00
2019-03-27 13:30:00
2019-03-27 14:00:00
2019-03-27 14:30:00
2019-03-27 15:00:00
2019-03-27 15:30:00
2019-03-27 16:00:00
2019-03-27 16:30:00
2019-03-27 17:00:00
2019-03-27 17:30:00
2019-03-27 18:00:00
2019-03-27 18:30:00
2019-03-27 19:00:00
2019-03-27 19:30:00
2019-03-27 20:00:00
2019-03-27 20:30:00
2019-03-28 08:00:00
2019-03-28 08:30:00
2019-03-28 09:00:00
2019-03-28 09:30:00
2019-03-28 10:00:00
2019-03-28 10:30:00
2019-03-28 11:00:00
2019-03-28 11:30:00
2019-03-28 12:00:00
2019-03-28 12:30:00
2019-03-28 13:00:00
2019-03-28 13:30:00
2019-03-28 14:00:00
2019-03-28 14:30:00
2019-03-28 15:00:00
2019-03-28 15:30:00
2019-03-28 16:00:00
2019-03-28 16:30:00
2019-03-28 17:00:00
2019-03-28 17:30:00
2019-03-28 18:00:00
2019-03-28 18:30:00
2019-03-28 19:00:00
2019-03-28 19:30:00
2019-03-28 20:00:00
2019-03-28 20:30:00
2019-03-29 08:00:00
2019-03-29 08:30:00
2019-03-29 09:00:00
2019-03-29 09:30:00
2019-03-29 10:00:00
2019-03-29 10:30:00
2019-03-29 11:00:00
2019-03-29 11:30:00
2019-03-29 12:00:00
2019-03-29 12:30:00
2019-03-29 13:00:00
2019-03-29 13:30:00
2019-03-29 14:00:00
2019-03-29 14:30:00
2019-03-29 15:00:00
2019-03-29 15:30:00
2019-03-29 16:00:00
2019-03-29 16:30:00
2019-03-29 17:00:00
2019-03-29 17:30:00
2019-03-29 18:00:00
2019-03-29 18:30:00
2019-03-29 19:00:00
2019-03-29 19:30:00
2019-03-29 20:00:00
2019-03-29 20:30:00
2019-03-30 08:00:00
2019-03-30 08:30:00
2019-03-30 09:00:00
2019-03-30 09:30:00
2019-03-30 10:00:00
2019-03-30 10:30:00
2019-03-30 11:00:00
2019-03-30 11:30:00
2019-03-30 12:00:00
2019-03-30 12:30:00
2019-03-30 13:00:00
2019-03-30 13:30:00
2019-03-30 14:00:00
2019-03-30 14:30:00
2019-03-30 15:00:00
2019-03-30 15:30:00
2019-03-30 16:00:00
2019-03-30 16:30:00
2019-03-30 17:00:00
2019-03-30 17:30:00
2019-03-30 18:00:00
2019-03-30 18:30:00
2019-03-30 19:00:00
2019-03-30 19:30:00
2019-03-30 20:00:00
2019-03-30 20:30:00
2019-03-31 08:00:00
2019-03-31 08:30:00
2019-03-31 09:00:00
2019-03-31 09:30:00
2019-03-31 10:00:00
2019-03-31 10:30:00
2019-03-31 11:00:00
2019-03-31 11:30:00
2019-03-31 12:00:00
2019-03-31 12:30:00
2019-03-31 13:00:00
2019-03-31 13:30:00
2019-03-31 14:00:00
2019-03-31 14:30:00
2019-03-31 15:00:00
2019-03-31 15:30:00
2019-03-31 16:00:00
2019-03-31 16:30:00
2019-03-31 17:00:00
2019-03-31 17:30:00
2019-03-31 18:00:00
2019-03-31 18:30:00
2019-03-31 19:00:00
2019-03-31 19:30:00
2019-03-31 20:00:00
2019-03-31 20:30:00
2019-04-01 08:00:00
2019-04-01 08:30:00
2019-04-01 09:00:00
2019-04-01 09:30:00
2019-04-01 10:00:00
2019-04-01 10:30:00
2019-04-01 11:00:00
2019-04-01 11:30:00
2019-04-01 12:00:00
2019-04-01 12:30:00
2019-04-01 13:00:00
2019-04-01 13:30:00
2019-04-01 14:00:00
2019-04-01 14:30:00
2019-04-01 15:00:00
2019-04-01 15:30:00
2019-04-01 16:00:00
2019-04-01 16:30:00
2019-04-01 17:00:00
2019-04-01 17:30:00
2019-04-01 18:00:00
2019-04-01 18:30:00
2019-04-01 19:00:00
2019-04-01 19:30:00
2019-04-01 20:00:00
2019-04-01 20:30:00
2019-04-02 08:00:00
2019-04-02 08:30:00
2019-04-02 09:00:00
2019-04-02 09:30:00
2019-04-02 10:00:00
2019-04-02 10:30:00
2019-04-02 11:00:00
2019-04-02 11:30:00
2019-04-02 12:00:00
2019-04-02 12:30:00
2019-04-02 13:00:00
2019-04-02 13:30:00
2019-04-02 14:00:00
2019-04-02 14:30:00
2019-04-02 15:00:00
2019-04-02 15:30:00
2019-04-02 16:00:00
2019-04-02 16:30:00
2019-04-02 17:00:00
2019-04-02 17:30:00
2019-04-02 18:00:00
2019-04-02 18:30:00
2019-04-02 19:00:00
2019-04-02 19:30:00
2019-04-02 20:00:00
2019-04-02 20:30:00
2019-04-03 08:00:00
2019-04-03 08:30:00
2019-04-03 09:00:00
2019-04-03 09:30:00
2019-04-03 10:00:00
2019-04-03 10:30:00
2019-04-03 11:00:00
2019-04-03 11:30:00
2019-04-03 12:00:00
2019-04-03 12:30:00
2019-04-03 13:00:00
2019-04-03 13:30:00
2019-04-03 14:00:00
2019-04-03 14:30:00
2019-04-03 15:00:00
2019-04-03 15:30:00
2019-04-03 16:00:00
2019-04-03 16:30:00
2019-04-03 17:00:00
2019-04-03 17:30:00
2019-04-03 18:00:00
2019-04-03 18:30:00
2019-04-03 19:00:00
2019-04-03 19:30:00
2019-04-03 20:00:00
2019-04-03 20:30:00
2019-04-04 08:00:00
2019-04-04 08:30:00
2019-04-04 09:00:00
2019-04-04 09:30:00
2019-04-04 10:00:00
2019-04-04 10:30:00
2019-04-04 11:00:00
2019-04-04 11:30:00
2019-04-04 12:00:00
2019-04-04 12:30:00
2019-04-04 13:00:00
2019-04-04 13:30:00
2019-04-04 14:00:00
2019-04-04 14:30:00
2019-04-04 15:00:00
2019-04-04 15:30:00
2019-04-04 16:00:00
2019-04-04 16:30:00
2019-04-04 17:00:00
2019-04-04 17:30:00
2019-04-04 18:00:00
2019-04-04 18:30:00
2019-04-04 19:00:00
2019-04-04 19:30:00
2019-04-04 20:00:00
2019-04-04 20:30:00
2019-04-05 08:00:00
2019-04-05 08:30:00
2019-04-05 09:00:00
2019-04-05 09:30:00
2019-04-05 10:00:00
2019-04-05 10:30:00
2019-04-05 11:00:00
2019-04-05 11:30:00
2019-04-05 12:00:00
2019-04-05 12:30:00
2019-04-05 13:00:00
2019-04-05 13:30:00
2019-04-05 14:00:00
2019-04-05 14:30:00
2019-04-05 15:00:00
2019-04-05 15:30:00
2019-04-05 16:00:00
2019-04-05 16:30:00
2019-04-05 17:00:00
2019-04-05 17:30:00
2019-04-05 18:00:00
2019-04-05 18:30:00
2019-04-05 19:00:00
2019-04-05 19:30:00
2019-04-05 20:00:00
2019-04-05 20:30:00
2019-04-06 08:00:00
2019-04-06 08:30:00
2019-04-06 09:00:00
2019-04-06 09:30:00
2019-04-06 10:00:00
2019-04-06 10:30:00
2019-04-06 11:00:00
2019-04-06 11:30:00
2019-04-06 12:00:00
2019-04-06 12:30:00
2019-04-06 13:00:00
2019-04-06 13:30:00
2019-04-06 14:00:00
2019-04-06 14:30:00
2019-04-06 15:00:00
2019-04-06 15:30:00
2019-04-06 16:00:00
2019-04-06 16:30:00
2019-04-06 17:00:00
2019-04-06 17:30:00
2019-04-06 18:00:00
2019-04-06 18:30:00
2019-04-06 19:00:00
2019-04-06 19:30:00
2019-04-06 20:00:00
2019-04-06 20:30:00
2019-04-07 08:00:00
2019-04-07 08:30:00
2019-04-07 09:00:00
2019-04-07 09:30:00
2019-04-07 10:00:00
2019-04-07 10:30:00
2019-04-07 11:00:00
2019-04-07 11:30:00
2019-04-07 12:00:00
2019-04-07 12:30:00
2019-04-07 13:00:00
2019-04-07 13:30:00
2019-04-07 14:00:00
2019-04-07 14:30:00
2019-04-07 15:00:00
2019-04-07 15:30:00
2019-04-07 16:00:00
2019-04-07 16:30:00
2019-04-07 17:00:00
2019-04-07 17:30:00
2019-04-07 18:00:00
2019-04-07 18:30:00
2019-04-07 19:00:00
2019-04-07 19:30:00
2019-04-07 20:00:00
2019-04-07 20:30:00
2019-04-08 08:00:00
2019-04-08 08:30:00
2019-04-08 09:00:00
2019-04-08 09:30:00
2019-04-08 10:00:00
2019-04-08 10:30:00
2019-04-08 11:00:00
2019-04-08 11:30:00
2019-04-08 12:00:00
2019-04-08 12:30:00
2019-04-08 13:00:00
2019-04-08 13:30:00
2019-04-08 14:00:00
2019-04-08 14:30:00
2019-04-08 15:00:00
2019-04-08 15:30:00
2019-04-08 16:00:00
2019-04-08 16:30:00
2019-04-08 17:00:00
2019-04-08 17:30:00
2019-04-08 18:00:00
2019-04-08 18:30:00
2019-04-08 19:00:00
2019-04-08 19:30:00
2019-04-08 20:00:00
2019-04-08 20:30:00
2019-04-09 08:00:00
2019-04-09 08:30:00
2019-04-09 09:00:00
2019-04-09 09:30:00
2019-04-09 10:00:00
2019-04-09 10:30:00
2019-04-09 11:00:00
2019-04-09 11:30:00
2019-04-09 12:00:00
2019-04-09 12:30:00
2019-04-09 13:00:00
2019-04-09 13:30:00
2019-04-09 14:00:00
2019-04-09 14:30:00
2019-04-09 15:00:00
2019-04-09 15:30:00
2019-04-09 16:00:00
2019-04-09 16:30:00
2019-04-09 17:00:00
2019-04-09 17:30:00
2019-04-09 18:00:00
2019-04-09 18:30:00
2019-04-09 19:00:00
2019-04-09 19:30:00
2019-04-09 20:00:00
2019-04-09 20:30:00
2019-04-10 08:00:00
2019-04-10 08:30:00
2019-04-10 09:00:00
2019-04-10 09:30:00
2019-04-10 10:00:00
2019-04-10 10:30:00
2019-04-10 11:00:00
2019-04-10 11:30:00
2019-04-10 12:00:00
2019-04-10 12:30:00
2019-04-10 13:00:00
2019-04-10 13:30:00
2019-04-10 14:00:00
2019-04-10 14:30:00
2019-04-10 15:00:00
2019-04-10 15:30:00
2019-04-10 16:00:00
2019-04-10 16:30:00
2019-04-10 17:00:00
2019-04-10 17:30:00
2019-04-10 18:00:00
2019-04-10 18:30:00
2019-04-10 19:00:00
2019-04-10 19:30:00
2019-04-10 20:00:00
2019-04-10 20:30:00
2019-04-11 08:00:00
2019-04-11 08:30:00
2019-04-11 09:00:00
2019-04-11 09:30:00
2019-04-11 10:00:00
2019-04-11 10:30:00
2019-04-11 11:00:00
2019-04-11 11:30:00
2019-04-11 12:00:00
2019-04-11 12:30:00
2019-04-11 13:00:00
2019-04-11 13:30:00
2019-04-11 14:00:00
2019-04-11 14:30:00
2019-04-11 15:00:00
2019-04-11 15:30:00
2019-04-11 16:00:00
2019-04-11 16:30:00
2019-04-11 17:00:00
2019-04-11 17:30:00
2019-04-11 18:00:00
2019-04-11 18:30:00
2019-04-11 19:00:00
2019-04-11 19:30:00
2019-04-11 20:00:00
2019-04-11 20:30:00
2019-04-12 08:00:00
2019-04-12 08:30:00
2019-04-12 09:00:00
2019-04-12 09:30:00
2019-04-12 10:00:00
2019-04-12 10:30:00
2019-04-12 11:00:00
2019-04-12 11:30:00
2019-04-12 12:00:00
2019-04-12 12:30:00
2019-04-12 13:00:00
2019-04-12 13:30:00
2019-04-12 14:00:00
2019-04-12 14:30:00
2019-04-12 15:00:00
2019-04-12 15:30:00
2019-04-12 16:00:00
2019-04-12 16:30:00
2019-04-12 17:00:00
2019-04-12 17:30:00
2019-04-12 18:00:00
2019-04-12 18:30:00
2019-04-12 19:00:00
2019-04-12 19:30:00
2019-04-12 20:00:00
2019-04-12 20:30:00
2019-04-13 08:00:00
2019-04-13 08:30:00
2019-04-13 09:00:00
2019-04-13 09:30:00
2019-04-13 10:00:00
2019-04-13 10:30:00
2019-04-13 11:00:00
2019-04-13 11:30:00
2019-04-13 12:00:00
2019-04-13 12:30:00
2019-04-13 13:00:00
2019-04-13 13:30:00
2019-04-13 14:00:00
2019-04-13 14:30:00
2019-04-13 15:00:00
2019-04-13 15:30:00
2019-04-13 16:00:00
2019-04-13 16:30:00
2019-04-13 17:00:00
2019-04-13 17:30:00
2019-04-13 18:00:00
2019-04-13 18:30:00
2019-04-13 19:00:00
2019-04-13 19:30:00
2019-04-13 20:00:00
2019-04-13 20:30:00
2019-04-14 08:00:00
2019-04-14 08:30:00
2019-04-14 09:00:00
2019-04-14 09:30:00
2019-04-14 10:00:00
2019-04-14 10:30:00
2019-04-14 11:00:00
2019-04-14 11:30:00
2019-04-14 12:00:00
2019-04-14 12:30:00
2019-04-14 13:00:00
2019-04-14 13:30:00
2019-04-14 14:00:00
2019-04-14 14:30:00
2019-04-14 15:00:00
2019-04-14 15:30:00
2019-04-14 16:00:00
2019-04-14 16:30:00
2019-04-14 17:00:00
2019-04-14 17:30:00
2019-04-14 18:00:00
2019-04-14 18:30:00
2019-04-14 19:00:00
2019-04-14 19:30:00
2019-04-14 20:00:00
2019-04-14 20:30:00
2019-04-15 08:00:00
2019-04-15 08:30:00
2019-04-15 09:00:00
2019-04-15 09:30:00
2019-04-15 10:00:00
2019-04-15 10:30:00
2019-04-15 11:00:00
2019-04-15 11:30:00
2019-04-15 12:00:00
2019-04-15 12:30:00
2019-04-15 13:00:00
2019-04-15 13:30:00
2019-04-15 14:00:00
2019-04-15 14:30:00
2019-04-15 15:00:00
2019-04-15 15:30:00
2019-04-15 16:00:00
2019-04-15 16:30:00
2019-04-15 17:00:00
2019-04-15 17:30:00
2019-04-15 18:00:00
2019-04-15 18:30:00
2019-04-15 19:00:00
2019-04-15 19:30:00
2019-04-15 20:00:00
2019-04-15 20:30:00
2019-04-16 08:00:00
2019-04-16 08:30:00
2019-04-16 09:00:00
2019-04-16 09:30:00
2019-04-16 10:00:00
2019-04-16 10:30:00
2019-04-16 11:00:00
2019-04-16 11:30:00
2019-04-16 12:00:00
2019-04-16 12:30:00
2019-04-16 13:00:00
2019-04-16 13:30:00
2019-04-16 14:00:00
2019-04-16 14:30:00
2019-04-16 15:00:00
2019-04-16 15:30:00
2019-04-16 16:00:00
2019-04-16 16:30:00
2019-04-16 17:00:00
2019-04-16 17:30:00
2019-04-16 18:00:00
2019-04-16 18:30:00
2019-04-16 19:00:00
2019-04-16 19:30:00
2019-04-16 20:00:00
2019-04-16 20:30:00
2019-04-17 08:00:00
2019-04-17 08:30:00
2019-04-17 09:00:00
2019-04-17 09:30:00
2019-04-17 10:00:00
2019-04-17 10:30:00
2019-04-17 11:00:00
2019-04-17 11:30:00
2019-04-17 12:00:00
2019-04-17 12:30:00
2019-04-17 13:00:00
2019-04-17 13:30:00
2019-04-17 14:00:00
2019-04-17 14:30:00
2019-04-17 15:00:00
2019-04-17 15:30:00
2019-04-17 16:00:00
2019-04-17 16:30:00
2019-04-17 17:00:00
2019-04-17 17:30:00
2019-04-17 18:00:00
2019-04-17 18:30:00
2019-04-17 19:00:00
2019-04-17 19:30:00
2019-04-17 20:00:00
2019-04-17 20:30:00
2019-04-18 08:00:00
2019-04-18 08:30:00
2019-04-18 09:00:00
2019-04-18 09:30:00
2019-04-18 10:00:00
2019-04-18 10:30:00
2019-04-18 11:00:00
2019-04-18 11:30:00
2019-04-18 12:00:00
2019-04-18 12:30:00
2019-04-18 13:00:00
2019-04-18 13:30:00
2019-04-18 14:00:00
2019-04-18 14:30:00
2019-04-18 15:00:00
2019-04-18 15:30:00
2019-04-18 16:00:00
2019-04-18 16:30:00
2019-04-18 17:00:00
2019-04-18 17:30:00
2019-04-18 18:00:00
2019-04-18 18:30:00
2019-04-18 19:00:00
2019-04-18 19:30:00
2019-04-18 20:00:00
2019-04-18 20:30:00
2019-04-19 08:00:00
2019-04-19 08:30:00
2019-04-19 09:00:00
2019-04-19 09:30:00
2019-04-19 10:00:00
2019-04-19 10:30:00
2019-04-19 11:00:00
2019-04-19 11:30:00
2019-04-19 12:00:00
2019-04-19 12:30:00
2019-04-19 13:00:00
2019-04-19 13:30:00
2019-04-19 14:00:00
2019-04-19 14:30:00
2019-04-19 15:00:00
2019-04-19 15:30:00
2019-04-19 16:00:00
2019-04-19 16:30:00
2019-04-19 17:00:00
2019-04-19 17:30:00
2019-04-19 18:00:00
2019-04-19 18:30:00
2019-04-19 19:00:00
2019-04-19 19:30:00
2019-04-19 20:00:00
2019-04-19 20:30:00
2019-04-20 08:00:00
2019-04-20 08:30:00
2019-04-20 09:00:00
2019-04-20 09:30:00
2019-04-20 10:00:00
2019-04-20 10:30:00
2019-04-20 11:00:00
2019-04-20 11:30:00
2019-04-20 12:00:00
2019-04-20 12:30:00
2019-04-20 13:00:00
2019-04-20 13:30:00
2019-04-20 14:00:00
2019-04-20 14:30:00
2019-04-20 15:00:00
2019-04-20 15:30:00
2019-04-20 16:00:00
2019-04-20 16:30:00
2019-04-20 17:00:00
2019-04-20 17:30:00
2019-04-20 18:00:00
2019-04-20 18:30:00
2019-04-20 19:00:00
2019-04-20 19:30:00
2019-04-20 20:00:00
2019-04-20 20:30:00
2019-04-21 08:00:00
2019-04-21 08:30:00
2019-04-21 09:00:00
2019-04-21 09:30:00
2019-04-21 10:00:00
2019-04-21 10:30:00
2019-04-21 11:00:00
2019-04-21 11:30:00
2019-04-21 12:00:00
2019-04-21 12:30:00
2019-04-21 13:00:00
2019-04-21 13:30:00
2019-04-21 14:00:00
2019-04-21 14:30:00
2019-04-21 15:00:00
2019-04-21 15:30:00
2019-04-21 16:00:00
2019-04-21 16:30:00
2019-04-21 17:00:00
2019-04-21 17:30:00
2019-04-21 18:00:00
2019-04-21 18:30:00
2019-04-21 19:00:00
2019-04-21 19:30:00
2019-04-21 20:00:00
2019-04-21 20:30:00
2019-04-22 08:00:00
2019-04-22 08:30:00
2019-04-22 09:00:00
2019-04-22 09:30:00
2019-04-22 10:00:00
2019-04-22 10:30:00
2019-04-22 11:00:00
2019-04-22 11:30:00
2019-04-22 12:00:00
2019-04-22 12:30:00
2019-04-22 13:00:00
2019-04-22 13:30:00
2019-04-22 14:00:00
2019-04-22 14:30:00
2019-04-22 15:00:00
2019-04-22 15:30:00
2019-04-22 16:00:00
2019-04-22 16:30:00
2019-04-22 17:00:00
2019-04-22 17:30:00
2019-04-22 18:00:00
2019-04-22 18:30:00
2019-04-22 19:00:00
2019-04-22 19:30:00
2019-04-22 20:00:00
2019-04-22 20:30:00
2019-04-23 08:00:00
2019-04-23 08:30:00
2019-04-23 09:00:00
2019-04-23 09:30:00
2019-04-23 10:00:00
2019-04-23 10:30:00
2019-04-23 11:00:00
2019-04-23 11:30:00
2019-04-23 12:00:00
2019-04-23 12:30:00
2019-04-23 13:00:00
2019-04-23 13:30:00
2019-04-23 14:00:00
2019-04-23 14:30:00
2019-04-23 15:00:00
2019-04-23 15:30:00
2019-04-23 16:00:00
2019-04-23 16:30:00
2019-04-23 17:00:00
2019-04-23 17:30:00
2019-04-23 18:00:00
2019-04-23 18:30:00
2019-04-23 19:00:00
2019-04-23 19:30:00
2019-04-23 20:00:00
2019-04-23 20:30:00
2019-04-24 08:00:00
2019-04-24 08:30:00
2019-04-24 09:00:00
2019-04-24 09:30:00
2019-04-24 10:00:00
2019-04-24 10:30:00
2019-04-24 11:00:00
2019-04-24 11:30:00
2019-04-24 12:00:00
2019-04-24 12:30:00
2019-04-24 13:00:00
2019-04-24 13:30:00
2019-04-24 14:00:00
2019-04-24 14:30:00
2019-04-24 15:00:00
2019-04-24 15:30:00
2019-04-24 16:00:00
2019-04-24 16:30:00
2019-04-24 17:00:00
2019-04-24 17:30:00
2019-04-24 18:00:00
2019-04-24 18:30:00
2019-04-24 19:00:00
2019-04-24 19:30:00
2019-04-24 20:00:00
2019-04-24 20:30:00
2019-04-25 08:00:00
2019-04-25 08:30:00
2019-04-25 09:00:00
2019-04-25 09:30:00
2019-04-25 10:00:00
2019-04-25 10:30:00
2019-04-25 11:00:00
2019-04-25 11:30:00
2019-04-25 12:00:00
2019-04-25 12:30:00
2019-04-25 13:00:00
2019-04-25 13:30:00
2019-04-25 14:00:00
2019-04-25 14:30:00
2019-04-25 15:00:00
2019-04-25 15:30:00
2019-04-25 16:00:00
2019-04-25 16:30:00
2019-04-25 17:00:00
2019-04-25 17:30:00
2019-04-25 18:00:00
2019-04-25 18:30:00
2019-04-25 19:00:00
2019-04-25 19:30:00
2019-04-25 20:00:00
2019-04-25 20:30:00
2019-04-26 08:00:00
2019-04-26 08:30:00
2019-04-26 09:00:00
2019-04-26 09:30:00
2019-04-26 10:00:00
2019-04-26 10:30:00
2019-04-26 11:00:00
2019-04-26 11:30:00
2019-04-26 12:00:00
2019-04-26 12:30:00
2019-04-26 13:00:00
2019-04-26 13:30:00
2019-04-26 14:00:00
2019-04-26 14:30:00
2019-04-26 15:00:00
2019-04-26 15:30:00
2019-04-26 16:00:00
2019-04-26 16:30:00
2019-04-26 17:00:00
2019-04-26 17:30:00
2019-04-26 18:00:00
2019-04-26 18:30:00
2019-04-26 19:00:00
2019-04-26 19:30:00
2019-04-26 20:00:00
2019-04-26 20:30:00
2019-04-27 08:00:00
2019-04-27 08:30:00
2019-04-27 09:00:00
2019-04-27 09:30:00
2019-04-27 10:00:00
2019-04-27 10:30:00
2019-04-27 11:00:00
2019-04-27 11:30:00
2019-04-27 12:00:00
2019-04-27 12:30:00
2019-04-27 13:00:00
2019-04-27 13:30:00
2019-04-27 14:00:00
2019-04-27 14:30:00
2019-04-27 15:00:00
2019-04-27 15:30:00
2019-04-27 16:00:00
2019-04-27 16:30:00
2019-04-27 17:00:00
2019-04-27 17:30:00
2019-04-27 18:00:00
2019-04-27 18:30:00
2019-04-27 19:00:00
2019-04-27 19:30:00
2019-04-27 20:00:00
2019-04-27 20:30:00
2019-04-28 08:00:00
2019-04-28 08:30:00
2019-04-28 09:00:00
2019-04-28 09:30:00
2019-04-28 10:00:00
2019-04-28 10:30:00
2019-04-28 11:00:00
2019-04-28 11:30:00
2019-04-28 12:00:00
2019-04-28 12:30:00
2019-04-28 13:00:00
2019-04-28 13:30:00
2019-04-28 14:00:00
2019-04-28 14:30:00
2019-04-28 15:00:00
2019-04-28 15:30:00
2019-04-28 16:00:00
2019-04-28 16:30:00
2019-04-28 17:00:00
2019-04-28 17:30:00
2019-04-28 18:00:00
2019-04-28 18:30:00
2019-04-28 19:00:00
2019-04-28 19:30:00
2019-04-28 20:00:00
2019-04-28 20:30:00
2019-04-29 08:00:00
2019-04-29 08:30:00
2019-04-29 09:00:00
2019-04-29 09:30:00
2019-04-29 10:00:00
2019-04-29 10:30:00
2019-04-29 11:00:00
2019-04-29 11:30:00
2019-04-29 12:00:00
2019-04-29 12:30:00
2019-04-29 13:00:00
2019-04-29 13:30:00
2019-04-29 14:00:00
2019-04-29 14:30:00
2019-04-29 15:00:00
2019-04-29 15:30:00
2019-04-29 16:00:00
2019-04-29 16:30:00
2019-04-29 17:00:00
2019-04-29 17:30:00
2019-04-29 18:00:00
2019-04-29 18:30:00
2019-04-29 19:00:00
2019-04-29 19:30:00
2019-04-29 20:00:00
2019-04-29 20:30:00
2019-04-30 08:00:00
2019-04-30 08:30:00
2019-04-30 09:00:00
2019-04-30 09:30:00
2019-04-30 10:00:00
2019-04-30 10:30:00
2019-04-30 11:00:00
2019-04-30 11:30:00
2019-04-30 12:00:00
2019-04-30 12:30:00
2019-04-30 13:00:00
2019-04-30 13:30:00
2019-04-30 14:00:00
2019-04-30 14:30:00
2019-04-30 15:00:00
2019-04-30 15:30:00
2019-04-30 16:00:00
2019-04-30 16:30:00
2019-04-30 17:00:00
2019-04-30 17:30:00
2019-04-30 18:00:00
2019-04-30 18:30:00
2019-04-30 19:00:00
2019-04-30 19:30:00
2019-04-30 20:00:00
2019-04-30 20:30:00
2019-05-01 08:00:00
2019-05-01 08:30:00
2019-05-01 09:00:00
2019-05-01 09:30:00
2019-05-01 10:00:00
2019-05-01 10:30:00
2019-05-01 11:00:00
2019-05-01 11:30:00
2019-05-01 12:00:00
2019-05-01 12:30:00
2019-05-01 13:00:00
2019-05-01 13:30:00
2019-05-01 14:00:00
2019-05-01 14:30:00
2019-05-01 15:00:00
2019-05-01 15:30:00
2019-05-01 16:00:00
2019-05-01 16:30:00
2019-05-01 17:00:00
2019-05-01 17:30:00
2019-05-01 18:00:00
2019-05-01 18:30:00
2019-05-01 19:00:00
2019-05-01 19:30:00
2019-05-01 20:00:00
2019-05-01 20:30:00
2019-05-02 08:00:00
2019-05-02 08:30:00
2019-05-02 09:00:00
2019-05-02 09:30:00
2019-05-02 10:00:00
2019-05-02 10:30:00
2019-05-02 11:00:00
2019-05-02 11:30:00
2019-05-02 12:00:00
2019-05-02 12:30:00
2019-05-02 13:00:00
2019-05-02 13:30:00
2019-05-02 14:00:00
2019-05-02 14:30:00
2019-05-02 15:00:00
2019-05-02 15:30:00
2019-05-02 16:00:00
2019-05-02 16:30:00
2019-05-02 17:00:00
2019-05-02 17:30:00
2019-05-02 18:00:00
2019-05-02 18:30:00
2019-05-02 19:00:00
2019-05-02 19:30:00
2019-05-02 20:00:00
2019-05-02 20:30:00
2019-05-03 08:00:00
2019-05-03 08:30:00
2019-05-03 09:00:00
2019-05-03 09:30:00
2019-05-03 10:00:00
2019-05-03 10:30:00
2019-05-03 11:00:00
2019-05-03 11:30:00
2019-05-03 12:00:00
2019-05-03 12:30:00
2019-05-03 13:00:00
2019-05-03 13:30:00
2019-05-03 14:00:00
2019-05-03 14:30:00
2019-05-03 15:00:00
2019-05-03 15:30:00
2019-05-03 16:00:00
2019-05-03 16:30:00
2019-05-03 17:00:00
2019-05-03 17:30:00
2019-05-03 18:00:00
2019-05-03 18:30:00
2019-05-03 19:00:00
2019-05-03 19:30:00
2019-05-03 20:00:00
2019-05-03 20:30:00
2019-05-04 08:00:00
2019-05-04 08:30:00
2019-05-04 09:00:00
2019-05-04 09:30:00
2019-05-04 10:00:00
2019-05-04 10:30:00
2019-05-04 11:00:00
2019-05-04 11:30:00
2019-05-04 12:00:00
2019-05-04 12:30:00
2019-05-04 13:00:00
2019-05-04 13:30:00
2019-05-04 14:00:00
2019-05-04 14:30:00
2019-05-04 15:00:00
2019-05-04 15:30:00
2019-05-04 16:00:00
2019-05-04 16:30:00
2019-05-04 17:00:00
2019-05-04 17:30:00
2019-05-04 18:00:00
2019-05-04 18:30:00
2019-05-04 19:00:00
2019-05-04 19:30:00
2019-05-04 20:00:00
2019-05-04 20:30:00
2019-05-05 08:00:00
2019-05-05 08:30:00
2019-05-05 09:00:00
2019-05-05 09:30:00
2019-05-05 10:00:00
2019-05-05 10:30:00
2019-05-05 11:00:00
2019-05-05 11:30:00
2019-05-05 12:00:00
2019-05-05 12:30:00
2019-05-05 13:00:00
2019-05-05 13:30:00
2019-05-05 14:00:00
2019-05-05 14:30:00
2019-05-05 15:00:00
2019-05-05 15:30:00
2019-05-05 16:00:00
2019-05-05 16:30:00
2019-05-05 17:00:00
2019-05-05 17:30:00
2019-05-05 18:00:00
2019-05-05 18:30:00
2019-05-05 19:00:00
2019-05-05 19:30:00
2019-05-05 20:00:00
2019-05-05 20:30:00
2019-05-06 08:00:00
2019-05-06 08:30:00
2019-05-06 09:00:00
2019-05-06 09:30:00
2019-05-06 10:00:00
2019-05-06 10:30:00
2019-05-06 11:00:00
2019-05-06 11:30:00
2019-05-06 12:00:00
2019-05-06 12:30:00
2019-05-06 13:00:00
2019-05-06 13:30:00
2019-05-06 14:00:00
2019-05-06 14:30:00
2019-05-06 15:00:00
2019-05-06 15:30:00
2019-05-06 16:00:00
2019-05-06 16:30:00
2019-05-06 17:00:00
2019-05-06 17:30:00
2019-05-06 18:00:00
2019-05-06 18:30:00
2019-05-06 19:00:00
2019-05-06 19:30:00
2019-05-06 20:00:00
2019-05-06 20:30:00
2019-05-07 08:00:00
2019-05-07 08:30:00
2019-05-07 09:00:00
2019-05-07 09:30:00
2019-05-07 10:00:00
2019-05-07 10:30:00
2019-05-07 11:00:00
2019-05-07 11:30:00
2019-05-07 12:00:00
2019-05-07 12:30:00
2019-05-07 13:00:00
2019-05-07 13:30:00
2019-05-07 14:00:00
2019-05-07 14:30:00
2019-05-07 15:00:00
2019-05-07 15:30:00
2019-05-07 16:00:00
2019-05-07 16:30:00
2019-05-07 17:00:00
2019-05-07 17:30:00
2019-05-07 18:00:00
2019-05-07 18:30:00
2019-05-07 19:00:00
2019-05-07 19:30:00
2019-05-07 20:00:00
2019-05-07 20:30:00
2019-05-08 08:00:00
2019-05-08 08:30:00
2019-05-08 09:00:00
2019-05-08 09:30:00
2019-05-08 10:00:00
2019-05-08 10:30:00
2019-05-08 11:00:00
2019-05-08 11:30:00
2019-05-08 12:00:00
2019-05-08 12:30:00
2019-05-08 13:00:00
2019-05-08 13:30:00
2019-05-08 14:00:00
2019-05-08 14:30:00
2019-05-08 15:00:00
2019-05-08 15:30:00
2019-05-08 16:00:00
2019-05-08 16:30:00
2019-05-08 17:00:00
2019-05-08 17:30:00
2019-05-08 18:00:00
2019-05-08 18:30:00
2019-05-08 19:00:00
2019-05-08 19:30:00
2019-05-08 20:00:00
2019-05-08 20:30:00
2019-05-09 08:00:00
2019-05-09 08:30:00
2019-05-09 09:00:00
2019-05-09 09:30:00
2019-05-09 10:00:00
2019-05-09 10:30:00
2019-05-09 11:00:00
2019-05-09 11:30:00
2019-05-09 12:00:00
2019-05-09 12:30:00
2019-05-09 13:00:00
2019-05-09 13:30:00
2019-05-09 14:00:00
2019-05-09 14:30:00
2019-05-09 15:00:00
2019-05-09 15:30:00
2019-05-09 16:00:00
2019-05-09 16:30:00
2019-05-09 17:00:00
2019-05-09 17:30:00
2019-05-09 18:00:00
2019-05-09 18:30:00
2019-05-09 19:00:00
2019-05-09 19:30:00
2019-05-09 20:00:00
2019-05-09 20:30:00
2019-05-10 08:00:00
2019-05-10 08:30:00
2019-05-10 09:00:00
2019-05-10 09:30:00
2019-05-10 10:00:00
2019-05-10 10:30:00
2019-05-10 11:00:00
2019-05-10 11:30:00
2019-05-10 12:00:00
2019-05-10 12:30:00
2019-05-10 13:00:00
2019-05-10 13:30:00
2019-05-10 14:00:00
2019-05-10 14:30:00
2019-05-10 15:00:00
2019-05-10 15:30:00
2019-05-10 16:00:00
2019-05-10 16:30:00
2019-05-10 17:00:00
2019-05-10 17:30:00
2019-05-10 18:00:00
2019-05-10 18:30:00
2019-05-10 19:00:00
2019-05-10 19:30:00
2019-05-10 20:00:00
2019-05-10 20:30:00
2019-05-11 08:00:00
2019-05-11 08:30:00
2019-05-11 09:00:00
2019-05-11 09:30:00
2019-05-11 10:00:00
2019-05-11 10:30:00
2019-05-11 11:00:00
2019-05-11 11:30:00
2019-05-11 12:00:00
2019-05-11 12:30:00
2019-05-11 13:00:00
2019-05-11 13:30:00
2019-05-11 14:00:00
2019-05-11 14:30:00
2019-05-11 15:00:00
2019-05-11 15:30:00
2019-05-11 16:00:00
2019-05-11 16:30:00
2019-05-11 17:00:00
2019-05-11 17:30:00
2019-05-11 18:00:00
2019-05-11 18:30:00
2019-05-11 19:00:00
2019-05-11 19:30:00
2019-05-11 20:00:00
2019-05-11 20:30:00
2019-05-12 08:00:00
2019-05-12 08:30:00
2019-05-12 09:00:00
2019-05-12 09:30:00
2019-05-12 10:00:00
2019-05-12 10:30:00
2019-05-12 11:00:00
2019-05-12 11:30:00
2019-05-12 12:00:00
2019-05-12 12:30:00
2019-05-12 13:00:00
2019-05-12 13:30:00
2019-05-12 14:00:00
2019-05-12 14:30:00
2019-05-12 15:00:00
2019-05-12 15:30:00
2019-05-12 16:00:00
2019-05-12 16:30:00
2019-05-12 17:00:00
2019-05-12 17:30:00
2019-05-12 18:00:00
2019-05-12 18:30:00
2019-05-12 19:00:00
2019-05-12 19:30:00
2019-05-12 20:00:00
2019-05-12 20:30:00
2019-05-13 08:00:00
2019-05-13 08:30:00
2019-05-13 09:00:00
2019-05-13 09:30:00
2019-05-13 10:00:00
2019-05-13 10:30:00
2019-05-13 11:00:00
2019-05-13 11:30:00
2019-05-13 12:00:00
2019-05-13 12:30:00
2019-05-13 13:00:00
2019-05-13 13:30:00
2019-05-13 14:00:00
2019-05-13 14:30:00
2019-05-13 15:00:00
2019-05-13 15:30:00
2019-05-13 16:00:00
2019-05-13 16:30:00
2019-05-13 17:00:00
2019-05-13 17:30:00
2019-05-13 18:00:00
2019-05-13 18:30:00
2019-05-13 19:00:00
2019-05-13 19:30:00
2019-05-13 20:00:00
2019-05-13 20:30:00
2019-05-14 08:00:00
2019-05-14 08:30:00
2019-05-14 09:00:00
2019-05-14 09:30:00
2019-05-14 10:00:00
2019-05-14 10:30:00
2019-05-14 11:00:00
2019-05-14 11:30:00
2019-05-14 12:00:00
2019-05-14 12:30:00
2019-05-14 13:00:00
2019-05-14 13:30:00
2019-05-14 14:00:00
2019-05-14 14:30:00
2019-05-14 15:00:00
2019-05-14 15:30:00
2019-05-14 16:00:00
2019-05-14 16:30:00
2019-05-14 17:00:00
2019-05-14 17:30:00
2019-05-14 18:00:00
2019-05-14 18:30:00
2019-05-14 19:00:00
2019-05-14 19:30:00
2019-05-14 20:00:00
2019-05-14 20:30:00
2019-05-15 08:00:00
2019-05-15 08:30:00
2019-05-15 09:00:00
2019-05-15 09:30:00
2019-05-15 10:00:00
2019-05-15 10:30:00
2019-05-15 11:00:00
2019-05-15 11:30:00
2019-05-15 12:00:00
2019-05-15 12:30:00
2019-05-15 13:00:00
2019-05-15 13:30:00
2019-05-15 14:00:00
2019-05-15 14:30:00
2019-05-15 15:00:00
2019-05-15 15:30:00
2019-05-15 16:00:00
2019-05-15 16:30:00
2019-05-15 17:00:00
2019-05-15 17:30:00
2019-05-15 18:00:00
2019-05-15 18:30:00
2019-05-15 19:00:00
2019-05-15 19:30:00
2019-05-15 20:00:00
2019-05-15 20:30:00
2019-05-16 08:00:00
2019-05-16 08:30:00
2019-05-16 09:00:00
2019-05-16 09:30:00
2019-05-16 10:00:00
2019-05-16 10:30:00
2019-05-16 11:00:00
2019-05-16 11:30:00
2019-05-16 12:00:00
2019-05-16 12:30:00
2019-05-16 13:00:00
2019-05-16 13:30:00
2019-05-16 14:00:00
2019-05-16 14:30:00
2019-05-16 15:00:00
2019-05-16 15:30:00
2019-05-16 16:00:00
2019-05-16 16:30:00
2019-05-16 17:00:00
2019-05-16 17:30:00
2019-05-16 18:00:00
2019-05-16 18:30:00
2019-05-16 19:00:00
2019-05-16 19:30:00
2019-05-16 20:00:00
2019-05-16 20:30:00
2019-05-17 08:00:00
2019-05-17 08:30:00
2019-05-17 09:00:00
2019-05-17 09:30:00
2019-05-17 10:00:00
2019-05-17 10:30:00
2019-05-17 11:00:00
2019-05-17 11:30:00
2019-05-17 12:00:00
2019-05-17 12:30:00
2019-05-17 13:00:00
2019-05-17 13:30:00
2019-05-17 14:00:00
2019-05-17 14:30:00
2019-05-17 15:00:00
2019-05-17 15:30:00
2019-05-17 16:00:00
2019-05-17 16:30:00
2019-05-17 17:00:00
2019-05-17 17:30:00
2019-05-17 18:00:00
2019-05-17 18:30:00
2019-05-17 19:00:00
2019-05-17 19:30:00
2019-05-17 20:00:00
2019-05-17 20:30:00
2019-05-18 08:00:00
2019-05-18 08:30:00
2019-05-18 09:00:00
2019-05-18 09:30:00
2019-05-18 10:00:00
2019-05-18 10:30:00
2019-05-18 11:00:00
2019-05-18 11:30:00
2019-05-18 12:00:00
2019-05-18 12:30:00
2019-05-18 13:00:00
2019-05-18 13:30:00
2019-05-18 14:00:00
2019-05-18 14:30:00
2019-05-18 15:00:00
2019-05-18 15:30:00
2019-05-18 16:00:00
2019-05-18 16:30:00
2019-05-18 17:00:00
2019-05-18 17:30:00
2019-05-18 18:00:00
2019-05-18 18:30:00
2019-05-18 19:00:00
2019-05-18 19:30:00
2019-05-18 20:00:00
2019-05-18 20:30:00
2019-05-19 08:00:00
2019-05-19 08:30:00
2019-05-19 09:00:00
2019-05-19 09:30:00
2019-05-19 10:00:00
2019-05-19 10:30:00
2019-05-19 11:00:00
2019-05-19 11:30:00
2019-05-19 12:00:00
2019-05-19 12:30:00
2019-05-19 13:00:00
2019-05-19 13:30:00
2019-05-19 14:00:00
2019-05-19 14:30:00
2019-05-19 15:00:00
2019-05-19 15:30:00
2019-05-19 16:00:00
2019-05-19 16:30:00
2019-05-19 17:00:00
2019-05-19 17:30:00
2019-05-19 18:00:00
2019-05-19 18:30:00
2019-05-19 19:00:00
2019-05-19 19:30:00
2019-05-19 20:00:00
2019-05-19 20:30:00
2019-05-20 08:00:00
2019-05-20 08:30:00
2019-05-20 09:00:00
2019-05-20 09:30:00
2019-05-20 10:00:00
2019-05-20 10:30:00
2019-05-20 11:00:00
2019-05-20 11:30:00
2019-05-20 12:00:00
2019-05-20 12:30:00
2019-05-20 13:00:00
2019-05-20 13:30:00
2019-05-20 14:00:00
2019-05-20 14:30:00
2019-05-20 15:00:00
2019-05-20 15:30:00
2019-05-20 16:00:00
2019-05-20 16:30:00
2019-05-20 17:00:00
2019-05-20 17:30:00
2019-05-20 18:00:00
2019-05-20 18:30:00
2019-05-20 19:00:00
2019-05-20 19:30:00
2019-05-20 20:00:00
2019-05-20 20:30:00
2019-05-21 08:00:00
2019-05-21 08:30:00
2019-05-21 09:00:00
2019-05-21 09:30:00
2019-05-21 10:00:00
2019-05-21 10:30:00
2019-05-21 11:00:00
2019-05-21 11:30:00
2019-05-21 12:00:00
2019-05-21 12:30:00
2019-05-21 13:00:00
2019-05-21 13:30:00
2019-05-21 14:00:00
2019-05-21 14:30:00
2019-05-21 15:00:00
2019-05-21 15:30:00
2019-05-21 16:00:00
2019-05-21 16:30:00
2019-05-21 17:00:00
2019-05-21 17:30:00
2019-05-21 18:00:00
2019-05-21 18:30:00
2019-05-21 19:00:00
2019-05-21 19:30:00
2019-05-21 20:00:00
2019-05-21 20:30:00
2019-05-22 08:00:00
2019-05-22 08:30:00
2019-05-22 09:00:00
2019-05-22 09:30:00
2019-05-22 10:00:00
2019-05-22 10:30:00
2019-05-22 11:00:00
2019-05-22 11:30:00
2019-05-22 12:00:00
2019-05-22 12:30:00
2019-05-22 13:00:00
2019-05-22 13:30:00
2019-05-22 14:00:00
2019-05-22 14:30:00
2019-05-22 15:00:00
2019-05-22 15:30:00
2019-05-22 16:00:00
2019-05-22 16:30:00
2019-05-22 17:00:00
2019-05-22 17:30:00
2019-05-22 18:00:00
2019-05-22 18:30:00
2019-05-22 19:00:00
2019-05-22 19:30:00
2019-05-22 20:00:00
2019-05-22 20:30:00
2019-05-23 08:00:00
2019-05-23 08:30:00
2019-05-23 09:00:00
2019-05-23 09:30:00
2019-05-23 10:00:00
2019-05-23 10:30:00
2019-05-23 11:00:00
2019-05-23 11:30:00
2019-05-23 12:00:00
2019-05-23 12:30:00
2019-05-23 13:00:00
2019-05-23 13:30:00
2019-05-23 14:00:00
2019-05-23 14:30:00
2019-05-23 15:00:00
2019-05-23 15:30:00
2019-05-23 16:00:00
2019-05-23 16:30:00
2019-05-23 17:00:00
2019-05-23 17:30:00
2019-05-23 18:00:00
2019-05-23 18:30:00
2019-05-23 19:00:00
2019-05-23 19:30:00
2019-05-23 20:00:00
2019-05-23 20:30:00
2019-05-24 08:00:00
2019-05-24 08:30:00
2019-05-24 09:00:00
2019-05-24 09:30:00
2019-05-24 10:00:00
2019-05-24 10:30:00
2019-05-24 11:00:00
2019-05-24 11:30:00
2019-05-24 12:00:00
2019-05-24 12:30:00
2019-05-24 13:00:00
2019-05-24 13:30:00
2019-05-24 14:00:00
2019-05-24 14:30:00
2019-05-24 15:00:00
2019-05-24 15:30:00
2019-05-24 16:00:00
2019-05-24 16:30:00
2019-05-24 17:00:00
2019-05-24 17:30:00
2019-05-24 18:00:00
2019-05-24 18:30:00
2019-05-24 19:00:00
2019-05-24 19:30:00
2019-05-24 20:00:00
2019-05-24 20:30:00
2019-05-25 08:00:00
2019-05-25 08:30:00
2019-05-25 09:00:00
2019-05-25 09:30:00
2019-05-25 10:00:00
2019-05-25 10:30:00
2019-05-25 11:00:00
2019-05-25 11:30:00
2019-05-25 12:00:00
2019-05-25 12:30:00
2019-05-25 13:00:00
2019-05-25 13:30:00
2019-05-25 14:00:00
2019-05-25 14:30:00
2019-05-25 15:00:00
2019-05-25 15:30:00
2019-05-25 16:00:00
2019-05-25 16:30:00
2019-05-25 17:00:00
2019-05-25 17:30:00
2019-05-25 18:00:00
2019-05-25 18:30:00
2019-05-25 19:00:00
2019-05-25 19:30:00
2019-05-25 20:00:00
2019-05-25 20:30:00
2019-05-26 08:00:00
2019-05-26 08:30:00
2019-05-26 09:00:00
2019-05-26 09:30:00
2019-05-26 10:00:00
2019-05-26 10:30:00
2019-05-26 11:00:00
2019-05-26 11:30:00
2019-05-26 12:00:00
2019-05-26 12:30:00
2019-05-26 13:00:00
2019-05-26 13:30:00
2019-05-26 14:00:00
2019-05-26 14:30:00
2019-05-26 15:00:00
2019-05-26 15:30:00
2019-05-26 16:00:00
2019-05-26 16:30:00
2019-05-26 17:00:00
2019-05-26 17:30:00
2019-05-26 18:00:00
2019-05-26 18:30:00
2019-05-26 19:00:00
2019-05-26 19:30:00
2019-05-26 20:00:00
2019-05-26 20:30:00
2019-05-27 08:00:00
2019-05-27 08:30:00
2019-05-27 09:00:00
2019-05-27 09:30:00
2019-05-27 10:00:00
2019-05-27 10:30:00
2019-05-27 11:00:00
2019-05-27 11:30:00
2019-05-27 12:00:00
2019-05-27 12:30:00
2019-05-27 13:00:00
2019-05-27 13:30:00
2019-05-27 14:00:00
2019-05-27 14:30:00
2019-05-27 15:00:00
2019-05-27 15:30:00
2019-05-27 16:00:00
2019-05-27 16:30:00
2019-05-27 17:00:00
2019-05-27 17:30:00
2019-05-27 18:00:00
2019-05-27 18:30:00
2019-05-27 19:00:00
2019-05-27 19:30:00
2019-05-27 20:00:00
2019-05-27 20:30:00
2019-05-28 08:00:00
2019-05-28 08:30:00
2019-05-28 09:00:00
2019-05-28 09:30:00
2019-05-28 10:00:00
2019-05-28 10:30:00
2019-05-28 11:00:00
2019-05-28 11:30:00
2019-05-28 12:00:00
2019-05-28 12:30:00
2019-05-28 13:00:00
2019-05-28 13:30:00
2019-05-28 14:00:00
2019-05-28 14:30:00
2019-05-28 15:00:00
2019-05-28 15:30:00
2019-05-28 16:00:00
2019-05-28 16:30:00
2019-05-28 17:00:00
2019-05-28 17:30:00
2019-05-28 18:00:00
2019-05-28 18:30:00
2019-05-28 19:00:00
2019-05-28 19:30:00
2019-05-28 20:00:00
2019-05-28 20:30:00
2019-05-29 08:00:00
2019-05-29 08:30:00
2019-05-29 09:00:00
2019-05-29 09:30:00
2019-05-29 10:00:00
2019-05-29 10:30:00
2019-05-29 11:00:00
2019-05-29 11:30:00
2019-05-29 12:00:00
2019-05-29 12:30:00
2019-05-29 13:00:00
2019-05-29 13:30:00
2019-05-29 14:00:00
2019-05-29 14:30:00
2019-05-29 15:00:00
2019-05-29 15:30:00
2019-05-29 16:00:00
2019-05-29 16:30:00
2019-05-29 17:00:00
2019-05-29 17:30:00
2019-05-29 18:00:00
2019-05-29 18:30:00
2019-05-29 19:00:00
2019-05-29 19:30:00
2019-05-29 20:00:00
2019-05-29 20:30:00
2019-05-30 08:00:00
2019-05-30 08:30:00
2019-05-30 09:00:00
2019-05-30 09:30:00
2019-05-30 10:00:00
2019-05-30 10:30:00
2019-05-30 11:00:00
2019-05-30 11:30:00
2019-05-30 12:00:00
2019-05-30 12:30:00
2019-05-30 13:00:00
2019-05-30 13:30:00
2019-05-30 14:00:00
2019-05-30 14:30:00
2019-05-30 15:00:00
2019-05-30 15:30:00
2019-05-30 16:00:00
2019-05-30 16:30:00
2019-05-30 17:00:00
2019-05-30 17:30:00
2019-05-30 18:00:00
2019-05-30 18:30:00
2019-05-30 19:00:00
2019-05-30 19:30:00
2019-05-30 20:00:00
2019-05-30 20:30:00
2019-05-31 08:00:00
2019-05-31 08:30:00
2019-05-31 09:00:00
2019-05-31 09:30:00
2019-05-31 10:00:00
2019-05-31 10:30:00
2019-05-31 11:00:00
2019-05-31 11:30:00
2019-05-31 12:00:00
2019-05-31 12:30:00
2019-05-31 13:00:00
2019-05-31 13:30:00
2019-05-31 14:00:00
2019-05-31 14:30:00
2019-05-31 15:00:00
2019-05-31 15:30:00
2019-05-31 16:00:00
2019-05-31 16:30:00
2019-05-31 17:00:00
2019-05-31 17:30:00
2019-05-31 18:00:00
2019-05-31 18:30:00
2019-05-31 19:00:00
2019-05-31 19:30:00
2019-05-31 20:00:00
2019-05-31 20:30:00
2019-06-01 08:00:00
2019-06-01 08:30:00
2019-06-01 09:00:00
2019-06-01 09:30:00
2019-06-01 10:00:00
2019-06-01 10:30:00
2019-06-01 11:00:00
2019-06-01 11:30:00
2019-06-01 12:00:00
2019-06-01 12:30:00
2019-06-01 13:00:00
2019-06-01 13:30:00
2019-06-01 14:00:00
2019-06-01 14:30:00
2019-06-01 15:00:00
2019-06-01 15:30:00
2019-06-01 16:00:00
2019-06-01 16:30:00
2019-06-01 17:00:00
2019-06-01 17:30:00
2019-06-01 18:00:00
2019-06-01 18:30:00
2019-06-01 19:00:00
2019-06-01 19:30:00
2019-06-01 20:00:00
2019-06-01 20:30:00
2019-06-02 08:00:00
2019-06-02 08:30:00
2019-06-02 09:00:00
2019-06-02 09:30:00
2019-06-02 10:00:00
2019-06-02 10:30:00
2019-06-02 11:00:00
2019-06-02 11:30:00
2019-06-02 12:00:00
2019-06-02 12:30:00
2019-06-02 13:00:00
2019-06-02 13:30:00
2019-06-02 14:00:00
2019-06-02 14:30:00
2019-06-02 15:00:00
2019-06-02 15:30:00
2019-06-02 16:00:00
2019-06-02 16:30:00
2019-06-02 17:00:00
2019-06-02 17:30:00
2019-06-02 18:00:00
2019-06-02 18:30:00
2019-06-02 19:00:00
2019-06-02 19:30:00
2019-06-02 20:00:00
2019-06-02 20:30:00
2019-06-03 08:00:00
2019-06-03 08:30:00
2019-06-03 09:00:00
2019-06-03 09:30:00
2019-06-03 10:00:00
2019-06-03 10:30:00
2019-06-03 11:00:00
2019-06-03 11:30:00
2019-06-03 12:00:00
2019-06-03 12:30:00
2019-06-03 13:00:00
2019-06-03 13:30:00
2019-06-03 14:00:00
2019-06-03 14:30:00
2019-06-03 15:00:00
2019-06-03 15:30:00
2019-06-03 16:00:00
2019-06-03 16:30:00
2019-06-03 17:00:00
2019-06-03 17:30:00
2019-06-03 18:00:00
2019-06-03 18:30:00
2019-06-03 19:00:00
2019-06-03 19:30:00
2019-06-03 20:00:00
2019-06-03 20:30:00
2019-06-04 08:00:00
2019-06-04 08:30:00
2019-06-04 09:00:00
2019-06-04 09:30:00
2019-06-04 10:00:00
2019-06-04 10:30:00
2019-06-04 11:00:00
2019-06-04 11:30:00
2019-06-04 12:00:00
2019-06-04 12:30:00
2019-06-04 13:00:00
2019-06-04 13:30:00
2019-06-04 14:00:00
2019-06-04 14:30:00
2019-06-04 15:00:00
2019-06-04 15:30:00
2019-06-04 16:00:00
2019-06-04 16:30:00
2019-06-04 17:00:00
2019-06-04 17:30:00
2019-06-04 18:00:00
2019-06-04 18:30:00
2019-06-04 19:00:00
2019-06-04 19:30:00
2019-06-04 20:00:00
2019-06-04 20:30:00
2019-06-05 08:00:00
2019-06-05 08:30:00
2019-06-05 09:00:00
2019-06-05 09:30:00
2019-06-05 10:00:00
2019-06-05 10:30:00
2019-06-05 11:00:00
2019-06-05 11:30:00
2019-06-05 12:00:00
2019-06-05 12:30:00
2019-06-05 13:00:00
2019-06-05 13:30:00
2019-06-05 14:00:00
2019-06-05 14:30:00
2019-06-05 15:00:00
2019-06-05 15:30:00
2019-06-05 16:00:00
2019-06-05 16:30:00
2019-06-05 17:00:00
2019-06-05 17:30:00
2019-06-05 18:00:00
2019-06-05 18:30:00
2019-06-05 19:00:00
2019-06-05 19:30:00
2019-06-05 20:00:00
2019-06-05 20:30:00
2019-06-06 08:00:00
2019-06-06 08:30:00
2019-06-06 09:00:00
2019-06-06 09:30:00
2019-06-06 10:00:00
2019-06-06 10:30:00
2019-06-06 11:00:00
2019-06-06 11:30:00
2019-06-06 12:00:00
2019-06-06 12:30:00
2019-06-06 13:00:00
2019-06-06 13:30:00
2019-06-06 14:00:00
2019-06-06 14:30:00
2019-06-06 15:00:00
2019-06-06 15:30:00
2019-06-06 16:00:00
2019-06-06 16:30:00
2019-06-06 17:00:00
2019-06-06 17:30:00
2019-06-06 18:00:00
2019-06-06 18:30:00
2019-06-06 19:00:00
2019-06-06 19:30:00
2019-06-06 20:00:00
2019-06-06 20:30:00
2019-06-07 08:00:00
2019-06-07 08:30:00
2019-06-07 09:00:00
2019-06-07 09:30:00
2019-06-07 10:00:00
2019-06-07 10:30:00
2019-06-07 11:00:00
2019-06-07 11:30:00
2019-06-07 12:00:00
2019-06-07 12:30:00
2019-06-07 13:00:00
2019-06-07 13:30:00
2019-06-07 14:00:00
2019-06-07 14:30:00
2019-06-07 15:00:00
2019-06-07 15:30:00
2019-06-07 16:00:00
2019-06-07 16:30:00
2019-06-07 17:00:00
2019-06-07 17:30:00
2019-06-07 18:00:00
2019-06-07 18:30:00
2019-06-07 19:00:00
2019-06-07 19:30:00
2019-06-07 20:00:00
2019-06-07 20:30:00
2019-06-08 08:00:00
2019-06-08 08:30:00
2019-06-08 09:00:00
2019-06-08 09:30:00
2019-06-08 10:00:00
2019-06-08 10:30:00
2019-06-08 11:00:00
2019-06-08 11:30:00
2019-06-08 12:00:00
2019-06-08 12:30:00
2019-06-08 13:00:00
2019-06-08 13:30:00
2019-06-08 14:00:00
2019-06-08 14:30:00
2019-06-08 15:00:00
2019-06-08 15:30:00
2019-06-08 16:00:00
2019-06-08 16:30:00
2019-06-08 17:00:00
2019-06-08 17:30:00
2019-06-08 18:00:00
2019-06-08 18:30:00
2019-06-08 19:00:00
2019-06-08 19:30:00
2019-06-08 20:00:00
2019-06-08 20:30:00
2019-06-09 08:00:00
2019-06-09 08:30:00
2019-06-09 09:00:00
2019-06-09 09:30:00
2019-06-09 10:00:00
2019-06-09 10:30:00
2019-06-09 11:00:00
2019-06-09 11:30:00
2019-06-09 12:00:00
2019-06-09 12:30:00
2019-06-09 13:00:00
2019-06-09 13:30:00
2019-06-09 14:00:00
2019-06-09 14:30:00
2019-06-09 15:00:00
2019-06-09 15:30:00
2019-06-09 16:00:00
2019-06-09 16:30:00
2019-06-09 17:00:00
2019-06-09 17:30:00
2019-06-09 18:00:00
2019-06-09 18:30:00
2019-06-09 19:00:00
2019-06-09 19:30:00
2019-06-09 20:00:00
2019-06-09 20:30:00
2019-06-10 08:00:00
2019-06-10 08:30:00
2019-06-10 09:00:00
2019-06-10 09:30:00
2019-06-10 10:00:00
2019-06-10 10:30:00
2019-06-10 11:00:00
2019-06-10 11:30:00
2019-06-10 12:00:00
2019-06-10 12:30:00
2019-06-10 13:00:00
2019-06-10 13:30:00
2019-06-10 14:00:00
2019-06-10 14:30:00
2019-06-10 15:00:00
2019-06-10 15:30:00
2019-06-10 16:00:00
2019-06-10 16:30:00
2019-06-10 17:00:00
2019-06-10 17:30:00
2019-06-10 18:00:00
2019-06-10 18:30:00
2019-06-10 19:00:00
2019-06-10 19:30:00
2019-06-10 20:00:00
2019-06-10 20:30:00
2019-06-11 08:00:00
2019-06-11 08:30:00
2019-06-11 09:00:00
2019-06-11 09:30:00
2019-06-11 10:00:00
2019-06-11 10:30:00
2019-06-11 11:00:00
2019-06-11 11:30:00
2019-06-11 12:00:00
2019-06-11 12:30:00
2019-06-11 13:00:00
2019-06-11 13:30:00
2019-06-11 14:00:00
2019-06-11 14:30:00
2019-06-11 15:00:00
2019-06-11 15:30:00
2019-06-11 16:00:00
2019-06-11 16:30:00
2019-06-11 17:00:00
2019-06-11 17:30:00
2019-06-11 18:00:00
2019-06-11 18:30:00
2019-06-11 19:00:00
2019-06-11 19:30:00
2019-06-11 20:00:00
2019-06-11 20:30:00
2019-06-12 08:00:00
2019-06-12 08:30:00
2019-06-12 09:00:00
2019-06-12 09:30:00
2019-06-12 10:00:00
2019-06-12 10:30:00
2019-06-12 11:00:00
2019-06-12 11:30:00
2019-06-12 12:00:00
2019-06-12 12:30:00
2019-06-12 13:00:00
2019-06-12 13:30:00
2019-06-12 14:00:00
2019-06-12 14:30:00
2019-06-12 15:00:00
2019-06-12 15:30:00
2019-06-12 16:00:00
2019-06-12 16:30:00
2019-06-12 17:00:00
2019-06-12 17:30:00
2019-06-12 18:00:00
2019-06-12 18:30:00
2019-06-12 19:00:00
2019-06-12 19:30:00
2019-06-12 20:00:00
2019-06-12 20:30:00
2019-06-13 08:00:00
2019-06-13 08:30:00
2019-06-13 09:00:00
2019-06-13 09:30:00
2019-06-13 10:00:00
2019-06-13 10:30:00
2019-06-13 11:00:00
2019-06-13 11:30:00
2019-06-13 12:00:00
2019-06-13 12:30:00
2019-06-13 13:00:00
2019-06-13 13:30:00
2019-06-13 14:00:00
2019-06-13 14:30:00
2019-06-13 15:00:00
2019-06-13 15:30:00
2019-06-13 16:00:00
2019-06-13 16:30:00
2019-06-13 17:00:00
2019-06-13 17:30:00
2019-06-13 18:00:00
2019-06-13 18:30:00
2019-06-13 19:00:00
2019-06-13 19:30:00
2019-06-13 20:00:00
2019-06-13 20:30:00
2019-06-14 08:00:00
2019-06-14 08:30:00
2019-06-14 09:00:00
2019-06-14 09:30:00
2019-06-14 10:00:00
2019-06-14 10:30:00
2019-06-14 11:00:00
2019-06-14 11:30:00
2019-06-14 12:00:00
2019-06-14 12:30:00
2019-06-14 13:00:00
2019-06-14 13:30:00
2019-06-14 14:00:00
2019-06-14 14:30:00
2019-06-14 15:00:00
2019-06-14 15:30:00
2019-06-14 16:00:00
2019-06-14 16:30:00
2019-06-14 17:00:00
2019-06-14 17:30:00
2019-06-14 18:00:00
2019-06-14 18:30:00
2019-06-14 19:00:00
2019-06-14 19:30:00
2019-06-14 20:00:00
2019-06-14 20:30:00
2019-06-15 08:00:00
2019-06-15 08:30:00
2019-06-15 09:00:00
2019-06-15 09:30:00
2019-06-15 10:00:00
2019-06-15 10:30:00
2019-06-15 11:00:00
2019-06-15 11:30:00
2019-06-15 12:00:00
2019-06-15 12:30:00
2019-06-15 13:00:00
2019-06-15 13:30:00
2019-06-15 14:00:00
2019-06-15 14:30:00
2019-06-15 15:00:00
2019-06-15 15:30:00
2019-06-15 16:00:00
2019-06-15 16:30:00
2019-06-15 17:00:00
2019-06-15 17:30:00
2019-06-15 18:00:00
2019-06-15 18:30:00
2019-06-15 19:00:00
2019-06-15 19:30:00
2019-06-15 20:00:00
2019-06-15 20:30:00
2019-06-16 08:00:00
2019-06-16 08:30:00
2019-06-16 09:00:00
2019-06-16 09:30:00
2019-06-16 10:00:00
2019-06-16 10:30:00
2019-06-16 11:00:00
2019-06-16 11:30:00
2019-06-16 12:00:00
2019-06-16 12:30:00
2019-06-16 13:00:00
2019-06-16 13:30:00
2019-06-16 14:00:00
2019-06-16 14:30:00
2019-06-16 15:00:00
2019-06-16 15:30:00
2019-06-16 16:00:00
2019-06-16 16:30:00
2019-06-16 17:00:00
2019-06-16 17:30:00
2019-06-16 18:00:00
2019-06-16 18:30:00
2019-06-16 19:00:00
2019-06-16 19:30:00
2019-06-16 20:00:00
2019-06-16 20:30:00
2019-06-17 08:00:00
2019-06-17 08:30:00
2019-06-17 09:00:00
2019-06-17 09:30:00
2019-06-17 10:00:00
2019-06-17 10:30:00
2019-06-17 11:00:00
2019-06-17 11:30:00
2019-06-17 12:00:00
2019-06-17 12:30:00
2019-06-17 13:00:00
2019-06-17 13:30:00
2019-06-17 14:00:00
2019-06-17 14:30:00
2019-06-17 15:00:00
2019-06-17 15:30:00
2019-06-17 16:00:00
2019-06-17 16:30:00
2019-06-17 17:00:00
2019-06-17 17:30:00
2019-06-17 18:00:00
2019-06-17 18:30:00
2019-06-17 19:00:00
2019-06-17 19:30:00
2019-06-17 20:00:00
2019-06-17 20:30:00
2019-06-18 08:00:00
2019-06-18 08:30:00
2019-06-18 09:00:00
2019-06-18 09:30:00
2019-06-18 10:00:00
2019-06-18 10:30:00
2019-06-18 11:00:00
2019-06-18 11:30:00
2019-06-18 12:00:00
2019-06-18 12:30:00
2019-06-18 13:00:00
2019-06-18 13:30:00
2019-06-18 14:00:00
2019-06-18 14:30:00
2019-06-18 15:00:00
2019-06-18 15:30:00
2019-06-18 16:00:00
2019-06-18 16:30:00
2019-06-18 17:00:00
2019-06-18 17:30:00
2019-06-18 18:00:00
2019-06-18 18:30:00
2019-06-18 19:00:00
2019-06-18 19:30:00
2019-06-18 20:00:00
2019-06-18 20:30:00
2019-06-19 08:00:00
2019-06-19 08:30:00
2019-06-19 09:00:00
2019-06-19 09:30:00
2019-06-19 10:00:00
2019-06-19 10:30:00
2019-06-19 11:00:00
2019-06-19 11:30:00
2019-06-19 12:00:00
2019-06-19 12:30:00
2019-06-19 13:00:00
2019-06-19 13:30:00
2019-06-19 14:00:00
2019-06-19 14:30:00
2019-06-19 15:00:00
2019-06-19 15:30:00
2019-06-19 16:00:00
2019-06-19 16:30:00
2019-06-19 17:00:00
2019-06-19 17:30:00
2019-06-19 18:00:00
2019-06-19 18:30:00
2019-06-19 19:00:00
2019-06-19 19:30:00
2019-06-19 20:00:00
2019-06-19 20:30:00
2019-06-20 08:00:00
2019-06-20 08:30:00
2019-06-20 09:00:00
2019-06-20 09:30:00
2019-06-20 10:00:00
2019-06-20 10:30:00
2019-06-20 11:00:00
2019-06-20 11:30:00
2019-06-20 12:00:00
2019-06-20 12:30:00
2019-06-20 13:00:00
2019-06-20 13:30:00
2019-06-20 14:00:00
2019-06-20 14:30:00
2019-06-20 15:00:00
2019-06-20 15:30:00
2019-06-20 16:00:00
2019-06-20 16:30:00
2019-06-20 17:00:00
2019-06-20 17:30:00
2019-06-20 18:00:00
2019-06-20 18:30:00
2019-06-20 19:00:00
2019-06-20 19:30:00
2019-06-20 20:00:00
2019-06-20 20:30:00
2019-06-21 08:00:00
2019-06-21 08:30:00
2019-06-21 09:00:00
2019-06-21 09:30:00
2019-06-21 10:00:00
2019-06-21 10:30:00
2019-06-21 11:00:00
2019-06-21 11:30:00
2019-06-21 12:00:00
2019-06-21 12:30:00
2019-06-21 13:00:00
2019-06-21 13:30:00
2019-06-21 14:00:00
2019-06-21 14:30:00
2019-06-21 15:00:00
2019-06-21 15:30:00
2019-06-21 16:00:00
2019-06-21 16:30:00
2019-06-21 17:00:00
2019-06-21 17:30:00
2019-06-21 18:00:00
2019-06-21 18:30:00
2019-06-21 19:00:00
2019-06-21 19:30:00
2019-06-21 20:00:00
2019-06-21 20:30:00
2019-06-22 08:00:00
2019-06-22 08:30:00
2019-06-22 09:00:00
2019-06-22 09:30:00
2019-06-22 10:00:00
2019-06-22 10:30:00
2019-06-22 11:00:00
2019-06-22 11:30:00
2019-06-22 12:00:00
2019-06-22 12:30:00
2019-06-22 13:00:00
2019-06-22 13:30:00
2019-06-22 14:00:00
2019-06-22 14:30:00
2019-06-22 15:00:00
2019-06-22 15:30:00
2019-06-22 16:00:00
2019-06-22 16:30:00
2019-06-22 17:00:00
2019-06-22 17:30:00
2019-06-22 18:00:00
2019-06-22 18:30:00
2019-06-22 19:00:00
2019-06-22 19:30:00
2019-06-22 20:00:00
2019-06-22 20:30:00
2019-06-23 08:00:00
2019-06-23 08:30:00
2019-06-23 09:00:00
2019-06-23 09:30:00
2019-06-23 10:00:00
2019-06-23 10:30:00
2019-06-23 11:00:00
2019-06-23 11:30:00
2019-06-23 12:00:00
2019-06-23 12:30:00
2019-06-23 13:00:00
2019-06-23 13:30:00
2019-06-23 14:00:00
2019-06-23 14:30:00
2019-06-23 15:00:00
2019-06-23 15:30:00
2019-06-23 16:00:00
2019-06-23 16:30:00
2019-06-23 17:00:00
2019-06-23 17:30:00
2019-06-23 18:00:00
2019-06-23 18:30:00
2019-06-23 19:00:00
2019-06-23 19:30:00
2019-06-23 20:00:00
2019-06-23 20:30:00
2019-06-24 08:00:00
2019-06-24 08:30:00
2019-06-24 09:00:00
2019-06-24 09:30:00
2019-06-24 10:00:00
2019-06-24 10:30:00
2019-06-24 11:00:00
2019-06-24 11:30:00
2019-06-24 12:00:00
2019-06-24 12:30:00
2019-06-24 13:00:00
2019-06-24 13:30:00
2019-06-24 14:00:00
2019-06-24 14:30:00
2019-06-24 15:00:00
2019-06-24 15:30:00
2019-06-24 16:00:00
2019-06-24 16:30:00
2019-06-24 17:00:00
2019-06-24 17:30:00
2019-06-24 18:00:00
2019-06-24 18:30:00
2019-06-24 19:00:00
2019-06-24 19:30:00
2019-06-24 20:00:00
2019-06-24 20:30:00
2019-06-25 08:00:00
2019-06-25 08:30:00
2019-06-25 09:00:00
2019-06-25 09:30:00
2019-06-25 10:00:00
2019-06-25 10:30:00
2019-06-25 11:00:00
2019-06-25 11:30:00
2019-06-25 12:00:00
2019-06-25 12:30:00
2019-06-25 13:00:00
2019-06-25 13:30:00
2019-06-25 14:00:00
2019-06-25 14:30:00
2019-06-25 15:00:00
2019-06-25 15:30:00
2019-06-25 16:00:00
2019-06-25 16:30:00
2019-06-25 17:00:00
2019-06-25 17:30:00
2019-06-25 18:00:00
2019-06-25 18:30:00
2019-06-25 19:00:00
2019-06-25 19:30:00
2019-06-25 20:00:00
2019-06-25 20:30:00
2019-06-26 08:00:00
2019-06-26 08:30:00
2019-06-26 09:00:00
2019-06-26 09:30:00
2019-06-26 10:00:00
2019-06-26 10:30:00
2019-06-26 11:00:00
2019-06-26 11:30:00
2019-06-26 12:00:00
2019-06-26 12:30:00
2019-06-26 13:00:00
2019-06-26 13:30:00
2019-06-26 14:00:00
2019-06-26 14:30:00
2019-06-26 15:00:00
2019-06-26 15:30:00
2019-06-26 16:00:00
2019-06-26 16:30:00
2019-06-26 17:00:00
2019-06-26 17:30:00
2019-06-26 18:00:00
2019-06-26 18:30:00
2019-06-26 19:00:00
2019-06-26 19:30:00
2019-06-26 20:00:00
2019-06-26 20:30:00
2019-06-27 08:00:00
2019-06-27 08:30:00
2019-06-27 09:00:00
2019-06-27 09:30:00
2019-06-27 10:00:00
2019-06-27 10:30:00
2019-06-27 11:00:00
2019-06-27 11:30:00
2019-06-27 12:00:00
2019-06-27 12:30:00
2019-06-27 13:00:00
2019-06-27 13:30:00
2019-06-27 14:00:00
2019-06-27 14:30:00
2019-06-27 15:00:00
2019-06-27 15:30:00
2019-06-27 16:00:00
2019-06-27 16:30:00
2019-06-27 17:00:00
2019-06-27 17:30:00
2019-06-27 18:00:00
2019-06-27 18:30:00
2019-06-27 19:00:00
2019-06-27 19:30:00
2019-06-27 20:00:00
2019-06-27 20:30:00
2019-06-28 08:00:00
2019-06-28 08:30:00
2019-06-28 09:00:00
2019-06-28 09:30:00
2019-06-28 10:00:00
2019-06-28 10:30:00
2019-06-28 11:00:00
2019-06-28 11:30:00
2019-06-28 12:00:00
2019-06-28 12:30:00
2019-06-28 13:00:00
2019-06-28 13:30:00
2019-06-28 14:00:00
2019-06-28 14:30:00
2019-06-28 15:00:00
2019-06-28 15:30:00
2019-06-28 16:00:00
2019-06-28 16:30:00
2019-06-28 17:00:00
2019-06-28 17:30:00
2019-06-28 18:00:00
2019-06-28 18:30:00
2019-06-28 19:00:00
2019-06-28 19:30:00
2019-06-28 20:00:00
2019-06-28 20:30:00
2019-06-29 08:00:00
2019-06-29 08:30:00
2019-06-29 09:00:00
2019-06-29 09:30:00
2019-06-29 10:00:00
2019-06-29 10:30:00
2019-06-29 11:00:00
2019-06-29 11:30:00
2019-06-29 12:00:00
2019-06-29 12:30:00
2019-06-29 13:00:00
2019-06-29 13:30:00
2019-06-29 14:00:00
2019-06-29 14:30:00
2019-06-29 15:00:00
2019-06-29 15:30:00
2019-06-29 16:00:00
2019-06-29 16:30:00
2019-06-29 17:00:00
2019-06-29 17:30:00
2019-06-29 18:00:00
2019-06-29 18:30:00
2019-06-29 19:00:00
2019-06-29 19:30:00
2019-06-29 20:00:00
2019-06-29 20:30:00
\.


--
-- Data for Name: levantamientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.levantamientos (levantamiento_id, fecha_hora, comprador_id, tienda_id) FROM stdin;
1286	2019-03-01 00:00:00	1	126
1287	2019-03-01 00:00:00	1	1
1288	2019-03-01 00:00:00	1	127
1289	2019-03-01 00:00:00	1	112
1290	2019-03-01 00:00:00	1	2
1291	2019-03-01 00:00:00	1	113
1292	2019-03-01 00:00:00	1	114
1293	2019-03-01 00:00:00	1	51
1294	2019-03-01 00:00:00	1	52
1295	2019-03-01 00:00:00	1	128
1296	2019-03-01 00:00:00	1	54
1297	2019-03-01 00:00:00	1	55
1298	2019-03-01 00:00:00	1	115
1299	2019-03-01 00:00:00	1	53
1300	2019-03-01 00:00:00	1	116
1301	2019-03-01 00:00:00	1	57
1302	2019-03-01 00:00:00	1	56
1303	2019-03-01 00:00:00	1	58
1304	2019-03-01 00:00:00	1	59
1305	2019-03-01 00:00:00	1	129
1306	2019-03-01 00:00:00	1	117
1307	2019-03-01 00:00:00	1	60
1308	2019-03-01 00:00:00	1	61
1309	2019-03-01 00:00:00	1	62
1310	2019-03-01 00:00:00	1	118
1311	2019-03-01 00:00:00	1	130
1312	2019-03-01 00:00:00	1	63
1313	2019-03-01 00:00:00	1	64
1314	2019-03-01 00:00:00	1	131
1315	2019-03-01 00:00:00	1	65
1316	2019-03-01 00:00:00	1	66
1317	2019-03-01 00:00:00	1	132
1318	2019-03-01 00:00:00	1	67
1319	2019-03-01 00:00:00	1	120
1320	2019-03-01 00:00:00	1	68
1321	2019-03-01 00:00:00	1	119
1322	2019-03-01 00:00:00	1	133
1323	2019-03-01 00:00:00	1	5
1324	2019-03-01 00:00:00	1	6
1325	2019-03-01 00:00:00	1	10
1326	2019-03-01 00:00:00	1	7
1327	2019-03-01 00:00:00	1	4
1328	2019-03-01 00:00:00	1	134
1329	2019-03-01 00:00:00	1	9
1330	2019-03-01 00:00:00	1	3
1331	2019-03-01 00:00:00	1	8
1332	2019-03-01 00:00:00	1	16
1333	2019-03-01 00:00:00	1	19
1334	2019-03-01 00:00:00	1	135
1335	2019-03-01 00:00:00	1	12
1336	2019-03-01 00:00:00	1	14
1337	2019-03-01 00:00:00	1	15
1338	2019-03-01 00:00:00	1	20
1339	2019-03-01 00:00:00	1	136
1340	2019-03-01 00:00:00	1	137
1341	2019-03-01 00:00:00	1	22
1342	2019-03-01 00:00:00	1	18
1343	2019-03-01 00:00:00	1	13
1344	2019-03-01 00:00:00	1	21
1345	2019-03-01 00:00:00	1	138
1346	2019-03-01 00:00:00	1	24
1347	2019-03-01 00:00:00	1	25
1348	2019-03-01 00:00:00	1	139
1349	2019-03-01 00:00:00	1	23
1350	2019-03-01 00:00:00	1	26
1351	2019-03-01 00:00:00	1	28
1352	2019-03-01 00:00:00	1	27
1353	2019-03-01 00:00:00	1	140
1354	2019-03-01 00:00:00	1	141
1355	2019-03-01 00:00:00	1	142
1356	2019-03-01 00:00:00	1	143
1357	2019-03-01 00:00:00	1	121
1358	2019-03-01 00:00:00	1	29
1359	2019-03-01 00:00:00	1	144
1360	2019-03-01 00:00:00	1	145
1361	2019-03-01 00:00:00	1	11
1362	2019-03-01 00:00:00	1	30
1363	2019-03-01 00:00:00	1	31
1364	2019-03-01 00:00:00	1	146
1365	2019-03-01 00:00:00	1	33
1366	2019-03-01 00:00:00	1	32
1367	2019-03-01 00:00:00	1	147
1368	2019-03-01 00:00:00	1	17
1369	2019-03-01 00:00:00	1	148
1370	2019-03-01 00:00:00	1	149
1371	2019-03-01 00:00:00	1	34
1372	2019-03-01 00:00:00	1	35
1373	2019-03-01 00:00:00	1	36
1374	2019-03-01 00:00:00	1	150
1375	2019-03-01 00:00:00	1	151
1376	2019-03-01 00:00:00	1	152
1377	2019-03-01 00:00:00	1	37
1378	2019-03-01 00:00:00	1	39
1379	2019-03-01 00:00:00	1	44
1380	2019-03-01 00:00:00	1	45
1381	2019-03-01 00:00:00	1	153
1382	2019-03-01 00:00:00	1	42
1383	2019-03-01 00:00:00	1	43
1384	2019-03-01 00:00:00	1	154
1385	2019-03-01 00:00:00	1	40
1386	2019-03-01 00:00:00	1	46
1387	2019-03-01 00:00:00	1	155
1388	2019-03-01 00:00:00	1	41
1389	2019-03-01 00:00:00	1	47
1390	2019-03-01 00:00:00	1	49
1391	2019-03-01 00:00:00	1	48
1392	2019-03-01 00:00:00	1	50
1393	2019-03-01 00:00:00	1	156
1394	2019-03-15 00:00:00	1	43
1395	2019-03-15 00:00:00	1	65
1396	2019-06-01 00:00:00	1	26
1397	2019-06-01 00:00:00	1	27
1398	2019-06-01 00:00:00	1	59
1399	2019-06-01 00:00:00	1	14
1400	2019-06-01 00:00:00	1	53
1401	2019-06-01 00:00:00	1	39
1402	2019-06-01 00:00:00	1	16
1403	2019-06-01 00:00:00	1	3
1404	2019-06-01 00:00:00	1	157
1405	2019-06-01 00:00:00	1	158
1406	2019-06-01 00:00:00	1	21
1407	2019-06-01 00:00:00	1	56
1408	2019-06-01 00:00:00	1	43
1409	2019-06-01 00:00:00	1	65
1410	2019-06-01 00:00:00	1	46
1411	2019-06-01 00:00:00	1	66
1412	2019-06-01 00:00:00	1	40
1413	2019-06-01 00:00:00	1	41
1414	2019-06-01 00:00:00	1	42
1415	2019-06-01 00:00:00	1	15
1416	2019-06-01 00:00:00	1	116
1417	2019-06-01 00:00:00	1	159
1418	2019-06-01 00:00:00	1	10
1419	2019-06-01 00:00:00	1	7
1420	2019-06-01 00:00:00	1	62
1421	2019-06-01 00:00:00	1	146
1422	2019-06-01 00:00:00	1	137
1423	2019-06-01 00:00:00	1	156
1424	2019-06-01 00:00:00	1	147
1425	2019-06-01 00:00:00	1	8
1426	2019-06-01 00:00:00	1	9
1427	2019-06-01 00:00:00	1	52
1428	2019-06-01 00:00:00	1	160
1429	2019-06-01 00:00:00	1	18
1430	2019-06-01 00:00:00	1	19
1431	2019-06-01 00:00:00	1	35
1432	2019-06-01 00:00:00	1	22
1433	2019-06-01 00:00:00	1	29
1434	2019-06-01 00:00:00	1	57
1435	2019-06-01 00:00:00	1	32
1436	2019-06-01 00:00:00	1	33
1437	2019-06-01 00:00:00	1	155
1438	2019-06-01 00:00:00	1	132
1439	2019-06-01 00:00:00	1	161
1440	2019-06-01 00:00:00	1	37
1441	2019-06-01 00:00:00	1	63
1442	2019-06-01 00:00:00	1	6
1443	2019-06-01 00:00:00	1	5
1444	2019-06-01 00:00:00	1	4
1445	2019-06-01 00:00:00	1	162
1446	2019-06-01 00:00:00	1	162
1447	2019-06-01 00:00:00	1	13
1448	2019-06-01 00:00:00	1	163
1449	2019-06-01 00:00:00	1	20
1450	2019-06-01 00:00:00	1	2
1451	2019-06-01 00:00:00	1	164
1452	2019-06-01 00:00:00	1	12
1453	2019-06-01 00:00:00	1	51
1454	2019-06-01 00:00:00	1	47
1455	2019-06-01 00:00:00	1	67
1456	2019-06-01 00:00:00	1	127
1457	2019-06-01 00:00:00	1	133
1458	2019-06-01 00:00:00	1	142
1460	2019-06-01 00:00:00	1	64
1461	2019-06-01 00:00:00	1	126
1462	2019-06-01 00:00:00	1	135
1463	2019-06-01 00:00:00	1	150
1464	2019-06-01 00:00:00	1	140
1465	2019-06-01 00:00:00	1	139
1466	2019-06-01 00:00:00	1	165
1467	2019-06-01 00:00:00	1	134
1468	2019-06-01 00:00:00	1	148
1469	2019-06-01 00:00:00	1	30
1470	2019-06-01 00:00:00	1	138
1471	2019-06-01 00:00:00	1	149
1472	2019-06-01 00:00:00	1	128
1473	2019-06-01 00:00:00	1	121
1474	2019-06-01 00:00:00	1	117
1475	2019-06-01 00:00:00	1	136
1476	2019-06-01 00:00:00	1	34
1477	2019-06-01 00:00:00	1	49
1478	2019-06-01 00:00:00	1	48
1479	2019-06-01 00:00:00	1	120
1480	2019-06-01 00:00:00	1	68
1481	2019-06-01 00:00:00	1	24
1482	2019-06-01 00:00:00	1	54
1483	2019-06-01 00:00:00	1	55
1484	2019-06-01 00:00:00	1	115
1485	2019-06-01 00:00:00	1	166
1486	2019-06-01 00:00:00	1	25
1487	2019-06-01 00:00:00	1	50
1488	2019-06-01 00:00:00	1	119
1489	2019-06-01 00:00:00	1	153
1490	2019-06-01 00:00:00	1	154
1491	2019-06-01 00:00:00	1	131
1492	2019-06-01 00:00:00	1	17
1493	2019-06-01 00:00:00	1	118
1494	2019-06-01 00:00:00	1	23
1495	2019-06-01 00:00:00	1	58
1496	2019-06-01 00:00:00	1	144
1497	2019-06-01 00:00:00	1	141
1498	2019-06-01 00:00:00	1	44
1499	2019-06-01 00:00:00	1	45
1500	2019-06-01 00:00:00	1	151
1501	2019-06-01 00:00:00	1	130
1502	2019-06-01 00:00:00	1	167
1503	2019-06-01 00:00:00	1	145
1504	2019-06-01 00:00:00	1	11
1505	2019-06-01 00:00:00	1	31
1506	2019-06-01 00:00:00	1	28
1507	2019-06-01 00:00:00	1	36
1508	2019-06-01 00:00:00	1	60
1509	2019-06-01 00:00:00	1	1
1510	2019-06-01 00:00:00	1	152
1511	2019-06-01 00:00:00	1	61
1512	2019-06-01 00:00:00	1	143
1459	2019-06-01 00:00:00	1	122
1513	2019-03-01 00:00:00	1	122
1514	2019-07-01 00:00:00	1	26
1515	2019-07-01 00:00:00	1	27
1516	2019-07-01 00:00:00	1	59
1517	2019-07-01 00:00:00	1	14
1518	2019-07-01 00:00:00	1	53
1519	2019-07-01 00:00:00	1	39
1520	2019-07-01 00:00:00	1	16
1521	2019-07-01 00:00:00	1	3
1522	2019-07-01 00:00:00	1	157
1523	2019-07-01 00:00:00	1	158
1524	2019-07-01 00:00:00	1	21
1525	2019-07-01 00:00:00	1	56
1526	2019-07-01 00:00:00	1	43
1527	2019-07-01 00:00:00	1	65
1528	2019-07-01 00:00:00	1	46
1529	2019-07-01 00:00:00	1	66
1530	2019-07-01 00:00:00	1	40
1531	2019-07-01 00:00:00	1	41
1532	2019-07-01 00:00:00	1	42
1533	2019-07-01 00:00:00	1	15
1534	2019-07-01 00:00:00	1	116
1535	2019-07-01 00:00:00	1	159
1536	2019-07-01 00:00:00	1	10
1537	2019-07-01 00:00:00	1	7
1538	2019-07-01 00:00:00	1	62
1539	2019-07-01 00:00:00	1	146
1540	2019-07-01 00:00:00	1	137
1541	2019-07-01 00:00:00	1	156
1542	2019-07-01 00:00:00	1	147
1543	2019-07-01 00:00:00	1	8
1544	2019-07-01 00:00:00	1	9
1545	2019-07-01 00:00:00	1	52
1546	2019-07-01 00:00:00	1	160
1547	2019-07-01 00:00:00	1	168
1548	2019-07-01 00:00:00	1	18
1549	2019-07-01 00:00:00	1	19
1550	2019-07-01 00:00:00	1	35
1551	2019-07-01 00:00:00	1	22
1552	2019-07-01 00:00:00	1	29
1553	2019-07-01 00:00:00	1	57
1554	2019-07-01 00:00:00	1	32
1555	2019-07-01 00:00:00	1	33
1556	2019-07-01 00:00:00	1	155
1557	2019-07-01 00:00:00	1	132
1558	2019-07-01 00:00:00	1	161
1559	2019-07-01 00:00:00	1	37
1560	2019-07-01 00:00:00	1	63
1561	2019-07-01 00:00:00	1	6
1562	2019-07-01 00:00:00	1	5
1563	2019-07-01 00:00:00	1	4
1564	2019-07-01 00:00:00	1	162
1565	2019-07-01 00:00:00	1	13
1566	2019-07-01 00:00:00	1	163
1567	2019-07-01 00:00:00	1	20
1568	2019-07-01 00:00:00	1	2
1569	2019-07-01 00:00:00	1	164
1570	2019-07-01 00:00:00	1	12
1571	2019-07-01 00:00:00	1	51
1572	2019-07-01 00:00:00	1	47
1573	2019-07-01 00:00:00	1	67
1574	2019-07-01 00:00:00	1	127
1575	2019-07-01 00:00:00	1	133
1576	2019-07-01 00:00:00	1	142
1577	2019-07-01 00:00:00	1	122
1578	2019-07-01 00:00:00	1	64
1579	2019-07-01 00:00:00	1	126
1580	2019-07-01 00:00:00	1	135
1581	2019-07-01 00:00:00	1	150
1582	2019-07-01 00:00:00	1	140
1583	2019-07-01 00:00:00	1	139
1584	2019-07-01 00:00:00	1	165
1585	2019-07-01 00:00:00	1	134
1586	2019-07-01 00:00:00	1	148
1587	2019-07-01 00:00:00	1	30
1588	2019-07-01 00:00:00	1	138
1589	2019-07-01 00:00:00	1	149
1590	2019-07-01 00:00:00	1	128
1591	2019-07-01 00:00:00	1	121
1592	2019-07-01 00:00:00	1	117
1593	2019-07-01 00:00:00	1	136
1594	2019-07-01 00:00:00	1	34
1595	2019-07-01 00:00:00	1	49
1596	2019-07-01 00:00:00	1	48
1597	2019-07-01 00:00:00	1	120
1598	2019-07-01 00:00:00	1	68
1599	2019-07-01 00:00:00	1	24
1600	2019-07-01 00:00:00	1	54
1601	2019-07-01 00:00:00	1	55
1602	2019-07-01 00:00:00	1	115
1603	2019-07-01 00:00:00	1	169
1604	2019-07-01 00:00:00	1	166
1605	2019-07-01 00:00:00	1	25
1606	2019-07-01 00:00:00	1	50
1607	2019-07-01 00:00:00	1	119
1608	2019-07-01 00:00:00	1	153
1609	2019-07-01 00:00:00	1	154
1610	2019-07-01 00:00:00	1	131
1611	2019-07-01 00:00:00	1	17
1612	2019-07-01 00:00:00	1	118
1613	2019-07-01 00:00:00	1	23
1614	2019-07-01 00:00:00	1	58
1615	2019-07-01 00:00:00	1	144
1616	2019-07-01 00:00:00	1	141
1617	2019-07-01 00:00:00	1	44
1618	2019-07-01 00:00:00	1	45
1619	2019-07-01 00:00:00	1	151
1620	2019-07-01 00:00:00	1	130
1621	2019-07-01 00:00:00	1	170
1622	2019-07-01 00:00:00	1	145
1623	2019-07-01 00:00:00	1	11
1624	2019-07-01 00:00:00	1	31
1625	2019-07-01 00:00:00	1	28
1626	2019-07-01 00:00:00	1	36
1627	2019-07-01 00:00:00	1	60
1628	2019-07-01 00:00:00	1	1
1629	2019-07-01 00:00:00	1	152
1630	2019-07-01 00:00:00	1	61
1631	2019-07-01 00:00:00	1	143
\.


--
-- Data for Name: levantamientos_calificaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.levantamientos_calificaciones (levantamiento_calificaciones_id, pregunta_id, area_id, calificacion) FROM stdin;
\.


--
-- Data for Name: levantamientos_precios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.levantamientos_precios (levantamiento_precios_id, producto_id, precio, comentario, existe) FROM stdin;
\.


--
-- Data for Name: levantamientos_tiempos_fila; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.levantamientos_tiempos_fila (levantamiento_fila_id, levantamiento_id, area_id, evaluacion) FROM stdin;
\.


--
-- Data for Name: municipios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.municipios (municipio_id, nombre_municipio, estado_id) FROM stdin;
1	Tlalpan	7
2	Álvaro Obregón	7
3	Coyoacán	7
4	Iztacalco	7
5	Cuajimalpa	7
6	Gustavo A. Madero	7
7	Xochimilco	7
8	Magdalena Contreras	7
9	Cuauhtémoc	7
10	Iztapalapa	7
11	Miguel Hidalgo	7
12	Venustiano Carranza	7
13	Cuautitlán Izcalli	15
14	Chimalhuacán	15
15	Villa Nicolás Romero	15
16	Amecameca de Juárez	15
17	Héroes de Tecámac	15
18	Coacalco	15
19	Los Reyes Acaquilpan	15
20	Nezahualcóyotl	15
21	Toluca de Lerdo	15
22	Tultitlán	15
23	Texcoco	15
24	Chalco de Díaz Covarrubias	15
25	Naucalpan	15
26	Ozumba de Alzate	15
27	Ecatepec de Morelos	15
28	Tlalnepantla de Baz	15
29	Huehuetoca	15
30	Valle de Chalco	15
31	Atizapán de Zaragoza	15
32	Cuautitlán	15
33	León	11
34	Irapuato	11
35	Iguala de la Independencia	12
36	Tulancingo	13
37	Jiutepec	17
38	San Juan del Río	22
39	Querétaro	22
40	San Vicente Chicoloapan	15
41	Ixtapaluca	15
42	Azcapotzalco	7
43	San Francisco del Rincón	11
\.


--
-- Data for Name: preguntas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.preguntas (pregunta_id, pregunta, protocolo_id, calificacion_maxima) FROM stdin;
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (producto_id, producto) FROM stdin;
\.


--
-- Data for Name: protocolos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.protocolos (protocolo_id, protocolo) FROM stdin;
\.


--
-- Data for Name: tiendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiendas (tienda_id, siglas, nombre_tienda, cadena_id, calle_numero, cp, telefonos, colonia, estado_id, municipio_id, latitude, longitude) FROM stdin;
1	CNA	Cazador Comercial Naucalpan	1	\N	\N	\N	\N	15	25	\N	\N
2	PSU	Cazador Santa Úrsula	1	\N	\N	\N	\N	7	3	\N	\N
3	ZAP	Zorro Aeropuerto	1	\N	\N	\N	\N	7	12	\N	\N
4	ZAL	Zorro Alta Tensión	1	\N	\N	\N	\N	7	2	\N	\N
5	ZA2	Zorro Alta Tensión 2	1	\N	\N	\N	\N	7	2	\N	\N
6	ZA3	Zorro Alta Tensión 3	1	\N	\N	\N	\N	7	2	\N	\N
7	ZAG	Zorro Aragón	1	\N	\N	\N	\N	15	27	\N	\N
8	ZAT	Zorro Atizapán	1	\N	\N	\N	\N	15	31	\N	\N
9	ZAN	Zorro Atizapán 2	1	\N	\N	\N	\N	15	31	\N	\N
10	ZAC	Zorro Avenida Central	1	\N	\N	\N	\N	15	27	\N	\N
11	ZL2	Zorro Campestre	1	\N	\N	\N	\N	11	33	\N	\N
12	ZCC	Zorro Carretera Cuernavaca	1	\N	\N	\N	\N	7	1	\N	\N
13	ZCP	Zorro Carrillo Puerto	1	\N	\N	\N	\N	7	11	\N	\N
14	ZCE	Zorro Centenario	1	\N	\N	\N	\N	7	6	\N	\N
15	ZCH	Zorro Chicoloapan	1	\N	\N	\N	\N	15	14	\N	\N
16	ZAZ	Zorro Cien Metros	1	\N	\N	\N	\N	7	6	\N	\N
17	ZOC	Zorro Coacalco	1	\N	\N	\N	\N	15	18	\N	\N
19	ZC2	Zorro Contreras 2	1	\N	\N	\N	\N	7	8	\N	\N
20	ZCJ	Zorro Cuajimalpa	1	\N	\N	\N	\N	7	5	\N	\N
21	ZCU	Zorro Cuautepec	1	\N	\N	\N	\N	7	6	\N	\N
22	ZCN	Zorro Cuautitlán	1	\N	\N	\N	\N	15	13	\N	\N
23	ZEC	Zorro Ecatepec	1	\N	\N	\N	\N	15	27	\N	\N
24	ZE2	Zorro Ecatepec 2	1	\N	\N	\N	\N	15	27	\N	\N
25	ZE3	Zorro Ecatepec 3	1	\N	\N	\N	\N	15	27	\N	\N
26	ZER	Zorro Ermita Iztapalapa	1	\N	\N	\N	\N	7	10	\N	\N
27	ZET	Zorro Ermita Iztapalapa 2	1	\N	\N	\N	\N	7	10	\N	\N
28	ZES	Zorro Estacas	1	\N	\N	\N	\N	15	25	\N	\N
29	ZIZ	Zorro Izcalli	1	\N	\N	\N	\N	15	13	\N	\N
30	ZLG	Zorro Lago de Guadalupe	1	\N	\N	\N	\N	15	31	\N	\N
31	ZLN	Zorro León	1	\N	\N	\N	\N	11	33	\N	\N
32	ZNR	Zorro Nicolás Romero	1	\N	\N	\N	\N	15	15	\N	\N
33	ZN2	Zorro Nicolás Romero 2	1	\N	\N	\N	\N	15	15	\N	\N
34	ZPC	Zorro Paseo Chalco	1	\N	\N	\N	\N	15	24	\N	\N
35	ZPI	Zorro Picacho	1	\N	\N	\N	\N	7	1	\N	\N
36	ZPR	Zorro Primavera	1	\N	\N	\N	\N	15	25	\N	\N
37	ZRY	Zorro Reyes	1	\N	\N	\N	\N	15	19	\N	\N
39	ZSJ	Zorro San Juanico	1	\N	\N	\N	\N	15	28	\N	\N
40	ZTN	Zorro Tenayuca	1	\N	\N	\N	\N	15	28	\N	\N
41	ZTX	Zorro Texcoco	1	\N	\N	\N	\N	15	23	\N	\N
42	ZTE	Zorro Texcoco 2	1	\N	\N	\N	\N	15	23	\N	\N
43	ZTL	Zorro Tlalnepantla	1	\N	\N	\N	\N	15	28	\N	\N
44	ZT1	Zorro Toluca 1	1	\N	\N	\N	\N	15	21	\N	\N
45	ZT2	Zorro Toluca 2	1	\N	\N	\N	\N	15	21	\N	\N
46	ZTT	Zorro Tultitlán	1	\N	\N	\N	\N	15	22	\N	\N
47	ZTY	Zorro Tulyehualco	1	\N	\N	\N	\N	7	7	\N	\N
49	ZV2	Zorro Valle de Chalco 2	1	\N	\N	\N	\N	15	30	\N	\N
50	ZVM	Zorro Vía Morelos	1	\N	\N	\N	\N	15	27	\N	\N
51	SAJ	Scorpion Ajusco	2	\N	\N	\N	\N	7	1	\N	\N
52	SAT	Scorpion Atizapán	2	\N	\N	\N	\N	15	31	\N	\N
53	SCE	Scorpion Centenario	2	\N	\N	\N	\N	7	6	\N	\N
54	SCADE1	Scorpion Central de Abastos de Ecatepec 1	2	\N	\N	\N	\N	15	27	\N	\N
55	SCADE2	Scorpion Central de Abastos de Ecatepec 2	2	\N	\N	\N	\N	15	27	\N	\N
56	SCU	Scorpion Cuautepec	2	\N	\N	\N	\N	7	6	\N	\N
57	SCN	Scorpion Cuautitlán	2	\N	\N	\N	\N	15	32	\N	\N
58	SEC	Scorpion Ecatepec	2	\N	\N	\N	\N	15	27	\N	\N
59	SER	Scorpion Ermita Iztapalapa	2	\N	\N	\N	\N	7	10	\N	\N
60	SN2	Scorpion Naucalpan 2	2	\N	\N	\N	\N	15	25	\N	\N
61	SN3	Scorpion Naucalpan 3	2	\N	\N	\N	\N	15	25	\N	\N
62	SNA	Scorpion Nueva Aragón	2	\N	\N	\N	\N	15	27	\N	\N
63	SRY	Scorpion Reyes	2	\N	\N	\N	\N	15	19	\N	\N
64	STA	Scorpion Tapicería	2	\N	\N	\N	\N	7	12	\N	\N
65	STL	Scorpion Tlalnepantla	2	\N	\N	\N	\N	15	28	\N	\N
66	STT	Scorpion Tultitlán	2	\N	\N	\N	\N	15	22	\N	\N
67	STY	Scorpion Tulyehualco	2	\N	\N	\N	\N	7	7	\N	\N
68	SVC	Scorpion Valle de Chalco	2	\N	\N	\N	\N	15	30	\N	\N
18	ZCO	Zorro Contreras	1	\N	\N	\N	\N	7	8	\N	\N
48	ZVC	Zorro Valle de Chalco	1	\N	\N	\N	\N	15	30	\N	\N
112	JGL	San Jorge León	3	\N	\N	\N	\N	11	33	\N	\N
113	PVCADE	Punto de Venta Central de Abastos de Ecatepec	5	\N	\N	\N	\N	15	27	\N	\N
114	SahCADE	Sahuayo Central de Abastos de Ecatepec	4	\N	\N	\N	\N	15	27	\N	\N
115	SCADE3	Scorpion Central de Abastos de Ecatepec 3	2	\N	\N	\N	\N	15	27	\N	\N
116	SCH	Scorpion Chicoloapan	2	\N	\N	\N	\N	15	40	\N	\N
117	SIX	Scorpion Ixtapaluca	2	\N	\N	\N	\N	15	41	\N	\N
118	SOC	Scorpion Coacalco	2	\N	\N	\N	\N	15	27	\N	\N
119	SVM	Scorpion Vía Morelos	2	\N	\N	\N	\N	15	27	\N	\N
120	SV2	Scorpion Valle de Chalco 2	2	\N	\N	\N	\N	15	30	\N	\N
121	ZIX	Zorro Ixtapaluca	1	\N	\N	\N	\N	15	41	\N	\N
122	ZRO	Zorro Roldán	1	\N	\N	\N	\N	7	9	\N	\N
128	SC7	Scorpion Calle 7	2	\N	\N	\N	\N	7	4	\N	\N
129	SH96	Scorpion Central H96	2	\N	\N	\N	\N	7	10	\N	\N
130	SQR	Scorpion Querétaro	2	\N	\N	\N	\N	22	39	\N	\N
131	STC	Scorpion Tecámac	2	\N	\N	\N	\N	15	17	\N	\N
132	STU	Scorpion Tulancingo	2	\N	\N	\N	\N	13	36	\N	\N
133	SXC	Scorpion Xochimilco	2	\N	\N	\N	\N	7	7	\N	\N
134	ZAM	Zorro Amecameca	1	\N	\N	\N	\N	15	16	\N	\N
135	ZCA	Zorro Central C47	1	\N	\N	\N	\N	7	10	\N	\N
136	ZCL	Zorro Chalco	1	\N	\N	\N	\N	15	24	\N	\N
137	ZCM	Zorro Chimalhuacán	1	\N	\N	\N	\N	15	14	\N	\N
139	ZE9	Zorro Central E9	1	\N	\N	\N	\N	7	10	\N	\N
140	ZH2	Zorro Central H2	1	\N	\N	\N	\N	7	10	\N	\N
141	ZHH	Zorro Huehuetoca	1	\N	\N	\N	\N	15	29	\N	\N
142	ZIG	Zorro Iguala	1	\N	\N	\N	\N	12	35	\N	\N
143	ZIR	Zorro Irapuato	1	\N	\N	\N	\N	11	34	\N	\N
144	ZJI	Zorro Jiutepec	1	\N	\N	\N	\N	17	37	\N	\N
145	ZJR	Zorro San Juan del Río	1	\N	\N	\N	\N	22	38	\N	\N
146	ZM2	Zorro Peñón	1	\N	\N	\N	\N	15	14	\N	\N
147	ZNZ	Zorro Nezahualcóyotl	1	\N	\N	\N	\N	15	20	\N	\N
148	ZOZ	Zorro Ozumba	1	\N	\N	\N	\N	15	26	\N	\N
149	ZPA	Zorro Pantitlán	1	\N	\N	\N	\N	7	4	\N	\N
150	ZQ6	Zorro Central Q6	1	\N	\N	\N	\N	7	10	\N	\N
151	ZQR	Zorro Querétaro	1	\N	\N	\N	\N	22	39	\N	\N
152	ZRH	Zorro Río Hondo	1	\N	\N	\N	\N	15	25	\N	\N
153	ZTC	Zorro Tecámac	1	\N	\N	\N	\N	15	27	\N	\N
154	ZTM	Zorro Tecámac 2	1	\N	\N	\N	\N	15	27	\N	\N
155	ZTU	Zorro Tulancingo	1	\N	\N	\N	\N	13	36	\N	\N
156	ZVV	Zorro Vicente Villada	1	\N	\N	\N	\N	15	20	\N	\N
126	CCA	Cazador Comercial	1	\N	\N	\N	\N	7	10	\N	\N
157	SEM	Scorpion Eduardo Molina	2	\N	\N	\N	\N	7	6	\N	\N
158	SMI	Scorpion Misterios	2	\N	\N	\N	\N	7	9	\N	\N
159	SCH2	Scorpion Chicoloapan 2	2	\N	\N	\N	\N	15	40	\N	\N
160	PAT	Puma Atizapán	7	\N	\N	\N	\N	15	31	\N	\N
161	DZT	DZ Tulancingo	6	\N	\N	\N	\N	13	36	\N	\N
162	ZMI	Zorro Minas	1	\N	\N	\N	\N	7	2	\N	\N
163	ZAR	Zorro Armas	1	\N	\N	\N	\N	7	42	\N	\N
164	PBO	Puma Las Bombas	7	\N	\N	\N	\N	7	3	\N	\N
165	SF6	Scorpion Central F6	2	\N	\N	\N	\N	7	10	\N	\N
166	SVTC	Scorpion Venta del Carpio	2	\N	\N	\N	\N	15	27	\N	\N
167	MPPD	MPPD Conín	8	\N	\N	\N	\N	22	39	\N	\N
127	FAX	Flecha Abarrotera Xochimilco	1	\N	\N	\N	\N	7	7	\N	\N
168	DZAT	DZ Atizapán	6	\N	\N	\N	\N	15	31	\N	\N
169	MarberCADE	Cremería Marber	9	\N	\N	\N	\N	15	27	\N	\N
170	ZFR	Zorro San Francisco del Rinćon	1	\N	\N	\N	\N	11	43	\N	\N
138	ZCV	Zorro Calzada La Viga	1	\N	\N	\N	\N	7	10	\N	\N
\.


--
-- Name: areas_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.areas_area_id_seq', 19, true);


--
-- Name: cadenas_cadena_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cadenas_cadena_id_seq', 9, true);


--
-- Name: calificaciones_resumen_calificacion_resumen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calificaciones_resumen_calificacion_resumen_id_seq', 2870, true);


--
-- Name: compradores_comprador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compradores_comprador_id_seq', 1, true);


--
-- Name: departamentos_departamento_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departamentos_departamento_id_seq_1', 9, true);


--
-- Name: dimensiones_dimension_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dimensiones_dimension_id_seq_1', 9, true);


--
-- Name: levantamientos_levantamiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.levantamientos_levantamiento_id_seq', 1631, true);


--
-- Name: levantamientos_precios_levantamiento_precios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.levantamientos_precios_levantamiento_precios_id_seq', 1, false);


--
-- Name: levantamientos_tiempos_fila_levantamiento_fila_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.levantamientos_tiempos_fila_levantamiento_fila_id_seq', 1, false);


--
-- Name: preguntas_pregunta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.preguntas_pregunta_id_seq', 1, false);


--
-- Name: productos_producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_producto_id_seq', 1, false);


--
-- Name: protocolos_protocolo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.protocolos_protocolo_id_seq', 1, false);


--
-- Name: tiendas_tienda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiendas_tienda_id_seq', 170, true);


--
-- Name: areas areas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pk PRIMARY KEY (area_id);


--
-- Name: cadenas cadenas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cadenas
    ADD CONSTRAINT cadenas_pk PRIMARY KEY (cadena_id);


--
-- Name: calificaciones_resumen calificaciones_resumen_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calificaciones_resumen
    ADD CONSTRAINT calificaciones_resumen_pk PRIMARY KEY (calificacion_resumen_id);


--
-- Name: compradores compradores_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compradores
    ADD CONSTRAINT compradores_pk PRIMARY KEY (comprador_id);


--
-- Name: departamentos departamentos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pk PRIMARY KEY (departamento_id);


--
-- Name: dimensiones dimensiones_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dimensiones
    ADD CONSTRAINT dimensiones_pk PRIMARY KEY (dimension_id);


--
-- Name: estados estados_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estados
    ADD CONSTRAINT estados_pk PRIMARY KEY (estado_id);


--
-- Name: levantamientos_calificaciones levantamientos_calificaciones_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos_calificaciones
    ADD CONSTRAINT levantamientos_calificaciones_pk PRIMARY KEY (levantamiento_calificaciones_id, pregunta_id, area_id);


--
-- Name: levantamientos levantamientos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos
    ADD CONSTRAINT levantamientos_pk PRIMARY KEY (levantamiento_id);


--
-- Name: levantamientos_precios levantamientos_precios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos_precios
    ADD CONSTRAINT levantamientos_precios_pk PRIMARY KEY (levantamiento_precios_id, producto_id);


--
-- Name: levantamientos_tiempos_fila levantamientos_tiempos_fila_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos_tiempos_fila
    ADD CONSTRAINT levantamientos_tiempos_fila_pk PRIMARY KEY (levantamiento_fila_id, levantamiento_id, area_id);


--
-- Name: municipios municipios_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipios
    ADD CONSTRAINT municipios_pk PRIMARY KEY (municipio_id);


--
-- Name: preguntas preguntas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preguntas
    ADD CONSTRAINT preguntas_pk PRIMARY KEY (pregunta_id);


--
-- Name: productos productos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pk PRIMARY KEY (producto_id);


--
-- Name: protocolos protocolos_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.protocolos
    ADD CONSTRAINT protocolos_pk PRIMARY KEY (protocolo_id);


--
-- Name: tiendas tiendas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiendas
    ADD CONSTRAINT tiendas_pk PRIMARY KEY (tienda_id);


--
-- Name: levantamientos_calificaciones areas_calificaciones_preguntas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos_calificaciones
    ADD CONSTRAINT areas_calificaciones_preguntas_fk FOREIGN KEY (area_id) REFERENCES public.areas(area_id);


--
-- Name: levantamientos_tiempos_fila areas_levantamientos_tiempos_fila_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos_tiempos_fila
    ADD CONSTRAINT areas_levantamientos_tiempos_fila_fk FOREIGN KEY (area_id) REFERENCES public.areas(area_id);


--
-- Name: tiendas cadenas_tiendas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiendas
    ADD CONSTRAINT cadenas_tiendas_fk FOREIGN KEY (cadena_id) REFERENCES public.cadenas(cadena_id);


--
-- Name: levantamientos compradores_levantamientos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos
    ADD CONSTRAINT compradores_levantamientos_fk FOREIGN KEY (comprador_id) REFERENCES public.compradores(comprador_id);


--
-- Name: areas dimensiones_areas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT dimensiones_areas_fk FOREIGN KEY (dimension_id) REFERENCES public.dimensiones(dimension_id);


--
-- Name: municipios estados_municipios_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipios
    ADD CONSTRAINT estados_municipios_fk FOREIGN KEY (estado_id) REFERENCES public.estados(estado_id);


--
-- Name: tiendas estados_tiendas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiendas
    ADD CONSTRAINT estados_tiendas_fk FOREIGN KEY (estado_id) REFERENCES public.estados(estado_id);


--
-- Name: levantamientos_precios levantamientos_levantamientos_precios_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos_precios
    ADD CONSTRAINT levantamientos_levantamientos_precios_fk FOREIGN KEY (levantamiento_precios_id) REFERENCES public.levantamientos(levantamiento_id);


--
-- Name: levantamientos_calificaciones levantamientos_levantamientos_preguntas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos_calificaciones
    ADD CONSTRAINT levantamientos_levantamientos_preguntas_fk FOREIGN KEY (levantamiento_calificaciones_id) REFERENCES public.levantamientos(levantamiento_id);


--
-- Name: levantamientos_tiempos_fila levantamientos_levantamientos_tiempos_fila_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos_tiempos_fila
    ADD CONSTRAINT levantamientos_levantamientos_tiempos_fila_fk FOREIGN KEY (levantamiento_id) REFERENCES public.levantamientos(levantamiento_id);


--
-- Name: tiendas municipios_tiendas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiendas
    ADD CONSTRAINT municipios_tiendas_fk FOREIGN KEY (municipio_id) REFERENCES public.municipios(municipio_id);


--
-- Name: levantamientos_calificaciones preguntas_levantamientos_preguntas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos_calificaciones
    ADD CONSTRAINT preguntas_levantamientos_preguntas_fk FOREIGN KEY (pregunta_id) REFERENCES public.preguntas(pregunta_id);


--
-- Name: levantamientos_precios productos_levantamientos_precios_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos_precios
    ADD CONSTRAINT productos_levantamientos_precios_fk FOREIGN KEY (producto_id) REFERENCES public.productos(producto_id);


--
-- Name: preguntas protocolos_preguntas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preguntas
    ADD CONSTRAINT protocolos_preguntas_fk FOREIGN KEY (protocolo_id) REFERENCES public.protocolos(protocolo_id);


--
-- Name: levantamientos tiendas_levantamientos_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.levantamientos
    ADD CONSTRAINT tiendas_levantamientos_fk FOREIGN KEY (tienda_id) REFERENCES public.tiendas(tienda_id);


--
-- PostgreSQL database dump complete
--

