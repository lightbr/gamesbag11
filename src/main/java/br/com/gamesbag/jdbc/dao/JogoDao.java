package br.com.gamesbag.jdbc.dao;




import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;

import br.com.gamesbag.jdbc.modelo.Jogo;


public final class JogoDao {

	private final String USER_AGENT = "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36";

	public void getJogo() throws IOException {

		String urlString = "http://thegamesdb.net/api/GetGame.php?id=2";
		
		URL url = new URL(urlString);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();

		// optional default is GET
		con.setRequestMethod("GET");

		//add request header
		con.setRequestProperty("User-Agent", USER_AGENT);

		int responseCode = con.getResponseCode();
		System.out.println("\nSending 'GET' request to URL : " + url);
		System.out.println("Response Code : " + responseCode);

		BufferedReader in = new BufferedReader(
		        new InputStreamReader(con.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();

		//print result
		System.out.println(response.toString());
		
		
		
		SAXBuilder builder = new SAXBuilder();
		System.out.println(url);
		
		String xml = response.toString();
		InputStream stream = new ByteArrayInputStream(xml.getBytes("UTF-8"));
		
		
		
		try {
			Document document = (Document) builder.build(stream);
			Element rootNode = document.getRootElement();
			List<Element> list = rootNode.getChildren("Game");

			for (int i = 0; i < list.size(); i++) {

				Element node = (Element) list.get(i);

				System.out.println("GameTitle : " + node.getChildText("GameTitle"));
				System.out.println("id : " + node.getChildText("id"));
				System.out.println("Paltaform : " + node.getChildText("Platform"));
				System.out.println("PlataformId : " + node.getChildText("PlatformId"));

			}

		} catch (IOException io) {
			System.out.println(io.getMessage());
		} catch (JDOMException jdomex) {
			System.out.println(jdomex.getMessage());
		}
	}
}






