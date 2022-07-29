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





let listaModulo_I = [
    Indicadores(indicador: "Tasa bruta de escolarización (cobertura)", items: ["Total", "Mujeres", "Hombres"], codigo: "1.1.4", ficha: "1.1.4 - Tasa bruta de escolarización (cobertura) - Superior, nacional"),
    Indicadores(indicador: "Tasa bruta de escolarización (cobertura) por entidad federativa", items:  ["Total", "Mujeres", "Hombres"], codigo: "1.1.4",ficha: "1.1.4 - Tasa bruta de escolarización (cobertura) - Superior, nacional"),
    Indicadores(indicador: "Tasa bruta de escolarización (cobertura) por Institución de Educación Superior", items: ["Total", "Mujeres", "Hombres", "Con discapacidad", "Hablantes de lengua Indígena", "Escolaizado", "No escolarizado", "Mixto"], codigo: "1.1.4", ficha: "1.1.4 - Tasa bruta de escolarización (cobertura) - Superior, nacional"),
    Indicadores(indicador: "Tasa bruta de escolarización de la población en los primeros cuatro deciles de ingreso", items: ["Total", "Mujeres", "Hombres", "Con discapacidad", "Hablantes de lengua Indígena"], codigo: "1.3.7", ficha: "1.3.7 - Tasa bruta de escolarización de la población en los primeros cuatro deciles de ingreso - Superior, nacional"),
    Indicadores(indicador: "Porcentaje de eficiencia terminal del Sistema Educativo Nacional", items: ["Total", "Mujeres", "Hombres", "Con discapacidad"], codigo: "2.1", ficha: "2.1 - Porcentaje de eficiencia terminal del Sistema Educativo Nacional - Nacional"),
    Indicadores(indicador: "Porcentaje de abandono escolar", items: ["Total", "Mujeres", "Hombres", "Con discapacidad", "Hablantes de lengua Indígena"], codigo: "2.3.10", ficha: "2.3.10 - Porcentaje de abandono escolar - Superior, nacional"),
    Indicadores(indicador: "Gasto federal en educación como porcentaje del Producto Interno Bruto (por Institución de Educación Superior)", items: ["Total"], codigo: "6.2" ,ficha: "6.2 - Gasto federal en educación como porcentaje del Producto Interno Bruto"),
    Indicadores(indicador: "Gasto federal en educación como porcentaje del Producto Interno Bruto (por entidad federativa)", items: ["Total"], codigo: "6.2" ,ficha: "6.2 - Gasto federal en educación como porcentaje del Producto Interno Bruto")
]



