.class public Lcom/android/server/RCPManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageReceiver"
.end annotation


# instance fields
.field private mUserId:I

.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    iput p2, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageReceiver onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x80

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App Installed with packageNAme = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    :try_start_0
    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    invoke-interface {v3, v0, v1, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    const-string/jumbo v5, "proxyName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move v2, v6

    iget-object v6, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->access$1100(Lcom/android/server/RCPManagerService;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->access$1200(Lcom/android/server/RCPManagerService;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Bridge_PROXY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " PackageReceiver onReceive() proxyName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v5, :cond_3

    const-string v6, "RCPProxy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v7, v6, v0}, Lcom/android/server/RCPManagerService;->access$1300(Lcom/android/server/RCPManagerService;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception trying to get applicationInfo for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    goto/16 :goto_6

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.knox.rcp.components"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->access$1400(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    iget v3, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/server/RCPManagerService;->access$1500(Lcom/android/server/RCPManagerService;I)V

    iget-object v2, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->access$1400(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_6
    :goto_3
    goto/16 :goto_6

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->access$1200(Lcom/android/server/RCPManagerService;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Bridge_PROXY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " PackageReceiver onReceive() ACTION_PACKAGE_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v2, "com.samsung.knox.rcp.components"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    array-length v3, v2

    if-lez v3, :cond_c

    array-length v3, v2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_c

    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :try_start_2
    const-string/jumbo v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget v7, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    invoke-interface {v6, v0, v1, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v8}, Lcom/android/server/RCPManagerService;->access$1200(Lcom/android/server/RCPManagerService;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "Bridge_PROXY"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " PackageReceiver : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " appInfo.enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-boolean v8, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    iget v9, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    invoke-static {v8, v9}, Lcom/android/server/RCPManagerService;->access$1600(Lcom/android/server/RCPManagerService;I)V

    goto :goto_5

    :cond_a
    iget-object v8, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v8}, Lcom/android/server/RCPManagerService;->access$1400(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v9, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    iget v10, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    invoke-static {v9, v10}, Lcom/android/server/RCPManagerService;->access$1500(Lcom/android/server/RCPManagerService;I)V

    iget-object v9, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-static {v9}, Lcom/android/server/RCPManagerService;->access$1400(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v9

    iget v10, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8

    :goto_5
    goto :goto_6

    :catchall_1
    move-exception v9

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v6

    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, " PacakgeReceiver : received ACTION_PACKAGE_CHANGED - Exception"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    :goto_6
    return-void
.end method
