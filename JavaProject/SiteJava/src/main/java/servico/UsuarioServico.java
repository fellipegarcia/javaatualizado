package servico;

import java.util.List;

import dao.UsuarioDAO;
import modelo.Usuario;

public class UsuarioServico {
		UsuarioDAO dao = new UsuarioDAO();
	
	public boolean verificarUsuario(Usuario usuario) {
		Usuario u = dao.validarSignin(usuario);
		
		
		if(u.getNome() != null) {
			return true;
		} else {
			return false;
		}
	}
	
	// --- METODO P/ LISTAR USUARIO ---
	
	public List<Usuario> listarUsuario(){
		
		List<Usuario> lista = dao.listar();
		
		return lista;
	}
}