using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Universidad.DBModels
{
    public partial class Matricula
    {
        public int Idmatricula { get; set; }
        public int? Idalumno { get; set; }
        public int? Idprofesor { get; set; }
        public int? Idmateria { get; set; }
        [Required (ErrorMessage ="La nota debe ser entre 40 y 100")][Range(40,100)]
        public double? Nota { get; set; }

        public Alumno IdalumnoNavigation { get; set; }
       
        public Materia IdmateriaNavigation { get; set; }
        
        public Profesor IdprofesorNavigation { get; set; }
        

    }
}
