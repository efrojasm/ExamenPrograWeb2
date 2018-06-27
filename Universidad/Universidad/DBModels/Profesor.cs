using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Universidad.DBModels
{
    public partial class Profesor
    {
        public Profesor()
        {
            Matricula = new HashSet<Matricula>();
        }

        public int Idprofesor { get; set; }
        [Required]
        [StringLength(60)]
        public string Nombre { get; set; }
        [StringLength(60)]
        public string Apellido1 { get; set; }
        [StringLength(60)]
        public string Apellido2 { get; set; }
        public int? Estado { get; set; }

        public ICollection<Matricula> Matricula { get; set; }
    }
}
