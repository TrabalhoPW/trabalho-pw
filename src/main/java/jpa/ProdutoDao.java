package jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

/**
 * Data Access Object.
 */
public class ProdutoDao {

	
	//"usuario" é o nome da unidade de persistência no "persistence.xml".
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("produto");

	public static void AdicaoDeProdutos	(String nome, double preco) {
		// Obter "conexão".
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();

		Produto produto = new Produto();
		produto.setNome(nome);
		produto.setPreco(preco);

		// Grava o objeto no banco de dados.
		em.persist(produto);
		em.getTransaction().commit();
		em.close();
	}
	public static void AlteracaoDeProdutos (String nome, double novopreco, String novonome) {
		// Obter "conexão".
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();

		Produto produto = em.find(Produto.class, nome);
		produto.setNome(novonome);
		produto.setPreco(novopreco);

		// Grava o objeto no banco de dados.
		em.persist(produto);
		em.getTransaction().commit();
		em.close();
	}
	public static void RemocaoDeProdutos (String nome) {
		// Obter "conexão".
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();

		Produto produto = em.find(Produto.class, nome);

		// Grava o objeto no banco de dados.
		em.remove(produto);
		em.getTransaction().commit();
		em.close();
	}
	public static void PesquisarProduto(String nome) {
		
		try {

			EntityManager em = emf.createEntityManager();

			Produto pesq = em.find(Produto.class, nome);
			
			//System.out.println(pesq.getLogin());
			//System.out.println(login);
			
			if(nome.equals(pesq.getNome())){
				
			
			}else{
			}
			}finally {}
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
