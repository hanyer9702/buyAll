package com.buy.all.modules.item;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class ItemServiceImpl {

	public static void parsingItem() throws IOException{
		String url = ("https://search.shopping.naver.com/catalog/29669228618?query=%EA%B0%80%EA%B5%AC%EC%9D%98%20%EA%B0%80%EC%B9%98%20%EA%B5%BF%EB%AA%A8%EB%8B%9D%20%EC%9B%90%EB%AA%A9&NaPm=ct%3Dl1zu5bd4%7Cci%3D2c1786841918030fd017bc76b33b36b15a661de9%7Ctr%3Dslsl%7Csn%3D95694%7Chk%3D48c86a7033448db66650281e30d5d985b0cf99eb");
		Document doc = Jsoup.connect(url).get();
		
		Elements contents = doc.select(".productByMall_list_seller__2-bzE");
		
		String text = contents.text();

		System.out.println(text);
		
	}
}
