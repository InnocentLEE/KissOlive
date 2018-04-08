package util;

import java.util.Map;
import java.util.UUID;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
/**
 * 小工具
 * @author Lee
 *
 */
public class CommonUtils {
	/**
	 * 返回一个不重复的字符串
	 * 
	 * @return
	 */
	public static String uuid() {
		return UUID.randomUUID().toString().replace("-", "").toUpperCase();
	}

	/**
	 * 把map转换成对象
	 * 
	 * @param map
	 * @param clazz
	 * @return
	 * 
	 *         把Map转换成指定类型
	 */
	@SuppressWarnings("rawtypes")
	public static <T> T toBean(Map map, Class<T> clazz) {
		try {
			/*
			 * 1.通过参数clazz创建实例 2.使用BeanUtils.populate把Map的数据封装到bean中
			 */
			T bean = clazz.newInstance();
			ConvertUtils.register(new DateConverter(), java.util.Date.class);
			BeanUtils.populate(bean, map);
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
