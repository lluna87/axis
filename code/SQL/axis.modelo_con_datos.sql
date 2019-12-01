/*
Navicat PGSQL Data Transfer

Source Server         : AXIS
Source Server Version : 90105
Source Host           : localhost:5432
Source Database       : axis
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90105
File Encoding         : 65001

Date: 2014-01-13 01:41:02
*/


-- ----------------------------
-- Sequence structure for "public"."article_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."article_id_seq";
CREATE SEQUENCE "public"."article_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 16
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."article_image_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."article_image_id_seq";
CREATE SEQUENCE "public"."article_image_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 55
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."article_rate_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."article_rate_id_seq";
CREATE SEQUENCE "public"."article_rate_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."article_section_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."article_section_id_seq";
CREATE SEQUENCE "public"."article_section_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 24
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_group_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_group_permissions_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_permission_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 78
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_user_groups_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_user_groups_id_seq";
CREATE SEQUENCE "public"."auth_user_groups_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 11
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_user_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_user_id_seq";
CREATE SEQUENCE "public"."auth_user_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 11
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_user_user_permissions_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."auth_user_user_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."author_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."author_id_seq";
CREATE SEQUENCE "public"."author_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."author_rate_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."author_rate_id_seq";
CREATE SEQUENCE "public"."author_rate_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."choice_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."choice_id_seq";
CREATE SEQUENCE "public"."choice_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 14
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."comment_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."comment_id_seq";
CREATE SEQUENCE "public"."comment_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 16
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."django_admin_log_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."django_content_type_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 26
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."image_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."image_id_seq";
CREATE SEQUENCE "public"."image_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 59
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."poll_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."poll_id_seq";
CREATE SEQUENCE "public"."poll_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 35
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."poll_section_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."poll_section_id_seq";
CREATE SEQUENCE "public"."poll_section_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."publication_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."publication_id_seq";
CREATE SEQUENCE "public"."publication_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 47
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."publisher_rate_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."publisher_rate_id_seq";
CREATE SEQUENCE "public"."publisher_rate_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."section_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."section_id_seq";
CREATE SEQUENCE "public"."section_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."source_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."source_id_seq";
CREATE SEQUENCE "public"."source_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 34
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."south_migrationhistory_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."south_migrationhistory_id_seq";
CREATE SEQUENCE "public"."south_migrationhistory_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 12
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."tag_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."tag_id_seq";
CREATE SEQUENCE "public"."tag_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 44
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."user_profile_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."user_profile_id_seq";
CREATE SEQUENCE "public"."user_profile_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."user_section_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."user_section_id_seq";
CREATE SEQUENCE "public"."user_section_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."vote_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."vote_id_seq";
CREATE SEQUENCE "public"."vote_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 23
 CACHE 1;

