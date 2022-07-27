import SwiftUI
extension Font{
    
    static func montserrat(size: Int) -> Font {
        return Font.custom("Montserrat", size: CGFloat(size))
    }
    static func titulo() -> Font {
        return Font.custom("Montserrat", size: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 30 : 20)
    }
    static func texto() -> Font {
        return Font.custom("Montserrat", size: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 25 : 15)
    }
    static func texto1() -> Font {
        return Font.custom("Montserrat", size: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 28 : 18)
    }
    static func texto2() -> Font {
        return Font.custom("Montserrat", size: UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? 22 : 12)
    }
}


let text_info_inicio = """
                 La información en esta plataforma está dividida en Módulos para una mejor distribución y un fácil acceso. En el Módulo I, se presentan los indicadores de la contribución de las Instituciones de los subsistemas de la DGESUI al Programa Sectorial de Educación 2020-2024 relacionados directamente con la DGESUI desagregados en los niveles: nacional, por entidad federativa y por Institución de Educación Superior (IES) que son responsabilidad de la DGESUI. En el Módulo II, se presentan los Indicadores de las Matrices de Indicadores para Resultados (MIR) de los programas presupuestales que opera la DGESUI, conforme a lo reportado en las Matrices de Indicadores, sobre todo aquellos para los fines y propósitos que persiguen los programas. En el Módulo III, Repositorio de Datos Estadísticos de las IES responsabilidad de la DGESUI. La información puede ser consultada en línea o bien descargada para su manipulación en formato CSV.
                 """

let text_info_acerca_de = """
El Cuadro de Mando Integral (CMI) de los Subsistemas de Universidades Públicas Estatales (35 instituciones), Universidades Públicas Estatales de Apoyo Solidario (23 instituciones) y las Universidades Interculturales (10 instituciones), es una herramienta desarrollada para medir la evolución de las actividades de los Subsistemas de Educación que están bajo responsabilidad de la Dirección General de Educación Superior Universitaria e Intercultural (DGESUI).

**Objetivos**
Identificar las acciones inductoras de primer y segundo nivel con sus respectivos indicadores, para dar estructura y sentido a la información que ya existe.

Contar con una herramienta para medir la evolución de las actividades de los Subsistemas de Educación Superior que están bajo responsabilidad de la DGESUI desde un punto de vista estratégico y con una perspectiva general. De esta forma, las autoridades universitarias lo emplearán por su valor al contribuir de forma eficaz en la visión plasmada en el Artículo Tercero Constitucional, en la Ley General de Educación, en el Programa Sectorial de Educación y en sus propios Planes de Desarrollo.

**Antecedentes**

En la educación superior históricamente se han enfatizado las medidas académicas que son fácilmente cuantificables. Por ejemplo:

* Número de profesores y alumnos.

* Grado académico promedio.

* Calificaciones de exámenes estandarizados.

* Índices de aceptación.

* Índices de retención.

* Índices de deserción.

* Índices de egreso.

* Índice de titulación.

* Número de publicaciones de los productos de investigación.

* Número de títulos y volúmenes.

Es decir, estas medidas no presentan una imagen clara de la situación actual de la Educación superior si no están vinculadas a la estrategia. No ayudan a identificar los factores de éxito de las universidades, no capturan (por no estar vinculados) a los objetivos implícitos en la misión, visión o políticas que permitirán que la institución logre el posicionamiento y obtenga las ventajas competitivas deseadas.

Variables importantes ligadas al quehacer académico, pero que son menos obvias, no han sido foco de atención para la construcción de indicadores. Algunas de estas variables son:

* Niveles de satisfacción de los estudiantes.
* El impacto a la sociedad.
* Impacto y motivación para el aprendizaje durante toda la vida.

Existen indicadores externos como los de la OCDE, la UNESCO, los organismos acreditadores, las normas ISO, los programas federales de fortalecimiento institucional y las fórmulas de distribución de presupuesto entre otros.

**Sustento**

Alineación con las actividades sustantivas requeridas para cumplir con lo estipulado en la Ley General de Educación y al Plan Sectorial de Educación 2020 - 2024.

Respecto al Sistema de Información en el proyecto de decreto de la Ley General de Educación Superior del 9 de diciembre del 2020 aprobado en la cámara de senadores, el artículo 59, fracción VIII plantea: la difusión de procedimientos, mecanismos e instrumentos empleados en los procesos de evaluación y acreditación de la educación superior, en términos de normatividad aplicable.

Lo anterior, es consistente con las especificaciones del Artículo 67, Fracción V. Donde se establece que "los recursos públicos que reciban las Instituciones Públicas de Educación Superior deberán administrarse con eficiencia, responsabilidad y transparencia, a través de mecanismos que permitan la rendición de cuentas.”

Ya que el ejercicio de los recursos públicos que reciban las Instituciones Públicas de Educación Superior estará sujeto a las disposiciones y criterios establecidos en las leyes aplicables, debiendo observar los principios de legalidad, eficiencia, eficacia, economía, transparencia, rendición de cuentas y honradez. Citando el artículo 61:

 "La Secretaría implementará un sistema de información de la educación superior de consulta pública como un instrumento de apoyo a los procesos de planeación y evaluación. Para la operación de dicho sistema, establecerá los procesos bajo los cuales las autoridades educativas, Instituciones de Educación Superior, además de las instancias y sectores vinculados con el tipo de educación superior proporcionen información que integre el sistema al que se refiere este artículo, la cual tendrá fines estadísticos, de planeación, evaluación y de información a la sociedad, a través de los medios que para tal efecto se determinen." (Iniciativa Ley General de Educación Superior, 09 de diciembre de 2020)

Nuestro sistema contribuiría a la consolidación del sistema referido al artículo 61 de la Ley General de Educación Superior.
"""


