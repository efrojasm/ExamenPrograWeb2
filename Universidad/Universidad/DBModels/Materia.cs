using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Universidad.DBModels
{
    public partial class Materia
    {
        public Materia()
        {
            Matricula = new HashSet<Matricula>();
        }

        public int Idmateria { get; set; }
        [Required(ErrorMessage ="El nombre es requerido")][StringLength(60)]
        public string Nombre { get; set; }
        public int? Estado { get; set; }
        public double Precio { get; set; }

        public ICollection<Matricula> Matricula { get; set; }
    }
}
