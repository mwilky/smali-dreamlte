.class public Lcom/android/server/nextapp/PreloadController;
.super Ljava/lang/Object;
.source "PreloadController.java"


# static fields
.field public static final ACTION_LOW_MEMORY:Ljava/lang/String; = "com.samsung.pkgpredictor.lowmemory"

.field public static final ACTION_PRELOAD_REPLY:Ljava/lang/String; = "com.samsung.DO_ML_LAUNCH_REPLY"

.field public static final ACTION_PRELOAD_SEND:Ljava/lang/String; = "com.samsung.DO_ML_LAUNCH"

.field private static DEBUG:Z = false

.field private static final PRELOAD_PKGS:Ljava/lang/String; = "preload_pkgs"

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-PreloadController"

.field private static final TIMEUP:I = 0x1

.field private static final mPreloadPkgLock:Ljava/lang/Object;


# instance fields
.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPreloadedNum:I

.field private mPreloadedPkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/nextapp/PreloadController;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/nextapp/PreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedPkg:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedNum:I

    new-instance v0, Lcom/android/server/nextapp/PreloadController$1;

    invoke-direct {v0, p0}, Lcom/android/server/nextapp/PreloadController$1;-><init>(Lcom/android/server/nextapp/PreloadController;)V

    iput-object v0, p0, Lcom/android/server/nextapp/PreloadController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/nextapp/PreloadController$2;

    invoke-direct {v0, p0}, Lcom/android/server/nextapp/PreloadController$2;-><init>(Lcom/android/server/nextapp/PreloadController;)V

    iput-object v0, p0, Lcom/android/server/nextapp/PreloadController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/android/server/nextapp/PkgPredictorService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/nextapp/PreloadController;->DEBUG:Z

    iput-object p2, p0, Lcom/android/server/nextapp/PreloadController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/nextapp/PreloadController;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedPkg:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.DO_ML_LAUNCH_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/nextapp/PreloadController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/nextapp/PreloadController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/nextapp/PreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/nextapp/PreloadController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedNum:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/server/nextapp/PreloadController;)I
    .locals 2

    iget v0, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/nextapp/PreloadController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/PreloadController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/nextapp/PreloadController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedPkg:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/nextapp/PreloadController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/nextapp/PreloadController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/nextapp/PreloadController;->DEBUG:Z

    return v0
.end method


# virtual methods
.method protected die(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/nextapp/PreloadController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PkgPredictorService-PreloadController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Die: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] preload : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedPkg:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/nextapp/PreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedPkg:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedPkg:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string/jumbo v0, "preloaded pkgs info:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedPkg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected isPreloadedPkg(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/server/nextapp/PreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedPkg:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected preload(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/nextapp/PreloadController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedNum:I

    iget-boolean v2, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/nextapp/PreloadController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/nextapp/PreloadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput v3, v4, Landroid/os/Message;->what:I

    const-string/jumbo v6, "preload_pkgs"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/android/server/nextapp/PreloadController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x1388

    mul-int/lit16 v8, v1, 0x3e8

    add-int/2addr v7, v8

    int-to-long v7, v7

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "PkgPredictorService-PreloadController"

    const-string/jumbo v2, "give up preloading for low memory!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method protected setCurrent(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/nextapp/PreloadController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PkgPredictorService-PreloadController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User using: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/nextapp/PreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedPkg:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/nextapp/PreloadController;->mPreloadedPkg:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected stopPreloading()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/nextapp/PreloadController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/nextapp/PreloadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
