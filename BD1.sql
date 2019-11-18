/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     7/11/2019 9:19:18                            */
/*==============================================================*/


drop table AGRESIONES;

drop table ASIGN_DIARIA;

drop table ASIGN_PERSONAL;

drop table CAPACITACIONES;

drop table CATALOGO;

drop table CELULARES;

drop table CONTACTOS;

drop table CONYUGE;

drop table DIRECCION;

drop table EMPLEADO;

drop table ESC_MUNICIPAL;

drop table LICENCIAS;

drop table MOVIM_PERSONAL;

drop table NOVEDADES;

drop table PERMISOS;

drop table PERMISO_ESTUDIO;

drop table SANCIONES;

drop table TELEFONOS;

drop table USUARIO;

/*==============================================================*/
/* Table: AGRESIONES                                            */
/*==============================================================*/
create table AGRESIONES (
   ID_AGRESIONES        SERIAL not null,
   ID_EMPLEADO          INT4                 null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   FECHA_AGRESION       DATE                 not null,
   HORA_AGRESION        TIME                 not null,
   DESCRIPCION_INCIDENTE_AGRE VARCHAR(500)         not null,
   MOTIVO_AGRESION      VARCHAR(100)         not null,
   FORMA_AGRESION       VARCHAR(100)         not null,
   APELLIDOS_AGRESOR    VARCHAR(30)          null,
   NOMBRES_AGRESOR      VARCHAR(30)          null,
   CEDULA_AGRESOR       VARCHAR(10)          null,
   LESIONES_SUFRIDAS_AGRES VARCHAR(100)         not null,
   DESCRIP_DANOS_AGRES  VARCHAR(100)         not null,
   TESTIGOS_AGRES       VARCHAR(100)         null,
   ARMA_AGRESION        VARCHAR(20)          null,
   LUGAR_ASIST_MEDIC_AGRES VARCHAR(100)         null,
   DESCRIP_LESION_AGRES VARCHAR(100)         null,
   RESULT_PRELIM_AGRES  VARCHAR(10)          not null,
   INTERV_PN_AGRES      BOOL                 not null,
   INTERV_APJ_AGRES     BOOL                 not null,
   DENUNCIA_AGRES       BOOL                 not null,
   FOTOGRAFIA_AGRES     CHAR                 null,
   constraint PK_AGRESIONES primary key (ID_AGRESIONES)
);

/*==============================================================*/
/* Table: ASIGN_DIARIA                                          */
/*==============================================================*/
create table ASIGN_DIARIA (
   ID_ASIGN_DIARIA      SERIAL not null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   ID_EMPLEADO          INT4                 null,
   FECHA_ASIG_DIARIA    DATE                 not null,
   HORA_INGRE           TIME                 not null,
   HORA_SALID           TIME                 not null,
   constraint PK_ASIGN_DIARIA primary key (ID_ASIGN_DIARIA)
);

/*==============================================================*/
/* Table: ASIGN_PERSONAL                                        */
/*==============================================================*/
create table ASIGN_PERSONAL (
   ID_ASIG_PERSONAL     SERIAL not null,
   ID_EMPLEADO          INT4                 null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   FECH_INICIO_ASIG     DATE                 not null,
   FECH_FIN_ASIG        DATE                 not null,
   OBSERVACION_ASIGN    VARCHAR(100)         not null,
   constraint PK_ASIGN_PERSONAL primary key (ID_ASIG_PERSONAL)
);

/*==============================================================*/
/* Table: CAPACITACIONES                                        */
/*==============================================================*/
create table CAPACITACIONES (
   ID_CAPACITACIONES    SERIAL not null,
   ID_EMPLEADO          INT4                 null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   NOM_CAPACIT          VARCHAR(50)          not null,
   FECH_INIC_CAPAC      DATE                 not null,
   FECH_FIN_CAPAC       DATE                 not null,
   NO_HORAS_CAP         NUMERIC(3,0)         not null,
   LUGAR_CAP            VARCHAR(50)          not null,
   APROBADO_CAP         BOOL                 not null,
   constraint PK_CAPACITACIONES primary key (ID_CAPACITACIONES)
);

/*==============================================================*/
/* Table: CATALOGO                                              */
/*==============================================================*/
create table CATALOGO (
   ID_CATALOGO          NUMERIC(3,0)         not null,
   NOMBRE_CAT           VARCHAR(50)          not null,
   ID_PADRE             NUMERIC(4,0)         null,
   constraint PK_CATALOGO primary key (ID_CATALOGO)
);

