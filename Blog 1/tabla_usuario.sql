-- Table: public.USUARIO

-- DROP TABLE IF EXISTS public."USUARIO";

CREATE TABLE IF NOT EXISTS public."USUARIO"
(
    "ID_USUARIO" integer NOT NULL,
    "NOMBRE_USUARIO" character(10) COLLATE pg_catalog."default" NOT NULL,
    "CONTRASEÑA" character(10) COLLATE pg_catalog."default" NOT NULL,
    "ESTADO_ID_ESTADO" integer NOT NULL,
    CONSTRAINT "USUARIOS_pkey" PRIMARY KEY ("ID_USUARIO"),
    CONSTRAINT "FK_USUARIO_ESTADO" FOREIGN KEY ("ESTADO_ID_ESTADO")
        REFERENCES public."ESTADO" ("ID_ESTADO") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."USUARIO"
    OWNER to postgres;