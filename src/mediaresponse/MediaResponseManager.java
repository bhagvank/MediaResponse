/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mediaresponse;

import com.sun.syndication.feed.synd.SyndEntry;
import com.sun.syndication.feed.synd.SyndFeed;
import com.sun.syndication.io.SyndFeedInput;
import com.sun.syndication.io.XmlReader;
import java.net.URL;
import java.util.List;

/**
 *
 * @author bhagvan_kommadi
 */
public class MediaResponseManager {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        System.out.println("Media Response Manager");
        
        MediaSourceAnalyzer analyzer = new MediaSourceAnalyzer();
        analyzer.analyze("http://rss.cnn.com/rss/edition.rss");

    }
    
}
