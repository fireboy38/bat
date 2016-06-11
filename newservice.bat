@ECHO OFF
rem 创建服务 ABDD
SC CREATE ABDD binPath= "C:\win\system32\svchost.exe" START= auto DISPLAYNAME= "ABCD EFGHSERBER" TYPE= own

rem 设置描述信息为 “提供三种管理服务,提供数据供应。”
SC description ABDD "提供三种管理服务,提供数据供应。"

rem 启动服务 ABDD 也就是将这个服务的状态标志成了 “启动” 状态
SC START ABDD

PAUSE

==============================================================================================================

@ECHO OFF
SC delete "Adobe LM Service" 
#删除服务
PAUSE
