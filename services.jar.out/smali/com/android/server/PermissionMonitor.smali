.class public Lcom/android/server/PermissionMonitor;
.super Landroid/os/IPermissionMonitor$Stub;
.source "PermissionMonitor.java"


# static fields
.field public static final ACTION_NOTIFY_APP_BGACCESS:Ljava/lang/String; = "com.samsung.intent.action.NOTIFY_APP_BGACCESS"

.field public static final APM_CHECK_PROPERTY:Ljava/lang/String; = "persist.app.permission.monitor"

.field public static final APM_FLAG_ALL_APP_OFF:I = 0x4000000

.field public static final APM_FLAG_APM_IS_OFF:I = 0x40000000

.field private static final APM_MEDIA_FILE_COPY_FOLDER:Ljava/lang/String; = "APM/FileCopy"

.field private static final APM_MEDIA_KW_DIR2:Ljava/lang/String; = "/data/knox/sdcard"

.field private static final APM_MEDIA_TEMP_DIR1:Ljava/lang/String; = "/storage/emulated"

.field private static final APM_MEDIA_TEMP_DIR2:Ljava/lang/String; = "/data/media"

.field public static final APM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final APP_UID:I = 0x2710

.field private static final CACHE_SIZE:I = 0xa

.field private static final CAMERA_FLAG:I = 0x1

.field private static final CTRL_COPY_MEDIADATA:I = 0x100

.field private static final CTRL_DONE_REC_MEDIA:I = 0x400

.field private static final CTRL_SAVE_MEDIAPATH:I = 0x200

.field private static final DEBUG_FLAG:Z

.field public static final DEFAULT_MONITOR:Ljava/lang/String; = "5244743"

.field public static final INTENT_EXTRA_APM_LATITUDE:Ljava/lang/String; = "com.samsung.intent.extra.APM_LATITUDE"

.field public static final INTENT_EXTRA_APM_LONGITUDE:Ljava/lang/String; = "com.samsung.intent.extra.APM_LONGITUDE"

.field public static final INTENT_EXTRA_APM_MEDIAPATH:Ljava/lang/String; = "com.samsung.intent.extra.APM_MEDIA"

.field public static final INTENT_EXTRA_APM_MEDIA_TYPE:Ljava/lang/String; = "com.samsung.intent.extra.APM_MEDIA_TYPE"

.field public static final INTENT_EXTRA_APM_MODULE_NAME:Ljava/lang/String; = "com.samsung.intent.extra.APM_MODULE_NAME"

.field public static final INTENT_EXTRA_APM_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.intent.extra.APM_PACKAGE_NAME"

.field private static final LOCATION_FLAG:I = 0x8

.field private static final LOG_TAG:Ljava/lang/String; = "PermissionMonitor"

.field public static final PERMISSION_APP_PERMISSION_MONITOR:Ljava/lang/String; = "com.samsung.android.intent.permission.APP_PERMISSION_MONITOR"

.field private static final TIME_INTERVAL:J = 0xea60L

.field private static final mHiddenBehaviorOnly:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private final mIsAppPermissionMonitorSupported:Z

.field private mMediaFormat:I

.field private mMediaPath:Ljava/lang/String;

.field private mMediaPkgName:Ljava/lang/String;

.field private mSEAMS:Lcom/android/server/SEAMService;

.field private mlocationInfo:Lcom/android/server/APMPositionInfo;

.field private monitoredAppList:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/IPermissionMonitor$Stub;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PermissionMonitor;->monitoredAppList:Landroid/util/LruCache;

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "PermissionMonitor"

    const-string/jumbo v1, "initialize permission monitor service"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PermissionMonitor;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SEAMService;

    iput-object v0, p0, Lcom/android/server/PermissionMonitor;->mSEAMS:Lcom/android/server/SEAMService;

    iget-object v0, p0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/APMPositionInfo;->getLocationManager(Landroid/content/Context;)Lcom/android/server/APMPositionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PermissionMonitor;->mlocationInfo:Lcom/android/server/APMPositionInfo;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/PermissionMonitor;->mIsAppPermissionMonitorSupported:Z

    return-void
.end method

