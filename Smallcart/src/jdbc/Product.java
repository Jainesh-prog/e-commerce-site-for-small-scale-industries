package jdbc;
import com.crce.category.Category;
public class Product {

		private String pname;
		private int price;
		private String description;
		private String img;
		private Category category;
		public String getPname() {
			return pname;
		}
		public void setPname(String pname) {
			this.pname = pname;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getImg() {
			return img;
		}
		public void setImg(String img) {
			this.img = img;
		}
		public Category getCategory() {
			return category;
		}
		public void setCategory(Category category) {
			this.category = category;
		}
		public Product(String pname, int price, String description, String img, Category category) {
			super();
			this.pname = pname;
			this.price = price;
			this.description = description;
			this.img = img;
			this.category = category;
		}
		public Product() {
			super();
		}
		@Override
		public String toString() {
			return "Product [pname=" + pname + ", price=" + price + ", description=" + description + ", img=" + img
					+ ", category=" + category + "]";
		}
		
		
}

