package data;

import java.util.ArrayList;
import java.util.List;

public class Data {
	List<String> takenPhoto = new ArrayList<String>();
	
	public List<String> getData(String data) {
		//撮影された写真を受け取り、渡す
		takenPhoto.add(data);
		
		return takenPhoto;
	}
	
	public void show() {
		//非同期通信を行い画像を表示する
	}
	
	public void deleteData() {
		//保持されている写真を削除する
	}
}
