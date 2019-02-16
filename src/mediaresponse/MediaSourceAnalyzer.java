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
public class MediaSourceAnalyzer {
    
    
    
    public void analyze(String url)
    {
        try
        {
        
            URL feedUrl = new URL(url);
        SyndFeedInput input = new SyndFeedInput();
                SyndFeed feed = input.build(new XmlReader(feedUrl));
                
                List entryList = feed.getEntries();

                //System.out.println(feed);
                for(int i=0; i< entryList.size();i++)
                {
                    SyndEntry entry = (SyndEntry) entryList.get(i);
                    
                    System.out.println("Title" + entry.getTitle());
                    System.out.println("URI " + entry.getUri());
                    System.out.println(entry.getContents());
                    
                }
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }
    
}
