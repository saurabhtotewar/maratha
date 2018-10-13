package com.eagle.Marathavaduvar.entity;


	import java.io.Serializable;

	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.GenerationType;
	import javax.persistence.Id;
	import javax.persistence.Table;
	import javax.persistence.UniqueConstraint;

	@Entity
	@Table(name = "MarathaLogin", uniqueConstraints = {@UniqueConstraint(columnNames = {"username", "username"})})
	
	public class MarathaUserlogin  implements Serializable {


		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name = "CADID")
		private Long id;

	
		@Column(name="USERNAME")
		private String userName;


		@Column(name="PASSWORD")
		private String password;


		@Column(name="ROLE")
		private String role;

		@Column(name="ENABLE")
		private boolean enabled;

		
		public MarathaUserlogin() {
			super();
		}

		public MarathaUserlogin(String username, String password, String role, boolean enabled) {
			super();
			this.userName = username;
			this.password = password;
			this.role = role;
			this.enabled = enabled;
		}

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getUsername() {
			return userName;
		}

		public void setUsername(String username) {
			this.userName = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getRole() {
			return role;
		}

		public void setRole(String role) {
			this.role = role;
		}

		public boolean isEnabled() {
			return enabled;
		}

		public void setEnabled(boolean enabled) {
			this.enabled = enabled;
		}


		@Override
		public String toString() {
			return "MarathaUserlogin [id=" + id + ", username=" + userName + ", password=" + password + ", role=" + role
					+ ", enabled=" + enabled + ", candidate="+ "]";
		}

	}