let listaModulo_II = [
    Indicadores(indicador: "Indicador Tasa Bruta Escolarizada", items: ["Total", "Mujeres", "Hombres"], codigo: "1.1.4" ,ficha: "1.1.4, G001 F 1.1, U006 F 1.1, U080 F 1.1 - Tasa bruta de escolarización de educación superior."),
    Indicadores(indicador: "Indicador Tasa Bruta Escolarizada (Cobertura) por Entidad Federativa", items: ["Total", "Mujeres", "Hombres"], codigo: "1.1.4, G001 F 1.1, U006 F 1.1, U080 F 1.1 ", ficha: "1.1.4, G001 F 1.1, U006 F 1.1, U080 F 1.1 - Tasa bruta de escolarización de educación superior."),
    Indicadores(indicador: "Indicador Tasa Bruta de Escolarización (cobertura) por Institución de Educación Superior", items: ["Tasa Bruta Escolarización DGESUI","Tasa Bruta Escolarización Mujeres","Tasa Bruta Escolarización Hombres","Tasa Bruta Escolarización Con Discapacidad","Tasa Bruta Escolarización HLI","Porcentaje Modalidad"], codigo: "1.1.4, G001 F 1.1, U006 F 1.1, U080 F 1.1",ficha: "1.1.4, G001 F 1.1, U006 F 1.1, U080 F 1.1 - Tasa bruta de escolarización de educación superior."),
    Indicadores(indicador: "Porcentaje de Documentos Normativos en Operación en el Año T", items: ["Porcentaje de Documentos Normativos en Operación en el Año T"], codigo: "G001 P 1.1" ,ficha: "G001 P 1.1 - Porcentaje de documentos normativos en operación en el año t"),
    Indicadores(indicador: "Porcentaje de Profesores de Tiempo Completo de Instituciones de Educación Superior con Reconocimiento al Perfil Deseable vigente", items: ["Desglose Pofesores de Tiempo Completo (PTC)","Desglose Pofesores Perfil Deseable Vigente y SNI","Porcentaje PTC con Perfil Deseable"], codigo: "S247 F 1.1" ,ficha: "S247 F 1.1 - F01.1 Porcentaje de Profesores de Tiempo Completo de Instituciones de Educación Superior con Reconocimiento al Perfil Deseable vigente"),
    Indicadores(indicador: "Porcentaje de Cuerpos Académicos Consolidados y en Consolidación de las Instituciones de Educación Superior, por Área del Conocimiento", items: ["Desglose Cuerpos Académicos en Formación (CAEF)","Desglose Cuerpos Académicos en Consolidación (CAEC)","Desglose Cuerpos Académicos Consolidados (CAC)","Académicos (CA)","%CAEF/CA","%CAEC/CA","%CAC/CA"], codigo: "S247 P 1.1" ,ficha: "S247 P 1.1 - Porcentaje de cuerpos académicos consolidados y en consolidación de las Instituciones de Educación Superior, por área del conocimiento"),
    Indicadores(indicador: "Porcentaje de Reconocimientos al Perfil Deseable Otorgados a Profesores de Tiempo Completo de Instituciones Públicas de Educación Superior", items: ["Por Universidades","Por Subsistemas"], codigo: "S247 C 1.1" ,ficha: "S247 C 1.1 - C02.1 Porcentaje de reconocimientos al Perfil Deseable otorgados a Profesores de Tiempo Completo de Instituciones Públicas de Educación Superior"),
    Indicadores(indicador: "Porcentaje de Solicitudes de Apoyos para Estudios de Posgrado Aprobadas", items: ["Por Universidades","Por Subsistemas"], codigo: "S247 C 1.2" ,ficha: "S247 C 1.2 - C01.1 Porcentaje de solicitudes de apoyos para estudios de posgrado aprobadas"),
    Indicadores(indicador: "Porcentaje de Apoyos en IES para la Incorporación de Nuevos Profesores de Tiempo Completo y la Reincorporación de Exbecarios Otorgados", items: ["Por Universidades","Por Subsistemas"], codigo: "S247 C 1.3" ,ficha: "S247 C 1.3 - C03.1 Porcentaje de apoyos en IES para la incorporación de nuevos profesores de tiempo completo y la reincorporación de exbecarios otorgados"),
    Indicadores(indicador: "Porcentaje de Cuerpos Académicos en las IES que Cambian a un Grado de Consolidación Superior por Año", items: ["Por Universidades","Por Subsistemas"], codigo: "S247 C 1.4" ,ficha: "S247 C 1.4 - C04.1 Porcentaje de cuerpos académicos en las IES que cambian a un grado de consolidación superior por año"),
    Indicadores(indicador: "Porcentaje de Solicitudes de Apoyo Aprobadas para Proyectos de Investigación a Cuerpos Académicos en IES", items: ["Por Universidades","Por Subsistemas"], codigo: "S247 A 03.1" ,ficha: "S247 A 03.1 - Porcentaje de solicitudes de apoyo aprobadas para proyectos de investigación a cuerpos académicos en IES"),
    Indicadores(indicador: "Porcentaje de Absorción de Alumnos Egresados de la Educación Media Superior que Ingresan a la Educación Superior de Instituciones en el Ámbito de la DGESUI Proporcionada por los Organismos Descentralizados Estatales.", items: ["Índice Absorción"], codigo: "U006 P 1.1" ,ficha: "U006 P 1.1 - Porcentaje de absorción de alumnos egresados de la educación media superior que ingresan a la educación superior de instituciones en el ámbito de la DGESUI proporcionada por los Organismos Descentralizados Estatales."),
    Indicadores(indicador: "Monto promedio de Recursos Radicados por Alumno Inscrito a una Institución de Educación Superior Universitaria Perteneciente a la DGESUI", items: ["Monto Promedio por Alumno"], codigo: "U006 C 1.1" ,ficha: "U006 C 1.1 - Monto promedio de recursos radicados por alumno inscrito a una Institución de Educación Superior Universitaria perteneciente a la DGESUI"),
    Indicadores(indicador: "Monto Promedio de Recursos Radicados a Instituciones de Educación Superior Universitaria Perteneciente a la DGESUI", items: ["Monto promedio por instituciones"], codigo: "U006 C 1.2" ,ficha: "U006 C 1.2 - Monto promedio de recursos radicados a Instituciones de Educación Superior Universitaria perteneciente a la DGESUI"),
    Indicadores(indicador: "Porcentaje de Centros, Organizaciones y Sociedad Civil que Continúan con la Prestación de Servicios Vinculados a la Educación en el Año", items: ["Porcentaje de Centros, Organizaciones y Sociedad Civil"], codigo: "U080 P 1.1" ,ficha: "U080 P 1.1 - P01.2 Porcentaje de Centros, Organizaciones y Sociedad Civil que continuan con la prestación de servicios vinculados a la educación en el año"),
    Indicadores(indicador: "Porcentaje de Apoyos para la Operación Otorgados a Centros, Organizaciones y Sociedad Civil Vinculados al Tipo de Educación Superior Respecto a los Programados", items: ["Porcentaje de Apoyos para la Operación Otorgados a Centros, Organizaciones y Sociedad Civil"], codigo: "U080 C 1.1" ,ficha: "U080 C 1.1 - Porcentaje de apoyos para la operación otorgados a Centros, Organizaciones y sociedad civil vinculados al tipo de educación superior respecto a los programados")
]