/*==============================================================*/
/* Table: CELULARES                                             */
/*==============================================================*/
create table CELULARES (
   ID_CELULARES         SERIAL not null,
   ID_EMPLEADO          INT4                 null,
   NUM_CELULAR          VARCHAR(10)          not null,
   constraint PK_CELULARES primary key (ID_CELULARES)
);

/*==============================================================*/
/* Table: CONTACTOS                                             */
/*==============================================================*/
create table CONTACTOS (
   ID_CONTACTOS         SERIAL not null,
   ID_EMPLEADO          INT4                 null,
   NOM_CONTACTO         VARCHAR(60)          not null,
   CEL_CONTACTO         VARCHAR(10)          not null,
   constraint PK_CONTACTOS primary key (ID_CONTACTOS)
);

/*==============================================================*/
/* Table: CONYUGE                                               */
/*==============================================================*/
create table CONYUGE (
   ID_CONYUGE           SERIAL not null,
   ID_EMPLEADO          INT4                 null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   NOM_CONYUG           VARCHAR(60)          not null,
   constraint PK_CONYUGE primary key (ID_CONYUGE)
);

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION (
   ID_DIRECION          SERIAL not null,
   ID_EMPLEADO          INT4                 null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   CALLE_PRINCIPAL      VARCHAR(50)          not null,
   NO_CASA              VARCHAR(7)           null,
   CALLE_SECUNDARIA     VARCHAR(50)          null,
   REFERENCIA_DIR       VARCHAR(80)          not null,
   constraint PK_DIRECCION primary key (ID_DIRECION)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   ID_EMPLEADO          SERIAL not null,
   CEDULA_EMP           VARCHAR(10)          not null,
   APELLIDO_PAT         CHAR(30)             not null,
   APELLIDO_MAT         CHAR(30)             null,
   NOMBRE_1             CHAR(30)             not null,
   NOMBRE_2             CHAR(30)             null,
   EMAIL_1              VARCHAR(30)          not null,
   FECHA_NACIM          DATE                 not null,
   NOM_PADRE            CHAR(30)             null,
   NOM_MADRE            CHAR(30)             null,
   constraint PK_EMPLEADO primary key (ID_EMPLEADO)
);

/*==============================================================*/
/* Table: ESC_MUNICIPAL                                         */
/*==============================================================*/
create table ESC_MUNICIPAL (
   ID_ESC_MUNIC         SERIAL not null,
   ID_EMPLEADO          INT4                 null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   NOM_ESCALA           VARCHAR(50)          not null,
   RBU                  FLOAT8               not null,
   constraint PK_ESC_MUNICIPAL primary key (ID_ESC_MUNIC)
);

/*==============================================================*/
/* Table: LICENCIAS                                             */
/*==============================================================*/
create table LICENCIAS (
   ID_LICENCIAS         SERIAL not null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   ID_EMPLEADO          INT4                 null,
   FECH_INIC_LIC        DATE                 not null,
   FECH_FIN_LIC         DATE                 not null,
   FECH_APROB_LIC       DATE                 not null,
   constraint PK_LICENCIAS primary key (ID_LICENCIAS)
);

/*==============================================================*/
/* Table: MOVIM_PERSONAL                                        */
/*==============================================================*/
create table MOVIM_PERSONAL (
   ID_MOVIMIENTO_PERSONAL SERIAL not null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   ID_EMPLEADO          INT4                 null,
   FECHA_MOVIMIENTO_PERSONAL DATE                 not null,
   constraint PK_MOVIM_PERSONAL primary key (ID_MOVIMIENTO_PERSONAL)
);

/*==============================================================*/
/* Table: NOVEDADES                                             */
/*==============================================================*/
create table NOVEDADES (
   ID_NOVEDAD           SERIAL not null,
   ID_EMPLEADO          INT4                 null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   FECHA_NOVED          DATE                 not null,
   NO_PARTE_NOV         VARCHAR(10)          not null,
   OBSERVACION_NOVED    VARCHAR(100)         not null,
   JUSTIFICADO_NOV      BOOL                 not null,
   OBSERVACION_JUST_NOV VARCHAR(100)         not null,
   constraint PK_NOVEDADES primary key (ID_NOVEDAD)
);

/*==============================================================*/
/* Table: PERMISOS                                              */
/*==============================================================*/
create table PERMISOS (
   ID_PERMISOS          SERIAL not null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   ID_EMPLEADO          INT4                 null,
   FECH_INIC_PERMIS     DATE                 not null,
   FECH_FIN_PERMIS      DATE                 not null,
   FECH_APROB_PERMIS    DATE                 not null,
   constraint PK_PERMISOS primary key (ID_PERMISOS)
);

