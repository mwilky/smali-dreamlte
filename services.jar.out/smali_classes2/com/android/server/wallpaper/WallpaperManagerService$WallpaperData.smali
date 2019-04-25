.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;
    }
.end annotation


# instance fields
.field allowBackup:Z

.field animatedPkgName:Ljava/lang/String;

.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final callingPackageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field cropFile:Ljava/io/File;

.field final cropHint:Landroid/graphics/Rect;

.field cropedBitmap:Landroid/graphics/Bitmap;

.field height:I

.field imageWallpaperPending:Z

.field isCopied:Z

.field isDesktopWallpaper:Z

.field isPreloaded:Z

.field lastDiedTime:J

.field length:I

.field motionPkgName:Ljava/lang/String;

.field multiCropFile:[Ljava/io/File;

.field multiWallpaperFile:[Ljava/io/File;

.field name:Ljava/lang/String;

.field nextWallpaperComponent:Landroid/content/ComponentName;

.field final padding:Landroid/graphics/Rect;

.field preloadKWPColorCode:Ljava/lang/String;

.field primaryColors:Landroid/app/WallpaperColors;

.field setComplete:Landroid/app/IWallpaperManagerCallback;

.field themeSettingsObserver:Lcom/android/server/wallpaper/WallpaperManagerService$ThemeSettingsObserver;

.field userId:I

.field videoFilePath:Ljava/lang/String;

.field videoFirstFrameFile:Ljava/io/File;

.field videoPkgName:Ljava/lang/String;

.field wallpaperComponent:Landroid/content/ComponentName;

.field wallpaperFile:Ljava/io/File;

.field wallpaperId:I

.field wallpaperObserver:Landroid/os/FileObserver;

.field wallpaperUpdating:Z

.field whichPending:I

.field width:I

.field wpType:I


# direct methods
.method constructor <init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackageInfos:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFirstFrameFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoPkgName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isCopied:Z

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isDesktopWallpaper:Z

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->isPreloaded:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setDefaultWallpaperData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setVideoWallpaperData(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method cropExists()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method getCallingPackage()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackageInfos:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackageInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackageInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;->getCallingPackageName()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCallingPackageInfoAll()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackageInfos:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;->getCallingPackageInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWallpaperFile()Ljava/io/File;
    .locals 2

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFirstFrameFile:Ljava/io/File;

    nop

    :goto_0
    nop

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isSameWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 3

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1800()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "WallpaperManagerService"

    const-string v2, "Same Image Wallpaper!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WallpaperManagerService"

    const-string v2, "Same Live wallpaper!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v0, "WallpaperManagerService"

    const-string v1, "Different wallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method setCallingPackage(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setCallingPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setCallingPackageInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackageInfos:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackageInfos:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData$CallingPackageInfo;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackageInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackageInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDefaultWallpaperData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    return-void
.end method

.method setMultiWallpaperData(Ljava/io/File;I)V
    .locals 6

    const-string/jumbo v0, "wallpaper_lock_orig"

    invoke-static {p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1700(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wallpaper_lock"

    invoke-static {p2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1700(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-array v2, p2, [Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    new-array v2, p2, [Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v2

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v2

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setVideoWallpaperData(Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "wallpaper_first"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->videoFirstFrameFile:Ljava/io/File;

    return-void
.end method

.method sourceExists()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
