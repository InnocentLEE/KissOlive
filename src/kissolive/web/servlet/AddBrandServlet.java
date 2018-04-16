package kissolive.web.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kissolive.brand.domain.Brand;
import kissolive.brand.service.BrandService;
import cn.itcast.commons.CommonUtils;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class AddBrandServlet extends HttpServlet {
	
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
		String bname = req.getParameter("bname");
		if(files.getSize()==0||bname==null||bname.equals("")){
			request.setAttribute("message", "添加失败！品牌名字和图片都不可以为空");
			request.getRequestDispatcher("/page/admin/message.jsp").forward(request, response);
			
		}else{
			File file = files.getFile(0);
			String extFile = file.getFileExt();
			String bid = CommonUtils.uuid();
			String img = "/images/" + bid + "." + extFile;
			try {
				file.saveAs(img);
			} catch (SmartUploadException e) {
				e.printStackTrace();
			}
			
			Brand brand = new Brand(bid, bname, img);
			BrandService brandService = new BrandService();
			brandService.addBrand(brand);
			request.setAttribute("message", "添加成功");
			request.getRequestDispatcher("/page/admin/message.jsp").forward(request, response);
		}
	}

}
