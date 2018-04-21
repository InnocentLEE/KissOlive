package kissolive.web.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kissolive.brand.domain.Brand;
import kissolive.brand.service.BrandService;
import kissolive.shuffling.domain.Shuffling;
import kissolive.shuffling.service.ShufflingService;
import cn.itcast.commons.CommonUtils;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class UpdateShufflingServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	ServletConfig servletconfig;
	
	public void init(ServletConfig config) throws ServletException {
		this.servletconfig = config;
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SmartUpload su = new SmartUpload();
		su.initialize(servletconfig, request, response);
		su.setAllowedFilesList("jpg,bmp,png");
		su.setMaxFileSize(1024 * 1024 * 1024 * 1024);
		su.setTotalMaxFileSize(1024 * 1024 * 10234 * 1024);
		try {
			su.upload();
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		Files files = su.getFiles();
		Request req = su.getRequest();
		int orderBy = Integer.parseInt(req.getParameter("orderBy"));
		ShufflingService shufflingService = new ShufflingService();
		if(files.getSize()==0){
			request.setAttribute("message", "更换失败！请上传图片");
			request.setAttribute("href", "/admin/AdminServlet?method=adminHomePage");
			request.getRequestDispatcher("/page/admin/message.jsp").forward(request, response);
			
		}else{
			File file = files.getFile(0);
			String extFile = file.getFileExt();
			String id = CommonUtils.uuid();
			String img = "/images/" + id + "." + extFile;
			try {
				file.saveAs(img);
			} catch (SmartUploadException e) {
				e.printStackTrace();
			}
			shufflingService.update(img, orderBy);
			request.setAttribute("message", "更换成功");
			request.setAttribute("href", "/admin/AdminServlet?method=adminHomePage");
			request.getRequestDispatcher("/page/admin/message.jsp").forward(request, response);
		}
	}

}