.method private CopyLeakedData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHHmmss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    const/4 v0, 0x0

    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APM/FileCopy/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_1

    sget-boolean v9, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v9, :cond_0

    const-string v9, "PermissionMonitor"

    const-string/jumbo v11, "make apm directory to copy media data"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_1
    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_2

    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "APM/FileCopy/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "."

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v6, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "."

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v9

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "APM/FileCopy/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v9

    :goto_0
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_3

    const-string v0, "PermissionMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CopyLeakedData ... from : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  to : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v12, 0x0

    const/4 v0, 0x0

    move-object v13, v0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v12, v0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v13, v0

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    move v15, v14

    if-eq v14, v11, :cond_4

    invoke-virtual {v13, v0, v10, v15}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    :cond_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v10, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    nop

    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v10, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v10, v0

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_3
    const-string v10, "PermissionMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error occured while copying file"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_5

    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v10, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_3
    if-eqz v13, :cond_6

    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    :goto_4
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_5
    if-eqz v12, :cond_7

    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v11, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_6
    if-eqz v13, :cond_8

    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v11, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_7
    throw v10
.end method

.method private getPackageNameByUid(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private isAppWhitelisted(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PermissionMonitor;->isSystemApp_WhitelistedApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isBackgroundApp(IILjava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v7, p1, :cond_4

    sget-boolean v7, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v7, :cond_0

    const-string v7, "PermissionMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "We found matching pid. (uid, pid) : ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-ge v7, v1, :cond_1

    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move v1, v7

    :cond_1
    const/16 v7, 0x64

    if-eq v1, v7, :cond_2

    const/16 v7, 0x145

    if-eq v1, v7, :cond_2

    const/16 v7, 0x96

    if-eq v1, v7, :cond_2

    const/16 v7, 0x7d

    if-ne v1, v7, :cond_4

    :cond_2
    sget-boolean v5, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v5, :cond_3

    const-string v5, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " App has at least one process in foreground. uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    goto :goto_0

    :cond_5
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "PermissionMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Exception occus in isBackgroundApp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return v0

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private isCalledPackage(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/PermissionMonitor;->isExpired(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PermissionMonitor;->monitoredAppList:Landroid/util/LruCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private isExpired(Ljava/lang/String;J)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/PermissionMonitor;->monitoredAppList:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sget-boolean v1, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v1, :cond_0

    const-string v1, "PermissionMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", currentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", lastTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p2, v1

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p2

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isHiddenApp(IILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PermissionMonitor;->isBackgroundApp(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isSystemApp_WhitelistedApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const-string v1, "19"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v2, "untrusted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v1, :cond_0

    const-string v1, "PermissionMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling app is pre-installed on system partition. pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/PermissionMonitor;->isWhitelistedAppInUser(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-boolean v1, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v1, :cond_2

    const-string v1, "PermissionMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling app is whitelistapp. pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_3
    const-string v1, "SEAMService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/SEAMService;

    if-nez v1, :cond_4

    const-string v2, "PermissionMonitor"

    const-string/jumbo v3, "isSystemAppWhitelistApp , sseams is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v3, "untrusted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v2, :cond_5

    const-string v2, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling app is pre-installed on system partition. pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", UserId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    sget-boolean v2, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v2, :cond_7

    const-string v2, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling app is not pre-installed on system. Ignore its notification. pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", UserId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    if-nez v0, :cond_9

    invoke-virtual {v1, p2}, Lcom/android/server/SEAMService;->isAPMWhiteListAPP(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    sget-boolean v2, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v2, :cond_8

    const-string v2, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is whitelistapp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v0, 0x1

    :cond_9
    goto :goto_1

    :cond_a
    sget-boolean v1, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v1, :cond_b

    const-string v1, "PermissionMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApplicationInfo for ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is null! UserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    return v0
.end method

.method private isWhitelistedAppInUser(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string v2, "apm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->apmWL:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->apmWL:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/PermissionMonitor;->checkUser(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public checkUser(ILjava/lang/String;)I
    .locals 3

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method checkingEnforcing(I)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PermissionMonitor;->mSEAMS:Lcom/android/server/SEAMService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PermissionMonitor;->mSEAMS:Lcom/android/server/SEAMService;

    iget-object v1, p0, Lcom/android/server/PermissionMonitor;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SEAMService;->getAPMStatus(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "PermissionMonitor"

    const-string v1, "Enforcing User"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnforcedInUser(I)Z
    .locals 1

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/PermissionMonitor;->checkingEnforcing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sendAPMEnforcing(III)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-boolean v0, v1, Lcom/android/server/PermissionMonitor;->mIsAppPermissionMonitorSupported:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "we received enforcing notification for rUid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rPid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "from rModuleFlag: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v4, p2

    move/from16 v5, p3

    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v12, 0x2710

    if-gt v7, v12, :cond_5

    if-ge v2, v12, :cond_1

    goto/16 :goto_7

    :cond_1
    div-int/lit16 v12, v2, 0x2710

    div-int/lit8 v12, v12, 0xa

    invoke-direct/range {p0 .. p1}, Lcom/android/server/PermissionMonitor;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v13, v6, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_0
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v13, v8, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :try_start_1
    const-string v8, "PermissionMonitor"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(NameNotFoundException) ApplicationInfo for ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is null! UserId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_2

    const-string v0, "PermissionMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "packageName: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1, v12}, Lcom/android/server/PermissionMonitor;->isEnforcedInUser(I)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-direct {v1, v11, v13, v12}, Lcom/android/server/PermissionMonitor;->isAppWhitelisted(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PermissionMonitor"

    const-string v2, "App is whitelisted. Ignore"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    move-wide/from16 v9, v17

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v13, v12}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, "PermissionMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceStopPackage: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_4
    nop

    return-void

    :goto_5
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_5
    :goto_7
    return-void

    :cond_6
    move/from16 v4, p2

    move/from16 v5, p3

    return-void
.end method

.method public sendAPMMediaNotification(IILjava/lang/String;II)V
    .locals 26

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    iget-boolean v0, v1, Lcom/android/server/PermissionMonitor;->mIsAppPermissionMonitorSupported:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APMMediaNotification for rUid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", rPid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", media_format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "from rModuleFlag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " media path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object/from16 v16, v0

    const/16 v0, 0x2710

    if-ge v2, v0, :cond_1

    return-void

    :cond_1
    move v11, v2

    div-int/lit16 v0, v2, 0x2710

    div-int/lit8 v10, v0, 0xa

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_2

    const-string v0, "PermissionMonitor"

    move-object/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v8

    const-string v8, "Binder.getCallingUid(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PermissionMonitor;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v9, v7, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-wide/from16 v20, v16

    :try_start_0
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9, v8, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v0

    move-object/from16 v22, v7

    move-wide/from16 v7, v20

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move/from16 v24, v11

    move-object/from16 v25, v12

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v22, v7

    move-wide/from16 v7, v20

    move/from16 v24, v11

    move-object/from16 v25, v12

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v22, v7

    move-wide/from16 v7, v20

    move-object/from16 v23, v0

    :try_start_1
    const-string v0, "PermissionMonitor"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move/from16 v24, v11

    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v25, v12

    :try_start_3
    const-string v12, "(NameNotFoundException) ApplicationInfo for ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") is null! UserId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :goto_1
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_3

    const-string v0, "PermissionMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "packageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {v1, v15, v9, v10}, Lcom/android/server/PermissionMonitor;->isAppWhitelisted(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PermissionMonitor"

    const-string v11, "App is whitelisted. Ignore"

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-direct {v1, v2, v3, v9}, Lcom/android/server/PermissionMonitor;->isHiddenApp(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "PermissionMonitor"

    const-string v11, "App is not in hidden status (background/etc). Ignore"

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_6

    const-string v0, "PermissionMonitor"

    const-string v11, "All conditions are satisfied, report app access now."

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    and-int/lit16 v0, v6, 0x200

    if-lez v0, :cond_8

    const/4 v0, 0x0

    if-eqz v10, :cond_7

    const-string v11, "/storage/emulated"

    const-string v12, "/data/knox/sdcard"

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v11, "/storage/emulated"

    const-string v12, "/data/media"

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v1, Lcom/android/server/PermissionMonitor;->mMediaPath:Ljava/lang/String;

    iput-object v9, v1, Lcom/android/server/PermissionMonitor;->mMediaPkgName:Ljava/lang/String;

    iput v5, v1, Lcom/android/server/PermissionMonitor;->mMediaFormat:I

    return-void

    :cond_8
    nop

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v25, v12

    goto :goto_3

    :catchall_3
    move-exception v0

    move/from16 v24, v11

    move-object/from16 v25, v12

    :goto_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_9
    return-void
.end method

.method public sendAPMNotification(III)V
    .locals 41

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "PermissionMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "we received permission notification for rUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", rPid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "from rModuleFlag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v1, Lcom/android/server/PermissionMonitor;->mIsAppPermissionMonitorSupported:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v0

    const/16 v0, 0x2710

    if-ge v2, v0, :cond_2

    return-void

    :cond_2
    move v9, v2

    div-int/lit16 v0, v2, 0x2710

    div-int/lit8 v8, v0, 0xa

    invoke-direct/range {p0 .. p1}, Lcom/android/server/PermissionMonitor;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v5

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    move-wide/from16 v20, v6

    aget-object v6, v5, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    move-wide/from16 v22, v18

    :try_start_0
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v6, v10, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v17, v0

    move/from16 v24, v9

    move-wide/from16 v9, v22

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move-object/from16 v26, v5

    move-wide/from16 v27, v11

    :goto_0
    move-object/from16 v5, v17

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v24, v9

    move-wide/from16 v9, v22

    move-object/from16 v26, v5

    move-wide/from16 v27, v11

    move-wide/from16 v29, v13

    move-wide/from16 v32, v15

    goto/16 :goto_13

    :catch_0
    move-exception v0

    move/from16 v24, v9

    move-wide/from16 v9, v22

    move-object/from16 v25, v0

    :try_start_1
    const-string v0, "PermissionMonitor"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    move-object/from16 v26, v5

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    move-wide/from16 v27, v11

    :try_start_3
    const-string v11, "(NameNotFoundException) ApplicationInfo for ("

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") is null! UserId: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :goto_1
    const-string v0, "19"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v11, 0x12

    if-lt v0, v11, :cond_5

    and-int/lit16 v0, v4, 0x400

    if-lez v0, :cond_5

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_3

    const-string v0, "PermissionMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Record Done  mediaPath is : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/PermissionMonitor;->mMediaPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/PermissionMonitor;->mMediaPkgName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mMediaPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mMediaPkgName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mMediaPath:Ljava/lang/String;

    invoke-direct {v1, v0, v8}, Lcom/android/server/PermissionMonitor;->CopyLeakedData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Landroid/content/Intent;

    const-string v12, "com.samsung.intent.action.NOTIFY_APP_BGACCESS"

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    const-string v0, "com.samsung.intent.extra.APM_PACKAGE_NAME"

    invoke-virtual {v12, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MODULE_NAME"

    invoke-virtual {v12, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MEDIA_TYPE"

    move-wide/from16 v29, v13

    iget v13, v1, Lcom/android/server/PermissionMonitor;->mMediaFormat:I

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MEDIA"

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.securitylogagent"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_4
    const-string v0, "PermissionMonitor"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v31, v11

    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v32, v15

    :try_start_6
    const-string/jumbo v15, "userId : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string v15, "com.samsung.android.intent.permission.APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v12, v11, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/PermissionMonitor;->mMediaPath:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/PermissionMonitor;->mMediaPkgName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/PermissionMonitor;->mMediaFormat:I

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-wide/from16 v32, v15

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v31, v11

    move-wide/from16 v32, v15

    :goto_2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_4
    move-wide/from16 v29, v13

    move-wide/from16 v32, v15

    :goto_3
    return-void

    :cond_5
    move-wide/from16 v29, v13

    move-wide/from16 v32, v15

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_6

    const-string v0, "PermissionMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Calling packageName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {v1, v5, v6, v8}, Lcom/android/server/PermissionMonitor;->isAppWhitelisted(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "PermissionMonitor"

    const-string v11, "App is whitelisted. Ignore"

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-direct {v1, v2, v3, v6}, Lcom/android/server/PermissionMonitor;->isHiddenApp(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "PermissionMonitor"

    const-string v11, "App is not in hidden status (background/etc). Ignore"

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-direct {v1, v7}, Lcom/android/server/PermissionMonitor;->isCalledPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "PermissionMonitor"

    const-string/jumbo v11, "isCalledPkg is in effect. Ignore."

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    and-int/lit8 v0, v4, 0x8

    if-lez v0, :cond_d

    const-string/jumbo v0, "persist.app.permission.monitor"

    const-string v12, "5244743"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    :try_start_7
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1

    and-int/lit8 v0, v0, 0x8

    if-gtz v0, :cond_a

    return-void

    :cond_a
    goto :goto_4

    :catch_1
    move-exception v0

    move-object v13, v0

    const-string v13, "PermissionMonitor"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception notify permission monitor service about access from LOCATION_FLAG nfe = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string v0, "19"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v11, :cond_d

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_8
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mlocationInfo:Lcom/android/server/APMPositionInfo;

    iget-object v13, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v13}, Lcom/android/server/APMPositionInfo;->callLocationInfo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mlocationInfo:Lcom/android/server/APMPositionInfo;

    invoke-virtual {v0}, Lcom/android/server/APMPositionInfo;->getLatitude()D

    move-result-wide v13
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mlocationInfo:Lcom/android/server/APMPositionInfo;

    invoke-virtual {v0}, Lcom/android/server/APMPositionInfo;->getLongitude()D

    move-result-wide v15
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-wide/from16 v34, v15

    :try_start_a
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_b

    const-string v0, "PermissionMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Location Information : Latitude = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, " Longitude = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-wide/from16 v2, v34

    :try_start_b
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    move-wide v15, v2

    goto :goto_a

    :cond_b
    move-wide/from16 v2, v34

    :goto_5
    move-wide v15, v2

    goto :goto_6

    :catchall_5
    move-exception v0

    move-wide/from16 v2, v34

    goto :goto_b

    :catch_3
    move-exception v0

    move-wide/from16 v2, v34

    move-wide v15, v2

    goto :goto_a

    :catchall_6
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :cond_c
    move-wide/from16 v13, v29

    move-wide/from16 v15, v32

    :goto_6
    :try_start_c
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mlocationInfo:Lcom/android/server/APMPositionInfo;

    invoke-virtual {v0}, Lcom/android/server/APMPositionInfo;->stopUsingLocationService()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :goto_7
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move-wide v2, v15

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_a

    :catchall_7
    move-exception v0

    move-wide/from16 v13, v29

    :goto_8
    move-wide/from16 v2, v32

    goto :goto_b

    :catch_6
    move-exception v0

    move-wide/from16 v13, v29

    :goto_9
    move-wide/from16 v15, v32

    :goto_a
    :try_start_d
    const-string v2, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Exception occus in getting locationInfo"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_7

    :catchall_8
    move-exception v0

    move-wide v2, v15

    :goto_b
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_d
    move-wide/from16 v13, v29

    move-wide/from16 v2, v32

    :goto_c
    const-string v0, "5244743"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/SEAMService;

    if-eqz v12, :cond_e

    :try_start_e
    invoke-virtual {v12, v8}, Lcom/android/server/SEAMService;->getAPMStatusAsUser(I)I

    move-result v0

    move v11, v0

    const-string v0, "PermissionMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    move-object/from16 v36, v5

    :try_start_f
    const-string/jumbo v5, "s getAPMStatusAsUser"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    move-object/from16 v36, v5

    :goto_d
    const-string v5, "PermissionMonitor"

    const-string/jumbo v15, "failed to getAPMStatusAsUser "

    invoke-static {v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    goto :goto_f

    :cond_e
    move-object/from16 v36, v5

    const-string v0, "PermissionMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "seams is null, userId: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    if-lez v11, :cond_11

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v11

    if-nez v0, :cond_11

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.NOTIFY_APP_BGACCESS"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    const-string v0, "com.samsung.intent.extra.APM_PACKAGE_NAME"

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MODULE_NAME"

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.securitylogagent"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    and-int/lit8 v0, v4, 0x8

    if-lez v0, :cond_f

    const-string v0, "19"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v15, 0x12

    if-lt v0, v15, :cond_f

    const-string v0, "com.samsung.intent.extra.APM_LATITUDE"

    invoke-virtual {v5, v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_LONGITUDE"

    invoke-virtual {v5, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move-wide/from16 v37, v15

    :try_start_10
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-eqz v0, :cond_10

    :try_start_11
    const-string v0, "PermissionMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    move-wide/from16 v39, v2

    :try_start_12
    const-string v2, "All conditions are satisfied, report app access now. pkgName is "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto :goto_10

    :catchall_9
    move-exception v0

    move-wide/from16 v2, v37

    goto :goto_11

    :catchall_a
    move-exception v0

    move-wide/from16 v39, v2

    move-wide/from16 v2, v37

    goto :goto_11

    :cond_10
    move-wide/from16 v39, v2

    :goto_10
    :try_start_13
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "com.samsung.android.intent.permission.APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v5, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    move-wide/from16 v2, v37

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_12

    :catchall_b
    move-exception v0

    move-wide/from16 v2, v37

    goto :goto_11

    :catchall_c
    move-exception v0

    move-wide/from16 v39, v2

    move-wide/from16 v2, v37

    :goto_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_11
    move-wide/from16 v39, v2

    :goto_12
    return-void

    :catchall_d
    move-exception v0

    move-wide/from16 v29, v13

    move-wide/from16 v32, v15

    goto :goto_13

    :catchall_e
    move-exception v0

    move-wide/from16 v27, v11

    move-wide/from16 v29, v13

    move-wide/from16 v32, v15

    goto :goto_13

    :catchall_f
    move-exception v0

    move-object/from16 v26, v5

    move-wide/from16 v27, v11

    move-wide/from16 v29, v13

    move-wide/from16 v32, v15

    :goto_13
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public sendAPMSMSNotification(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 38

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    iget-boolean v0, v1, Lcom/android/server/PermissionMonitor;->mIsAppPermissionMonitorSupported:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APMSMSNotification for rUid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", rPid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "from rModuleFlag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object/from16 v16, v0

    const/16 v0, 0x2710

    if-ge v2, v0, :cond_1

    return-void

    :cond_1
    move v11, v2

    div-int/lit16 v0, v2, 0x2710

    div-int/lit8 v10, v0, 0xa

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_2

    const-string v0, "PermissionMonitor"

    move-object/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v8

    const-string v8, "Binder.getCallingUid(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PermissionMonitor;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v9, v7, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-wide/from16 v20, v16

    :try_start_0
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9, v8, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v0

    move-object/from16 v22, v9

    move-wide/from16 v8, v20

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move-object/from16 v24, v7

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v11, v22

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v22, v9

    move-wide/from16 v8, v20

    move-object/from16 v24, v7

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-wide/from16 v29, v13

    move-object/from16 v11, v22

    goto/16 :goto_10

    :catch_0
    move-exception v0

    move-object/from16 v22, v9

    move-wide/from16 v8, v20

    move-object/from16 v23, v0

    :try_start_1
    const-string v0, "PermissionMonitor"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object/from16 v24, v7

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move/from16 v25, v11

    :try_start_3
    const-string v11, "(NameNotFoundException) ApplicationInfo for ("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 v11, v22

    :try_start_4
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v26, v12

    :try_start_5
    const-string v12, ") is null! UserId: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :goto_1
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_3

    const-string v0, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "packageName: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {v1, v15, v11, v10}, Lcom/android/server/PermissionMonitor;->isAppWhitelisted(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PermissionMonitor"

    const-string v7, "App is whitelisted. Ignore"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-direct {v1, v2, v3, v11}, Lcom/android/server/PermissionMonitor;->isHiddenApp(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "PermissionMonitor"

    const-string v7, "App is not in hidden status (background/etc). Ignore"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM/FileCopy/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z

    if-eqz v0, :cond_6

    const-string v0, "PermissionMonitor"

    const-string/jumbo v12, "make apm directory to copy media data"

    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const/4 v12, 0x0

    invoke-virtual {v2, v7, v12}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v7, v12}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_7
    const/4 v12, 0x0

    const/16 v16, 0x0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v2

    const-string v2, "_send_sms.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    move-object/from16 v28, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v29, v13

    const-string v13, "APM/FileCopy/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v3, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_6
    new-instance v0, Ljava/io/FileWriter;

    const/4 v13, 0x1

    invoke-direct {v0, v3, v13}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v13, v0

    :try_start_7
    const-string v0, "--------------------------------------\n"

    invoke-virtual {v13, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Sending date : "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n Destination number : "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n Sending message : "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v13}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    nop

    move-object/from16 v31, v2

    move-object/from16 v28, v13

    goto/16 :goto_9

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v13, v28

    :goto_2
    move-object v14, v0

    if-eqz v13, :cond_8

    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_8
    :goto_3
    nop

    :goto_4
    const-string v0, "PermissionMonitor"

    move-object/from16 v31, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v13

    const-string v13, "Error: File write failed: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object/from16 v28, v32

    goto/16 :goto_9

    :cond_9
    move-object/from16 v31, v2

    :try_start_9
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    move-object v2, v0

    :try_start_a
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Sending date : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n Destination number : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n Sending message : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    nop

    move-object/from16 v16, v2

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :cond_a
    :try_start_b
    const-string v0, "PermissionMonitor"

    const-string v2, "Error: Failed to create message file"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :goto_5
    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v2, v16

    :goto_6
    move-object v13, v0

    if-eqz v2, :cond_b

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_8

    :cond_b
    :goto_7
    nop

    :goto_8
    const-string v0, "PermissionMonitor"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v2

    const-string v2, "Error: File write failed: "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v33

    :goto_9
    const-string v0, "5244743"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/SEAMService;

    if-eqz v13, :cond_c

    :try_start_d
    invoke-virtual {v13, v10}, Lcom/android/server/SEAMService;->getAPMStatusAsUser(I)I

    move-result v0

    move v2, v0

    const-string v0, "PermissionMonitor"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    move-object/from16 v34, v3

    :try_start_e
    const-string/jumbo v3, "s getAPMStatusAsUser"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    move-object/from16 v34, v3

    :goto_a
    const-string v3, "PermissionMonitor"

    const-string/jumbo v14, "failed to getAPMStatusAsUser "

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    goto :goto_c

    :cond_c
    move-object/from16 v34, v3

    const-string v0, "PermissionMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "seams is null, userId: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    if-lez v2, :cond_e

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_e

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.NOTIFY_APP_BGACCESS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const-string v0, "com.samsung.intent.extra.APM_PACKAGE_NAME"

    invoke-virtual {v3, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MODULE_NAME"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MEDIA_TYPE"

    const/4 v14, 0x3

    invoke-virtual {v3, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.intent.extra.APM_MEDIA"

    invoke-virtual {v3, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.securitylogagent"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    move-wide/from16 v35, v20

    :try_start_f
    sget-boolean v0, Lcom/android/server/PermissionMonitor;->DEBUG_FLAG:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v0, :cond_d

    :try_start_10
    const-string v0, "PermissionMonitor"

    const-string v14, "All conditions are satisfied, report app access now."

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v0

    move/from16 v37, v2

    move-wide/from16 v1, v35

    goto :goto_e

    :cond_d
    :goto_d
    :try_start_11
    iget-object v0, v1, Lcom/android/server/PermissionMonitor;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v10}, Landroid/os/UserHandle;-><init>(I)V

    const-string v1, "com.samsung.android.intent.permission.APP_PERMISSION_MONITOR"

    invoke-virtual {v0, v3, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move/from16 v37, v2

    move-wide/from16 v1, v35

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    :catchall_2
    move-exception v0

    move/from16 v37, v2

    move-wide/from16 v1, v35

    :goto_e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_e
    :goto_f
    nop

    return-void

    :catchall_3
    move-exception v0

    move-wide/from16 v29, v13

    goto :goto_10

    :catchall_4
    move-exception v0

    move-object/from16 v26, v12

    move-wide/from16 v29, v13

    goto :goto_10

    :catchall_5
    move-exception v0

    move-object/from16 v26, v12

    move-wide/from16 v29, v13

    move-object/from16 v11, v22

    goto :goto_10

    :catchall_6
    move-exception v0

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-wide/from16 v29, v13

    move-object/from16 v11, v22

    goto :goto_10

    :catchall_7
    move-exception v0

    move-object/from16 v24, v7

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-wide/from16 v29, v13

    move-object/from16 v11, v22

    :goto_10
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_f
    return-void
.end method
