package dtu.library.dto;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

import dtu.library.domain.Cd;
import dtu.library.domain.Medium;

@Entity
@DiscriminatorValue("C")
public class CdInfo extends MediumInfo {

	public CdInfo(String title, String author, String signature) {
		super(title, author, signature);
	}
	
	@Override
	public Medium asMedium() {
		return new Cd(this.getTitle(), this.getAuthor(), this.getSignature());
	}

}
