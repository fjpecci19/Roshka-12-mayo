-- Table: public.ESTADO

-- DROP TABLE IF EXISTS public."ESTADO";

CREATE TABLE IF NOT EXISTS public."ESTADO"
(
    "ID_ESTADO" integer NOT NULL,
    "DESCRIPCION_ESTADO" character(10) COLLATE pg_catalog."default",
    CONSTRAINT "ESTADO_pkey" PRIMARY KEY ("ID_ESTADO")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."ESTADO"
    OWNER to postgres;