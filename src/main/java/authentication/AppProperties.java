/**
 * 
 */
package authentication;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @author JARVIS
 *
 */
public class AppProperties {

	static Properties properties = new Properties();
	static{
		try {
			String propertyFileName = "app.properties";
			InputStream inputStream = AppProperties.class.getClassLoader().getResourceAsStream(propertyFileName);
			if (inputStream != null) {
				properties.load(inputStream);
			}
		} catch (IOException e) {
			e.printStackTrace();

		}
		
		// read XML
	}
	
	public static String getProperty(String property) {
		String deploymentType = "prod";
		deploymentType = properties.getProperty(property);
		return deploymentType;
	}
}