-- ----------------------------
-- Table structure for "public"."article"
-- ----------------------------
DROP TABLE "public"."article";
CREATE TABLE "public"."article" (
"article_id" int4 NOT NULL,
"author_id" int4,
"title" varchar(80) NOT NULL,
"content_summary" varchar(1000) NOT NULL,
"body_text" varchar(15000) NOT NULL,
"visits" int8 NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO "public"."article" VALUES ('1', '1', 'PlayStation 4, poderosa y social', '&lt;strong&gt;"Cada gamer es parte de la&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;PlayStation 4&lt;/strong&gt;", asegur&amp;oacute; Mark Stanley, jefe de producto para la regi&amp;oacute;n, en di&amp;aacute;logo con &lt;strong&gt;&lt;em&gt;Infobae&lt;/em&gt;&lt;/strong&gt;. Destac&amp;oacute; &lt;strong&gt;el rol de los&amp;nbsp;jugadores latinomericanos y el de los desarrolladores&lt;/strong&gt;', '&lt;div&gt;&lt;p&gt;"&lt;strong&gt;El &amp;eacute;xito de una consola tiene que ver 100% con el contenido"&lt;/strong&gt;, enfatiz&amp;oacute;&amp;nbsp;&lt;strong&gt;Stanley &lt;/strong&gt;&lt;em&gt;a&lt;/em&gt;&lt;strong&gt; &lt;em&gt;Infobae&lt;/em&gt; &lt;/strong&gt;tras&amp;nbsp;su paso por&amp;nbsp;&lt;a href="http://www.infobae.com/2013/11/18/1524705-playstation-4-es-oficial-la-argentina"&gt;Argentina para la presentaci&amp;oacute;n de la nueva Playstation&lt;/a&gt; de Sony, a la venta en la regi&amp;oacute;n el 29 de noviembre.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;&lt;em&gt;Describi&amp;oacute; a la Play 4 como poderosa y social. &amp;iquest;Qu&amp;eacute; aspectos resalta de la nueva consola? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- Fue un aspecto muy importante el dise&amp;ntilde;o de la&lt;strong&gt; PlayStation 4&lt;/strong&gt;. Por un lado, &lt;strong&gt;la arquitectura no s&amp;oacute;lo es m&amp;aacute;s potente sino simple a la vez, &lt;/strong&gt;al permitir que&lt;strong&gt; &lt;/strong&gt;los desarolladores -sean grandes o chicos- puedan crear juegos f&amp;aacute;cilmente. Es un arquitectura, entonces, basada en PC.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;En
 la parte social, estamos bombardeados de contenido digital todo el d&amp;iacute;a 
desde el smartphone o la televisi&amp;oacute;n. Hay un estigma de que&lt;strong&gt; los gamers
 est&amp;aacute;n en el sotano s&amp;oacute;lo jugando, no hablando con nadie y no est&amp;aacute;n 
conectados, pero nosotros sabemos que ellos son los m&amp;aacute;s socialmente 
conectados en el mundo.&lt;/strong&gt; Y ahora con s&amp;oacute;lo presionar el &lt;strong&gt;boton Share&lt;/strong&gt; pueden compartir un segmento de segundos directamente en las redes sociales, como Facebook.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;&lt;strong&gt;Compartir los trofeos es lo mejor, porque ah&amp;iacute; est&amp;aacute; la competencia real.&lt;/strong&gt;
 Los gamers pueden estar conectados con dispositivos port&amp;aacute;tiles. Bajan 
las aplicaciones de Playstation y pueden saber c&amp;oacute;mo van los trofeos de 
los amigos o de los enemigos. Habr&amp;aacute; m&amp;aacute;s interacci&amp;oacute;n con dispositivos 
m&amp;oacute;viles en el futuro con la PlayStation 4. &lt;strong&gt;Su&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;estructura nos permite tener&amp;nbsp;la flexibilidad de ir creciendo de acuerdo a la necesidad de los jugadores.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;Cu&amp;aacute;l es el futuro de la PlayStation 3?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- &lt;strong&gt;Definitivamente, la PlayStation 3 no muere.&lt;/strong&gt; Seguimos desarrollando todos los hits para la Play 3, como&lt;strong&gt; Gran Turismo 6, &lt;/strong&gt;que se lanza pr&amp;oacute;ximamente en el mes de diciembre&lt;strong&gt;. Es la consola m&amp;aacute;s importante para Latinoam&amp;eacute;rica&lt;/strong&gt;.&lt;strong&gt; Sabemos que tenemos un p&amp;uacute;blico masivo y que no todos tienen acceso a comprar la Play 4.&lt;/strong&gt;&amp;nbsp;Una
 de nuestras metas m&amp;aacute;s grandes es bajar esa barrera de acceso a nuestros
 productos. Entonces, la Play 3 es un mercado crucial en nuestro 
ecosistema.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;div&gt;&lt;p&gt;&lt;em&gt;&lt;strong&gt;- &amp;iquest;Qu&amp;eacute; rol tienen hoy los jugadores latinoamericanos ?&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;Es la regi&amp;oacute;n de mayor crecimiento global para PlayStation&lt;/strong&gt;.
 Representa entre el 30 y el 40 por ciento del negocio de las Am&amp;eacute;ricas. 
Los clientes latinoamericanos tienen gran pasi&amp;oacute;n. Existe mucha 
creatividad tanto en Argentina como en el resto de la regi&amp;oacute;n. &lt;strong&gt;El feedback que recibimos de los gamers lo estamos usando mucho para mejorar nuestros productos y servicios.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;C&amp;oacute;mo avanza el trabajo con los desarrolladores independientes?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;- Para m&amp;iacute;, personalmente, es uno de los proyectos m&amp;aacute;s interesantes&lt;strong&gt;. Podemos hablar de la arquitectura o la potencia de una consola, pero el &amp;eacute;xito tiene que ver 100% con el contenido.&lt;/strong&gt;
 &amp;nbsp;Ya llevamos tres a&amp;ntilde;os trabajando con cerca de 100 desarrolladores en 
Latinoam&amp;eacute;rica en el desarrollo tanto para Play 4 como para Play 3 y PS 
Vita. Ya tenemos los primeros resultados. Mi sue&amp;ntilde;o es estar sentado aqu&amp;iacute;
 en un par de a&amp;ntilde;os y tener cerca a desarrolladores argentinos que hayan 
vendido millones de unidades. Y as&amp;iacute; poder demostrar la calidad que 
existe en la&amp;nbsp;regi&amp;oacute;n. &lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;&lt;br /&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;', '0', 't');
INSERT INTO "public"."article" VALUES ('2', '1', 'PlayStation 4, poderosa y social', '&lt;strong&gt;"Cada gamer es parte de la&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;PlayStation 4&lt;/strong&gt;", asegur&amp;oacute; Mark Stanley, jefe de producto para la regi&amp;oacute;n, en di&amp;aacute;logo con &lt;strong&gt;&lt;em&gt;Infobae&lt;/em&gt;&lt;/strong&gt;. Destac&amp;oacute; &lt;strong&gt;el rol de los&amp;nbsp;jugadores latinomericanos y el de los desarrolladores&lt;/strong&gt;', '&lt;div&gt;&lt;p&gt;"&lt;strong&gt;El &amp;eacute;xito de una consola tiene que ver 100% con el contenido"&lt;/strong&gt;, enfatiz&amp;oacute;&amp;nbsp;&lt;strong&gt;Stanley &lt;/strong&gt;&lt;em&gt;a&lt;/em&gt;&lt;strong&gt; &lt;em&gt;Infobae&lt;/em&gt; &lt;/strong&gt;tras&amp;nbsp;su paso por&amp;nbsp;&lt;a href="http://www.infobae.com/2013/11/18/1524705-playstation-4-es-oficial-la-argentina"&gt;Argentina para la presentaci&amp;oacute;n de la nueva Playstation&lt;/a&gt; de Sony, a la venta en la regi&amp;oacute;n el 29 de noviembre.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;&lt;em&gt;Describi&amp;oacute; a la Play 4 como poderosa y social. &amp;iquest;Qu&amp;eacute; aspectos resalta de la nueva consola? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- Fue un aspecto muy importante el dise&amp;ntilde;o de la&lt;strong&gt; PlayStation 4&lt;/strong&gt;. Por un lado, &lt;strong&gt;la arquitectura no s&amp;oacute;lo es m&amp;aacute;s potente sino simple a la vez, &lt;/strong&gt;al permitir que&lt;strong&gt; &lt;/strong&gt;los desarolladores -sean grandes o chicos- puedan crear juegos f&amp;aacute;cilmente. Es un arquitectura, entonces, basada en PC.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;En
 la parte social, estamos bombardeados de contenido digital todo el d&amp;iacute;a 
desde el smartphone o la televisi&amp;oacute;n. Hay un estigma de que&lt;strong&gt; los gamers
 est&amp;aacute;n en el sotano s&amp;oacute;lo jugando, no hablando con nadie y no est&amp;aacute;n 
conectados, pero nosotros sabemos que ellos son los m&amp;aacute;s socialmente 
conectados en el mundo.&lt;/strong&gt; Y ahora con s&amp;oacute;lo presionar el &lt;strong&gt;boton Share&lt;/strong&gt; pueden compartir un segmento de segundos directamente en las redes sociales, como Facebook.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;&lt;strong&gt;Compartir los trofeos es lo mejor, porque ah&amp;iacute; est&amp;aacute; la competencia real.&lt;/strong&gt;
 Los gamers pueden estar conectados con dispositivos port&amp;aacute;tiles. Bajan 
las aplicaciones de Playstation y pueden saber c&amp;oacute;mo van los trofeos de 
los amigos o de los enemigos. Habr&amp;aacute; m&amp;aacute;s interacci&amp;oacute;n con dispositivos 
m&amp;oacute;viles en el futuro con la PlayStation 4. &lt;strong&gt;Su&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;estructura nos permite tener&amp;nbsp;la flexibilidad de ir creciendo de acuerdo a la necesidad de los jugadores.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;Cu&amp;aacute;l es el futuro de la PlayStation 3?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- &lt;strong&gt;Definitivamente, la PlayStation 3 no muere.&lt;/strong&gt; Seguimos desarrollando todos los hits para la Play 3, como&lt;strong&gt; Gran Turismo 6, &lt;/strong&gt;que se lanza pr&amp;oacute;ximamente en el mes de diciembre&lt;strong&gt;. Es la consola m&amp;aacute;s importante para Latinoam&amp;eacute;rica&lt;/strong&gt;.&lt;strong&gt; Sabemos que tenemos un p&amp;uacute;blico masivo y que no todos tienen acceso a comprar la Play 4.&lt;/strong&gt;&amp;nbsp;Una
 de nuestras metas m&amp;aacute;s grandes es bajar esa barrera de acceso a nuestros
 productos. Entonces, la Play 3 es un mercado crucial en nuestro 
ecosistema.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;div&gt;&lt;p&gt;&lt;em&gt;&lt;strong&gt;- &amp;iquest;Qu&amp;eacute; rol tienen hoy los jugadores latinoamericanos ?&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;Es la regi&amp;oacute;n de mayor crecimiento global para PlayStation&lt;/strong&gt;.
 Representa entre el 30 y el 40 por ciento del negocio de las Am&amp;eacute;ricas. 
Los clientes latinoamericanos tienen gran pasi&amp;oacute;n. Existe mucha 
creatividad tanto en Argentina como en el resto de la regi&amp;oacute;n. &lt;strong&gt;El feedback que recibimos de los gamers lo estamos usando mucho para mejorar nuestros productos y servicios.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;C&amp;oacute;mo avanza el trabajo con los desarrolladores independientes?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;- Para m&amp;iacute;, personalmente, es uno de los proyectos m&amp;aacute;s interesantes&lt;strong&gt;. Podemos hablar de la arquitectura o la potencia de una consola, pero el &amp;eacute;xito tiene que ver 100% con el contenido.&lt;/strong&gt;
 &amp;nbsp;Ya llevamos tres a&amp;ntilde;os trabajando con cerca de 100 desarrolladores en 
Latinoam&amp;eacute;rica en el desarrollo tanto para Play 4 como para Play 3 y PS 
Vita. Ya tenemos los primeros resultados. Mi sue&amp;ntilde;o es estar sentado aqu&amp;iacute;
 en un par de a&amp;ntilde;os y tener cerca a desarrolladores argentinos que hayan 
vendido millones de unidades. Y as&amp;iacute; poder demostrar la calidad que 
existe en la&amp;nbsp;regi&amp;oacute;n. &lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;&lt;br /&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;', '0', 't');
INSERT INTO "public"."article" VALUES ('3', '1', 'PlayStation 4, poderosa y social', '&lt;strong&gt;"Cada gamer es parte de la&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;PlayStation 4&lt;/strong&gt;", asegur&amp;oacute; Mark Stanley, jefe de producto para la regi&amp;oacute;n, en di&amp;aacute;logo con &lt;strong&gt;&lt;em&gt;Infobae&lt;/em&gt;&lt;/strong&gt;. Destac&amp;oacute; &lt;strong&gt;el rol de los&amp;nbsp;jugadores latinomericanos y el de los desarrolladores&lt;/strong&gt;', '&lt;div&gt;&lt;p&gt;"&lt;strong&gt;El &amp;eacute;xito de una consola tiene que ver 100% con el contenido"&lt;/strong&gt;, enfatiz&amp;oacute;&amp;nbsp;&lt;strong&gt;Stanley &lt;/strong&gt;&lt;em&gt;a&lt;/em&gt;&lt;strong&gt; &lt;em&gt;Infobae&lt;/em&gt; &lt;/strong&gt;tras&amp;nbsp;su paso por&amp;nbsp;&lt;a href="http://www.infobae.com/2013/11/18/1524705-playstation-4-es-oficial-la-argentina"&gt;Argentina para la presentaci&amp;oacute;n de la nueva Playstation&lt;/a&gt; de Sony, a la venta en la regi&amp;oacute;n el 29 de noviembre.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;&lt;em&gt;Describi&amp;oacute; a la Play 4 como poderosa y social. &amp;iquest;Qu&amp;eacute; aspectos resalta de la nueva consola? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- Fue un aspecto muy importante el dise&amp;ntilde;o de la&lt;strong&gt; PlayStation 4&lt;/strong&gt;. Por un lado, &lt;strong&gt;la arquitectura no s&amp;oacute;lo es m&amp;aacute;s potente sino simple a la vez, &lt;/strong&gt;al permitir que&lt;strong&gt; &lt;/strong&gt;los desarolladores -sean grandes o chicos- puedan crear juegos f&amp;aacute;cilmente. Es un arquitectura, entonces, basada en PC.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;En
 la parte social, estamos bombardeados de contenido digital todo el d&amp;iacute;a 
desde el smartphone o la televisi&amp;oacute;n. Hay un estigma de que&lt;strong&gt; los gamers
 est&amp;aacute;n en el sotano s&amp;oacute;lo jugando, no hablando con nadie y no est&amp;aacute;n 
conectados, pero nosotros sabemos que ellos son los m&amp;aacute;s socialmente 
conectados en el mundo.&lt;/strong&gt; Y ahora con s&amp;oacute;lo presionar el &lt;strong&gt;boton Share&lt;/strong&gt; pueden compartir un segmento de segundos directamente en las redes sociales, como Facebook.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;&lt;strong&gt;Compartir los trofeos es lo mejor, porque ah&amp;iacute; est&amp;aacute; la competencia real.&lt;/strong&gt;
 Los gamers pueden estar conectados con dispositivos port&amp;aacute;tiles. Bajan 
las aplicaciones de Playstation y pueden saber c&amp;oacute;mo van los trofeos de 
los amigos o de los enemigos. Habr&amp;aacute; m&amp;aacute;s interacci&amp;oacute;n con dispositivos 
m&amp;oacute;viles en el futuro con la PlayStation 4. &lt;strong&gt;Su&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;estructura nos permite tener&amp;nbsp;la flexibilidad de ir creciendo de acuerdo a la necesidad de los jugadores.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;Cu&amp;aacute;l es el futuro de la PlayStation 3?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- &lt;strong&gt;Definitivamente, la PlayStation 3 no muere.&lt;/strong&gt; Seguimos desarrollando todos los hits para la Play 3, como&lt;strong&gt; Gran Turismo 6, &lt;/strong&gt;que se lanza pr&amp;oacute;ximamente en el mes de diciembre&lt;strong&gt;. Es la consola m&amp;aacute;s importante para Latinoam&amp;eacute;rica&lt;/strong&gt;.&lt;strong&gt; Sabemos que tenemos un p&amp;uacute;blico masivo y que no todos tienen acceso a comprar la Play 4.&lt;/strong&gt;&amp;nbsp;Una
 de nuestras metas m&amp;aacute;s grandes es bajar esa barrera de acceso a nuestros
 productos. Entonces, la Play 3 es un mercado crucial en nuestro 
ecosistema.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;div&gt;&lt;p&gt;&lt;em&gt;&lt;strong&gt;- &amp;iquest;Qu&amp;eacute; rol tienen hoy los jugadores latinoamericanos ?&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;Es la regi&amp;oacute;n de mayor crecimiento global para PlayStation&lt;/strong&gt;.
 Representa entre el 30 y el 40 por ciento del negocio de las Am&amp;eacute;ricas. 
Los clientes latinoamericanos tienen gran pasi&amp;oacute;n. Existe mucha 
creatividad tanto en Argentina como en el resto de la regi&amp;oacute;n. &lt;strong&gt;El feedback que recibimos de los gamers lo estamos usando mucho para mejorar nuestros productos y servicios.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;C&amp;oacute;mo avanza el trabajo con los desarrolladores independientes?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;- Para m&amp;iacute;, personalmente, es uno de los proyectos m&amp;aacute;s interesantes&lt;strong&gt;. Podemos hablar de la arquitectura o la potencia de una consola, pero el &amp;eacute;xito tiene que ver 100% con el contenido.&lt;/strong&gt;
 &amp;nbsp;Ya llevamos tres a&amp;ntilde;os trabajando con cerca de 100 desarrolladores en 
Latinoam&amp;eacute;rica en el desarrollo tanto para Play 4 como para Play 3 y PS 
Vita. Ya tenemos los primeros resultados. Mi sue&amp;ntilde;o es estar sentado aqu&amp;iacute;
 en un par de a&amp;ntilde;os y tener cerca a desarrolladores argentinos que hayan 
vendido millones de unidades. Y as&amp;iacute; poder demostrar la calidad que 
existe en la&amp;nbsp;regi&amp;oacute;n. &lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;&lt;br /&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;', '0', 't');
INSERT INTO "public"."article" VALUES ('4', '1', 'PlayStation 4, poderosa y social', '&lt;strong&gt;"Cada gamer es parte de la&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;PlayStation 4&lt;/strong&gt;", asegur&amp;oacute; Mark Stanley, jefe de producto para la regi&amp;oacute;n, en di&amp;aacute;logo con &lt;strong&gt;&lt;em&gt;Infobae&lt;/em&gt;&lt;/strong&gt;. Destac&amp;oacute; &lt;strong&gt;el rol de los&amp;nbsp;jugadores latinomericanos y el de los desarrolladores&lt;/strong&gt;', '&lt;div&gt;&lt;p&gt;"&lt;strong&gt;El &amp;eacute;xito de una consola tiene que ver 100% con el contenido"&lt;/strong&gt;, enfatiz&amp;oacute;&amp;nbsp;&lt;strong&gt;Stanley &lt;/strong&gt;&lt;em&gt;a&lt;/em&gt;&lt;strong&gt; &lt;em&gt;Infobae&lt;/em&gt; &lt;/strong&gt;tras&amp;nbsp;su paso por&amp;nbsp;&lt;a href="http://www.infobae.com/2013/11/18/1524705-playstation-4-es-oficial-la-argentina"&gt;Argentina para la presentaci&amp;oacute;n de la nueva Playstation&lt;/a&gt; de Sony, a la venta en la regi&amp;oacute;n el 29 de noviembre.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;&lt;em&gt;Describi&amp;oacute; a la Play 4 como poderosa y social. &amp;iquest;Qu&amp;eacute; aspectos resalta de la nueva consola? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- Fue un aspecto muy importante el dise&amp;ntilde;o de la&lt;strong&gt; PlayStation 4&lt;/strong&gt;. Por un lado, &lt;strong&gt;la arquitectura no s&amp;oacute;lo es m&amp;aacute;s potente sino simple a la vez, &lt;/strong&gt;al permitir que&lt;strong&gt; &lt;/strong&gt;los desarolladores -sean grandes o chicos- puedan crear juegos f&amp;aacute;cilmente. Es un arquitectura, entonces, basada en PC.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;En
 la parte social, estamos bombardeados de contenido digital todo el d&amp;iacute;a 
desde el smartphone o la televisi&amp;oacute;n. Hay un estigma de que&lt;strong&gt; los gamers
 est&amp;aacute;n en el sotano s&amp;oacute;lo jugando, no hablando con nadie y no est&amp;aacute;n 
conectados, pero nosotros sabemos que ellos son los m&amp;aacute;s socialmente 
conectados en el mundo.&lt;/strong&gt; Y ahora con s&amp;oacute;lo presionar el &lt;strong&gt;boton Share&lt;/strong&gt; pueden compartir un segmento de segundos directamente en las redes sociales, como Facebook.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;&lt;strong&gt;Compartir los trofeos es lo mejor, porque ah&amp;iacute; est&amp;aacute; la competencia real.&lt;/strong&gt;
 Los gamers pueden estar conectados con dispositivos port&amp;aacute;tiles. Bajan 
las aplicaciones de Playstation y pueden saber c&amp;oacute;mo van los trofeos de 
los amigos o de los enemigos. Habr&amp;aacute; m&amp;aacute;s interacci&amp;oacute;n con dispositivos 
m&amp;oacute;viles en el futuro con la PlayStation 4. &lt;strong&gt;Su&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;estructura nos permite tener&amp;nbsp;la flexibilidad de ir creciendo de acuerdo a la necesidad de los jugadores.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;Cu&amp;aacute;l es el futuro de la PlayStation 3?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- &lt;strong&gt;Definitivamente, la PlayStation 3 no muere.&lt;/strong&gt; Seguimos desarrollando todos los hits para la Play 3, como&lt;strong&gt; Gran Turismo 6, &lt;/strong&gt;que se lanza pr&amp;oacute;ximamente en el mes de diciembre&lt;strong&gt;. Es la consola m&amp;aacute;s importante para Latinoam&amp;eacute;rica&lt;/strong&gt;.&lt;strong&gt; Sabemos que tenemos un p&amp;uacute;blico masivo y que no todos tienen acceso a comprar la Play 4.&lt;/strong&gt;&amp;nbsp;Una
 de nuestras metas m&amp;aacute;s grandes es bajar esa barrera de acceso a nuestros
 productos. Entonces, la Play 3 es un mercado crucial en nuestro 
ecosistema.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;div&gt;&lt;p&gt;&lt;em&gt;&lt;strong&gt;- &amp;iquest;Qu&amp;eacute; rol tienen hoy los jugadores latinoamericanos ?&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;Es la regi&amp;oacute;n de mayor crecimiento global para PlayStation&lt;/strong&gt;.
 Representa entre el 30 y el 40 por ciento del negocio de las Am&amp;eacute;ricas. 
Los clientes latinoamericanos tienen gran pasi&amp;oacute;n. Existe mucha 
creatividad tanto en Argentina como en el resto de la regi&amp;oacute;n. &lt;strong&gt;El feedback que recibimos de los gamers lo estamos usando mucho para mejorar nuestros productos y servicios.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;C&amp;oacute;mo avanza el trabajo con los desarrolladores independientes?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;- Para m&amp;iacute;, personalmente, es uno de los proyectos m&amp;aacute;s interesantes&lt;strong&gt;. Podemos hablar de la arquitectura o la potencia de una consola, pero el &amp;eacute;xito tiene que ver 100% con el contenido.&lt;/strong&gt;
 &amp;nbsp;Ya llevamos tres a&amp;ntilde;os trabajando con cerca de 100 desarrolladores en 
Latinoam&amp;eacute;rica en el desarrollo tanto para Play 4 como para Play 3 y PS 
Vita. Ya tenemos los primeros resultados. Mi sue&amp;ntilde;o es estar sentado aqu&amp;iacute;
 en un par de a&amp;ntilde;os y tener cerca a desarrolladores argentinos que hayan 
vendido millones de unidades. Y as&amp;iacute; poder demostrar la calidad que 
existe en la&amp;nbsp;regi&amp;oacute;n. &lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;&lt;br /&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;', '0', 't');
INSERT INTO "public"."article" VALUES ('5', '1', 'PlayStation 4, poderosa y social', '&lt;strong&gt;"Cada gamer es parte de la&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;PlayStation 4&lt;/strong&gt;", asegur&amp;oacute; Mark Stanley, jefe de producto para la regi&amp;oacute;n, en di&amp;aacute;logo con &lt;strong&gt;&lt;em&gt;Infobae&lt;/em&gt;&lt;/strong&gt;. Destac&amp;oacute; &lt;strong&gt;el rol de los&amp;nbsp;jugadores latinomericanos y el de los desarrolladores&lt;/strong&gt;', '&lt;div&gt;&lt;p&gt;"&lt;strong&gt;El &amp;eacute;xito de una consola tiene que ver 100% con el contenido"&lt;/strong&gt;, enfatiz&amp;oacute;&amp;nbsp;&lt;strong&gt;Stanley &lt;/strong&gt;&lt;em&gt;a&lt;/em&gt;&lt;strong&gt; &lt;em&gt;Infobae&lt;/em&gt; &lt;/strong&gt;tras&amp;nbsp;su paso por&amp;nbsp;&lt;a href="http://www.infobae.com/2013/11/18/1524705-playstation-4-es-oficial-la-argentina"&gt;Argentina para la presentaci&amp;oacute;n de la nueva Playstation&lt;/a&gt; de Sony, a la venta en la regi&amp;oacute;n el 29 de noviembre.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;&lt;em&gt;Describi&amp;oacute; a la Play 4 como poderosa y social. &amp;iquest;Qu&amp;eacute; aspectos resalta de la nueva consola? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- Fue un aspecto muy importante el dise&amp;ntilde;o de la&lt;strong&gt; PlayStation 4&lt;/strong&gt;. Por un lado, &lt;strong&gt;la arquitectura no s&amp;oacute;lo es m&amp;aacute;s potente sino simple a la vez, &lt;/strong&gt;al permitir que&lt;strong&gt; &lt;/strong&gt;los desarolladores -sean grandes o chicos- puedan crear juegos f&amp;aacute;cilmente. Es un arquitectura, entonces, basada en PC.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;En
 la parte social, estamos bombardeados de contenido digital todo el d&amp;iacute;a 
desde el smartphone o la televisi&amp;oacute;n. Hay un estigma de que&lt;strong&gt; los gamers
 est&amp;aacute;n en el sotano s&amp;oacute;lo jugando, no hablando con nadie y no est&amp;aacute;n 
conectados, pero nosotros sabemos que ellos son los m&amp;aacute;s socialmente 
conectados en el mundo.&lt;/strong&gt; Y ahora con s&amp;oacute;lo presionar el &lt;strong&gt;boton Share&lt;/strong&gt; pueden compartir un segmento de segundos directamente en las redes sociales, como Facebook.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;&lt;strong&gt;Compartir los trofeos es lo mejor, porque ah&amp;iacute; est&amp;aacute; la competencia real.&lt;/strong&gt;
 Los gamers pueden estar conectados con dispositivos port&amp;aacute;tiles. Bajan 
las aplicaciones de Playstation y pueden saber c&amp;oacute;mo van los trofeos de 
los amigos o de los enemigos. Habr&amp;aacute; m&amp;aacute;s interacci&amp;oacute;n con dispositivos 
m&amp;oacute;viles en el futuro con la PlayStation 4. &lt;strong&gt;Su&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;estructura nos permite tener&amp;nbsp;la flexibilidad de ir creciendo de acuerdo a la necesidad de los jugadores.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;Cu&amp;aacute;l es el futuro de la PlayStation 3?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- &lt;strong&gt;Definitivamente, la PlayStation 3 no muere.&lt;/strong&gt; Seguimos desarrollando todos los hits para la Play 3, como&lt;strong&gt; Gran Turismo 6, &lt;/strong&gt;que se lanza pr&amp;oacute;ximamente en el mes de diciembre&lt;strong&gt;. Es la consola m&amp;aacute;s importante para Latinoam&amp;eacute;rica&lt;/strong&gt;.&lt;strong&gt; Sabemos que tenemos un p&amp;uacute;blico masivo y que no todos tienen acceso a comprar la Play 4.&lt;/strong&gt;&amp;nbsp;Una
 de nuestras metas m&amp;aacute;s grandes es bajar esa barrera de acceso a nuestros
 productos. Entonces, la Play 3 es un mercado crucial en nuestro 
ecosistema.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;div&gt;&lt;p&gt;&lt;em&gt;&lt;strong&gt;- &amp;iquest;Qu&amp;eacute; rol tienen hoy los jugadores latinoamericanos ?&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;Es la regi&amp;oacute;n de mayor crecimiento global para PlayStation&lt;/strong&gt;.
 Representa entre el 30 y el 40 por ciento del negocio de las Am&amp;eacute;ricas. 
Los clientes latinoamericanos tienen gran pasi&amp;oacute;n. Existe mucha 
creatividad tanto en Argentina como en el resto de la regi&amp;oacute;n. &lt;strong&gt;El feedback que recibimos de los gamers lo estamos usando mucho para mejorar nuestros productos y servicios.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;C&amp;oacute;mo avanza el trabajo con los desarrolladores independientes?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;- Para m&amp;iacute;, personalmente, es uno de los proyectos m&amp;aacute;s interesantes&lt;strong&gt;. Podemos hablar de la arquitectura o la potencia de una consola, pero el &amp;eacute;xito tiene que ver 100% con el contenido.&lt;/strong&gt;
 &amp;nbsp;Ya llevamos tres a&amp;ntilde;os trabajando con cerca de 100 desarrolladores en 
Latinoam&amp;eacute;rica en el desarrollo tanto para Play 4 como para Play 3 y PS 
Vita. Ya tenemos los primeros resultados. Mi sue&amp;ntilde;o es estar sentado aqu&amp;iacute;
 en un par de a&amp;ntilde;os y tener cerca a desarrolladores argentinos que hayan 
vendido millones de unidades. Y as&amp;iacute; poder demostrar la calidad que 
existe en la&amp;nbsp;regi&amp;oacute;n. &lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;&lt;br /&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;', '0', 't');
INSERT INTO "public"."article" VALUES ('6', '1', 'PlayStation 4, poderosa y social', '&lt;strong&gt;"Cada gamer es parte de la&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;PlayStation 4&lt;/strong&gt;", asegur&amp;oacute; Mark Stanley, jefe de producto para la regi&amp;oacute;n, en di&amp;aacute;logo con &lt;strong&gt;&lt;em&gt;Infobae&lt;/em&gt;&lt;/strong&gt;. Destac&amp;oacute; &lt;strong&gt;el rol de los&amp;nbsp;jugadores latinomericanos y el de los desarrolladores&lt;/strong&gt;', '&lt;div&gt;&lt;p&gt;"&lt;strong&gt;El &amp;eacute;xito de una consola tiene que ver 100% con el contenido"&lt;/strong&gt;, enfatiz&amp;oacute;&amp;nbsp;&lt;strong&gt;Stanley &lt;/strong&gt;&lt;em&gt;a&lt;/em&gt;&lt;strong&gt; &lt;em&gt;Infobae&lt;/em&gt; &lt;/strong&gt;tras&amp;nbsp;su paso por&amp;nbsp;&lt;a href="http://www.infobae.com/2013/11/18/1524705-playstation-4-es-oficial-la-argentina"&gt;Argentina para la presentaci&amp;oacute;n de la nueva Playstation&lt;/a&gt; de Sony, a la venta en la regi&amp;oacute;n el 29 de noviembre.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;&lt;em&gt;Describi&amp;oacute; a la Play 4 como poderosa y social. &amp;iquest;Qu&amp;eacute; aspectos resalta de la nueva consola? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- Fue un aspecto muy importante el dise&amp;ntilde;o de la&lt;strong&gt; PlayStation 4&lt;/strong&gt;. Por un lado, &lt;strong&gt;la arquitectura no s&amp;oacute;lo es m&amp;aacute;s potente sino simple a la vez, &lt;/strong&gt;al permitir que&lt;strong&gt; &lt;/strong&gt;los desarolladores -sean grandes o chicos- puedan crear juegos f&amp;aacute;cilmente. Es un arquitectura, entonces, basada en PC.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;En
 la parte social, estamos bombardeados de contenido digital todo el d&amp;iacute;a 
desde el smartphone o la televisi&amp;oacute;n. Hay un estigma de que&lt;strong&gt; los gamers
 est&amp;aacute;n en el sotano s&amp;oacute;lo jugando, no hablando con nadie y no est&amp;aacute;n 
conectados, pero nosotros sabemos que ellos son los m&amp;aacute;s socialmente 
conectados en el mundo.&lt;/strong&gt; Y ahora con s&amp;oacute;lo presionar el &lt;strong&gt;boton Share&lt;/strong&gt; pueden compartir un segmento de segundos directamente en las redes sociales, como Facebook.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;&lt;strong&gt;Compartir los trofeos es lo mejor, porque ah&amp;iacute; est&amp;aacute; la competencia real.&lt;/strong&gt;
 Los gamers pueden estar conectados con dispositivos port&amp;aacute;tiles. Bajan 
las aplicaciones de Playstation y pueden saber c&amp;oacute;mo van los trofeos de 
los amigos o de los enemigos. Habr&amp;aacute; m&amp;aacute;s interacci&amp;oacute;n con dispositivos 
m&amp;oacute;viles en el futuro con la PlayStation 4. &lt;strong&gt;Su&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;estructura nos permite tener&amp;nbsp;la flexibilidad de ir creciendo de acuerdo a la necesidad de los jugadores.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;Cu&amp;aacute;l es el futuro de la PlayStation 3?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- &lt;strong&gt;Definitivamente, la PlayStation 3 no muere.&lt;/strong&gt; Seguimos desarrollando todos los hits para la Play 3, como&lt;strong&gt; Gran Turismo 6, &lt;/strong&gt;que se lanza pr&amp;oacute;ximamente en el mes de diciembre&lt;strong&gt;. Es la consola m&amp;aacute;s importante para Latinoam&amp;eacute;rica&lt;/strong&gt;.&lt;strong&gt; Sabemos que tenemos un p&amp;uacute;blico masivo y que no todos tienen acceso a comprar la Play 4.&lt;/strong&gt;&amp;nbsp;Una
 de nuestras metas m&amp;aacute;s grandes es bajar esa barrera de acceso a nuestros
 productos. Entonces, la Play 3 es un mercado crucial en nuestro 
ecosistema.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;div&gt;&lt;p&gt;&lt;em&gt;&lt;strong&gt;- &amp;iquest;Qu&amp;eacute; rol tienen hoy los jugadores latinoamericanos ?&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;Es la regi&amp;oacute;n de mayor crecimiento global para PlayStation&lt;/strong&gt;.
 Representa entre el 30 y el 40 por ciento del negocio de las Am&amp;eacute;ricas. 
Los clientes latinoamericanos tienen gran pasi&amp;oacute;n. Existe mucha 
creatividad tanto en Argentina como en el resto de la regi&amp;oacute;n. &lt;strong&gt;El feedback que recibimos de los gamers lo estamos usando mucho para mejorar nuestros productos y servicios.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;C&amp;oacute;mo avanza el trabajo con los desarrolladores independientes?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;- Para m&amp;iacute;, personalmente, es uno de los proyectos m&amp;aacute;s interesantes&lt;strong&gt;. Podemos hablar de la arquitectura o la potencia de una consola, pero el &amp;eacute;xito tiene que ver 100% con el contenido.&lt;/strong&gt;
 &amp;nbsp;Ya llevamos tres a&amp;ntilde;os trabajando con cerca de 100 desarrolladores en 
Latinoam&amp;eacute;rica en el desarrollo tanto para Play 4 como para Play 3 y PS 
Vita. Ya tenemos los primeros resultados. Mi sue&amp;ntilde;o es estar sentado aqu&amp;iacute;
 en un par de a&amp;ntilde;os y tener cerca a desarrolladores argentinos que hayan 
vendido millones de unidades. Y as&amp;iacute; poder demostrar la calidad que 
existe en la&amp;nbsp;regi&amp;oacute;n. &lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;&lt;br /&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;', '0', 't');
INSERT INTO "public"."article" VALUES ('7', '1', 'PlayStation 4, poderosa y social', '&lt;strong&gt;"Cada gamer es parte de la&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;PlayStation 4&lt;/strong&gt;", asegur&amp;oacute; Mark Stanley, jefe de producto para la regi&amp;oacute;n, en di&amp;aacute;logo con &lt;strong&gt;&lt;em&gt;Infobae&lt;/em&gt;&lt;/strong&gt;. Destac&amp;oacute; &lt;strong&gt;el rol de los&amp;nbsp;jugadores latinomericanos y el de los desarrolladores&lt;/strong&gt;', '&lt;div&gt;&lt;p&gt;"&lt;strong&gt;El &amp;eacute;xito de una consola tiene que ver 100% con el contenido"&lt;/strong&gt;, enfatiz&amp;oacute;&amp;nbsp;&lt;strong&gt;Stanley &lt;/strong&gt;&lt;em&gt;a&lt;/em&gt;&lt;strong&gt; &lt;em&gt;Infobae&lt;/em&gt; &lt;/strong&gt;tras&amp;nbsp;su paso por&amp;nbsp;&lt;a href="http://www.infobae.com/2013/11/18/1524705-playstation-4-es-oficial-la-argentina"&gt;Argentina para la presentaci&amp;oacute;n de la nueva Playstation&lt;/a&gt; de Sony, a la venta en la regi&amp;oacute;n el 29 de noviembre.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;&lt;em&gt;Describi&amp;oacute; a la Play 4 como poderosa y social. &amp;iquest;Qu&amp;eacute; aspectos resalta de la nueva consola? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- Fue un aspecto muy importante el dise&amp;ntilde;o de la&lt;strong&gt; PlayStation 4&lt;/strong&gt;. Por un lado, &lt;strong&gt;la arquitectura no s&amp;oacute;lo es m&amp;aacute;s potente sino simple a la vez, &lt;/strong&gt;al permitir que&lt;strong&gt; &lt;/strong&gt;los desarolladores -sean grandes o chicos- puedan crear juegos f&amp;aacute;cilmente. Es un arquitectura, entonces, basada en PC.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;En
 la parte social, estamos bombardeados de contenido digital todo el d&amp;iacute;a 
desde el smartphone o la televisi&amp;oacute;n. Hay un estigma de que&lt;strong&gt; los gamers
 est&amp;aacute;n en el sotano s&amp;oacute;lo jugando, no hablando con nadie y no est&amp;aacute;n 
conectados, pero nosotros sabemos que ellos son los m&amp;aacute;s socialmente 
conectados en el mundo.&lt;/strong&gt; Y ahora con s&amp;oacute;lo presionar el &lt;strong&gt;boton Share&lt;/strong&gt; pueden compartir un segmento de segundos directamente en las redes sociales, como Facebook.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;&lt;strong&gt;Compartir los trofeos es lo mejor, porque ah&amp;iacute; est&amp;aacute; la competencia real.&lt;/strong&gt;
 Los gamers pueden estar conectados con dispositivos port&amp;aacute;tiles. Bajan 
las aplicaciones de Playstation y pueden saber c&amp;oacute;mo van los trofeos de 
los amigos o de los enemigos. Habr&amp;aacute; m&amp;aacute;s interacci&amp;oacute;n con dispositivos 
m&amp;oacute;viles en el futuro con la PlayStation 4. &lt;strong&gt;Su&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;estructura nos permite tener&amp;nbsp;la flexibilidad de ir creciendo de acuerdo a la necesidad de los jugadores.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;Cu&amp;aacute;l es el futuro de la PlayStation 3?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- &lt;strong&gt;Definitivamente, la PlayStation 3 no muere.&lt;/strong&gt; Seguimos desarrollando todos los hits para la Play 3, como&lt;strong&gt; Gran Turismo 6, &lt;/strong&gt;que se lanza pr&amp;oacute;ximamente en el mes de diciembre&lt;strong&gt;. Es la consola m&amp;aacute;s importante para Latinoam&amp;eacute;rica&lt;/strong&gt;.&lt;strong&gt; Sabemos que tenemos un p&amp;uacute;blico masivo y que no todos tienen acceso a comprar la Play 4.&lt;/strong&gt;&amp;nbsp;Una
 de nuestras metas m&amp;aacute;s grandes es bajar esa barrera de acceso a nuestros
 productos. Entonces, la Play 3 es un mercado crucial en nuestro 
ecosistema.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;div&gt;&lt;p&gt;&lt;em&gt;&lt;strong&gt;- &amp;iquest;Qu&amp;eacute; rol tienen hoy los jugadores latinoamericanos ?&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;Es la regi&amp;oacute;n de mayor crecimiento global para PlayStation&lt;/strong&gt;.
 Representa entre el 30 y el 40 por ciento del negocio de las Am&amp;eacute;ricas. 
Los clientes latinoamericanos tienen gran pasi&amp;oacute;n. Existe mucha 
creatividad tanto en Argentina como en el resto de la regi&amp;oacute;n. &lt;strong&gt;El feedback que recibimos de los gamers lo estamos usando mucho para mejorar nuestros productos y servicios.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;C&amp;oacute;mo avanza el trabajo con los desarrolladores independientes?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;- Para m&amp;iacute;, personalmente, es uno de los proyectos m&amp;aacute;s interesantes&lt;strong&gt;. Podemos hablar de la arquitectura o la potencia de una consola, pero el &amp;eacute;xito tiene que ver 100% con el contenido.&lt;/strong&gt;
 &amp;nbsp;Ya llevamos tres a&amp;ntilde;os trabajando con cerca de 100 desarrolladores en 
Latinoam&amp;eacute;rica en el desarrollo tanto para Play 4 como para Play 3 y PS 
Vita. Ya tenemos los primeros resultados. Mi sue&amp;ntilde;o es estar sentado aqu&amp;iacute;
 en un par de a&amp;ntilde;os y tener cerca a desarrolladores argentinos que hayan 
vendido millones de unidades. Y as&amp;iacute; poder demostrar la calidad que 
existe en la&amp;nbsp;regi&amp;oacute;n. &lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;&lt;br /&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;', '0', 't');
INSERT INTO "public"."article" VALUES ('8', '1', 'PlayStation 4, poderosa y social', '&lt;strong&gt;"Cada gamer es parte de la&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;PlayStation 4&lt;/strong&gt;", asegur&amp;oacute; Mark Stanley, jefe de producto para la regi&amp;oacute;n, en di&amp;aacute;logo con &lt;strong&gt;&lt;em&gt;Infobae&lt;/em&gt;&lt;/strong&gt;. Destac&amp;oacute; &lt;strong&gt;el rol de los&amp;nbsp;jugadores latinomericanos y el de los desarrolladores&lt;/strong&gt;', '&lt;div&gt;&lt;p&gt;"&lt;strong&gt;El &amp;eacute;xito de una consola tiene que ver 100% con el contenido"&lt;/strong&gt;, enfatiz&amp;oacute;&amp;nbsp;&lt;strong&gt;Stanley &lt;/strong&gt;&lt;em&gt;a&lt;/em&gt;&lt;strong&gt; &lt;em&gt;Infobae&lt;/em&gt; &lt;/strong&gt;tras&amp;nbsp;su paso por&amp;nbsp;&lt;a href="http://www.infobae.com/2013/11/18/1524705-playstation-4-es-oficial-la-argentina"&gt;Argentina para la presentaci&amp;oacute;n de la nueva Playstation&lt;/a&gt; de Sony, a la venta en la regi&amp;oacute;n el 29 de noviembre.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;&lt;em&gt;Describi&amp;oacute; a la Play 4 como poderosa y social. &amp;iquest;Qu&amp;eacute; aspectos resalta de la nueva consola? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- Fue un aspecto muy importante el dise&amp;ntilde;o de la&lt;strong&gt; PlayStation 4&lt;/strong&gt;. Por un lado, &lt;strong&gt;la arquitectura no s&amp;oacute;lo es m&amp;aacute;s potente sino simple a la vez, &lt;/strong&gt;al permitir que&lt;strong&gt; &lt;/strong&gt;los desarolladores -sean grandes o chicos- puedan crear juegos f&amp;aacute;cilmente. Es un arquitectura, entonces, basada en PC.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;En
 la parte social, estamos bombardeados de contenido digital todo el d&amp;iacute;a 
desde el smartphone o la televisi&amp;oacute;n. Hay un estigma de que&lt;strong&gt; los gamers
 est&amp;aacute;n en el sotano s&amp;oacute;lo jugando, no hablando con nadie y no est&amp;aacute;n 
conectados, pero nosotros sabemos que ellos son los m&amp;aacute;s socialmente 
conectados en el mundo.&lt;/strong&gt; Y ahora con s&amp;oacute;lo presionar el &lt;strong&gt;boton Share&lt;/strong&gt; pueden compartir un segmento de segundos directamente en las redes sociales, como Facebook.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;&lt;strong&gt;Compartir los trofeos es lo mejor, porque ah&amp;iacute; est&amp;aacute; la competencia real.&lt;/strong&gt;
 Los gamers pueden estar conectados con dispositivos port&amp;aacute;tiles. Bajan 
las aplicaciones de Playstation y pueden saber c&amp;oacute;mo van los trofeos de 
los amigos o de los enemigos. Habr&amp;aacute; m&amp;aacute;s interacci&amp;oacute;n con dispositivos 
m&amp;oacute;viles en el futuro con la PlayStation 4. &lt;strong&gt;Su&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;estructura nos permite tener&amp;nbsp;la flexibilidad de ir creciendo de acuerdo a la necesidad de los jugadores.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;Cu&amp;aacute;l es el futuro de la PlayStation 3?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- &lt;strong&gt;Definitivamente, la PlayStation 3 no muere.&lt;/strong&gt; Seguimos desarrollando todos los hits para la Play 3, como&lt;strong&gt; Gran Turismo 6, &lt;/strong&gt;que se lanza pr&amp;oacute;ximamente en el mes de diciembre&lt;strong&gt;. Es la consola m&amp;aacute;s importante para Latinoam&amp;eacute;rica&lt;/strong&gt;.&lt;strong&gt; Sabemos que tenemos un p&amp;uacute;blico masivo y que no todos tienen acceso a comprar la Play 4.&lt;/strong&gt;&amp;nbsp;Una
 de nuestras metas m&amp;aacute;s grandes es bajar esa barrera de acceso a nuestros
 productos. Entonces, la Play 3 es un mercado crucial en nuestro 
ecosistema.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;div&gt;&lt;p&gt;&lt;em&gt;&lt;strong&gt;- &amp;iquest;Qu&amp;eacute; rol tienen hoy los jugadores latinoamericanos ?&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;Es la regi&amp;oacute;n de mayor crecimiento global para PlayStation&lt;/strong&gt;.
 Representa entre el 30 y el 40 por ciento del negocio de las Am&amp;eacute;ricas. 
Los clientes latinoamericanos tienen gran pasi&amp;oacute;n. Existe mucha 
creatividad tanto en Argentina como en el resto de la regi&amp;oacute;n. &lt;strong&gt;El feedback que recibimos de los gamers lo estamos usando mucho para mejorar nuestros productos y servicios.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;C&amp;oacute;mo avanza el trabajo con los desarrolladores independientes?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;- Para m&amp;iacute;, personalmente, es uno de los proyectos m&amp;aacute;s interesantes&lt;strong&gt;. Podemos hablar de la arquitectura o la potencia de una consola, pero el &amp;eacute;xito tiene que ver 100% con el contenido.&lt;/strong&gt;
 &amp;nbsp;Ya llevamos tres a&amp;ntilde;os trabajando con cerca de 100 desarrolladores en 
Latinoam&amp;eacute;rica en el desarrollo tanto para Play 4 como para Play 3 y PS 
Vita. Ya tenemos los primeros resultados. Mi sue&amp;ntilde;o es estar sentado aqu&amp;iacute;
 en un par de a&amp;ntilde;os y tener cerca a desarrolladores argentinos que hayan 
vendido millones de unidades. Y as&amp;iacute; poder demostrar la calidad que 
existe en la&amp;nbsp;regi&amp;oacute;n. &lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;&lt;br /&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;', '1', 't');
INSERT INTO "public"."article" VALUES ('9', '1', 'PlayStation 4, poderosa y social', '&lt;strong&gt;"Cada gamer es parte de la&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;PlayStation 4&lt;/strong&gt;", asegur&amp;oacute; Mark Stanley, jefe de producto para la regi&amp;oacute;n, en di&amp;aacute;logo con &lt;strong&gt;&lt;em&gt;Infobae&lt;/em&gt;&lt;/strong&gt;. Destac&amp;oacute; &lt;strong&gt;el rol de los&amp;nbsp;jugadores latinomericanos y el de los desarrolladores&lt;/strong&gt;', '&lt;div&gt;&lt;p&gt;"&lt;strong&gt;El &amp;eacute;xito de una consola tiene que ver 100% con el contenido"&lt;/strong&gt;, enfatiz&amp;oacute;&amp;nbsp;&lt;strong&gt;Stanley &lt;/strong&gt;&lt;em&gt;a&lt;/em&gt;&lt;strong&gt; &lt;em&gt;Infobae&lt;/em&gt; &lt;/strong&gt;tras&amp;nbsp;su paso por&amp;nbsp;&lt;a href="http://www.infobae.com/2013/11/18/1524705-playstation-4-es-oficial-la-argentina"&gt;Argentina para la presentaci&amp;oacute;n de la nueva Playstation&lt;/a&gt; de Sony, a la venta en la regi&amp;oacute;n el 29 de noviembre.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;&lt;em&gt;Describi&amp;oacute; a la Play 4 como poderosa y social. &amp;iquest;Qu&amp;eacute; aspectos resalta de la nueva consola? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- Fue un aspecto muy importante el dise&amp;ntilde;o de la&lt;strong&gt; PlayStation 4&lt;/strong&gt;. Por un lado, &lt;strong&gt;la arquitectura no s&amp;oacute;lo es m&amp;aacute;s potente sino simple a la vez, &lt;/strong&gt;al permitir que&lt;strong&gt; &lt;/strong&gt;los desarolladores -sean grandes o chicos- puedan crear juegos f&amp;aacute;cilmente. Es un arquitectura, entonces, basada en PC.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;En
 la parte social, estamos bombardeados de contenido digital todo el d&amp;iacute;a 
desde el smartphone o la televisi&amp;oacute;n. Hay un estigma de que&lt;strong&gt; los gamers
 est&amp;aacute;n en el sotano s&amp;oacute;lo jugando, no hablando con nadie y no est&amp;aacute;n 
conectados, pero nosotros sabemos que ellos son los m&amp;aacute;s socialmente 
conectados en el mundo.&lt;/strong&gt; Y ahora con s&amp;oacute;lo presionar el &lt;strong&gt;boton Share&lt;/strong&gt; pueden compartir un segmento de segundos directamente en las redes sociales, como Facebook.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;&lt;strong&gt;Compartir los trofeos es lo mejor, porque ah&amp;iacute; est&amp;aacute; la competencia real.&lt;/strong&gt;
 Los gamers pueden estar conectados con dispositivos port&amp;aacute;tiles. Bajan 
las aplicaciones de Playstation y pueden saber c&amp;oacute;mo van los trofeos de 
los amigos o de los enemigos. Habr&amp;aacute; m&amp;aacute;s interacci&amp;oacute;n con dispositivos 
m&amp;oacute;viles en el futuro con la PlayStation 4. &lt;strong&gt;Su&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;estructura nos permite tener&amp;nbsp;la flexibilidad de ir creciendo de acuerdo a la necesidad de los jugadores.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;Cu&amp;aacute;l es el futuro de la PlayStation 3?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- &lt;strong&gt;Definitivamente, la PlayStation 3 no muere.&lt;/strong&gt; Seguimos desarrollando todos los hits para la Play 3, como&lt;strong&gt; Gran Turismo 6, &lt;/strong&gt;que se lanza pr&amp;oacute;ximamente en el mes de diciembre&lt;strong&gt;. Es la consola m&amp;aacute;s importante para Latinoam&amp;eacute;rica&lt;/strong&gt;.&lt;strong&gt; Sabemos que tenemos un p&amp;uacute;blico masivo y que no todos tienen acceso a comprar la Play 4.&lt;/strong&gt;&amp;nbsp;Una
 de nuestras metas m&amp;aacute;s grandes es bajar esa barrera de acceso a nuestros
 productos. Entonces, la Play 3 es un mercado crucial en nuestro 
ecosistema.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;div&gt;&lt;p&gt;&lt;em&gt;&lt;strong&gt;- &amp;iquest;Qu&amp;eacute; rol tienen hoy los jugadores latinoamericanos ?&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;Es la regi&amp;oacute;n de mayor crecimiento global para PlayStation&lt;/strong&gt;.
 Representa entre el 30 y el 40 por ciento del negocio de las Am&amp;eacute;ricas. 
Los clientes latinoamericanos tienen gran pasi&amp;oacute;n. Existe mucha 
creatividad tanto en Argentina como en el resto de la regi&amp;oacute;n. &lt;strong&gt;El feedback que recibimos de los gamers lo estamos usando mucho para mejorar nuestros productos y servicios.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;C&amp;oacute;mo avanza el trabajo con los desarrolladores independientes?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;- Para m&amp;iacute;, personalmente, es uno de los proyectos m&amp;aacute;s interesantes&lt;strong&gt;. Podemos hablar de la arquitectura o la potencia de una consola, pero el &amp;eacute;xito tiene que ver 100% con el contenido.&lt;/strong&gt;
 &amp;nbsp;Ya llevamos tres a&amp;ntilde;os trabajando con cerca de 100 desarrolladores en 
Latinoam&amp;eacute;rica en el desarrollo tanto para Play 4 como para Play 3 y PS 
Vita. Ya tenemos los primeros resultados. Mi sue&amp;ntilde;o es estar sentado aqu&amp;iacute;
 en un par de a&amp;ntilde;os y tener cerca a desarrolladores argentinos que hayan 
vendido millones de unidades. Y as&amp;iacute; poder demostrar la calidad que 
existe en la&amp;nbsp;regi&amp;oacute;n. &lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;&lt;br /&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;', '0', 't');
INSERT INTO "public"."article" VALUES ('10', '1', 'PlayStation 4, poderosa y social', '&lt;strong&gt;"Cada gamer es parte de la&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;PlayStation 4&lt;/strong&gt;", asegur&amp;oacute; Mark Stanley, jefe de producto para la regi&amp;oacute;n, en di&amp;aacute;logo con &lt;strong&gt;&lt;em&gt;Infobae&lt;/em&gt;&lt;/strong&gt;. Destac&amp;oacute; &lt;strong&gt;el rol de los&amp;nbsp;jugadores latinomericanos y el de los desarrolladores&lt;/strong&gt;', '&lt;div&gt;&lt;p&gt;"&lt;strong&gt;El &amp;eacute;xito de una consola tiene que ver 100% con el contenido"&lt;/strong&gt;, enfatiz&amp;oacute;&amp;nbsp;&lt;strong&gt;Stanley &lt;/strong&gt;&lt;em&gt;a&lt;/em&gt;&lt;strong&gt; &lt;em&gt;Infobae&lt;/em&gt; &lt;/strong&gt;tras&amp;nbsp;su paso por&amp;nbsp;&lt;a href="http://www.infobae.com/2013/11/18/1524705-playstation-4-es-oficial-la-argentina"&gt;Argentina para la presentaci&amp;oacute;n de la nueva Playstation&lt;/a&gt; de Sony, a la venta en la regi&amp;oacute;n el 29 de noviembre.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;&lt;em&gt;Describi&amp;oacute; a la Play 4 como poderosa y social. &amp;iquest;Qu&amp;eacute; aspectos resalta de la nueva consola? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- Fue un aspecto muy importante el dise&amp;ntilde;o de la&lt;strong&gt; PlayStation 4&lt;/strong&gt;. Por un lado, &lt;strong&gt;la arquitectura no s&amp;oacute;lo es m&amp;aacute;s potente sino simple a la vez, &lt;/strong&gt;al permitir que&lt;strong&gt; &lt;/strong&gt;los desarolladores -sean grandes o chicos- puedan crear juegos f&amp;aacute;cilmente. Es un arquitectura, entonces, basada en PC.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;En
 la parte social, estamos bombardeados de contenido digital todo el d&amp;iacute;a 
desde el smartphone o la televisi&amp;oacute;n. Hay un estigma de que&lt;strong&gt; los gamers
 est&amp;aacute;n en el sotano s&amp;oacute;lo jugando, no hablando con nadie y no est&amp;aacute;n 
conectados, pero nosotros sabemos que ellos son los m&amp;aacute;s socialmente 
conectados en el mundo.&lt;/strong&gt; Y ahora con s&amp;oacute;lo presionar el &lt;strong&gt;boton Share&lt;/strong&gt; pueden compartir un segmento de segundos directamente en las redes sociales, como Facebook.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;&lt;strong&gt;Compartir los trofeos es lo mejor, porque ah&amp;iacute; est&amp;aacute; la competencia real.&lt;/strong&gt;
 Los gamers pueden estar conectados con dispositivos port&amp;aacute;tiles. Bajan 
las aplicaciones de Playstation y pueden saber c&amp;oacute;mo van los trofeos de 
los amigos o de los enemigos. Habr&amp;aacute; m&amp;aacute;s interacci&amp;oacute;n con dispositivos 
m&amp;oacute;viles en el futuro con la PlayStation 4. &lt;strong&gt;Su&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;estructura nos permite tener&amp;nbsp;la flexibilidad de ir creciendo de acuerdo a la necesidad de los jugadores.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;Cu&amp;aacute;l es el futuro de la PlayStation 3?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- &lt;strong&gt;Definitivamente, la PlayStation 3 no muere.&lt;/strong&gt; Seguimos desarrollando todos los hits para la Play 3, como&lt;strong&gt; Gran Turismo 6, &lt;/strong&gt;que se lanza pr&amp;oacute;ximamente en el mes de diciembre&lt;strong&gt;. Es la consola m&amp;aacute;s importante para Latinoam&amp;eacute;rica&lt;/strong&gt;.&lt;strong&gt; Sabemos que tenemos un p&amp;uacute;blico masivo y que no todos tienen acceso a comprar la Play 4.&lt;/strong&gt;&amp;nbsp;Una
 de nuestras metas m&amp;aacute;s grandes es bajar esa barrera de acceso a nuestros
 productos. Entonces, la Play 3 es un mercado crucial en nuestro 
ecosistema.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;div&gt;&lt;p&gt;&lt;em&gt;&lt;strong&gt;- &amp;iquest;Qu&amp;eacute; rol tienen hoy los jugadores latinoamericanos ?&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;Es la regi&amp;oacute;n de mayor crecimiento global para PlayStation&lt;/strong&gt;.
 Representa entre el 30 y el 40 por ciento del negocio de las Am&amp;eacute;ricas. 
Los clientes latinoamericanos tienen gran pasi&amp;oacute;n. Existe mucha 
creatividad tanto en Argentina como en el resto de la regi&amp;oacute;n. &lt;strong&gt;El feedback que recibimos de los gamers lo estamos usando mucho para mejorar nuestros productos y servicios.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;C&amp;oacute;mo avanza el trabajo con los desarrolladores independientes?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;- Para m&amp;iacute;, personalmente, es uno de los proyectos m&amp;aacute;s interesantes&lt;strong&gt;. Podemos hablar de la arquitectura o la potencia de una consola, pero el &amp;eacute;xito tiene que ver 100% con el contenido.&lt;/strong&gt;
 &amp;nbsp;Ya llevamos tres a&amp;ntilde;os trabajando con cerca de 100 desarrolladores en 
Latinoam&amp;eacute;rica en el desarrollo tanto para Play 4 como para Play 3 y PS 
Vita. Ya tenemos los primeros resultados. Mi sue&amp;ntilde;o es estar sentado aqu&amp;iacute;
 en un par de a&amp;ntilde;os y tener cerca a desarrolladores argentinos que hayan 
vendido millones de unidades. Y as&amp;iacute; poder demostrar la calidad que 
existe en la&amp;nbsp;regi&amp;oacute;n. &lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;&lt;br /&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;', '0', 't');
INSERT INTO "public"."article" VALUES ('11', '1', 'PlayStation 4, poderosa y social', '&lt;strong&gt;"Cada gamer es parte de la&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;PlayStation 4&lt;/strong&gt;", asegur&amp;oacute; Mark Stanley, jefe de producto para la regi&amp;oacute;n, en di&amp;aacute;logo con &lt;strong&gt;&lt;em&gt;Infobae&lt;/em&gt;&lt;/strong&gt;. Destac&amp;oacute; &lt;strong&gt;el rol de los&amp;nbsp;jugadores latinomericanos y el de los desarrolladores&lt;/strong&gt;', '&lt;div&gt;&lt;p&gt;"&lt;strong&gt;El &amp;eacute;xito de una consola tiene que ver 100% con el contenido"&lt;/strong&gt;, enfatiz&amp;oacute;&amp;nbsp;&lt;strong&gt;Stanley &lt;/strong&gt;&lt;em&gt;a&lt;/em&gt;&lt;strong&gt; &lt;em&gt;Infobae&lt;/em&gt; &lt;/strong&gt;tras&amp;nbsp;su paso por&amp;nbsp;&lt;a href="http://www.infobae.com/2013/11/18/1524705-playstation-4-es-oficial-la-argentina"&gt;Argentina para la presentaci&amp;oacute;n de la nueva Playstation&lt;/a&gt; de Sony, a la venta en la regi&amp;oacute;n el 29 de noviembre.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;&lt;em&gt;Describi&amp;oacute; a la Play 4 como poderosa y social. &amp;iquest;Qu&amp;eacute; aspectos resalta de la nueva consola? &lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- Fue un aspecto muy importante el dise&amp;ntilde;o de la&lt;strong&gt; PlayStation 4&lt;/strong&gt;. Por un lado, &lt;strong&gt;la arquitectura no s&amp;oacute;lo es m&amp;aacute;s potente sino simple a la vez, &lt;/strong&gt;al permitir que&lt;strong&gt; &lt;/strong&gt;los desarolladores -sean grandes o chicos- puedan crear juegos f&amp;aacute;cilmente. Es un arquitectura, entonces, basada en PC.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;En
 la parte social, estamos bombardeados de contenido digital todo el d&amp;iacute;a 
desde el smartphone o la televisi&amp;oacute;n. Hay un estigma de que&lt;strong&gt; los gamers
 est&amp;aacute;n en el sotano s&amp;oacute;lo jugando, no hablando con nadie y no est&amp;aacute;n 
conectados, pero nosotros sabemos que ellos son los m&amp;aacute;s socialmente 
conectados en el mundo.&lt;/strong&gt; Y ahora con s&amp;oacute;lo presionar el &lt;strong&gt;boton Share&lt;/strong&gt; pueden compartir un segmento de segundos directamente en las redes sociales, como Facebook.&amp;nbsp;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;&lt;strong&gt;Compartir los trofeos es lo mejor, porque ah&amp;iacute; est&amp;aacute; la competencia real.&lt;/strong&gt;
 Los gamers pueden estar conectados con dispositivos port&amp;aacute;tiles. Bajan 
las aplicaciones de Playstation y pueden saber c&amp;oacute;mo van los trofeos de 
los amigos o de los enemigos. Habr&amp;aacute; m&amp;aacute;s interacci&amp;oacute;n con dispositivos 
m&amp;oacute;viles en el futuro con la PlayStation 4. &lt;strong&gt;Su&amp;nbsp;&lt;/strong&gt;&lt;strong&gt;estructura nos permite tener&amp;nbsp;la flexibilidad de ir creciendo de acuerdo a la necesidad de los jugadores.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;Cu&amp;aacute;l es el futuro de la PlayStation 3?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;- &lt;strong&gt;Definitivamente, la PlayStation 3 no muere.&lt;/strong&gt; Seguimos desarrollando todos los hits para la Play 3, como&lt;strong&gt; Gran Turismo 6, &lt;/strong&gt;que se lanza pr&amp;oacute;ximamente en el mes de diciembre&lt;strong&gt;. Es la consola m&amp;aacute;s importante para Latinoam&amp;eacute;rica&lt;/strong&gt;.&lt;strong&gt; Sabemos que tenemos un p&amp;uacute;blico masivo y que no todos tienen acceso a comprar la Play 4.&lt;/strong&gt;&amp;nbsp;Una
 de nuestras metas m&amp;aacute;s grandes es bajar esa barrera de acceso a nuestros
 productos. Entonces, la Play 3 es un mercado crucial en nuestro 
ecosistema.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;div&gt;&lt;p&gt;&lt;em&gt;&lt;strong&gt;- &amp;iquest;Qu&amp;eacute; rol tienen hoy los jugadores latinoamericanos ?&lt;/strong&gt;&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p&gt;- &lt;strong&gt;Es la regi&amp;oacute;n de mayor crecimiento global para PlayStation&lt;/strong&gt;.
 Representa entre el 30 y el 40 por ciento del negocio de las Am&amp;eacute;ricas. 
Los clientes latinoamericanos tienen gran pasi&amp;oacute;n. Existe mucha 
creatividad tanto en Argentina como en el resto de la regi&amp;oacute;n. &lt;strong&gt;El feedback que recibimos de los gamers lo estamos usando mucho para mejorar nuestros productos y servicios.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;- &amp;iquest;C&amp;oacute;mo avanza el trabajo con los desarrolladores independientes?&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;- Para m&amp;iacute;, personalmente, es uno de los proyectos m&amp;aacute;s interesantes&lt;strong&gt;. Podemos hablar de la arquitectura o la potencia de una consola, pero el &amp;eacute;xito tiene que ver 100% con el contenido.&lt;/strong&gt;
 &amp;nbsp;Ya llevamos tres a&amp;ntilde;os trabajando con cerca de 100 desarrolladores en 
Latinoam&amp;eacute;rica en el desarrollo tanto para Play 4 como para Play 3 y PS 
Vita. Ya tenemos los primeros resultados. Mi sue&amp;ntilde;o es estar sentado aqu&amp;iacute;
 en un par de a&amp;ntilde;os y tener cerca a desarrolladores argentinos que hayan 
vendido millones de unidades. Y as&amp;iacute; poder demostrar la calidad que 
existe en la&amp;nbsp;regi&amp;oacute;n. &lt;/div&gt;&lt;p&gt;&lt;strong&gt;&lt;em&gt;&lt;br /&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;', '3', 't');
INSERT INTO "public"."article" VALUES ('12', '4', 'test 3', 'TEST Editado&amp;lt;br /&amp;gt;', 'Test Editado&amp;lt;br /&amp;gt;', '3', 'f');
INSERT INTO "public"."article" VALUES ('13', '1', 'test', 'TEST', 'TEST', '1', 'f');
INSERT INTO "public"."article" VALUES ('14', '4', 'BH-121, el mini reproductor de música Bluetooth de Nokia ', 'El equipo de potentes colores se sincroniza con m&amp;oacute;viles &lt;strong&gt;Lumia&lt;/strong&gt;. Tiene un &lt;strong&gt;dise&amp;ntilde;o similar &lt;/strong&gt;&lt;strong&gt;al iPod Shuffle&lt;/strong&gt;', '&lt;p&gt;El accesorio&lt;strong&gt; &lt;/strong&gt;mide s&amp;oacute;lo 39 x 39 x 12 mm y gracias a su clip se puede colocar en cualquier parte de la ropa. &lt;/p&gt;&lt;p&gt;&lt;strong&gt;Est&amp;aacute; disponibles en azul, amarillo, negro y rojo.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;El dispositivo se comunica con el tel&amp;eacute;fono de modo que se puede escuchar el audio que sale de &amp;eacute;ste a trav&amp;eacute;s de los headphones conectados al dispositivo en cuesti&amp;oacute;n.&lt;/p&gt;&lt;p&gt;Seg&amp;uacute;n apunta Nokia,&amp;nbsp;&amp;nbsp;s&amp;oacute;lo basta con activar la opci&amp;oacute;n de tecnolog&amp;iacute;a &lt;strong&gt;NFC&lt;/strong&gt; en el tel&amp;eacute;fono y "chocar" el gadget contra el m&amp;oacute;vil hasta que se conecte. Para dispositivos sin este sistema,&amp;nbsp;&amp;nbsp;se podr&amp;aacute; sincronizar a trav&amp;eacute;s de &lt;strong&gt;Bluetooth&lt;/strong&gt;. &lt;/p&gt;&lt;p&gt;Act&amp;uacute;a como controlador de las&lt;strong&gt; pistas musicales de tu tel&amp;eacute;fono&lt;/strong&gt; (permitiendo cambiar entre ellas y nivelar el volumen) al tiempo que facilita la &lt;strong&gt;recepci&amp;oacute;n de llamadas&lt;/strong&gt; gracias al bot&amp;oacute;n central en su cuerpo, que hace f&amp;aacute;cil el acceso.&lt;/p&gt;&lt;p&gt;Viene acompa&amp;ntilde;ado de auriculares&lt;strong&gt; &lt;/strong&gt;modelo in-ear WH-208, que aislan&amp;nbsp;&amp;nbsp;del ruido exterior. Posee un plug estandar de &lt;strong&gt;audio&lt;/strong&gt; para que el usuario pueda introducir el aud&amp;iacute;fono de su preferencia y a&amp;uacute;n as&amp;iacute; usar los controles del BH-121.&lt;/p&gt;&lt;p&gt;Tiene un indicador LED que apunta el nivel de bater&amp;iacute;a, que se recarga&lt;strong&gt; v&amp;iacute;a microUSB.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Es compatible con Nokia Lumia 1520, Lumia 1320, Lumia 1020, Lumia 925, 625, 525, y the Asha 503 y Asha 501, entre otros, se&amp;ntilde;ala Nokia en el &lt;a href="http://conversations.nokia.com/2013/12/09/new-bh-121-cool-colourful-square/"&gt;comunicado oficial&lt;/a&gt;. Se vender&amp;aacute; desde este mes a &lt;strong&gt;55 d&amp;oacute;lares. &lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '2', 'f');
INSERT INTO "public"."article" VALUES ('15', '5', 'Las alfombras del futuro darán información con luces LED', 'Se espera que el pr&amp;oacute;ximo a&amp;ntilde;o las empresas&lt;strong&gt; Philips y Desso&lt;/strong&gt; estrenen el &lt;strong&gt;primer modelo retroiluminado,&lt;/strong&gt; que ser&amp;aacute; utilizado dentro de los &lt;strong&gt;aeropuertos o en casos de emergencia.&lt;/strong&gt;', '&lt;p&gt;Desde hace algunos a&amp;ntilde;os, varias aerol&amp;iacute;neas cuentan con un sistema que, en caso de ser necesario evacuar uno de sus aviones, &lt;strong&gt;ilumina un camino en el suelo&lt;/strong&gt; indicando la ruta hacia las salidas de emergencia.&lt;/p&gt;&lt;p&gt;Pero la tecnolog&amp;iacute;a avanza a pasos agigantados, y en este sentido, la &amp;uacute;ltima novedad es la de un desarrollo &lt;strong&gt;holand&amp;eacute;s de una alfombra con una capa de &lt;a href="http://www.tecnologiayeducacion.com/%C2%BFque-es-luz-led/" target="_new"&gt;luces LED&lt;/a&gt; debajo,&lt;/strong&gt; que permitir&amp;aacute; entregar mensajes en el suelo.&lt;/p&gt;&lt;p&gt;El producto, que &lt;strong&gt;a&amp;uacute;n no tiene nombre,&lt;/strong&gt; es fruto de una &lt;strong&gt;alianza de Philips con &lt;a href="http://www.desso.com/" target="_new"&gt;Desso&lt;/a&gt;, un fabricante de alfombras.&lt;/strong&gt; El objetivo es insertar una capa de LEDs bajo una alfombra transmisora de luz para que se puedan mostrar distintos patrones de luz, formando letras o figuras seg&amp;uacute;n sea necesario.&lt;/p&gt;&lt;p&gt;La implementaci&amp;oacute;n de este concepto servir&amp;iacute;a para &lt;strong&gt;reemplazar las se&amp;ntilde;ales de seguridad en oficinas y aeronaves,&lt;/strong&gt; encendi&amp;eacute;ndose de forma autom&amp;aacute;tica en situaciones de emergencia.&lt;/p&gt;&lt;p&gt;Tambi&amp;eacute;n ser&amp;iacute;a &amp;uacute;til en &lt;strong&gt;aeropuertos,&lt;/strong&gt; donde podr&amp;iacute;a indicarle a los pasajeros hacia d&amp;oacute;nde ir para tr&amp;aacute;mites de inmigraci&amp;oacute;n, retiro de maletas o el trasbordo hacia otros vuelos. Una de las ventajas de este sistema frente al actual es que &lt;strong&gt;liberar&amp;iacute;a espacio f&amp;iacute;sico y tambi&amp;eacute;n, al ser luz, capturar&amp;iacute;a la atenci&amp;oacute;n&lt;/strong&gt; de las personas de forma m&amp;aacute;s efectiva, seg&amp;uacute;n publica el diario &lt;em&gt;&lt;a href="http://www.emol.com/" target="_new"&gt;El Mercurio&lt;/a&gt;&lt;/em&gt;.&lt;/p&gt;Los especialistas aguardan que el proyecto sea probado en &lt;strong&gt;edificios de Europa, Medio Oriente y Asia durante el pr&amp;oacute;ximo a&amp;ntilde;o,&lt;/strong&gt; cuando tambi&amp;eacute;n se anunciar&amp;aacute; el nombre comercial del novedoso implemento. ', '156', 'f');
INSERT INTO "public"."article" VALUES ('16', '2', 'Galaxy S 5', 'El &lt;strong&gt;Galaxy S5,&lt;/strong&gt; que se espera comenzar a vender en el &lt;strong&gt;primer trimestre de 2014,&lt;/strong&gt; apostar&amp;aacute; al material de alta gama para &lt;strong&gt;aplacar las cr&amp;iacute;ticas&lt;/strong&gt; por su presunto &lt;strong&gt;abuso del pl&amp;aacute;stico&lt;/strong&gt; en sus productos', '&lt;p&gt;Seg&amp;uacute;n la compa&amp;ntilde;&amp;iacute;a Cnet se fabricar&amp;aacute;n hasta &lt;strong&gt;30 millones&lt;/strong&gt; &lt;strong&gt;de Samsung Galaxy S5&lt;/strong&gt;, de piezas met&amp;aacute;licas, para fabricar el nuevo tel&amp;eacute;fono inteligente. Pero &amp;eacute;sta no ser&amp;aacute; la &amp;uacute;nica novedad, ya que no habr&amp;aacute; un solo S5, sino &lt;strong&gt;dos: uno de metal y otro de pl&amp;aacute;stico, exactamente igual&lt;/strong&gt; que el iPhone 5S y 5C.&lt;/p&gt;&lt;p&gt;Se prev&amp;eacute; que el smartphone incorpore adem&amp;aacute;s el sistema operativo &lt;a href="http://www.cnet.com/es/google-android-4-4-kitkat/" target="_new"&gt;Android KitKat&lt;/a&gt;, un procesador de 64 bits, 3 GigaBytes de memoria RAM y una c&amp;aacute;mara de 16 megap&amp;iacute;xeles.&lt;/p&gt;&lt;p&gt;El &lt;strong&gt;pl&amp;aacute;stico es m&amp;aacute;s barato, liviano y brinda una mayor durabilidad&lt;/strong&gt; y la compa&amp;ntilde;&amp;iacute;a surcoreana utiliza este componente en la &lt;strong&gt;mayor&amp;iacute;a&lt;/strong&gt; de sus tel&amp;eacute;fonos inteligentes. Algo que ha generado &lt;strong&gt;pol&amp;eacute;mica&lt;/strong&gt; en los foros, porque algunos usuarios lo prefieren pero otros creen que es de &lt;strong&gt;peor calidad que el aluminio y ofrece peor aspecto&lt;/strong&gt; que otros rivales, como por ejemplo el iPhone de Apple.&lt;/p&gt;&lt;p&gt;Por su parte, el vicepresidente de la divisi&amp;oacute;n de m&amp;oacute;viles de &lt;a class="agrupador" href="http://www.infobae.com/temas/samsung-a75" rel="75"&gt;Samsung&lt;/a&gt;, Y. H. Lee, explic&amp;oacute; que el pl&amp;aacute;stico se usa por ser un material &lt;strong&gt;r&amp;aacute;pido y eficiente.&lt;/strong&gt; Con este material, agreg&amp;oacute; el directivo, se pueden ensamblar &lt;strong&gt;sin problemas tiradas de tel&amp;eacute;fonos muy grandes y por un costo m&amp;iacute;nimo,&lt;/strong&gt; lo que facilita que el producto pueda salir al mercado a un precio competitivo, seg&amp;uacute;n publica el peri&amp;oacute;dico &lt;em&gt;&lt;a href="http://www.elconfidencial.com/" target="_new"&gt;El Confidencial&lt;/a&gt;&lt;/em&gt;. &lt;/p&gt;Otra de las razones que expuso Lee fue su durabilidad (el &lt;a href="http://es.wikipedia.org/wiki/Policarbonato" target="_new"&gt;policarbonato&lt;/a&gt; absorbe bien los golpes), y la posibilidad que ofrece de acceder a la bater&amp;iacute;a a trav&amp;eacute;s de una simple carcasa f&amp;aacute;cilmente sustituible, a diferencia de otros modelos con un solo cuerpo. ', '4', 'f');

-- ----------------------------
-- Table structure for "public"."article_image"
-- ----------------------------
DROP TABLE "public"."article_image";
CREATE TABLE "public"."article_image" (
"id" int4 DEFAULT nextval('article_image_id_seq'::regclass) NOT NULL,
"article_id" int4,
"image_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of article_image
-- ----------------------------
INSERT INTO "public"."article_image" VALUES ('26', '10', '26');
INSERT INTO "public"."article_image" VALUES ('32', '11', '32');
INSERT INTO "public"."article_image" VALUES ('34', '12', '34');
INSERT INTO "public"."article_image" VALUES ('41', '13', '41');
INSERT INTO "public"."article_image" VALUES ('42', '13', '42');
INSERT INTO "public"."article_image" VALUES ('43', '13', '43');
INSERT INTO "public"."article_image" VALUES ('44', '13', '44');
INSERT INTO "public"."article_image" VALUES ('45', '13', '45');
INSERT INTO "public"."article_image" VALUES ('46', '13', '46');
INSERT INTO "public"."article_image" VALUES ('47', '13', '47');
INSERT INTO "public"."article_image" VALUES ('48', '14', '48');
INSERT INTO "public"."article_image" VALUES ('49', '14', '49');
INSERT INTO "public"."article_image" VALUES ('50', '14', '50');
INSERT INTO "public"."article_image" VALUES ('51', '15', '51');
INSERT INTO "public"."article_image" VALUES ('52', '16', '52');
INSERT INTO "public"."article_image" VALUES ('53', '16', '53');
INSERT INTO "public"."article_image" VALUES ('54', '12', '54');
INSERT INTO "public"."article_image" VALUES ('55', '12', '55');

-- ----------------------------
-- Table structure for "public"."article_rate"
-- ----------------------------
DROP TABLE "public"."article_rate";
CREATE TABLE "public"."article_rate" (
"article_id" int4 NOT NULL,
"article_rate_id" int4 NOT NULL,
"user_profile_id" int4 NOT NULL,
"rating" int2 NOT NULL,
"date" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of article_rate
-- ----------------------------
INSERT INTO "public"."article_rate" VALUES ('15', '1', '2', '3', '2013-12-22 22:39:03.606-03');

-- ----------------------------
-- Table structure for "public"."article_section"
-- ----------------------------
DROP TABLE "public"."article_section";
CREATE TABLE "public"."article_section" (
"article_section_id" int4 NOT NULL,
"section_id" int4 NOT NULL,
"article_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of article_section
-- ----------------------------
INSERT INTO "public"."article_section" VALUES ('20', '2', '15');
INSERT INTO "public"."article_section" VALUES ('21', '3', '16');
INSERT INTO "public"."article_section" VALUES ('22', '4', '14');
INSERT INTO "public"."article_section" VALUES ('23', '3', '13');
INSERT INTO "public"."article_section" VALUES ('24', '2', '12');

-- ----------------------------
-- Table structure for "public"."auth_group"
-- ----------------------------
DROP TABLE "public"."auth_group";
CREATE TABLE "public"."auth_group" (
"id" int4 DEFAULT nextval('auth_group_id_seq'::regclass) NOT NULL,
"name" varchar(80) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO "public"."auth_group" VALUES ('1', 'administrator');
INSERT INTO "public"."auth_group" VALUES ('2', 'publisher');
INSERT INTO "public"."auth_group" VALUES ('3', 'reader');

-- ----------------------------
-- Table structure for "public"."auth_group_permissions"
-- ----------------------------
DROP TABLE "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
"id" int4 DEFAULT nextval('auth_group_permissions_id_seq'::regclass) NOT NULL,
"group_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."auth_permission"
-- ----------------------------
DROP TABLE "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
"id" int4 DEFAULT nextval('auth_permission_id_seq'::regclass) NOT NULL,
"name" varchar(50) NOT NULL,
"content_type_id" int4 NOT NULL,
"codename" varchar(100) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO "public"."auth_permission" VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO "public"."auth_permission" VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO "public"."auth_permission" VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO "public"."auth_permission" VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO "public"."auth_permission" VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO "public"."auth_permission" VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO "public"."auth_permission" VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO "public"."auth_permission" VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO "public"."auth_permission" VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO "public"."auth_permission" VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO "public"."auth_permission" VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO "public"."auth_permission" VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO "public"."auth_permission" VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO "public"."auth_permission" VALUES ('19', 'Can add migration history', '7', 'add_migrationhistory');
INSERT INTO "public"."auth_permission" VALUES ('20', 'Can change migration history', '7', 'change_migrationhistory');
INSERT INTO "public"."auth_permission" VALUES ('21', 'Can delete migration history', '7', 'delete_migrationhistory');
INSERT INTO "public"."auth_permission" VALUES ('22', 'Can add image', '8', 'add_image');
INSERT INTO "public"."auth_permission" VALUES ('23', 'Can change image', '8', 'change_image');
INSERT INTO "public"."auth_permission" VALUES ('24', 'Can delete image', '8', 'delete_image');
INSERT INTO "public"."auth_permission" VALUES ('25', 'Can add user profile', '9', 'add_userprofile');
INSERT INTO "public"."auth_permission" VALUES ('26', 'Can change user profile', '9', 'change_userprofile');
INSERT INTO "public"."auth_permission" VALUES ('27', 'Can delete user profile', '9', 'delete_userprofile');
INSERT INTO "public"."auth_permission" VALUES ('28', 'Can add author', '10', 'add_author');
INSERT INTO "public"."auth_permission" VALUES ('29', 'Can change author', '10', 'change_author');
INSERT INTO "public"."auth_permission" VALUES ('30', 'Can delete author', '10', 'delete_author');
INSERT INTO "public"."auth_permission" VALUES ('31', 'Can add article', '11', 'add_article');
INSERT INTO "public"."auth_permission" VALUES ('32', 'Can change article', '11', 'change_article');
INSERT INTO "public"."auth_permission" VALUES ('33', 'Can delete article', '11', 'delete_article');
INSERT INTO "public"."auth_permission" VALUES ('34', 'Can add poll', '12', 'add_poll');
INSERT INTO "public"."auth_permission" VALUES ('35', 'Can change poll', '12', 'change_poll');
INSERT INTO "public"."auth_permission" VALUES ('36', 'Can delete poll', '12', 'delete_poll');
INSERT INTO "public"."auth_permission" VALUES ('37', 'Can add choice', '13', 'add_choice');
INSERT INTO "public"."auth_permission" VALUES ('38', 'Can change choice', '13', 'change_choice');
INSERT INTO "public"."auth_permission" VALUES ('39', 'Can delete choice', '13', 'delete_choice');
INSERT INTO "public"."auth_permission" VALUES ('40', 'Can add publication', '14', 'add_publication');
INSERT INTO "public"."auth_permission" VALUES ('41', 'Can change publication', '14', 'change_publication');
INSERT INTO "public"."auth_permission" VALUES ('42', 'Can delete publication', '14', 'delete_publication');
INSERT INTO "public"."auth_permission" VALUES ('43', 'Can add section', '15', 'add_section');
INSERT INTO "public"."auth_permission" VALUES ('44', 'Can change section', '15', 'change_section');
INSERT INTO "public"."auth_permission" VALUES ('45', 'Can delete section', '15', 'delete_section');
INSERT INTO "public"."auth_permission" VALUES ('46', 'Can add article section', '16', 'add_articlesection');
INSERT INTO "public"."auth_permission" VALUES ('47', 'Can change article section', '16', 'change_articlesection');
INSERT INTO "public"."auth_permission" VALUES ('48', 'Can delete article section', '16', 'delete_articlesection');
INSERT INTO "public"."auth_permission" VALUES ('49', 'Can add poll section', '17', 'add_pollsection');
INSERT INTO "public"."auth_permission" VALUES ('50', 'Can change poll section', '17', 'change_pollsection');
INSERT INTO "public"."auth_permission" VALUES ('51', 'Can delete poll section', '17', 'delete_pollsection');
INSERT INTO "public"."auth_permission" VALUES ('52', 'Can add source', '18', 'add_source');
INSERT INTO "public"."auth_permission" VALUES ('53', 'Can change source', '18', 'change_source');
INSERT INTO "public"."auth_permission" VALUES ('54', 'Can delete source', '18', 'delete_source');
INSERT INTO "public"."auth_permission" VALUES ('55', 'Can add tag', '19', 'add_tag');
INSERT INTO "public"."auth_permission" VALUES ('56', 'Can change tag', '19', 'change_tag');
INSERT INTO "public"."auth_permission" VALUES ('57', 'Can delete tag', '19', 'delete_tag');
INSERT INTO "public"."auth_permission" VALUES ('58', 'Can add vote', '20', 'add_vote');
INSERT INTO "public"."auth_permission" VALUES ('59', 'Can change vote', '20', 'change_vote');
INSERT INTO "public"."auth_permission" VALUES ('60', 'Can delete vote', '20', 'delete_vote');
INSERT INTO "public"."auth_permission" VALUES ('61', 'Can add article rate', '21', 'add_articlerate');
INSERT INTO "public"."auth_permission" VALUES ('62', 'Can change article rate', '21', 'change_articlerate');
INSERT INTO "public"."auth_permission" VALUES ('63', 'Can delete article rate', '21', 'delete_articlerate');
INSERT INTO "public"."auth_permission" VALUES ('70', 'Can add comment', '24', 'add_comment');
INSERT INTO "public"."auth_permission" VALUES ('71', 'Can change comment', '24', 'change_comment');
INSERT INTO "public"."auth_permission" VALUES ('72', 'Can delete comment', '24', 'delete_comment');
INSERT INTO "public"."auth_permission" VALUES ('73', 'Can add article image', '25', 'add_articleimage');
INSERT INTO "public"."auth_permission" VALUES ('74', 'Can change article image', '25', 'change_articleimage');
INSERT INTO "public"."auth_permission" VALUES ('75', 'Can delete article image', '25', 'delete_articleimage');
INSERT INTO "public"."auth_permission" VALUES ('76', 'Can add user section', '26', 'add_usersection');
INSERT INTO "public"."auth_permission" VALUES ('77', 'Can change user section', '26', 'change_usersection');
INSERT INTO "public"."auth_permission" VALUES ('78', 'Can delete user section', '26', 'delete_usersection');

-- ----------------------------
-- Table structure for "public"."auth_user"
-- ----------------------------
DROP TABLE "public"."auth_user";
CREATE TABLE "public"."auth_user" (
"id" int4 DEFAULT nextval('auth_user_id_seq'::regclass) NOT NULL,
"password" varchar(128) NOT NULL,
"last_login" timestamptz(6) NOT NULL,
"is_superuser" bool NOT NULL,
"username" varchar(30) NOT NULL,
"first_name" varchar(30) NOT NULL,
"last_name" varchar(30) NOT NULL,
"email" varchar(75) NOT NULL,
"is_staff" bool NOT NULL,
"is_active" bool NOT NULL,
"date_joined" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO "public"."auth_user" VALUES ('1', '123', '2014-01-09 21:33:19.538-03', 't', 'Webmaster', 'Webmaster', 'Axis', 'webmaster@axis.com', 't', 't', '2013-12-08 04:11:32.091-03');
INSERT INTO "public"."auth_user" VALUES ('2', '123', '2014-01-03 01:12:28.41-03', 'f', 'Luis_Luna_1', 'Luis', 'Luna', 'luis.m.luna.87@gmail.com', 'f', 't', '2013-12-22 22:01:21.681-03');
INSERT INTO "public"."auth_user" VALUES ('8', '123', '2014-01-06 22:10:59.436-03', 'f', 'usr1', 'Test', 'User', 'user@test.com', 'f', 't', '2014-01-06 02:23:15.898-03');
INSERT INTO "public"."auth_user" VALUES ('9', '123', '2014-01-09 00:37:50.557-03', 'f', 'Test1', 'User', 'Test', 'test@user.com', 'f', 't', '2014-01-09 00:37:36.19-03');
INSERT INTO "public"."auth_user" VALUES ('10', '123', '2014-01-09 01:51:45.56-03', 'f', 'test2', 'Test', 'User', 'test@user2.com', 'f', 't', '2014-01-09 01:49:54.938-03');
INSERT INTO "public"."auth_user" VALUES ('11', '123', '2014-01-09 01:54:25.431-03', 'f', 'test3', 'test', 'user', 'tes@user3.com', 'f', 't', '2014-01-09 01:54:18.413-03');

-- ----------------------------
-- Table structure for "public"."auth_user_groups"
-- ----------------------------
DROP TABLE "public"."auth_user_groups";
CREATE TABLE "public"."auth_user_groups" (
"id" int4 DEFAULT nextval('auth_user_groups_id_seq'::regclass) NOT NULL,
"user_id" int4 NOT NULL,
"group_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
INSERT INTO "public"."auth_user_groups" VALUES ('1', '1', '1');
INSERT INTO "public"."auth_user_groups" VALUES ('2', '1', '2');
INSERT INTO "public"."auth_user_groups" VALUES ('3', '1', '3');
INSERT INTO "public"."auth_user_groups" VALUES ('6', '2', '3');
INSERT INTO "public"."auth_user_groups" VALUES ('8', '8', '3');
INSERT INTO "public"."auth_user_groups" VALUES ('9', '9', '3');
INSERT INTO "public"."auth_user_groups" VALUES ('10', '10', '3');
INSERT INTO "public"."auth_user_groups" VALUES ('11', '11', '3');

-- ----------------------------
-- Table structure for "public"."auth_user_user_permissions"
-- ----------------------------
DROP TABLE "public"."auth_user_user_permissions";
CREATE TABLE "public"."auth_user_user_permissions" (
"id" int4 DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass) NOT NULL,
"user_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."author"
-- ----------------------------
DROP TABLE "public"."author";
CREATE TABLE "public"."author" (
"author_id" int4 NOT NULL,
"user_profile_id" int4,
"added_by" int4 NOT NULL,
"first_name" varchar(30),
"last_name" varchar(30),
"biography" varchar(1000),
"description" varchar(300) NOT NULL,
"deleted" bool NOT NULL,
"profile_image_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO "public"."author" VALUES ('1', null, '1', 'Jazmín', 'Bognanni', '', '', 'f', '59');
INSERT INTO "public"."author" VALUES ('2', null, '1', 'Leandro', 'Paenza', '''''', '''''', 'f', null);
INSERT INTO "public"."author" VALUES ('3', null, '1', 'Claudia', 'Fernández', '''''', '''''', 'f', null);
INSERT INTO "public"."author" VALUES ('4', null, '1', 'Anibal', 'Gimenez', '', '', 'f', null);
INSERT INTO "public"."author" VALUES ('5', null, '1', 'Laura', 'Sers', '', '', 'f', null);

-- ----------------------------
-- Table structure for "public"."choice"
-- ----------------------------
DROP TABLE "public"."choice";
CREATE TABLE "public"."choice" (
"poll_id" int4 NOT NULL,
"choice_id" int4 NOT NULL,
"text" varchar(200) NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of choice
-- ----------------------------
INSERT INTO "public"."choice" VALUES ('25', '1', 'Opcion 1', 'f');
INSERT INTO "public"."choice" VALUES ('25', '2', 'Opcion 1 B', 'f');
INSERT INTO "public"."choice" VALUES ('32', '3', 'Prueba 1', 'f');
INSERT INTO "public"."choice" VALUES ('32', '4', 'Prueba 2', 'f');
INSERT INTO "public"."choice" VALUES ('33', '5', 'Opcion 1', 'f');
INSERT INTO "public"."choice" VALUES ('33', '6', 'Opcion 2', 'f');
INSERT INTO "public"."choice" VALUES ('33', '7', 'Opcion 3', 'f');
INSERT INTO "public"."choice" VALUES ('34', '8', 'Opcion 1', 'f');
INSERT INTO "public"."choice" VALUES ('34', '9', 'Opcion 2', 'f');
INSERT INTO "public"."choice" VALUES ('34', '10', 'Opcion 3', 'f');
INSERT INTO "public"."choice" VALUES ('34', '11', 'Opcion 4', 'f');
INSERT INTO "public"."choice" VALUES ('35', '12', 'Opcion 1', 'f');
INSERT INTO "public"."choice" VALUES ('35', '13', 'Opcion 3', 'f');
INSERT INTO "public"."choice" VALUES ('35', '14', 'Opcion 2', 'f');

-- ----------------------------
-- Table structure for "public"."comment"
-- ----------------------------
DROP TABLE "public"."comment";
CREATE TABLE "public"."comment" (
"article_id" int4 NOT NULL,
"comment_id" int4 NOT NULL,
"user_profile_id" int4 NOT NULL,
"content" varchar(400) NOT NULL,
"deleted" bool NOT NULL,
"moderated" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO "public"."comment" VALUES ('15', '4', '1', 'este es otro comment mas', 'f', 'f');
INSERT INTO "public"."comment" VALUES ('15', '5', '1', 'un comment despues de los cambios', 'f', 't');
INSERT INTO "public"."comment" VALUES ('15', '6', '1', 'Un comentario a borrar', 't', 'f');
INSERT INTO "public"."comment" VALUES ('15', '7', '1', 'rgsdh', 't', 'f');
INSERT INTO "public"."comment" VALUES ('15', '8', '1', 'Probando', 'f', 'f');
INSERT INTO "public"."comment" VALUES ('15', '9', '2', 'Prueba con otro usuario', 'f', 'f');
INSERT INTO "public"."comment" VALUES ('15', '10', '2', 'Prueba con otro usuario -> Prueba de clases css para el bloque de comment normal o alternativo (Coloreado)', 'f', 'f');
INSERT INTO "public"."comment" VALUES ('15', '11', '2', 'Prueba con otro usuario -> Prueba de clases css para el bloque de comment normal o alternativo (Coloreado) 2', 'f', 'f');
INSERT INTO "public"."comment" VALUES ('15', '12', '2', 'Prueba con otro usuario -> Prueba de clases css para el bloque de comment normal o alternativo (Coloreado) 3', 'f', 'f');
INSERT INTO "public"."comment" VALUES ('15', '13', '2', 'Prueba con otro usuario -> Prueba de clases css para el bloque de comment normal o alternativo (Coloreado) 4', 'f', 'f');
INSERT INTO "public"."comment" VALUES ('15', '14', '2', 'Prueba con otro usuario -> Prueba de clases css para el bloque de comment normal o alternativo (Coloreado) 5', 'f', 'f');
INSERT INTO "public"."comment" VALUES ('15', '15', '2', 'Prueba css coloreado par o impar', 'f', 'f');
INSERT INTO "public"."comment" VALUES ('15', '16', '2', 'Prueba css coloreado par o impar', 'f', 'f');

-- ----------------------------
-- Table structure for "public"."django_admin_log"
-- ----------------------------
DROP TABLE "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
"id" int4 DEFAULT nextval('django_admin_log_id_seq'::regclass) NOT NULL,
"action_time" timestamptz(6) NOT NULL,
"user_id" int4 NOT NULL,
"content_type_id" int4,
"object_id" text,
"object_repr" varchar(200) NOT NULL,
"action_flag" int2 NOT NULL,
"change_message" text NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."django_content_type"
-- ----------------------------
DROP TABLE "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
"id" int4 DEFAULT nextval('django_content_type_id_seq'::regclass) NOT NULL,
"name" varchar(100) NOT NULL,
"app_label" varchar(100) NOT NULL,
"model" varchar(100) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES ('1', 'log entry', 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES ('2', 'permission', 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES ('3', 'group', 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES ('4', 'user', 'auth', 'user');
INSERT INTO "public"."django_content_type" VALUES ('5', 'content type', 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES ('6', 'session', 'sessions', 'session');
INSERT INTO "public"."django_content_type" VALUES ('7', 'migration history', 'south', 'migrationhistory');
INSERT INTO "public"."django_content_type" VALUES ('8', 'image', 'web', 'image');
INSERT INTO "public"."django_content_type" VALUES ('9', 'user profile', 'web', 'userprofile');
INSERT INTO "public"."django_content_type" VALUES ('10', 'author', 'web', 'author');
INSERT INTO "public"."django_content_type" VALUES ('11', 'article', 'web', 'article');
INSERT INTO "public"."django_content_type" VALUES ('12', 'poll', 'web', 'poll');
INSERT INTO "public"."django_content_type" VALUES ('13', 'choice', 'web', 'choice');
INSERT INTO "public"."django_content_type" VALUES ('14', 'publication', 'web', 'publication');
INSERT INTO "public"."django_content_type" VALUES ('15', 'section', 'web', 'section');
INSERT INTO "public"."django_content_type" VALUES ('16', 'article section', 'web', 'articlesection');
INSERT INTO "public"."django_content_type" VALUES ('17', 'poll section', 'web', 'pollsection');
INSERT INTO "public"."django_content_type" VALUES ('18', 'source', 'web', 'source');
INSERT INTO "public"."django_content_type" VALUES ('19', 'tag', 'web', 'tag');
INSERT INTO "public"."django_content_type" VALUES ('20', 'vote', 'web', 'vote');
INSERT INTO "public"."django_content_type" VALUES ('21', 'article rate', 'web', 'articlerate');
INSERT INTO "public"."django_content_type" VALUES ('24', 'comment', 'web', 'comment');
INSERT INTO "public"."django_content_type" VALUES ('25', 'article image', 'web', 'articleimage');
INSERT INTO "public"."django_content_type" VALUES ('26', 'user section', 'web', 'usersection');

-- ----------------------------
-- Table structure for "public"."django_session"
-- ----------------------------
DROP TABLE "public"."django_session";
CREATE TABLE "public"."django_session" (
"session_key" varchar(40) NOT NULL,
"session_data" text NOT NULL,
"expire_date" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "public"."django_session" VALUES ('6vqa3xh4bts5qcausykil7oyian0tfv0', 'MWQwZjZlMThiZWFlNTBhZmRkNjdjNTU2NTJlNmZjODJlNjZjMDJiMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2013-12-22 22:27:43.184-03');
INSERT INTO "public"."django_session" VALUES ('bwc9kfa3silyfla31p39omh4oghzqan0', 'MGJiNTEwODViOTEzNTg1Mzc1ZjYwOWU1ZDM1ZDc3ZWQ2NzM3ZjgwYzp7InBvbGxfY2hvaWNlcyI6W10sIl9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2014-01-27 01:38:40.144-03');
INSERT INTO "public"."django_session" VALUES ('fk3bwjxkt63q3mtlb8a06a9d15gx1f85', 'MTVjMzIzZWIwNGMxNzNlOWQ0NjkyMzEwMDE3ZWY0NDkzMmQzOGZjMDp7fQ==', '2014-01-20 00:14:00.695-03');
INSERT INTO "public"."django_session" VALUES ('jxgkokm1zrharbndjax1ew2hb556e72w', 'Zjk0ZDNkNWU2MDkwNDgyZjQ5MWM5YmFjNWFjN2JjMDNlNTc4NWQ0Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-01-15 06:12:18.423-03');

-- ----------------------------
-- Table structure for "public"."image"
-- ----------------------------
DROP TABLE "public"."image";
CREATE TABLE "public"."image" (
"image_id" int4 NOT NULL,
"path" varchar(100) NOT NULL,
"is_main" bool NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO "public"."image" VALUES ('1', 'article_1_img_1.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('2', 'article_1_img_2.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('3', 'article_1_img_3.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('4', 'article_1_img_4.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('5', 'article_1_img_5.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('6', 'article_1_img_6.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('7', 'article_1_img_7.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('8', 'article_4_img_1.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('9', 'article_4_img_2.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('10', 'article_4_img_3.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('11', 'article_4_img_4.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('12', 'article_4_img_5.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('13', 'article_4_img_6.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('14', 'article_4_img_7.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('15', 'article_5_img_1.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('16', 'article_5_img_2.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('17', 'article_5_img_3.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('18', 'article_5_img_4.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('19', 'article_6_img_1.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('20', 'article_5_img_5.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('21', 'article_5_img_6.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('22', 'article_6_img_2.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('23', 'article_5_img_7.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('24', 'article_6_img_3.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('25', 'article_7_img_1.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('26', 'article_10_img_1.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('27', 'article_10_img_2.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('28', 'article_10_img_3.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('29', 'article_10_img_4.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('30', 'article_10_img_5.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('31', 'article_10_img_6.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('32', 'article_11_img_1.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('33', 'article_11_img_2.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('34', 'article_12_img_5.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('35', 'article_12_img_6.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('36', 'article_12_img_7.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('37', 'article_12_img_8.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('38', 'article_12_img_9.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('39', 'article_12_img_10.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('40', 'article_12_img_11.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('41', 'article_13_img_3.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('42', 'article_13_img_4.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('43', 'article_13_img_5.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('44', 'article_13_img_6.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('45', 'article_13_img_7.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('46', 'article_13_img_8.jpg', 't', 'f');
INSERT INTO "public"."image" VALUES ('47', 'article_13_img_9.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('48', 'article_14_img_4.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('49', 'article_14_img_4.jpg', 't', 'f');
INSERT INTO "public"."image" VALUES ('50', 'article_14_img_4.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('51', 'article_15_img_1.jpg', 't', 'f');
INSERT INTO "public"."image" VALUES ('52', 'article_16_img_1.jpg', 't', 'f');
INSERT INTO "public"."image" VALUES ('53', 'article_16_img_2.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('54', 'article_12_img_9.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('55', 'article_12_img_9.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('56', 'user_img_1.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('57', 'user_img_7.gif', 'f', 'f');
INSERT INTO "public"."image" VALUES ('58', 'user_img_10_new_user_temp_img.jpg.jpg', 'f', 'f');
INSERT INTO "public"."image" VALUES ('59', 'author_img_1.gif', 'f', 'f');

-- ----------------------------
-- Table structure for "public"."poll"
-- ----------------------------
DROP TABLE "public"."poll";
CREATE TABLE "public"."poll" (
"poll_id" int4 NOT NULL,
"title" varchar(60) NOT NULL,
"description" varchar(300) NOT NULL,
"multiple_choice" bool NOT NULL,
"voting_period_start" timestamptz(6) NOT NULL,
"voting_period_end" timestamptz(6) NOT NULL,
"deleted" bool NOT NULL,
"editable" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of poll
-- ----------------------------
INSERT INTO "public"."poll" VALUES ('25', 'Encuesta válida', 'Prueba', 'f', '2013-12-27 22:02:46-03', '2014-01-03 22:02:46-03', 'f', 't');
INSERT INTO "public"."poll" VALUES ('27', 'Prueba insert', 'Prueba', 'f', '2013-12-27 22:06:34-03', '2014-01-03 22:06:34-03', 't', 't');
INSERT INTO "public"."poll" VALUES ('28', 'Prueba encuesta completa', 'Prueba de una encuesta completa sin check para multiple', 'f', '2013-12-29 19:30:34-03', '2013-12-31 19:31:14-03', 't', 't');
INSERT INTO "public"."poll" VALUES ('29', 'Otra prueba de encuesta', '', 'f', '2013-12-29 19:30:34-03', '2013-12-31 19:37:55-03', 't', 't');
INSERT INTO "public"."poll" VALUES ('30', 'Prueba encuesta completa 3', '', 'f', '2013-12-29 19:30:34-03', '2014-01-01 19:51:38-03', 't', 't');
INSERT INTO "public"."poll" VALUES ('31', 'Prueba encuesta completa 4', '', 'f', '2013-12-29 19:52:36-03', '2014-01-02 19:52:45-03', 't', 't');
INSERT INTO "public"."poll" VALUES ('32', 'Prueba completa 5', 'Descripcion larga para probar comportamiento de cuadros de encuestas.', 'f', '2013-12-29 19:52:36-03', '2014-01-04 19:52:36-03', 'f', 't');
INSERT INTO "public"."poll" VALUES ('33', 'Tercera encuesta', '', 't', '2013-12-31 22:39:14-03', '2014-01-23 22:39:14-03', 'f', 't');
INSERT INTO "public"."poll" VALUES ('34', 'Encuesta reciente', '', 't', '2013-12-31 01:40:00-03', '2014-01-30 01:40:00-03', 'f', 't');
INSERT INTO "public"."poll" VALUES ('35', 'Quinta encuesta', 'Encuesta de test', 'f', '2013-12-31 22:40:25-03', '2014-01-29 22:40:25-03', 'f', 't');

-- ----------------------------
-- Table structure for "public"."poll_section"
-- ----------------------------
DROP TABLE "public"."poll_section";
CREATE TABLE "public"."poll_section" (
"poll_section_id" int4 NOT NULL,
"section_id" int4 NOT NULL,
"poll_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of poll_section
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."publication"
-- ----------------------------
DROP TABLE "public"."publication";
CREATE TABLE "public"."publication" (
"publication_id" int4 NOT NULL,
"article_id" int4,
"poll_id" int4,
"user_profile_id" int4 NOT NULL,
"date" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of publication
-- ----------------------------
INSERT INTO "public"."publication" VALUES ('1', '1', null, '1', '2013-12-10 22:45:13.843-03');
INSERT INTO "public"."publication" VALUES ('2', '2', null, '1', '2013-12-10 22:48:51.418-03');
INSERT INTO "public"."publication" VALUES ('3', '3', null, '1', '2013-12-10 22:49:17.444-03');
INSERT INTO "public"."publication" VALUES ('4', '4', null, '1', '2013-12-10 22:51:08.786-03');
INSERT INTO "public"."publication" VALUES ('5', '5', null, '1', '2013-12-10 22:52:51.25-03');
INSERT INTO "public"."publication" VALUES ('6', '6', null, '1', '2013-12-10 22:52:51.249-03');
INSERT INTO "public"."publication" VALUES ('7', '8', null, '1', '2013-12-10 22:54:31.714-03');
INSERT INTO "public"."publication" VALUES ('8', '10', null, '1', '2013-12-10 22:56:00.092-03');
INSERT INTO "public"."publication" VALUES ('9', '12', null, '1', '2013-12-10 23:03:55.473-03');
INSERT INTO "public"."publication" VALUES ('10', '13', null, '1', '2013-12-10 23:54:42.122-03');
INSERT INTO "public"."publication" VALUES ('11', '14', null, '1', '2013-12-11 00:06:49.983-03');
INSERT INTO "public"."publication" VALUES ('12', '15', null, '1', '2013-12-11 00:10:46.943-03');
INSERT INTO "public"."publication" VALUES ('13', '16', null, '1', '2013-12-11 00:18:15.259-03');
INSERT INTO "public"."publication" VALUES ('14', null, null, '2', '2013-12-25 02:28:39.039-03');
INSERT INTO "public"."publication" VALUES ('15', null, null, '2', '2013-12-25 02:33:46.328-03');
INSERT INTO "public"."publication" VALUES ('16', null, null, '2', '2013-12-25 02:38:19.758-03');
INSERT INTO "public"."publication" VALUES ('17', null, null, '2', '2013-12-25 02:41:38.62-03');
INSERT INTO "public"."publication" VALUES ('18', null, null, '2', '2013-12-25 02:46:57.208-03');
INSERT INTO "public"."publication" VALUES ('19', null, null, '2', '2013-12-25 03:05:31.95-03');
INSERT INTO "public"."publication" VALUES ('20', null, null, '2', '2013-12-25 03:07:21.715-03');
INSERT INTO "public"."publication" VALUES ('38', null, '25', '2', '2013-12-25 04:05:11.183-03');
INSERT INTO "public"."publication" VALUES ('39', null, '27', '2', '2013-12-25 04:12:08.065-03');
INSERT INTO "public"."publication" VALUES ('40', null, '28', '2', '2013-12-30 01:36:52.88-03');
INSERT INTO "public"."publication" VALUES ('41', null, '29', '2', '2013-12-30 01:38:44.867-03');
INSERT INTO "public"."publication" VALUES ('42', null, '30', '2', '2013-12-30 01:52:05.381-03');
INSERT INTO "public"."publication" VALUES ('43', null, '31', '2', '2013-12-30 01:53:26.875-03');
INSERT INTO "public"."publication" VALUES ('44', null, '32', '2', '2013-12-30 01:55:57.479-03');
INSERT INTO "public"."publication" VALUES ('45', null, '33', '2', '2014-01-01 04:40:09.393-03');
INSERT INTO "public"."publication" VALUES ('46', null, '34', '2', '2014-01-01 04:41:29.602-03');
INSERT INTO "public"."publication" VALUES ('47', null, '35', '2', '2014-01-01 04:43:19.056-03');

-- ----------------------------
-- Table structure for "public"."section"
-- ----------------------------
DROP TABLE "public"."section";
CREATE TABLE "public"."section" (
"section_id" int4 NOT NULL,
"name" varchar(30) NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO "public"."section" VALUES ('2', 'Seccion test 2', 'f');
INSERT INTO "public"."section" VALUES ('3', 'Seccion test 3', 'f');
INSERT INTO "public"."section" VALUES ('4', 'Seccion test 4', 'f');
INSERT INTO "public"."section" VALUES ('5', 'Seccion test 1', 'f');

-- ----------------------------
-- Table structure for "public"."source"
-- ----------------------------
DROP TABLE "public"."source";
CREATE TABLE "public"."source" (
"article_id" int4 NOT NULL,
"source_id" int4 NOT NULL,
"url" varchar(2000) NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of source
-- ----------------------------
INSERT INTO "public"."source" VALUES ('1', '17', '', 'f');
INSERT INTO "public"."source" VALUES ('2', '18', '', 'f');
INSERT INTO "public"."source" VALUES ('3', '19', '', 'f');
INSERT INTO "public"."source" VALUES ('4', '20', '', 'f');
INSERT INTO "public"."source" VALUES ('5', '21', '', 'f');
INSERT INTO "public"."source" VALUES ('6', '22', '', 'f');
INSERT INTO "public"."source" VALUES ('8', '23', '', 'f');
INSERT INTO "public"."source" VALUES ('10', '24', '', 'f');
INSERT INTO "public"."source" VALUES ('13', '26', '', 'f');
INSERT INTO "public"."source" VALUES ('14', '27', '', 'f');
INSERT INTO "public"."source" VALUES ('12', '32', 'www.google.com', 'f');
INSERT INTO "public"."source" VALUES ('16', '33', 'Google', 'f');
INSERT INTO "public"."source" VALUES ('15', '34', 'Google', 'f');

-- ----------------------------
-- Table structure for "public"."south_migrationhistory"
-- ----------------------------
DROP TABLE "public"."south_migrationhistory";
CREATE TABLE "public"."south_migrationhistory" (
"id" int4 DEFAULT nextval('south_migrationhistory_id_seq'::regclass) NOT NULL,
"app_name" varchar(255) NOT NULL,
"migration" varchar(255) NOT NULL,
"applied" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of south_migrationhistory
-- ----------------------------
INSERT INTO "public"."south_migrationhistory" VALUES ('7', 'web', '0001_initial', '2013-12-22 02:16:20.923-03');
INSERT INTO "public"."south_migrationhistory" VALUES ('8', 'web', '0002_auto__del_unique_comment_article_comment_id', '2013-12-22 02:23:21.008-03');
INSERT INTO "public"."south_migrationhistory" VALUES ('9', 'web', '0003_auto__add_unique_comment_article_comment_id', '2013-12-22 02:23:44.601-03');
INSERT INTO "public"."south_migrationhistory" VALUES ('10', 'web', '0004_auto__del_authorrate__del_unique_authorrate_author_author_rate_id__del', '2014-01-08 23:12:20.577-03');
INSERT INTO "public"."south_migrationhistory" VALUES ('11', 'web', '0005_auto__del_field_publication_deleted', '2014-01-09 21:27:08.196-03');
INSERT INTO "public"."south_migrationhistory" VALUES ('12', 'web', '0006_auto__del_field_author_image__add_field_author_profile_image', '2014-01-10 01:37:35.384-03');

-- ----------------------------
-- Table structure for "public"."tag"
-- ----------------------------
DROP TABLE "public"."tag";
CREATE TABLE "public"."tag" (
"article_id" int4 NOT NULL,
"tag_id" int4 NOT NULL,
"text" varchar(30) NOT NULL,
"deleted" bool NOT NULL,
"moderated" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO "public"."tag" VALUES ('1', '1', 'América Latina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('1', '2', 'Argentina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('1', '3', 'PlayStation 4', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('2', '4', 'América Latina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('2', '5', 'Argentina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('2', '6', 'PlayStation 4', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('3', '7', 'América Latina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('3', '8', 'Argentina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('3', '9', 'PlayStation 4', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('4', '10', 'América Latina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('4', '11', 'Argentina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('4', '12', 'PlayStation 4', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('5', '13', 'América Latina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('6', '14', 'América Latina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('5', '15', 'Argentina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('6', '16', 'Argentina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('5', '17', 'PlayStation 4', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('6', '18', 'PlayStation 4', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('8', '19', 'América Latina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('8', '20', 'Argentina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('8', '21', 'PlayStation 4', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('10', '22', 'América Latina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('10', '23', 'Argentina', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('10', '24', 'PlayStation 4', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('12', '25', 'test', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('13', '26', 'test', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('14', '27', 'Sony', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('14', '28', 'Reproductor de música', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('15', '29', 'Innovación Tecnológica', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('15', '30', 'Alfombras del futuro', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('15', '31', 'Luces LED', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('15', '32', 'Philips', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('15', '33', 'Desso', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('15', '34', 'Tecnología', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('15', '35', 'Aerolíneas', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('15', '36', 'Aviones', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('15', '37', 'Aeropuertos', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('16', '38', 'Samsung', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('16', '39', 'Tecnología', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('16', '40', 'Metal', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('16', '41', 'Aluminio', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('16', '42', 'Plástico', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('16', '43', 'Android KitKat', 'f', 'f');
INSERT INTO "public"."tag" VALUES ('12', '44', 'test 2', 'f', 'f');

-- ----------------------------
-- Table structure for "public"."user_profile"
-- ----------------------------
DROP TABLE "public"."user_profile";
CREATE TABLE "public"."user_profile" (
"user_profile_id" int4 NOT NULL,
"user_id" int4 NOT NULL,
"profile_image_id" int4,
"biography" varchar(300) NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of user_profile
-- ----------------------------
INSERT INTO "public"."user_profile" VALUES ('1', '1', '56', '', 'f');
INSERT INTO "public"."user_profile" VALUES ('2', '2', null, '''''', 'f');
INSERT INTO "public"."user_profile" VALUES ('5', '8', null, '', 'f');
INSERT INTO "public"."user_profile" VALUES ('6', '9', null, '', 'f');
INSERT INTO "public"."user_profile" VALUES ('7', '10', '57', '', 'f');
INSERT INTO "public"."user_profile" VALUES ('8', '11', '58', '', 't');

-- ----------------------------
-- Table structure for "public"."user_section"
-- ----------------------------
DROP TABLE "public"."user_section";
CREATE TABLE "public"."user_section" (
"user_section_id" int4 NOT NULL,
"user_profile_id" int4 NOT NULL,
"section_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of user_section
-- ----------------------------
INSERT INTO "public"."user_section" VALUES ('1', '1', '4');
INSERT INTO "public"."user_section" VALUES ('2', '1', '3');
INSERT INTO "public"."user_section" VALUES ('3', '6', '4');
INSERT INTO "public"."user_section" VALUES ('4', '7', '3');
INSERT INTO "public"."user_section" VALUES ('5', '8', '4');

-- ----------------------------
-- Table structure for "public"."vote"
-- ----------------------------
DROP TABLE "public"."vote";
CREATE TABLE "public"."vote" (
"poll_id" int4 NOT NULL,
"choice_id" int4 NOT NULL,
"vote_id" int4 NOT NULL,
"user_profile_id" int4 NOT NULL,
"deleted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of vote
-- ----------------------------
INSERT INTO "public"."vote" VALUES ('25', '1', '2', '1', 'f');
INSERT INTO "public"."vote" VALUES ('34', '9', '11', '2', 'f');
INSERT INTO "public"."vote" VALUES ('34', '8', '12', '2', 'f');
INSERT INTO "public"."vote" VALUES ('34', '9', '13', '2', 'f');
INSERT INTO "public"."vote" VALUES ('34', '8', '14', '2', 'f');
INSERT INTO "public"."vote" VALUES ('35', '13', '15', '2', 'f');
INSERT INTO "public"."vote" VALUES ('33', '7', '22', '2', 'f');
INSERT INTO "public"."vote" VALUES ('33', '5', '23', '2', 'f');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."article_image_id_seq" OWNED BY "article_image"."id";
ALTER SEQUENCE "public"."auth_group_id_seq" OWNED BY "auth_group"."id";
ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNED BY "auth_group_permissions"."id";
ALTER SEQUENCE "public"."auth_permission_id_seq" OWNED BY "auth_permission"."id";
ALTER SEQUENCE "public"."auth_user_groups_id_seq" OWNED BY "auth_user_groups"."id";
ALTER SEQUENCE "public"."auth_user_id_seq" OWNED BY "auth_user"."id";
ALTER SEQUENCE "public"."auth_user_user_permissions_id_seq" OWNED BY "auth_user_user_permissions"."id";
ALTER SEQUENCE "public"."django_admin_log_id_seq" OWNED BY "django_admin_log"."id";
ALTER SEQUENCE "public"."django_content_type_id_seq" OWNED BY "django_content_type"."id";
ALTER SEQUENCE "public"."south_migrationhistory_id_seq" OWNED BY "south_migrationhistory"."id";

-- ----------------------------
-- Indexes structure for table article
-- ----------------------------
CREATE INDEX "article_author_id" ON "public"."article" USING btree ("author_id");

-- ----------------------------
-- Primary Key structure for table "public"."article"
-- ----------------------------
ALTER TABLE "public"."article" ADD PRIMARY KEY ("article_id");

-- ----------------------------
-- Indexes structure for table article_image
-- ----------------------------
CREATE INDEX "article_image_image_id" ON "public"."article_image" USING btree ("image_id");

-- ----------------------------
-- Uniques structure for table "public"."article_image"
-- ----------------------------
ALTER TABLE "public"."article_image" ADD UNIQUE ("article_id", "image_id");
ALTER TABLE "public"."article_image" ADD UNIQUE ("image_id");
ALTER TABLE "public"."article_image" ADD UNIQUE ("image_id");

-- ----------------------------
-- Primary Key structure for table "public"."article_image"
-- ----------------------------
ALTER TABLE "public"."article_image" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table article_rate
-- ----------------------------
CREATE INDEX "article_rate_article_id" ON "public"."article_rate" USING btree ("article_id");
CREATE INDEX "article_rate_user_profile_id" ON "public"."article_rate" USING btree ("user_profile_id");

-- ----------------------------
-- Uniques structure for table "public"."article_rate"
-- ----------------------------
ALTER TABLE "public"."article_rate" ADD UNIQUE ("article_id", "user_profile_id");

-- ----------------------------
-- Checks structure for table "public"."article_rate"
-- ----------------------------
ALTER TABLE "public"."article_rate" ADD CHECK (rating >= 0);

-- ----------------------------
-- Primary Key structure for table "public"."article_rate"
-- ----------------------------
ALTER TABLE "public"."article_rate" ADD PRIMARY KEY ("article_rate_id");

-- ----------------------------
-- Indexes structure for table article_section
-- ----------------------------
CREATE INDEX "article_section_article_id" ON "public"."article_section" USING btree ("article_id");
CREATE INDEX "article_section_section_id" ON "public"."article_section" USING btree ("section_id");

-- ----------------------------
-- Uniques structure for table "public"."article_section"
-- ----------------------------
ALTER TABLE "public"."article_section" ADD UNIQUE ("article_id", "section_id");

-- ----------------------------
-- Primary Key structure for table "public"."article_section"
-- ----------------------------
ALTER TABLE "public"."article_section" ADD PRIMARY KEY ("article_section_id");

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_like" ON "public"."auth_group" USING btree ("name" "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table "public"."auth_group"
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table "public"."auth_group"
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id" ON "public"."auth_group_permissions" USING btree ("group_id");
CREATE INDEX "auth_group_permissions_permission_id" ON "public"."auth_group_permissions" USING btree ("permission_id");

-- ----------------------------
-- Uniques structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id" ON "public"."auth_permission" USING btree ("content_type_id");

-- ----------------------------
-- Uniques structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user
-- ----------------------------
CREATE INDEX "auth_user_username_like" ON "public"."auth_user" USING btree ("username" "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table "public"."auth_user"
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table "public"."auth_user"
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_groups
-- ----------------------------
CREATE INDEX "auth_user_groups_group_id" ON "public"."auth_user_groups" USING btree ("group_id");
CREATE INDEX "auth_user_groups_user_id" ON "public"."auth_user_groups" USING btree ("user_id");

-- ----------------------------
-- Uniques structure for table "public"."auth_user_groups"
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD UNIQUE ("user_id", "group_id");

-- ----------------------------
-- Primary Key structure for table "public"."auth_user_groups"
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_user_permissions
-- ----------------------------
CREATE INDEX "auth_user_user_permissions_permission_id" ON "public"."auth_user_user_permissions" USING btree ("permission_id");
CREATE INDEX "auth_user_user_permissions_user_id" ON "public"."auth_user_user_permissions" USING btree ("user_id");

-- ----------------------------
-- Uniques structure for table "public"."auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD UNIQUE ("user_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table "public"."auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table author
-- ----------------------------
CREATE INDEX "author_added_by" ON "public"."author" USING btree ("added_by");

-- ----------------------------
-- Uniques structure for table "public"."author"
-- ----------------------------
ALTER TABLE "public"."author" ADD UNIQUE ("user_profile_id");
ALTER TABLE "public"."author" ADD UNIQUE ("profile_image_id");

-- ----------------------------
-- Primary Key structure for table "public"."author"
-- ----------------------------
ALTER TABLE "public"."author" ADD PRIMARY KEY ("author_id");

-- ----------------------------
-- Indexes structure for table choice
-- ----------------------------
CREATE INDEX "choice_poll_id" ON "public"."choice" USING btree ("poll_id");

-- ----------------------------
-- Uniques structure for table "public"."choice"
-- ----------------------------
ALTER TABLE "public"."choice" ADD UNIQUE ("poll_id", "choice_id");

-- ----------------------------
-- Primary Key structure for table "public"."choice"
-- ----------------------------
ALTER TABLE "public"."choice" ADD PRIMARY KEY ("choice_id");

-- ----------------------------
-- Indexes structure for table comment
-- ----------------------------
CREATE INDEX "comment_user_profile_id" ON "public"."comment" USING btree ("user_profile_id");

-- ----------------------------
-- Uniques structure for table "public"."comment"
-- ----------------------------
ALTER TABLE "public"."comment" ADD UNIQUE ("comment_id");
ALTER TABLE "public"."comment" ADD UNIQUE ("article_id", "comment_id");

-- ----------------------------
-- Primary Key structure for table "public"."comment"
-- ----------------------------
ALTER TABLE "public"."comment" ADD PRIMARY KEY ("comment_id");

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id" ON "public"."django_admin_log" USING btree ("content_type_id");
CREATE INDEX "django_admin_log_user_id" ON "public"."django_admin_log" USING btree ("user_id");

-- ----------------------------
-- Checks structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CHECK (action_flag >= 0);

-- ----------------------------
-- Primary Key structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table "public"."django_content_type"
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table "public"."django_content_type"
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_expire_date" ON "public"."django_session" USING btree ("expire_date");
CREATE INDEX "django_session_session_key_like" ON "public"."django_session" USING btree ("session_key" "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Primary Key structure for table "public"."django_session"
-- ----------------------------
ALTER TABLE "public"."django_session" ADD PRIMARY KEY ("session_key");

-- ----------------------------
-- Primary Key structure for table "public"."image"
-- ----------------------------
ALTER TABLE "public"."image" ADD PRIMARY KEY ("image_id");

-- ----------------------------
-- Primary Key structure for table "public"."poll"
-- ----------------------------
ALTER TABLE "public"."poll" ADD PRIMARY KEY ("poll_id");

-- ----------------------------
-- Indexes structure for table poll_section
-- ----------------------------
CREATE INDEX "poll_section_poll_id" ON "public"."poll_section" USING btree ("poll_id");
CREATE INDEX "poll_section_section_id" ON "public"."poll_section" USING btree ("section_id");

-- ----------------------------
-- Uniques structure for table "public"."poll_section"
-- ----------------------------
ALTER TABLE "public"."poll_section" ADD UNIQUE ("poll_id", "section_id");

-- ----------------------------
-- Primary Key structure for table "public"."poll_section"
-- ----------------------------
ALTER TABLE "public"."poll_section" ADD PRIMARY KEY ("poll_section_id");

-- ----------------------------
-- Indexes structure for table publication
-- ----------------------------
CREATE INDEX "publication_user_profile_id" ON "public"."publication" USING btree ("user_profile_id");

-- ----------------------------
-- Uniques structure for table "public"."publication"
-- ----------------------------
ALTER TABLE "public"."publication" ADD UNIQUE ("article_id");
ALTER TABLE "public"."publication" ADD UNIQUE ("poll_id");

-- ----------------------------
-- Primary Key structure for table "public"."publication"
-- ----------------------------
ALTER TABLE "public"."publication" ADD PRIMARY KEY ("publication_id");

-- ----------------------------
-- Primary Key structure for table "public"."section"
-- ----------------------------
ALTER TABLE "public"."section" ADD PRIMARY KEY ("section_id");

-- ----------------------------
-- Indexes structure for table source
-- ----------------------------
CREATE INDEX "source_article_id" ON "public"."source" USING btree ("article_id");

-- ----------------------------
-- Uniques structure for table "public"."source"
-- ----------------------------
ALTER TABLE "public"."source" ADD UNIQUE ("article_id", "source_id");

-- ----------------------------
-- Primary Key structure for table "public"."source"
-- ----------------------------
ALTER TABLE "public"."source" ADD PRIMARY KEY ("source_id");

-- ----------------------------
-- Primary Key structure for table "public"."south_migrationhistory"
-- ----------------------------
ALTER TABLE "public"."south_migrationhistory" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table tag
-- ----------------------------
CREATE INDEX "tag_article_id" ON "public"."tag" USING btree ("article_id");

-- ----------------------------
-- Uniques structure for table "public"."tag"
-- ----------------------------
ALTER TABLE "public"."tag" ADD UNIQUE ("article_id", "tag_id");

-- ----------------------------
-- Primary Key structure for table "public"."tag"
-- ----------------------------
ALTER TABLE "public"."tag" ADD PRIMARY KEY ("tag_id");

-- ----------------------------
-- Uniques structure for table "public"."user_profile"
-- ----------------------------
ALTER TABLE "public"."user_profile" ADD UNIQUE ("user_id");
ALTER TABLE "public"."user_profile" ADD UNIQUE ("profile_image_id");
ALTER TABLE "public"."user_profile" ADD UNIQUE ("user_profile_id", "user_id");

-- ----------------------------
-- Primary Key structure for table "public"."user_profile"
-- ----------------------------
ALTER TABLE "public"."user_profile" ADD PRIMARY KEY ("user_profile_id");

-- ----------------------------
-- Indexes structure for table user_section
-- ----------------------------
CREATE INDEX "user_section_section_id" ON "public"."user_section" USING btree ("section_id");
CREATE INDEX "user_section_user_profile_id" ON "public"."user_section" USING btree ("user_profile_id");

-- ----------------------------
-- Uniques structure for table "public"."user_section"
-- ----------------------------
ALTER TABLE "public"."user_section" ADD UNIQUE ("user_profile_id", "section_id");

-- ----------------------------
-- Primary Key structure for table "public"."user_section"
-- ----------------------------
ALTER TABLE "public"."user_section" ADD PRIMARY KEY ("user_section_id");

-- ----------------------------
-- Indexes structure for table vote
-- ----------------------------
CREATE INDEX "vote_choice_id" ON "public"."vote" USING btree ("choice_id");
CREATE INDEX "vote_poll_id" ON "public"."vote" USING btree ("poll_id");
CREATE INDEX "vote_user_profile_id" ON "public"."vote" USING btree ("user_profile_id");

-- ----------------------------
-- Uniques structure for table "public"."vote"
-- ----------------------------
ALTER TABLE "public"."vote" ADD UNIQUE ("poll_id", "vote_id", "choice_id");

-- ----------------------------
-- Primary Key structure for table "public"."vote"
-- ----------------------------
ALTER TABLE "public"."vote" ADD PRIMARY KEY ("vote_id");

-- ----------------------------
-- Foreign Key structure for table "public"."article"
-- ----------------------------
ALTER TABLE "public"."article" ADD FOREIGN KEY ("author_id") REFERENCES "public"."author" ("author_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."article_image"
-- ----------------------------
ALTER TABLE "public"."article_image" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."article_image" ADD FOREIGN KEY ("image_id") REFERENCES "public"."image" ("image_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."article_rate"
-- ----------------------------
ALTER TABLE "public"."article_rate" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."article_rate" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."article_section"
-- ----------------------------
ALTER TABLE "public"."article_section" ADD FOREIGN KEY ("section_id") REFERENCES "public"."section" ("section_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."article_section" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_user_groups"
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."author"
-- ----------------------------
ALTER TABLE "public"."author" ADD FOREIGN KEY ("added_by") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."author" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."author" ADD FOREIGN KEY ("profile_image_id") REFERENCES "public"."image" ("image_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."choice"
-- ----------------------------
ALTER TABLE "public"."choice" ADD FOREIGN KEY ("poll_id") REFERENCES "public"."poll" ("poll_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."comment"
-- ----------------------------
ALTER TABLE "public"."comment" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."comment" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."poll_section"
-- ----------------------------
ALTER TABLE "public"."poll_section" ADD FOREIGN KEY ("poll_id") REFERENCES "public"."poll" ("poll_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."poll_section" ADD FOREIGN KEY ("section_id") REFERENCES "public"."section" ("section_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."publication"
-- ----------------------------
ALTER TABLE "public"."publication" ADD FOREIGN KEY ("poll_id") REFERENCES "public"."poll" ("poll_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."publication" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."publication" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."source"
-- ----------------------------
ALTER TABLE "public"."source" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."tag"
-- ----------------------------
ALTER TABLE "public"."tag" ADD FOREIGN KEY ("article_id") REFERENCES "public"."article" ("article_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."user_profile"
-- ----------------------------
ALTER TABLE "public"."user_profile" ADD FOREIGN KEY ("profile_image_id") REFERENCES "public"."image" ("image_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."user_profile" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."user_section"
-- ----------------------------
ALTER TABLE "public"."user_section" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."user_section" ADD FOREIGN KEY ("section_id") REFERENCES "public"."section" ("section_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."vote"
-- ----------------------------
ALTER TABLE "public"."vote" ADD FOREIGN KEY ("user_profile_id") REFERENCES "public"."user_profile" ("user_profile_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."vote" ADD FOREIGN KEY ("poll_id") REFERENCES "public"."poll" ("poll_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."vote" ADD FOREIGN KEY ("choice_id") REFERENCES "public"."choice" ("choice_id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
