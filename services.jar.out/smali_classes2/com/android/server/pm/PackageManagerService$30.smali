.class Lcom/android/server/pm/PackageManagerService$30;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$moveId:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;Lcom/android/server/pm/PackageManagerService$PackageFreezer;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$30;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$30;->val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$30;->val$moveId:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$30;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$30;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$30;->val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    sget-boolean v0, Landroid/content/pm/PackageManager;->IS_DIRECTSDINSTALL_SUPPORTED:Z

    const/4 v1, -0x6

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8400()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$2100(Lcom/android/server/pm/PackageManagerService;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$8100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget v3, v3, Lcom/android/server/pm/PackageManagerService$SdcardParams;->moveId:I

    invoke-static {v2, v3, v1}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7500(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    :cond_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8400()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8400()Ljava/util/Map;

    move-result-object v2

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$30;->val$moveId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$8200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$SdcardParams;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v4, Lcom/android/server/pm/PackageManagerService$30$1;

    invoke-direct {v4, p0, v2}, Lcom/android/server/pm/PackageManagerService$30$1;-><init>(Lcom/android/server/pm/PackageManagerService$30;Lcom/android/server/pm/PackageManagerService$SdcardParams;)V

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$8100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$30;->val$moveId:I

    invoke-static {v2, v3, v1}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7500(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$8100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$30;->val$moveId:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7500(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$8100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$30;->val$moveId:I

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7500(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$30;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$8100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$30;->val$moveId:I

    const/16 v3, -0x64

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7500(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    nop

    :goto_2
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