/*==============================================================*/
/* Table: PERMISO_ESTUDIO                                       */
/*==============================================================*/
create table PERMISO_ESTUDIO (
   ID_PERMIS_ESTUD      SERIAL not null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   ID_EMPLEADO          INT4                 null,
   FECH_INIC_PERM_ESTUD DATE                 not null,
   FECH_FIN_PERM_ESTUD  DATE                 not null,
   APROBADO_PERM_ESTUD  BOOL                 not null,
   NO__DOC_PERM_ESTUD   VARCHAR(20)          not null,
   NIVEL_PERM_ESTUD     VARCHAR(20)          not null,
   constraint PK_PERMISO_ESTUDIO primary key (ID_PERMIS_ESTUD)
);

/*==============================================================*/
/* Table: SANCIONES                                             */
/*==============================================================*/
create table SANCIONES (
   ID_SANCIONES         SERIAL not null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   ID_EMPLEADO          INT4                 null,
   VALOR_SANCION        FLOAT8               not null,
   FECHA_SANCION        DATE                 not null,
   constraint PK_SANCIONES primary key (ID_SANCIONES)
);

/*==============================================================*/
/* Table: TELEFONOS                                             */
/*==============================================================*/
create table TELEFONOS (
   ID_TELF              SERIAL not null,
   ID_DIRECION          INT4                 null,
   NUM_TELF             VARCHAR(9)           not null,
   constraint PK_TELEFONOS primary key (ID_TELF)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   ID_USUARIO           SERIAL not null,
   ID_EMPLEADO          INT4                 null,
   ID_CATALOGO          NUMERIC(3,0)         null,
   CLAVE_USUARIO        VARCHAR(12)          not null,
   constraint PK_USUARIO primary key (ID_USUARIO)
);

alter table AGRESIONES
   add constraint FK_AGRESION_RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table AGRESIONES
   add constraint FK_AGRESION_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table ASIGN_DIARIA
   add constraint FK_ASIGN_DI_RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table ASIGN_DIARIA
   add constraint FK_ASIGN_DI_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table ASIGN_PERSONAL
   add constraint FK_ASIGN_PE_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table ASIGN_PERSONAL
   add constraint FK_ASIGN_PE_RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table CAPACITACIONES
   add constraint FK_CAPACITA_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table CAPACITACIONES
   add constraint FK_CAPACITA_RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table CELULARES
   add constraint FK_CELULARE_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table CONTACTOS
   add constraint FK_CONTACTO_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table CONYUGE
   add constraint FK_CONYUGE_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table CONYUGE
   add constraint FK_CONYUGE_RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table DIRECCION
   add constraint FK_DIRECCIO_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table DIRECCION
   add constraint FK_DIRECCIO_RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table ESC_MUNICIPAL
   add constraint FK_ESC_MUNI_RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table ESC_MUNICIPAL
   add constraint FK_ESC_MUNI_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table LICENCIAS
   add constraint FK_LICENCIA_RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table LICENCIAS
   add constraint FK_LICENCIA_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table MOVIM_PERSONAL
   add constraint FK_MOVIM_PE_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table MOVIM_PERSONAL
   add constraint FK_MOVIM_PE_RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table NOVEDADES
   add constraint FK_NOVEDADE_RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table NOVEDADES
   add constraint FK_NOVEDADE_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table PERMISOS
   add constraint FK_PERMISOS_RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table PERMISOS
   add constraint FK_PERMISOS_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table PERMISO_ESTUDIO
   add constraint FK_PERMISO__RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table PERMISO_ESTUDIO
   add constraint FK_PERMISO__RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table SANCIONES
   add constraint FK_SANCIONE_RELATIONS_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table SANCIONES
   add constraint FK_SANCIONE_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

alter table TELEFONOS
   add constraint FK_TELEFONO_RELATIONS_DIRECCIO foreign key (ID_DIRECION)
      references DIRECCION (ID_DIRECION)
      on delete restrict on update restrict;

alter table USUARIO
   add constraint FK_USUARIO_CATAL_USU_CATALOGO foreign key (ID_CATALOGO)
      references CATALOGO (ID_CATALOGO)
      on delete restrict on update restrict;

alter table USUARIO
   add constraint FK_USUARIO_USUA_EMPL_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADO (ID_EMPLEADO)
      on delete restrict on update restrict;

