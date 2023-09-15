package com.kwce.domain;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class Rate {
	private int sem;
	private float rate;
	public int getSem() {
		return sem;
	}
	public void setSem(int sem) {
		this.sem = sem;
	}
	public float getRate() {
		return rate;
	}
	public void setRate(float rate) {
		this.rate = rate;
	}
	


}