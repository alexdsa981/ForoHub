package forohub.api.forohub.domain.usuarios;

import forohub.api.forohub.domain.respuesta.Respuesta;
import forohub.api.forohub.domain.topico.Topico;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.Set;

@Table(name = "usuario")
@Entity(name = "Usuario")
@Getter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of = "id")
public class Usuario {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nombre;
    private String correoElectronico;
    private String contraseña;

    @OneToMany(mappedBy = "usuario", fetch = FetchType.LAZY)
    private Set<Topico> topicos;

    @OneToMany(mappedBy = "usuario", fetch = FetchType.LAZY)
    private Set<Respuesta> respuestas;
}