let listaModulo_III = [
    Indicadores(indicador: "Ordinario U006", items: ["Instrumento","Montos asignados","Matrícula","Subsidio por alumno"], codigo: "ORD 1.1" ,ficha: "ORD 1.1 - Ordinario U006"),
    Indicadores(indicador: "Federal U006", items: ["Calendarizado","Reportado por la universidad","Según plataforma"], codigo: "Federal 1.1" ,ficha: "Federal 1.1 - Federal U006"),
    Indicadores(indicador: "Estatal U006", items: ["Calendarizado","Según plataforma"], codigo: "Estatal 1.1",ficha: "Estatal 1.1 - Estatal U006"),
    Indicadores(indicador: "Universidades en crisis", items: ["Monto público","Aportación federal","Aportación estatal"], codigo: "Universidades en crisis 1.1",ficha: "Universidades en crisis 1.1 - Universidades en crisis"),
    Indicadores(indicador: "Extraordinario S247", items: ["PRODEP S247"], codigo: "Extraordinario 1.2",ficha: "Extraordinario 1.2 - Extraordinario S247"),
    Indicadores(indicador: "Extraordinario U006", items: ["Recurso extraordinario","Regreso a clases","Inclusión Estancias U006","Incremento Salarial U006","Déficit U006"], codigo: "Extraordinario 1.1",ficha: "Extraordinario 1.1 - Extraordinario U006"),
    Indicadores(indicador: "U080", items: ["Recursos asignados"], codigo: "U080 1.1",ficha: "U080 1.1 - Programa presupuestal U080"),
    Indicadores(indicador: "Indicadores Entidad", items: ["Cobertura","Cobertura 2012-2013","Matrícula Nivel Superior","Matrícula Posgrado","Matrícula Nivel Medio Superior","Desglose IES","Matrícula ES Modalidad","PTC, Perfil Deseable, SNI","Matrícula Discapacidad ES","Matrícula HLI ES","Matrícula por áreas de la CMPE","Matrícula Buena Calidad Normal, TSU y Lic","Matrícula Subsistema ES"], codigo: "Ind Entidad 1.1",ficha: "Ind Entidad 1.1 - Indicadores básicos por entidad"),
    Indicadores(indicador: "Indicadores Subsistema", items: ["Matrícula Nivel Educativo","Total Discapacidad ES","Total HLI ES","Egresados ES","Titulados ES","Matrícula por Modalidad","Matrícula por Programa","Total de Programas","Matrícula por áreas de la CMPE"], codigo: "Ind Subsistema 1.1",ficha: "Ind Subsistema 1.1 - Indicadores básicos por subsistema"),
    Indicadores(indicador: "Indicadores IES", items: ["Bachillerato Tecnológico y Profesional Técnico","EMS","ES Nivel Educativo","ES Modalidad, Hombres y Mujeres","Áreas de la CMPE",
        "Oferta Educativa (activos) CMPE","Alumnos TSU y LIC","Alumnos Posgrado","Alumnos Discapacidad TSU, LIC, POSG","Alumnos HLI TSU, LIC, POSG","Alumnos Titulados",
        "Alumnos Nuevo Ingreso TSU, LIC, POSG","Alumnos Egresados TSU, LIC, POSG","Oferta Educativa (activos) NE y TP","Plantilla Administrativo","Personal Docente",
        "Programas Buena Calidad, Evaluables y Competititvidad Académica","% Programas","Número Programas TSU, LIC, POSG","% Número Programas","Alumnos Nivel Superior Modalidad Escolar",
        "Alumnos Nivel Superior Modalidad no Escolarizada","Personal de Facultades, Escuelas, Centros, Divisiones o Departamentos","Personal en Áreas Centrales","Total Personal Institución",
        "Total de Personal Docente Escolarizado","Total de Personal Docente no Escolarizado","Carrera, Programas y Alumnos de la Modalidad Escolarizada",
        "Carrera, Programas y Alumnos de la Modalidad no Escolarizada","Desglose Profesores de Tiempo Completo (PTC)","Desglose Profesores Perfil Deseable vigente y SNI",
        "Cuerpos Académicos (CA)","Desglose CAEF","Desglose CAEC","Desglose CAC","Desglose CA"], codigo: "Ind IES",ficha: "Ind IES - Indicadores básicos IES")
]



struct Indicadores : Identifiable {
    let id = UUID()
    var indicador: String
    var items : [String]
    var codigo : String
    var ficha: String
}





