<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'db_wordpress' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'sleleu' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', 'abcd' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'mariadb' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Fqj;txhe-4U&U`1Uj5>(Bse&:Qc-d<#Y0*)bn=2 G.I,fZ)|V[&8|vh}S3tVF&];');
define('SECURE_AUTH_KEY',  'vxvuqo;CiSE-]|q#ObsL2wN2f7e|:[;^&(e^KspK;tVij @Q?xdv6sp?_{[[%nv$');
define('LOGGED_IN_KEY',    '{Z&(z6k:571c*CAZeyA]RDBl:6&saH2brZDv%RrK3/Sx`z-OmEgA584{p+(/;@cU');
define('NONCE_KEY',        'VMmUrqp@GN^!|?Cw9{V;cMCYgLc(#GDG+ncwYp/-?e:uVt@+#^XSMd&0}nncQkE<');
define('AUTH_SALT',        'Q%z_]/PuW4qq/NB(0x8_q_FUw<U ;y4M@+mwpKdf]$.4UOWFZ.pvnj/{*`9on/|m');
define('SECURE_AUTH_SALT', '9_ TJ3h@<^O:lG{(M{vhs%o#=B809W-$bLLT?J?n%vLCoP-x1dXs{|-S0zFH#ln-');
define('LOGGED_IN_SALT',   'jf;dih8[E,Lb$4QngJnwb*`^chWE*$7-FE;h89FvPs+MPO|;ahCNCA~ii&S+Z+C_');
define('NONCE_SALT',       'Lq AUf:!O;9iqeH^]*+l_zz<J:Tsw)`*GnMd7(ah,Oj!#RuoF!|]v|w&|CKYh4DO');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );