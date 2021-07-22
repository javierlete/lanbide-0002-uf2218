using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using UF2218.Models;

namespace UF2218.Daos
{
    // Data Access Object
    public static class PersonaDao
    {
        private static readonly Dictionary<long, Persona> personas = new Dictionary<long, Persona>() {
            { 1L, new Persona(1L, "Javier", "Lete") },
            { 2L, new Persona(2L, "Pepe", "Pérez") }
        };

        public static IEnumerable<Persona> ObtenerTodas() => personas.Values;

        public static Persona ObtenerPorId(long id)
        {
            try
            {
                return personas[id];
            } catch
            {
                return null;
            }
        }

        public static void Insertar(Persona persona)
        {
            long id = personas.Keys.Last() + 1;
            persona.Id = id;
            personas[id] = persona;
        }

        public static void Modificar(Persona persona)
        {
            personas[persona.Id] = persona;
        }

        public static void Borrar(Persona persona)
        {
            Borrar(persona.Id);
        }
        public static void Borrar(long id)
        {
            personas.Remove(id);
        }
    }
}