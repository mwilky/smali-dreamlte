.class Lcom/android/server/sepunion/cover/CoverServiceManager$2;
.super Ljava/lang/Object;
.source "CoverServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iput p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected : name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$400(Lcom/android/server/sepunion/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$600(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->unbind()V

    :cond_0
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$900()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$1000(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget v7, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v4, v2

    move-object v6, p1

    move-object v8, p2

    move-object v9, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v9, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    new-instance v8, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {v8, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v2, v9

    move-object v4, p1

    move-object v6, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    move-object v1, v9

    :goto_1
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bound:cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$1100(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$1200(Lcom/android/server/sepunion/cover/CoverServiceManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->access$1300(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$1400(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$1502(Lcom/android/server/sepunion/cover/CoverServiceManager;Z)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->systemReady()V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$100(Lcom/android/server/sepunion/cover/CoverServiceManager;)Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected : name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$400(Lcom/android/server/sepunion/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$600(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->unbind()V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$1600(Lcom/android/server/sepunion/cover/CoverServiceManager;Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbound:cn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$1100(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->access$1700(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->access$1700(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$1800()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->access$1300(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->access$1300(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$1000(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)I

    move-result v2

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->access$1700(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v3

    if-ne v2, v3, :cond_4

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnect()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceDisconnected : retry to connect cover service, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->access$1700(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$1900(Lcom/android/server/sepunion/cover/CoverServiceManager;Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceDisconnected : give up to connect cover service, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->access$1700(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
