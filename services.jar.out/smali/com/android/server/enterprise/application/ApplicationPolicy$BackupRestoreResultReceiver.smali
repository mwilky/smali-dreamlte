.class Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupRestoreResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "ApplicationPolicy"

    const-string/jumbo v1, "onReceiveResult "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "edm.intent.action.backup.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v3, "backupResult"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3602(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-string/jumbo v0, "edm.intent.action.restore.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string/jumbo v3, "restoreResult"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$3702(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
