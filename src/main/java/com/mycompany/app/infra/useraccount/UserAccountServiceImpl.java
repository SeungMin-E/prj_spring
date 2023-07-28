package com.mycompany.app.infra.useraccount;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File;

@Service
public class UserAccountServiceImpl implements UserAccountService {
	
	@Autowired
	UserAccountDao dao;
	
	
	@Override
	public List<UserAccount> userAll(UserAccountVo vo) {
		return dao.userAll(vo);
	}

	@Override
	public UserAccount userOne(UserAccountVo vo) {
		return dao.userOne(vo);
	}

	@Override
	public int userJoin(UserAccount dto) {
		return dao.userJoin(dto);
	}

	@Override
	public int userUpdate(UserAccount dto) {
		return dao.userUpdate(dto);
	}

	@Override
	public int userUelete(UserAccount dto) {
		return dao.userUelete(dto);
	}

	@Override
	public int userCut(UserAccount dto) {
		return dao.userCut(dto);
	}

	@Override
	public int selectOneCount(UserAccountVo vo) {
		return dao.selectOneCount(vo);
	}

	@Override
	public UserAccount loginUserOne(UserAccountVo vo) {
		return dao.loginUserOne(vo);
	}

	@Override
	public int dulicateI(UserAccountVo vo) {
		return dao.dulicateI(vo);
	}
	
	public static String nowString() throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
		return localDateTimeString;
	}

	@Override
	public void uploadFiles(MultipartFile[] multipartFiles, UserAccount dto, String tableName, int type, int maxNumber)
			throws Exception {
//		for(int i=0; i<multipartFiles.length; i++) {
//			
//			if(!multipartFiles[i].isEmpty()) {
//				
//				String className = dto.getClass().getSimpleName().toString().toLowerCase();		
//				String fileName = multipartFiles[i].getOriginalFilename();
//				String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
//				String uuid = UUID.randomUUID().toString();
//				String uuidFileName = uuid + "." + ext;
//				String pathModule = className;
//				String nowString = UtilDateTime.nowString();
//				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
//				String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
//				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
//				
//				File uploadPath = new File(path);
//				
//				if (!uploadPath.exists()) {
//					uploadPath.mkdir();
//				} else {
//					// by pass
//				}
//				  
//				multipartFiles[i].transferTo(new File(path + uuidFileName));
//				
//				dto.setPath(pathForView);
//				dto.setOriginalName(fileName);
//				dto.setUuidName(uuidFileName);
//				dto.setExt(ext);
//				dto.setSize(multipartFiles[i].getSize());
//				
//				dto.setTableName(tableName);
//				dto.setType(type);
////				dto.setDefaultNy();
//				dto.setSort(maxNumber + i);
//				dto.setPseq(dto.getSeq());
//
//				dao.insertUploaded(dto);
//				
//				uploadFiles(dto.getUploadImgProfile(), dto, "infrMemberUploaded", dto.getUploadImgProfileType(), dto.getUploadImgProfileMaxNumber());
//				uploadFiles(dto.getUploadImg(), dto, "infrMemberUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
//				uploadFiles(dto.getUploadFile(), dto, "infrMemberUploaded", dto.getUploadFileType(), dto.getUploadFileMaxNumber());
//			}
//		}
		
	}
	

	
	

}
