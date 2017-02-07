/**
 * 
 */
package presentation.utilisateurprofil.pojo;

/**
 * @author TITRE PRO CDI
 *
 */
public class UtilisateurConnecteDto {

	private int id;
	private String nom;
	private String profil;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}

	/**
	 * @param nom
	 *            the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}

	/**
	 * @return the profil
	 */
	public String getProfil() {
		return profil;
	}

	/**
	 * @param profil
	 *            the profil to set
	 */
	public void setProfil(String profil) {
		this.profil = profil;
	}
}
