package cn.yxl.bx.utls;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

/**
 * 图片上传工具类
 * 
 * @author houchunqiang
 * 
 */
public class PicUploadUtil {
	public static String upload(MultipartFile pic, HttpServletRequest request) {
		// 上传文件的名字
		String filename = pic.getOriginalFilename();
		// 文件类型
		String contentType = pic.getContentType();

		InputStream is = null;
		OutputStream os = null;
		// 上传的绝对路径
		String realPath = request.getSession().getServletContext()
				.getRealPath("/upload");
		// 得到一个随机的字符串作为上传文件的新名字（防止文件因名字相同而覆盖）
		String uuid = UUID.randomUUID().toString();
		// 获得文件后缀名
		String endname = filename.substring(filename.lastIndexOf("."),
				filename.length());
		// 通过commons-io包提供的工具来完成拷贝
		try {
			is = pic.getInputStream();
			os = new FileOutputStream(new File(realPath + "/" + uuid + endname));
			FileCopyUtils.copy(is, os);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				os.flush();
				os.close();
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		// 上传完成后，还需要把文件路径和名字保存到user对象中，然后把user对象的信息，保存到数据库中
		// 下次能够根据数据库的记录，来找到对应的文件
		String picpath = uuid + endname;
		return picpath;
	}
}
