.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;
.super Ljava/lang/Object;
.source "EdgeLightingListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsRunning:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    return v0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "-ListenerManager start"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mIsRunning:Z

    return v0
.end method

.method register(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register : pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mListeners = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$000(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "register : already registered"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "R listener."

    invoke-virtual {v2, v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startEdgeLighting()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$102(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Z)Z

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->onEdgeLightingStarted()V

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopEdgeLighting()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$102(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Z)Z

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->onEdgeLightingStopped()V

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregister(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregister : pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mListeners = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->access$000(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    :cond_2
    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    sget-object v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unregister : cannot find the matched host"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v2

    const-string v3, "UR listener"

    invoke-virtual {v2, p2, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
