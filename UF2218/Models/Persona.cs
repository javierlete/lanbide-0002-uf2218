using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UF2218.Models
{
    public class Persona
    {
        public long Id { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }

        public Persona(long id, string nombre, string apellidos)
        {
            Id = id;
            Nombre = nombre;
            Apellidos = apellidos;
        }

        public Persona() { }
        public override string ToString()
        {
            return $"{Id}: {Nombre} {Apellidos}";
        }
    }
}