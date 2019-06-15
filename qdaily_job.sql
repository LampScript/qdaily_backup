CREATE TABLE `qdaily_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `url` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文章任务表',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-等待抓取，200-爬取成功，500-爬取失败，503-上传图片失败，600-上传图片中，1000-上传图片完成',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `article_id` int(11) NOT NULL DEFAULT '0' COMMENT '文章id',
  `img_url` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片url',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '作者',
  `pid` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '新浪图床图片id',
  `title` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `publish_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qdaily_job_article_id_uindex_1` (`article_id`),
  UNIQUE KEY `qdaily_job_pk_1` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=67435 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='好奇心任务表'