package xender.app.statistic;

import org.nutz.lang.random.R;

@SuppressWarnings("all")
public class SummaryVO {

	private String name;
	private String imgurl;
	
	private String clickcount;
	private String showcount;
	private String downloadcount;

	
	
	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getClickcount() {
		return clickcount;
	}

	public void setClickcount(String clickcount) {
		this.clickcount = clickcount;
	}

	public String getShowcount() {
		return showcount;
	}

	public void setShowcount(String showcount) {
		this.showcount = showcount;
	}

	public String getDownloadcount() {
		return downloadcount;
	}

	public void setDownloadcount(String downloadcount) {
		this.downloadcount = downloadcount;
	}

	public static SummaryVO demo() {
		SummaryVO vo = new SummaryVO();

		vo.setClickcount(String.valueOf(R.random(10, 80)));
		vo.setShowcount(String.valueOf(R.random(10, 80)));
		vo.setDownloadcount(String.valueOf(R.random(10, 80)));

		if (Integer.valueOf(vo.getClickcount()) > 20 && Integer.valueOf(vo.getClickcount()) < 30) {
			vo.setName("闪传");
		} else if (Integer.valueOf(vo.getClickcount()) > 30 && Integer.valueOf(vo.getClickcount()) < 40) {
			vo.setName("Weline");
		} else if (Integer.valueOf(vo.getClickcount()) > 40 && Integer.valueOf(vo.getClickcount()) < 50) {
			vo.setName("QQ");
		} else if (Integer.valueOf(vo.getClickcount()) > 50 && Integer.valueOf(vo.getClickcount()) < 60) {
			vo.setName("微信");
		} else if (Integer.valueOf(vo.getClickcount()) > 60) {
			vo.setName("支付宝钱包");
		} else {
			vo.setName("Xender");
		}

		return vo;
	}

}
