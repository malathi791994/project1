package com.aa.model;



import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.GeneratedValue;

@Entity
public class Supplier {

		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private int id;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		private String name;
		private String description;
		
	/*@Transient
		private MultipartFile file;
	private String imgs;
		
		
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
		this.file = file;	}*/
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
		
	
		

}
