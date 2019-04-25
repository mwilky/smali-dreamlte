.class Lcom/android/server/am/MARsPolicyManager$2;
.super Landroid/app/IUidObserver$Stub;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$800(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$000(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v2

    if-nez v2, :cond_4

    const v2, 0x186a0

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2, p1}, Lcom/android/server/am/MARsPolicyManager;->access$400(Lcom/android/server/am/MARsPolicyManager;I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager;->access$500(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;

    move-result-object v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->access$600(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v5, v4, Lcom/android/server/am/MARsPackageStatus;->freecessState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    iget v5, v4, Lcom/android/server/am/MARsPackageStatus;->freecessState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    :cond_1
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v5, :cond_2

    const-string v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onUidActive...uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/MARsPackageStatus;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", freecessState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/server/am/MARsPackageStatus;->freecessState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v5, v5, Lcom/android/server/am/MARsPolicyManager;->mHandler:Lcom/android/server/am/MARsHandler;

    iget-object v6, v4, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v7, v4, Lcom/android/server/am/MARsPackageStatus;->userId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/MARsHandler;->sendFrozenStateMsgToMainHandler(Ljava/lang/String;I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onUidIdle(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->access$700(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onUidStateChanged(IIJ)V
    .locals 0

    return-void
.end method
