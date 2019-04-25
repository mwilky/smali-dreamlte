.class Lcom/android/server/pm/PersonaManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserReceiver.onReceive() {action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userHandle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    const-string v3, "android.intent.extra.USER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/16 v6, 0x12

    invoke-static {p1, v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caller_id_to_show_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Landroid/database/ContentObserver;

    move-result-object v8

    invoke-virtual {v6, v7, v4, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const-string v7, "DUAL_DAR_USER_ADDED"

    invoke-virtual {v2, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->knoxAnalyticsContainer(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;)V

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    const-string v6, "com.sec.enterprise.knox.express"

    invoke-virtual {v5, v6, v4, v4}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_2

    const/4 v2, 0x0

    :cond_2
    goto :goto_1

    :catch_1
    move-exception v4

    const/4 v2, 0x0

    :goto_1
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is MyKnox Installed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$200(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$200(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v5

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    goto/16 :goto_3

    :cond_4
    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v2

    sget-object v2, Landroid/os/ContainerStateReceiver;->EXTRA_USER_INFO:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v2, 0xa

    invoke-static {p1, v1, v2, v5}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    monitor-enter v6

    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$200(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$200(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v6, "PROFILE_REMOVED"

    invoke-virtual {v4, v1, v6}, Lcom/android/server/pm/PersonaManagerService;->knoxAnalyticsContainer(ILjava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :cond_5
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x5

    invoke-static {v3, v1, v5}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    monitor-enter v3

    :try_start_4
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v4, "knoxid.reset_on_reboot"

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v3, "knoxid.reset_on_reboot"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    :cond_8
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    :cond_9
    :goto_3
    return-void
.end method
