.class public Lcom/android/server/enterprise/lso/LSOService;
.super Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;
.source "LSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final CUSTOM_LAYER:I = 0x2

.field private static final DEBUG:Z

.field private static final DEFAULT_LAYER:I = 0x1

.field private static final EMERGENCY_PHONE_LAYER:I = 0x3

.field private static final MAX_SUPPORTED_LAYER:I = 0x3

.field private static final NO_ADMIN_SET:I = -0x1

.field private static final RESET_ALL_LAYER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LSOService"

.field private static final singleAdmin:Z = true


# instance fields
.field private lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

.field private mOverlayAdminUid:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperAdminUid:I

.field private screenDimesions:Landroid/graphics/Point;

.field private final storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Lcom/android/server/enterprise/lso/LSOService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/lso/LSOService$1;-><init>(Lcom/android/server/enterprise/lso/LSOService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/lso/LSOStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getWallpaperAdminUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminPref()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/knox/lockscreen/LSOItemData;

    iput-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlay(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/lso/LSOService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->updateSystemUIMonitor(I)V

    return-void
.end method

.method private copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "/data/system/enterprise/temp"

    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/enterprise/temp/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x400

    new-array v2, v2, [B

    const/4 v3, 0x0

    move-object v4, v1

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v5

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "LSOService"

    const-string/jumbo v7, "failed to close inputstream"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    nop

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v1

    const-string v5, "LSOService"

    const-string/jumbo v7, "failed to close outputstream"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    move v1, v6

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v5

    :try_start_3
    const-string v6, "LSOService"

    const-string v7, "copyFileFromParcel() : failed to copy image from parcel "

    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v6

    const-string v7, "LSOService"

    const-string/jumbo v8, "failed to close inputstream"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_4
    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v6

    const-string v7, "LSOService"

    const-string/jumbo v8, "failed to close outputstream"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_5
    return-object v1

    :goto_6
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    move-exception v5

    const-string v6, "LSOService"

    const-string/jumbo v7, "failed to close inputstream"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_7
    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    move-exception v5

    const-string v6, "LSOService"

    const-string/jumbo v7, "failed to close outputstream"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_8
    throw v1
.end method

.method private declared-synchronized deleteFiles(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteRecursive(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/lso/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "LSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFiles() : failed layer - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private deleteWallpaperFiles()V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "LSOService"

    const-string v4, "deleteWallpaperFiles() : failed but ignore this error"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_LOCKSCREEN"

    const-string v3, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_LOCKSCREEN"

    const-string v3, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "lockscreen_overlay"

    return-object v0
.end method

.method private sendConfigChangeNotification(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.samsung.android.knox.intent.extra.KNOX_WALLPAPER_ENABLED_INTERNAL"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v0, "LSOService"

    const-string/jumbo v6, "sendConfigChangeNotification() - done"

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "LSOService"

    const-string/jumbo v6, "sendConfigChangeNotification() : failed to send intent."

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenInvisibleOverlaySystemUI(IZ)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenWallpaperSystemUI(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v5, "LSOService"

    const-string/jumbo v6, "sendConfigChangeNotification() : failed to update system ui."

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private setLockscreenInvisibleOverlaySystemUI(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLockscreenInvisibleOverlayAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "LSOService"

    const-string/jumbo v4, "setLockscreenInvisibleOverlaySystemUI() failed. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setLockscreenWallpaperSystemUI(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLockscreenWallpaperAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "LSOService"

    const-string/jumbo v4, "setLockscreenWallpaperSystemUI() failed. "

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private updateSystemUIMonitor(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenInvisibleOverlaySystemUI(IZ)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/lso/LSOService;->setLockscreenWallpaperSystemUI(IZ)V

    return-void
.end method


# virtual methods
.method public canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v6

    move-object p1, v6

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v5, p2, :cond_0

    if-eqz p2, :cond_0

    if-ne v4, p2, :cond_2

    :cond_0
    iget v7, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v7, v5, :cond_1

    iget v7, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v7, v6, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-eq v5, p2, :cond_3

    if-eqz p2, :cond_3

    if-ne v3, p2, :cond_5

    :cond_3
    iget v7, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v7, v5, :cond_4

    iget v7, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v6, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :cond_5
    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "LSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canConfigure() Unhandled exception."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-ne v5, p2, :cond_7

    if-lt v0, v3, :cond_6

    move v1, v4

    nop

    :cond_6
    :goto_1
    goto :goto_2

    :cond_7
    if-lez v0, :cond_8

    move v1, v4

    nop

    :cond_8
    goto :goto_1

    :goto_2
    const-string v2, "LSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canConfigure("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLSOFeatureName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public declared-synchronized copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "%s_%s%s_%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyFiles(ILcom/samsung/android/knox/lockscreen/LSOItemData;I)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/enterprise/lso/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    const-string v4, "/data/system/enterprise"

    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    if-nez v4, :cond_0

    nop

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v5

    :cond_0
    :try_start_3
    const-string v4, "/data/system/enterprise/lso"

    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_1

    nop

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v5

    :cond_1
    :try_start_5
    invoke-static {v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_2

    nop

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return v5

    :cond_2
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Lcom/samsung/android/knox/lockscreen/LSOItemData;Ljava/lang/String;I)Z

    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v4

    const/4 v0, 0x1

    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_9
    const-string v5, "LSOService"

    const-string v6, "copyFiles1() error occurs. "

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    nop

    if-nez v0, :cond_3

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    :cond_3
    const-string v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFiles1() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    return v0

    :goto_1
    :try_start_b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyFiles(Lcom/samsung/android/knox/lockscreen/LSOItemData;Ljava/lang/String;I)Z
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    move-object v4, p1

    check-cast v4, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v6, "LSOService"

    const-string v7, "copyFiles2 - LSO_ITEM_TYPE_CONTAINER : file no created"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v5, p2, p3, v6}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    if-nez v6, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setBGImage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move v5, v0

    move v0, v1

    :goto_0
    :try_start_3
    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v6

    if-ge v0, v6, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v6

    add-int/lit8 v7, p3, 0x1

    invoke-virtual {p0, v6, p2, v7}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Lcom/samsung/android/knox/lockscreen/LSOItemData;Ljava/lang/String;I)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    nop

    move v0, v5

    goto :goto_1

    :catch_0
    move-exception v1

    move v0, v5

    goto/16 :goto_3

    :pswitch_1
    :try_start_4
    move-object v4, p1

    check-cast v4, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v6, "LSOService"

    const-string v7, "copyFiles2 - LSO_ITEM_TYPE_IMAGE : file no created"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :cond_5
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v5, p2, p3, v6}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    if-nez v6, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    :cond_7
    :goto_1
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v5, "android:src"

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    const-string v6, "android:src"

    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    const-string v6, "LSOService"

    const-string v7, "copyFiles2 - attrSet ATTR_IMAGE_SRC : file no created"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :cond_8
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v5, p2, p3, v1}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    const-string v6, "android:src"

    invoke-virtual {p1, v6, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    :goto_2
    goto :goto_4

    :catch_1
    move-exception v1

    :goto_3
    :try_start_7
    const-string v3, "LSOService"

    const-string v4, "copyFiles2() - failed. "

    invoke-static {v3, v4, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_4
    const-string v1, "LSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFiles2() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ret ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Permission Denial: can\'t dump LSOService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOCKSCREEN_WALLPAPER : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  AdminUid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/lso/LSOService;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOCKSCREEN_OVERLAY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  AdminUid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    const/4 v4, 0x3

    if-gt v3, v4, :cond_3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/lso/LSOService;->getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Layer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "LSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getData() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    const/4 v0, 0x3

    if-gt p2, v0, :cond_1

    sget-boolean v0, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getData() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aget-object v0, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPreferences(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .locals 3

    sget-boolean v0, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreferences() - lsoPref = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    return-object v0
.end method

.method public isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v2, p2, :cond_0

    if-eqz p2, :cond_0

    if-ne v1, p2, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v3, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const/4 v3, 0x2

    if-eq v2, p2, :cond_2

    if-eqz p2, :cond_2

    if-ne v3, p2, :cond_3

    :cond_2
    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v4, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/4 v4, 0x0

    if-ne v2, p2, :cond_5

    if-lt v0, v3, :cond_4

    goto :goto_0

    :cond_4
    move v1, v4

    :goto_0
    goto :goto_1

    :cond_5
    if-lez v0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v4

    :goto_1
    const-string v2, "LSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isConfigured("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLSOFeatureName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->updateSystemUIMonitor(I)V

    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 4

    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    :cond_1
    return-void
.end method

.method public resetData(Lcom/samsung/android/knox/ContextInfo;I)V
    .locals 11

    const-string v0, "LSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetData() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    if-ltz p2, :cond_7

    const/4 v1, 0x3

    if-gt p2, v1, :cond_7

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "LSOService"

    const-string/jumbo v2, "resetData() : Not allowed to reset Overlay"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v3, v4, :cond_5

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    iput-object v5, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    :cond_1
    if-nez p2, :cond_2

    nop

    :goto_0
    if-gt v2, v1, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v5, v1, p2

    :cond_3
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v9, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "LSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has reset banner settings."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    sget-boolean v2, Lcom/android/server/enterprise/lso/LSOService;->DEBUG:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_3

    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_5
    const-string v1, "LSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetData() : requested uid is diffren with present admin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v0, :cond_6

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    :cond_6
    return-void

    :cond_7
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid layer. Layer must be 0...3 but requseted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetWallpaper(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 11

    const-string v0, "LSOService"

    const-string/jumbo v1, "resetWallpaper()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v8

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LSOService"

    const-string v2, "Not allowed to reset Wallpaper"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v9, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "LSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has reset banner wallpaper."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v8

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    :cond_2
    return-void
.end method

.method public declared-synchronized setData(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    monitor-enter p0

    :try_start_0
    const-string v0, "LSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setData() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    move-object v10, v0

    invoke-static {v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    move v15, v0

    iget v0, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move v14, v0

    const/4 v0, 0x1

    if-lt v9, v0, :cond_6

    const/4 v2, 0x3

    if-gt v9, v2, :cond_6

    :try_start_1
    invoke-virtual {v1, v10, v0}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v11, -0x1

    if-nez v0, :cond_0

    :try_start_2
    const-string v0, "LSOService"

    const-string v2, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v11

    :catchall_0
    move-exception v0

    move v5, v14

    move v6, v15

    goto/16 :goto_1

    :cond_0
    :try_start_4
    iget-object v0, v1, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v9, v2, :cond_2

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "LSOService"

    const-string/jumbo v3, "setData() failed because telephony is not supported."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, -0x3

    :try_start_6
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    monitor-exit p0

    return v2

    :cond_2
    :try_start_7
    invoke-virtual {v1, v14, v8, v9}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(ILcom/samsung/android/knox/lockscreen/LSOItemData;I)Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v12, -0x4

    if-nez v2, :cond_3

    nop

    :try_start_8
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    monitor-exit p0

    return v12

    :cond_3
    :try_start_9
    iget-object v2, v1, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v3, v14

    iget-object v7, v1, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-object v5, v8

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(JLcom/samsung/android/knox/lockscreen/LSOItemData;ILcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-nez v2, :cond_5

    :try_start_a
    iget-object v3, v1, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v3

    iput v3, v1, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget-object v3, v1, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    const/4 v4, 0x0

    aput-object v4, v3, v9

    iget v3, v1, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v3, v11, :cond_4

    iput-object v4, v1, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    :cond_4
    invoke-direct {v1, v9}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    nop

    :try_start_b
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    monitor-exit p0

    return v12

    :cond_5
    :try_start_c
    iput v14, v1, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget-object v3, v1, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    aput-object v8, v3, v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    nop

    invoke-direct {v1, v15}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x1

    :try_start_e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v4, "LSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has changed banner settings."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move v5, v14

    move v14, v0

    move v6, v15

    move-object v15, v4

    move/from16 v17, v6

    :try_start_f
    invoke-static/range {v11 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    nop

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move v5, v14

    move v6, v15

    :goto_0
    :try_start_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_3
    move-exception v0

    move v5, v14

    move v6, v15

    goto :goto_1

    :cond_6
    move v5, v14

    move v6, v15

    :try_start_12
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v2, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :catchall_4
    move-exception v0

    :goto_1
    :try_start_13
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreferences(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)I
    .locals 10

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v2, -0x6

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const-string v1, "LSOService"

    const-string/jumbo v3, "setPreferences() : There is no configured data from admin. "

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq v1, v4, :cond_1

    const-string v1, "LSOService"

    const-string/jumbo v2, "setPreferences() : Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Lcom/samsung/android/knox/lockscreen/LSOItemData;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    if-nez v1, :cond_2

    const-string v1, "LSOService"

    const-string/jumbo v3, "setPreferences() : layer doesn\'t configure so cannot set pref."

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateAdminPref(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    if-eqz v0, :cond_3

    iput-object p2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "LSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has changed banner settings."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, -0x4

    :goto_1
    return v1
.end method

.method public setWallpaper(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "LSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWallpaper("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/lso/LSOService;->enforceOwnerOnlyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v12

    iget v13, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x2

    invoke-virtual {v1, v4, v0}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    const/4 v5, -0x1

    if-nez v0, :cond_0

    const-string v0, "LSOService"

    const-string/jumbo v6, "setWallpaper() : Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v0, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_0
    const/4 v6, -0x4

    if-eqz v2, :cond_9

    if-nez v3, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-direct {v1, v3, v2}, Lcom/android/server/enterprise/lso/LSOService;->copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    const-string v0, "LSOService"

    const-string/jumbo v5, "file not created"

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const/4 v15, 0x0

    move v9, v15

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v10, "/data/data/com.sec.android.gallery3d"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LSOService"

    const-string v10, "/data/data/com.sec.android.gallery3d does not exists"

    invoke-static {v0, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x3

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_3
    :try_start_1
    const-string v0, "/data/system/enterprise"

    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    nop

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_4
    :try_start_2
    const-string v0, "/data/system/enterprise/lso"

    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->mkDir(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_5

    nop

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_5
    :try_start_3
    iget-object v0, v1, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v10, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iget-object v11, v1, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-static {v14, v0, v10, v11}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v0

    move v9, v0

    if-eqz v9, :cond_6

    const-string v0, "LSOService"

    const-string/jumbo v10, "setWallpaper() : Create Ripple image"

    invoke-static {v0, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v11, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v0, v10, v11}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->createRippleImage(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v9, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_4
    const-string v10, "LSOService"

    const-string/jumbo v11, "setWallpaper() : error occurs"

    invoke-static {v10, v11, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v9, 0x0

    :cond_6
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move/from16 v16, v9

    if-nez v16, :cond_7

    const-string v0, "LSOService"

    const-string/jumbo v5, "setWallpaper() : Error in copying file"

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    return v6

    :cond_7
    iget-object v0, v1, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v9, v13

    invoke-virtual {v0, v9, v10, v14}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setWallpaperData(JLjava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string v0, "LSOService"

    const-string/jumbo v9, "setWallpaper() : Failed to set wallpaper data. "

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, v1, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    invoke-static {v14}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    return v6

    :cond_8
    iput v13, v1, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    invoke-direct {v1, v12}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotification(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const-string v9, "LSOService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Admin "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " has changed banner wallpaper to file "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v18, v10

    move-object v10, v0

    move v11, v12

    :try_start_6
    invoke-static/range {v5 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-wide/from16 v5, v18

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-wide/from16 v5, v18

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide/from16 v5, v18

    goto :goto_2

    :catchall_2
    move-exception v0

    move-wide v5, v10

    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_2
    move-exception v0

    move-wide v5, v10

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    nop

    invoke-static {v14}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->deleteFile(Ljava/lang/String;)V

    const/4 v7, 0x0

    return v7

    :goto_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_9
    :goto_5
    const-string v0, "LSOService"

    const-string/jumbo v5, "setWallpaper() : imageFilePath or image is null, please check path"

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
