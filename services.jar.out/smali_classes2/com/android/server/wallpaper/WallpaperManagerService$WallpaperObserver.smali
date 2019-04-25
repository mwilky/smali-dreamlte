.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mDesktopWallpaperFile:Ljava/io/File;

.field final mDesktopWallpaperInfoFile:Ljava/io/File;

.field final mDesktopWallpaperLockFile:Ljava/io/File;

.field mLockWallpaperFileObserver:Landroid/os/FileObserver;

.field mMultiWallpaperLockFiles:[Ljava/io/File;

.field final mSubDisplayWallpaperFile:Ljava/io/File;

.field final mSubDisplayWallpaperInfoFile:Ljava/io/File;

.field final mSubDisplayWallpaperLockFile:Ljava/io/File;

.field final mUserId:I

.field final mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field mWallpaperFileObserver:Landroid/os/FileObserver;

.field final mWallpaperLockDir:Ljava/io/File;

.field final mWallpaperLockFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mMultiWallpaperLockFiles:[Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFileObserver:Landroid/os/FileObserver;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mLockWallpaperFileObserver:Landroid/os/FileObserver;

    const-string v0, "WallpaperManagerService"

    const-string v1, "WallpaperObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_lock_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_desktop_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mDesktopWallpaperFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_desktop_lock_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mDesktopWallpaperLockFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_desktop_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mDesktopWallpaperInfoFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_sub_display_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSubDisplayWallpaperFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_sub_display_lock_orig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSubDisplayWallpaperLockFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_subdisplay_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSubDisplayWallpaperInfoFile:Ljava/io/File;

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x688

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Ljava/lang/String;ILcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mLockWallpaperFileObserver:Landroid/os/FileObserver;

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Ljava/lang/String;ILcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFileObserver:Landroid/os/FileObserver;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;ILjava/lang/String;Ljava/io/File;ZZI)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->updateEvent(ILjava/lang/String;Ljava/io/File;ZZI)V

    return-void
.end method

.method private dataForEvent(ZI)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    const/4 v4, 0x2

    or-int/2addr v4, p2

    invoke-static {v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    const/4 v4, 0x1

    or-int/2addr v4, p2

    invoke-static {v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    move-object v0, v2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_1
    return-object v1

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateEvent(ILjava/lang/String;Ljava/io/File;ZZI)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    const/16 v0, 0x80

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    const/16 v0, 0x8

    if-eq v2, v0, :cond_2

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    const/4 v10, 0x0

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "wallpaper_desktop"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    or-int/lit8 v10, v10, 0x8

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "wallpaper_sub_display"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    or-int/lit8 v10, v10, 0x10

    :cond_4
    :goto_3
    invoke-direct {v1, v4, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->dataForEvent(ZI)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v14

    const/4 v11, 0x0

    const/16 v17, 0x2

    if-eqz v8, :cond_5

    if-eqz v4, :cond_5

    invoke-static/range {p3 .. p3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v6, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {v0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    or-int v6, v17, v10

    invoke-static {v0, v14, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void

    :cond_5
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    if-nez v3, :cond_7

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v19, v13

    move-object v7, v14

    goto/16 :goto_b

    :cond_7
    :goto_4
    :try_start_0
    iget v12, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    const/4 v6, 0x3

    and-int/2addr v12, v6

    const-string v7, "WallpaperManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper file change: evt="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " path="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sys="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " lock="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " imagePending="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " whichPending=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " written="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " index="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " which="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_8

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    iget v0, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-ne v0, v6, :cond_9

    if-eqz v3, :cond_9

    :try_start_1
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    or-int v6, v17, v10

    invoke-static {v0, v14, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v19, v13

    move-object v7, v14

    goto/16 :goto_c

    :cond_9
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :goto_5
    iget-boolean v0, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-nez v0, :cond_b

    if-eqz v3, :cond_a

    const/16 v0, 0x8

    if-ne v2, v0, :cond_a

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v0, 0x1

    :goto_7
    move v6, v0

    const-string v0, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v12

    const-string/jumbo v12, "wallpaper.imageWallpaperPending = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "needToGenerateSysCropWallpaper = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    if-ne v2, v0, :cond_c

    if-eqz v6, :cond_6

    :cond_c
    if-eqz v9, :cond_15

    invoke-static/range {p3 .. p3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v8, :cond_d

    :try_start_3
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v7, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v12, 0x1

    invoke-static {v0, v7, v12, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$600(Lcom/android/server/wallpaper/WallpaperManagerService;IZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v14, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    const-string v0, "WallpaperManagerService"

    const-string v7, "Crop done; invoking completion callback"

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput-boolean v7, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    iget-object v0, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v0, :cond_e

    :try_start_5
    iget-object v0, v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :catch_0
    move-exception v0

    :cond_e
    :goto_8
    if-eqz v3, :cond_11

    :try_start_6
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "lockscreen_wallpaper"

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v12, v12, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getUserId()I

    move-result v12

    const/4 v2, 0x0

    invoke-static {v0, v7, v2, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v7, 0x1

    if-ne v0, v7, :cond_f

    const/4 v2, 0x1

    nop

    :cond_f
    move v0, v2

    if-nez v0, :cond_10

    or-int/lit8 v2, v11, 0x2

    goto :goto_9

    :cond_10
    move v2, v11

    :goto_9
    :try_start_7
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v12, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v7, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v18, v20

    move-object/from16 v19, v13

    move v13, v7

    move-object v7, v14

    move v14, v15

    move-object v15, v7

    :try_start_8
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v11, 0x1

    or-int/2addr v11, v10

    or-int v0, v2, v11

    move v11, v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move v11, v2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object/from16 v19, v13

    move-object v7, v14

    move v11, v2

    goto :goto_c

    :cond_11
    move-object/from16 v19, v13

    move-object v7, v14

    move/from16 v18, v20

    :goto_a
    if-eqz v4, :cond_14

    if-nez v4, :cond_12

    :try_start_9
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    or-int v12, v18, v10

    invoke-static {v0, v2, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$900(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    :cond_12
    iget v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wpType:I

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(I)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-static {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    :cond_13
    or-int v0, v17, v10

    or-int/2addr v0, v11

    move v11, v0

    :cond_14
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0, v2, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    goto :goto_b

    :cond_15
    move-object/from16 v19, v13

    move-object v7, v14

    :goto_b
    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v11, :cond_16

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    :cond_16
    return-void

    :catchall_3
    move-exception v0

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object/from16 v19, v13

    move-object v7, v14

    :goto_c
    :try_start_a
    monitor-exit v19
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method
