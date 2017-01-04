package com.aa.model;



import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.GeneratedValue;

@Entity
public class Product {

		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private int pid;
		private String sid;
		private int cid;
		public String getSid() {
			return sid;
		}
		public void setSid(String sid) {
			this.sid = sid;
		}
		private int quantity;
		private String name;
		private String description;
		private double price;
		
	@Transient
		private MultipartFile file;
	private String imgs;
		
		
		public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
		public String getImgs() {
		return imgs;
	}
	public void setImgs(String imgs) {
		this.imgs = imgs;
	}
		public MultipartFile getFile() {
			return file;
		}
		public void setFile(MultipartFile file) {
		this.file = file;	}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public int getPid() {
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}
		public double getPrice() {
			return price;
		}
		public void setPrice(double price) {
			this.price = price;
		}
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		
		

}
