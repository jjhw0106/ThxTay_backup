package com.tt.web.form;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AttachmentFileForm {
	private List<MultipartFile> upfiles;
}
