.class Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNextRequestId:I

.field private mRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public allocateNewRequestId(Z)I
    .locals 5

    iget v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    iget v1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mNextRequestId:I

    if-eqz p1, :cond_0

    new-instance v1, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    invoke-direct {v1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;-><init>()V

    iput v0, v1, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mRequestId:I

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :goto_0
    return v0
.end method

.method public getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-object v0, v2

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notifyResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    .locals 4

    iget v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyResult : Could not find request information. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z

    iget-object v2, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public waitResult(II)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitResult : Could not find request info!! id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    :try_start_1
    iget-object v4, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    sget-object v5, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "waitResult : e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object v3, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waitResult : Unlocked. Id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Elapsed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->mRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    move-object v0, v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v3, v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    return-object v3

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method
