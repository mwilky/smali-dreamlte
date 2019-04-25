.class Lcom/android/server/am/ActiveServices$ForcedStandbyListener;
.super Lcom/android/server/AppStateTracker$Listener;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForcedStandbyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Lcom/android/server/AppStateTracker$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public stopForegroundServicesForUidPackage(ILjava/lang/String;)V
    .locals 10

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/ActiveServices;->access$000(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    iget-object v6, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p1, v7, :cond_1

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    iget-boolean v7, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v7, :cond_2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    iget-object v8, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    const/4 v9, 0x0

    invoke-static {v8, v7, v4, v9, v4}, Lcom/android/server/am/ActiveServices;->access$100(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
