package kissolive.web.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kissolive.lipstick.domain.Lipstick;
import kissolive.lipstick.service.LipstickService;
import kissolive.lipstickpicture.domain.LipstickPicture;
import kissolive.lipstickpicture.service.LipstickPictureService;
import cn.itcast.commons.CommonUtils;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class AddLipstickServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServletConfig servletconfig;
	public void init(ServletConfig config) throws ServletException {
		this.servletconfig = config;
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public boolean canToInteger(String s){
		try {  
		    Integer.parseInt(s);  
		    return true;  
		} catch (NumberFormatException e) {  
		    return false;  
		}  
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LipstickService lipstickService = new LipstickService();
		LipstickPictureService lipstickPictureService = new LipstickPictureService();
		SmartUpload su = new SmartUpload();
		su.initialize(servletconfig, request, response);
		su.setAllowedFilesList("jpg,bmp,png");
		su.setMaxFileSize(100*1024 * 1024 * 1024 * 1024);
		su.setTotalMaxFileSize(200*1024 * 1024 * 1024 * 1024);
		try {
			su.upload();
		} catch (SmartUploadException e) {
			e.printStackTrace();
		}
		Files files = su.getFiles();
		Request req = su.getRequest();
		String bid = req.getParameter("bid");
		String sid = req.getParameter("sid");
		String hid = req.getParameter("hid");
		String lname = req.getParameter("lname");
		String lorigin = req.getParameter("lorigin");
		String shelflife = req.getParameter("shelflife");
		String skin = req.getParameter("skin");
		
		if((files.getSize()<2)||bid==null||bid.equals("")||sid==null||sid.equals("")||sid.equals("====请选择系列====")||hid==null||hid.equals("")||lname==null||lname.equals("")||lorigin==null||lorigin.equals("")||skin==null||skin.equals("")||shelflife==null||shelflife.equals("")||(!canToInteger(shelflife))){
			request.setAttribute("message", "添加失败！品牌，系列，选购热点，口红名字，产地，保质期，适用肤质，主图，详情图都不可以为空，且保质期为整数");
			request.setAttribute("href", "/admin/AdminServlet?method=adminLipstick");
			request.getRequestDispatcher("/page/admin/message.jsp").forward(request, response);
		}else{
			File file1 = files.getFile(0);
			File file2 = files.getFile(1);
			String extFile1 = file1.getFileExt();
			String extFile2 = file2.getFileExt();
			String imgid1 = CommonUtils.uuid();
			String imgid2 = CommonUtils.uuid();
			String img1 = "/images/" + imgid1 + "." + extFile1;
			String img2 = "/images/" + imgid2 + "." + extFile2;
			try {
				file1.saveAs(img1);
				file2.saveAs(img2);
			} catch (SmartUploadException e) {
				e.printStackTrace();
			}
			String lid = CommonUtils.uuid();
			Lipstick lipstick = new Lipstick(lid, sid, hid, lname, lorigin, Integer.parseInt(shelflife), skin);
			LipstickPicture lipstickpicture1 = new LipstickPicture(CommonUtils.uuid(), lid, img1, 1);
			LipstickPicture lipstickpicture2 = new LipstickPicture(CommonUtils.uuid(), lid, img2, 0);
			lipstickService.add(lipstick);
			lipstickPictureService.add(lipstickpicture1);
			lipstickPictureService.add(lipstickpicture2);
			request.setAttribute("message", "添加成功");
			request.setAttribute("href", "/admin/AdminServlet?method=adminLipstick");
			request.getRequestDispatcher("/page/admin/message.jsp").forward(request, response);
		}
	}
}
