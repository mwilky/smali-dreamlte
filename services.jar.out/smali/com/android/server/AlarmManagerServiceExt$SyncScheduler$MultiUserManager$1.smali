.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackagesAsUser(II)V
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

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iput p2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->val$userid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->val$userid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    nop

    :goto_0
    move v1, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4, v5, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v4, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->val$userid:I

    invoke-static {v4, v3, v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$3500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;->this$2:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    iget-object v6, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v6, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppTagSet:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :goto_1
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
