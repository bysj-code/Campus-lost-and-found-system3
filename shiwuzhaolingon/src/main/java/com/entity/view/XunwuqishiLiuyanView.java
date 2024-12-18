package com.entity.view;

import org.apache.tools.ant.util.DateUtils;
import com.annotation.ColumnInfo;
import com.entity.XunwuqishiLiuyanEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;
import com.utils.DateUtil;

/**
* 寻物启事留言
* 后端返回视图实体辅助类
* （通常后端关联的表或者自定义的字段需要返回使用）
*/
@TableName("xunwuqishi_liuyan")
public class XunwuqishiLiuyanView extends XunwuqishiLiuyanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	//当前表

	//级联表 寻物启事
		/**
		* 物品名称
		*/

		@ColumnInfo(comment="物品名称",type="varchar(200)")
		private String xunwuqishiName;
		/**
		* 物品类型
		*/
		@ColumnInfo(comment="物品类型",type="int(11)")
		private Integer shiwuzhaolingTypes;
			/**
			* 物品类型的值
			*/
			@ColumnInfo(comment="物品类型的字典表值",type="varchar(200)")
			private String shiwuzhaolingValue;
		/**
		* 物品状态
		*/
		@ColumnInfo(comment="物品状态",type="int(11)")
		private Integer zhaugntaiTypes;
			/**
			* 物品状态的值
			*/
			@ColumnInfo(comment="物品状态的字典表值",type="varchar(200)")
			private String zhaugntaiValue;
		/**
		* 物品图片
		*/

		@ColumnInfo(comment="物品图片",type="varchar(200)")
		private String xunwuqishiPhoto;
		/**
		* 丢失时间
		*/
		@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
		@DateTimeFormat
		@ColumnInfo(comment="丢失时间",type="timestamp")
		private Date xunwuqishiTime;
					 
		/**
		* 寻物启事 的 用户
		*/
		@ColumnInfo(comment="用户",type="int(11)")
		private Integer xunwuqishiYonghuId;
		/**
		* 丢失地址
		*/

		@ColumnInfo(comment="丢失地址",type="varchar(200)")
		private String xunwuqishiDizhi;
		/**
		* 详情
		*/

		@ColumnInfo(comment="详情",type="text")
		private String xunwuqishiContent;
	//级联表 用户
		/**
		* 用户姓名
		*/

		@ColumnInfo(comment="用户姓名",type="varchar(200)")
		private String yonghuName;
		/**
		* 头像
		*/

		@ColumnInfo(comment="头像",type="varchar(200)")
		private String yonghuPhoto;
		/**
		* 身份证号
		*/

		@ColumnInfo(comment="身份证号",type="varchar(200)")
		private String yonghuIdNumber;
		/**
		* 联系方式
		*/

		@ColumnInfo(comment="联系方式",type="varchar(200)")
		private String yonghuPhone;
		/**
		* 电子邮箱
		*/

		@ColumnInfo(comment="电子邮箱",type="varchar(200)")
		private String yonghuEmail;
		/**
		* 逻辑删除
		*/

		@ColumnInfo(comment="逻辑删除",type="int(11)")
		private Integer yonghuDelete;



	public XunwuqishiLiuyanView() {

	}

	public XunwuqishiLiuyanView(XunwuqishiLiuyanEntity xunwuqishiLiuyanEntity) {
		try {
			BeanUtils.copyProperties(this, xunwuqishiLiuyanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}





	//级联表的get和set 寻物启事

		/**
		* 获取： 物品名称
		*/
		public String getXunwuqishiName() {
			return xunwuqishiName;
		}
		/**
		* 设置： 物品名称
		*/
		public void setXunwuqishiName(String xunwuqishiName) {
			this.xunwuqishiName = xunwuqishiName;
		}
		/**
		* 获取： 物品类型
		*/
		public Integer getShiwuzhaolingTypes() {
			return shiwuzhaolingTypes;
		}
		/**
		* 设置： 物品类型
		*/
		public void setShiwuzhaolingTypes(Integer shiwuzhaolingTypes) {
			this.shiwuzhaolingTypes = shiwuzhaolingTypes;
		}


			/**
			* 获取： 物品类型的值
			*/
			public String getShiwuzhaolingValue() {
				return shiwuzhaolingValue;
			}
			/**
			* 设置： 物品类型的值
			*/
			public void setShiwuzhaolingValue(String shiwuzhaolingValue) {
				this.shiwuzhaolingValue = shiwuzhaolingValue;
			}
		/**
		* 获取： 物品状态
		*/
		public Integer getZhaugntaiTypes() {
			return zhaugntaiTypes;
		}
		/**
		* 设置： 物品状态
		*/
		public void setZhaugntaiTypes(Integer zhaugntaiTypes) {
			this.zhaugntaiTypes = zhaugntaiTypes;
		}


			/**
			* 获取： 物品状态的值
			*/
			public String getZhaugntaiValue() {
				return zhaugntaiValue;
			}
			/**
			* 设置： 物品状态的值
			*/
			public void setZhaugntaiValue(String zhaugntaiValue) {
				this.zhaugntaiValue = zhaugntaiValue;
			}

		/**
		* 获取： 物品图片
		*/
		public String getXunwuqishiPhoto() {
			return xunwuqishiPhoto;
		}
		/**
		* 设置： 物品图片
		*/
		public void setXunwuqishiPhoto(String xunwuqishiPhoto) {
			this.xunwuqishiPhoto = xunwuqishiPhoto;
		}

		/**
		* 获取： 丢失时间
		*/
		public Date getXunwuqishiTime() {
			return xunwuqishiTime;
		}
		/**
		* 设置： 丢失时间
		*/
		public void setXunwuqishiTime(Date xunwuqishiTime) {
			this.xunwuqishiTime = xunwuqishiTime;
		}
		/**
		* 获取：寻物启事 的 用户
		*/
		public Integer getXunwuqishiYonghuId() {
			return xunwuqishiYonghuId;
		}
		/**
		* 设置：寻物启事 的 用户
		*/
		public void setXunwuqishiYonghuId(Integer xunwuqishiYonghuId) {
			this.xunwuqishiYonghuId = xunwuqishiYonghuId;
		}

		/**
		* 获取： 丢失地址
		*/
		public String getXunwuqishiDizhi() {
			return xunwuqishiDizhi;
		}
		/**
		* 设置： 丢失地址
		*/
		public void setXunwuqishiDizhi(String xunwuqishiDizhi) {
			this.xunwuqishiDizhi = xunwuqishiDizhi;
		}

		/**
		* 获取： 详情
		*/
		public String getXunwuqishiContent() {
			return xunwuqishiContent;
		}
		/**
		* 设置： 详情
		*/
		public void setXunwuqishiContent(String xunwuqishiContent) {
			this.xunwuqishiContent = xunwuqishiContent;
		}
	//级联表的get和set 用户

		/**
		* 获取： 用户姓名
		*/
		public String getYonghuName() {
			return yonghuName;
		}
		/**
		* 设置： 用户姓名
		*/
		public void setYonghuName(String yonghuName) {
			this.yonghuName = yonghuName;
		}

		/**
		* 获取： 头像
		*/
		public String getYonghuPhoto() {
			return yonghuPhoto;
		}
		/**
		* 设置： 头像
		*/
		public void setYonghuPhoto(String yonghuPhoto) {
			this.yonghuPhoto = yonghuPhoto;
		}

		/**
		* 获取： 身份证号
		*/
		public String getYonghuIdNumber() {
			return yonghuIdNumber;
		}
		/**
		* 设置： 身份证号
		*/
		public void setYonghuIdNumber(String yonghuIdNumber) {
			this.yonghuIdNumber = yonghuIdNumber;
		}

		/**
		* 获取： 联系方式
		*/
		public String getYonghuPhone() {
			return yonghuPhone;
		}
		/**
		* 设置： 联系方式
		*/
		public void setYonghuPhone(String yonghuPhone) {
			this.yonghuPhone = yonghuPhone;
		}

		/**
		* 获取： 电子邮箱
		*/
		public String getYonghuEmail() {
			return yonghuEmail;
		}
		/**
		* 设置： 电子邮箱
		*/
		public void setYonghuEmail(String yonghuEmail) {
			this.yonghuEmail = yonghuEmail;
		}

		/**
		* 获取： 逻辑删除
		*/
		public Integer getYonghuDelete() {
			return yonghuDelete;
		}
		/**
		* 设置： 逻辑删除
		*/
		public void setYonghuDelete(Integer yonghuDelete) {
			this.yonghuDelete = yonghuDelete;
		}


	@Override
	public String toString() {
		return "XunwuqishiLiuyanView{" +
			", xunwuqishiName=" + xunwuqishiName +
			", xunwuqishiPhoto=" + xunwuqishiPhoto +
			", xunwuqishiTime=" + DateUtil.convertString(xunwuqishiTime,"yyyy-MM-dd") +
			", xunwuqishiDizhi=" + xunwuqishiDizhi +
			", xunwuqishiContent=" + xunwuqishiContent +
			", yonghuName=" + yonghuName +
			", yonghuPhoto=" + yonghuPhoto +
			", yonghuIdNumber=" + yonghuIdNumber +
			", yonghuPhone=" + yonghuPhone +
			", yonghuEmail=" + yonghuEmail +
			", yonghuDelete=" + yonghuDelete +
			"} " + super.toString();
	}
}
