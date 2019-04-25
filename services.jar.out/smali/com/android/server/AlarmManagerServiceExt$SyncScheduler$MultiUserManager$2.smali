.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$2;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->removeInstalledPackageAsUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

.field final synthetic val$userid:I


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$2;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iput p2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$2;->val$userid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$2;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$2;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$2;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$2;->val$userid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
