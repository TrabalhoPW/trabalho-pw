package jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

/**
 * Data Access Object.
 */
public class UsuarioDao {

	
	//"usuario" é o nome da unidade de persistência no "persistence.xml".
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("usuario");

	public static void cadastrar(String nome, String login, String senha) {
		// Obter "conexão".
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();

		Usuario usuario = new Usuario();
		usuario.setNome(nome);
		usuario.setSenha(senha);
		usuario.setLogin(login);

		// Grava o objeto no banco de dados.
		em.persist(usuario);
		em.getTransaction().commit();
		em.close();
	}
	public static boolean PesquisarLogin(String login, String senha) {
		
		boolean encontrado = false;
		
		try {

			EntityManager em = emf.createEntityManager();

			Usuario pesq = em.find(Usuario.class, login);
			
			if(login.equals(pesq.getLogin())){
				
				encontrado = true;
				
			}
			
			}finally {}
		
		return encontrado;
		}
		
	public static void alterar(String matricula, String nome) {
	}

	public static void excluir(String matricula) {
	}

	public static List<Usuario> listar() {
		EntityManager em = emf.createEntityManager();
		//Não é SQL! É JPQL.
		String jpql = "from Usuario";
		TypedQuery<Usuario> query = em.createQuery(jpql, Usuario.class);
		List<Usuario> result = query.getResultList();
		em.close();
		return result;
	}
}