var listaModulo_I = ["Tasa bruta de escolarización (cobertura)","Tasa bruta de escolarización (cobertura) por entidad federativa","Tasa bruta de escolarización (cobertura) por Institución de Educación Superior","Tasa bruta de escolarización de la población en los primeros cuatro deciles de ingreso","Porcentaje de eficiencia terminal del Sistema Educativo Nacional","Porcentaje de abandono escolar","Gasto federal en educación como porcentaje del Producto Interno Bruto (por Institución de Educación Superior)","Gasto federal en educación como porcentaje del Producto Interno Bruto (por entidad federativa)"]
var listaModulo_II = ["Indicador Tasa Bruta Escolarizada","Indicador Tasa Bruta Escolarizada (Cobertura) por Entidad Federativa","Indicador Tasa Bruta de Escolarización (cobertura) por Institución de Educación Superior","Porcentaje de Documentos Normativos en Operación en el Año T","Porcentaje de Profesores de Tiempo Completo de Instituciones de Educación Superior con Reconocimiento al Perfil Deseable vigente","Porcentaje de Cuerpos Académicos Consolidados y en Consolidación de las Instituciones de Educación Superior, por Área del Conocimiento","Porcentaje de Reconocimientos al Perfil Deseable Otorgados a Profesores de Tiempo Completo de Instituciones Públicas de Educación Superior","Porcentaje de Solicitudes de Apoyos para Estudios de Posgrado Aprobadas","Porcentaje de Apoyos en IES para la Incorporación de Nuevos Profesores de Tiempo Completo y la Reincorporación de Exbecarios Otorgados","Porcentaje de Cuerpos Académicos en las IES que Cambian a un Grado de Consolidación Superior por Año","Porcentaje de Solicitudes de Apoyo Aprobadas para Proyectos de Investigación a Cuerpos Académicos en IES","Porcentaje de Absorción de Alumnos Egresados de la Educación Media Superior que Ingresan a la Educación Superior de Instituciones en el Ámbito de la DGESUI Proporcionada por los Organismos Descentralizados Estatales.","Monto promedio de Recursos Radicados por Alumno Inscrito a una Institución de Educación Superior Universitaria Perteneciente a la DGESUI","Monto Promedio de Recursos Radicados a Instituciones de Educación Superior Universitaria Perteneciente a la DGESUI","Porcentaje de Centros, Organizaciones y Sociedad Civil que Continúan con la Prestación de Servicios Vinculados a la Educación en el Año","Porcentaje de Apoyos para la Operación Otorgados a Centros, Organizaciones y Sociedad Civil Vinculados al Tipo de Educación Superior Respecto a los Programados"]
var listaModulo_III = ["Ordinario U006","Federal U006","Estatal U006","Universidades en crisis","Extraordinario S247","Extraordinario U006","U080","Indicadores Entidad","Indicadores Subsistema","Indicadores IES"]
