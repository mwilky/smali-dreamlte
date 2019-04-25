.class Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MetaDataCollector"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MetaDataCollector"


# instance fields
.field private final mBooleanMetaDataKeys:[Ljava/lang/String;

.field private final mBooleanMetaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLoadRunnable:Ljava/lang/Runnable;

.field private mLoaded:Z

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mStringMetaDataKeys:[Ljava/lang/String;

.field private final mStringMetaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/SamsungActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/SamsungActivityManagerService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    const-string v0, "com.samsung.android.keepalive.density"

    const-string v1, "com.samsung.android.persistent.downloadable"

    const-string v2, "com.samsung.android.multidisplay.keep_process_alive"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mBooleanMetaDataKeys:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    const-string v0, "com.samsung.android.multidisplay.primarydisplay"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mStringMetaDataKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoaded:Z

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;-><init>(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoadRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$2;-><init>(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->scheduleLoad()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoaded:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->loadInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->loadMetaDataOnceLocked(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->hasBooleanMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->getStringMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method private cacheMetaDataLocked(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-enter v0

    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cacheStringMetaDataLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 8

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_0

    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ACTIVITY MANAGER META DATA COLLECTOR"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    const-string v0, "  MetaData<Boolean>"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "  (nothing) "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_2
    const-string v0, "  MetaData<String>"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "  (nothing) "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getStringMetaData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoaded:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x80

    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v4, p1, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :cond_3
    :goto_0
    nop

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "MetaDataCollector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApplicationInfo failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private hasBooleanMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoaded:Z

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/16 v6, 0x80

    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-interface {v5, p1, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_1
    :goto_0
    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "MetaDataCollector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getApplicationInfo failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    return v2

    :cond_3
    monitor-enter v1

    :try_start_3
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1

    return v2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private loadInternal()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MetaDataCollector"

    const-string v1, "PackageManager is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/SamsungActivityManagerService;->mBgHandler:Landroid/os/Handler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v1, "MetaDataCollector"

    const-string v2, "begin"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v4}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->loadMetaDataOnceLocked(Landroid/content/pm/ApplicationInfo;)V

    const-string v4, "MetaDataCollector"

    const-string/jumbo v5, "done"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoaded:Z

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadMetaDataOnceLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mBooleanMetaDataKeys:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :goto_1
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->cacheMetaDataLocked(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mStringMetaDataKeys:[Ljava/lang/String;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->cacheStringMetaDataLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private scheduleLoad()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoaded:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/SamsungActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/SamsungActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoadRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
