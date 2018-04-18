package kissolive.web.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kissolive.series.domain.Series;
import kissolive.series.service.SeriesService;
import cn.itcast.commons.CommonUtils;

import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.Request;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

public class AddSeriesServlet extends HttpServlet {

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
		String sname = req.getParameter("sname");
		String bid = req.getParameter("bid");
		if(files.getSize()==0||sname==null||sname.equals("")||bid==null||bid.equals("")){
			request.setAttribute("message", "添加失败！系列名字,所属系列和图片都不可以为空");
			request.getRequestDispatcher("/page/admin/message.jsp").forward(request, response);
			
		}else{
			File file = files.getFile(0);
			String extFile = file.getFileExt();
			String sid = CommonUtils.uuid();
			String img = "/images/" + sid + "." + extFile;
			try {
				file.saveAs(img);
			} catch (SmartUploadException e) {
				e.printStackTrace();
			}
			Series series = new Series(sid, bid, sname, img);
			SeriesService seriesService = new SeriesService();
			seriesService.add(series);
			request.setAttribute("message", "添加成功");
			request.getRequestDispatcher("/page/admin/message.jsp").forward(request, response);
		}
	}
}
