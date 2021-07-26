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
        public DateTime FechaNacimiento { get; set; }
        public int Calificacion { get; set; }

        public Persona(long id, string nombre, string apellidos, DateTime fechaNacimiento, int calificacion)
        {
            Id = id;
            Nombre = nombre;
            Apellidos = apellidos;
            FechaNacimiento = fechaNacimiento;
            Calificacion = calificacion;
        }

        public Persona() { }
        public override string ToString()
        {
            return $"{Id}: {Nombre} {Apellidos} {FechaNacimiento} {Calificacion}";
        }
    }
}