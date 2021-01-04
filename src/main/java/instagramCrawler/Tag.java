package instagramCrawler;

public class Tag implements Comparable<Tag> {

	private String name;
	private int media_count;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Tag() {
		super();
	}

	public int getMedia_count() {
		return media_count;
	}

	public void setMedia_count(int media_count) {
		this.media_count = media_count;
	}

	public Tag(String name, int media_count) {
		super();
		this.name = name;
		this.media_count = media_count;
	}

	@Override
	public String toString() {
		return "name=" + name + ", totalMediaPublished=" + media_count;
	}


	public int compareTo(Tag o) {
		if (o != null) {
			return Integer.compare(this.media_count, o.media_count);
		}
		return 0;
	}
}
