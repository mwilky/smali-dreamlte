.class final Lcom/android/server/om/OverlayManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;[I)V
    .locals 9

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget v3, p2, v2

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, p1, v7, v3, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IIZ)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/om/SemSamsungThemeUtils;->hasSamsungThemeSibling(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v8, "samsungtheme-sibling"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    invoke-static {v5, p1}, Lcom/android/server/om/SemSamsungThemeUtils;->addSiblingTarget(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v7

    invoke-virtual {v7, p1, v3, v6}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageAdded(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageAdded(Ljava/lang/String;I)V

    :cond_3
    :goto_1
    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    return-void
.end method

.method private onPackageChanged(Ljava/lang/String;[I)V
    .locals 7

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, p1, v6, v3, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IIZ)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v6

    invoke-virtual {v6, p1, v3, v5}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageChanged(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageChanged(Ljava/lang/String;I)V

    :cond_1
    :goto_1
    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method private onPackageRemoved(Ljava/lang/String;[I)V
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetPackageInfo(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageRemoved(Ljava/lang/String;I)V

    :goto_1
    monitor-exit v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method private onPackageUpgraded(Ljava/lang/String;[I)V
    .locals 9

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget v3, p2, v2

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, p1, v7, v3, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IIZ)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/om/SemSamsungThemeUtils;->hasSamsungThemeSibling(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v8, "samsungtheme-sibling"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    invoke-static {v5, p1}, Lcom/android/server/om/SemSamsungThemeUtils;->addSiblingTarget(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/android/server/om/SemSamsungThemeUtils;->removeSiblingTarget(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-class v7, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, p1, v8}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;)Z

    :cond_1
    :goto_1
    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v7

    invoke-virtual {v7, p1, v3, v6}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageUpgraded(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageUpgraded(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageUpgraded(Ljava/lang/String;I)V

    :cond_4
    :goto_2
    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    return-void
.end method

.method private onPackageUpgrading(Ljava/lang/String;[I)V
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetPackageInfo(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageUpgrading(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageUpgrading(Ljava/lang/String;I)V

    :goto_1
    monitor-exit v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "OverlayManager"

    const-string v2, "Cannot handle package broadcast with null action"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "OverlayManager"

    const-string v3, "Cannot handle package broadcast with null data"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "android.intent.extra.UID"

    const/16 v6, -0x2710

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    goto :goto_0

    :cond_2
    new-array v6, v7, [I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    aput v8, v6, v4

    :goto_0
    const/4 v8, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0xa480416

    if-eq v9, v10, :cond_5

    const v7, 0x1f50b9c2

    if-eq v9, v7, :cond_4

    const v7, 0x5c1076e2

    if-eq v9, v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_4
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    goto :goto_2

    :cond_5
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v7

    goto :goto_2

    :cond_6
    :goto_1
    move v4, v8

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-eqz v3, :cond_7

    invoke-direct {p0, v2, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageUpgrading(Ljava/lang/String;[I)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, v2, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageRemoved(Ljava/lang/String;[I)V

    goto :goto_3

    :pswitch_1
    invoke-direct {p0, v2, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageChanged(Ljava/lang/String;[I)V

    goto :goto_3

    :pswitch_2
    if-eqz v3, :cond_8

    invoke-direct {p0, v2, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageUpgraded(Ljava/lang/String;[I)V

    goto :goto_3

    :cond_8
    invoke-direct {p0, v2, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageAdded(Ljava/lang/String;[I)V

    nop

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
