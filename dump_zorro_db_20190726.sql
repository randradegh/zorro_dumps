--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

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
138	ZCV	Zorro Calzada la Viga	1	\N	\N	\N	\N	7	10	\N	\N
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
\.


--
-- Name: areas_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.areas_area_id_seq', 19, true);


--
-- Name: cadenas_cadena_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cadenas_cadena_id_seq', 8, true);


--
-- Name: calificaciones_resumen_calificacion_resumen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calificaciones_resumen_calificacion_resumen_id_seq', 990, true);


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

SELECT pg_catalog.setval('public.levantamientos_levantamiento_id_seq', 1512, true);


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

SELECT pg_catalog.setval('public.tiendas_tienda_id_seq', 167, true);


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

