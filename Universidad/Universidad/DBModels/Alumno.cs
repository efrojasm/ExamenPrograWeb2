using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Universidad.DBModels
{
    public partial class Alumno
    {
        public Alumno()
        {
            Matricula = new HashSet<Matricula>();
        }

        public int Idalumno { get; set; }
        [Required(ErrorMessage ="El campo Nombre es Requerido")]
        public string Nombre { get; set; }
        [StringLength(60)]
        public string Apellido1 { get; set; }
        public string Apellido2 { get; set; }
        public DateTime? FechaNacimiento { get; set; }

        public ICollection<Matricula> Matricula { get; set; }
    }
}
