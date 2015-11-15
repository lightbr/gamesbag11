package br.com.gamesbag.jdbc.modelo;

public class Jogo {
	
	private String idJogo;
	private String gameTitle;
	private String platformId;
	private String platform;
	private String releaseDate;
	private String overview;
	private String esrb;
	private String publisher;
	private String developer;
	private String rating;
	private String boxArt;
	private String genre;
	
	
	public String getIdJogo() {
		return idJogo;
	}
	public void setIdJogo(String idJogo) {
		this.idJogo = idJogo;
	}
	public String getGameTitle() {
		return gameTitle;
	}
	public void setGameTitle(String gameTitle) {
		this.gameTitle = gameTitle;
	}
	public String getPlatformId() {
		return platformId;
	}
	public void setPlatformId(String platformId) {
		this.platformId = platformId;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	public String getOverview() {
		return overview;
	}
	public void setOverview(String overview) {
		this.overview = overview;
	}
	public String getEsrb() {
		return esrb;
	}
	public void setEsrb(String esrb) {
		this.esrb = esrb;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getDeveloper() {
		return developer;
	}
	public void setDeveloper(String developer) {
		this.developer = developer;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getBoxArt() {
		return boxArt;
	}
	public void setBoxArt(String boxArt) {
		this.boxArt = boxArt;
	}
	
	public String getGenre() {
		return genre;
	}
	
	public void setGenre(String genre) {
		this.genre = genre;
	}
}




