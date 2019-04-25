.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
.super Ljava/lang/Object;
.source "EdgeLightingClientManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;
    }
.end annotation


# static fields
.field private static final MSG_SCREEN_CHANGED:I = 0x3

.field private static final MSG_START_EDGHLIGHTING:I = 0x1

.field private static final MSG_STOP_EDGHLIGHTING:I = 0x2


# instance fields
.field final component:Landroid/content/ComponentName;

.field condition:I

.field private mHandler:Landroid/os/Handler;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

.field final token:Landroid/os/IBinder;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$200(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    iput p5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->pid:I

    iput p6, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->uid:I

    :try_start_0
    iget-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeLightingHost : linkToDeath error"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private _onScreenChanged(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onScreenChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onScreenChanged : RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private _onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onStartEdgeLighting : RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private _onStopEdgeLighting(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onStopEdgeLighting(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onStopEdgeLighting : RemoteException : "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->startEdgeLightingService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onStopEdgeLighting(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->_onScreenChanged(Z)V

    return-void
.end method

.method private startEdgeLightingService(Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->isEdgeLightingSettingEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startEdgeLightingService"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    sget-object v1, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$1100(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : component = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$600(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$600(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$600(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$600(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$700(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager;->stopEdgeLighting()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$800(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$800(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "binderDied."

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$900(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onScreenChanged(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenChanged on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScreenChanged : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 5

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartEdgeLighting pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStartEdgeLighting : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V

    invoke-virtual {v1, v2, p3, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStopEdgeLighting(Ljava/lang/String;I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopEdgeLighting pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStopEdgeLighting : token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  [Host: component:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") condition:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCondition(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    return-void
.end method
