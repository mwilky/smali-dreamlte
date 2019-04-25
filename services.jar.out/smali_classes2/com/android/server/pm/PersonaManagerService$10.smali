.class Lcom/android/server/pm/PersonaManagerService$10;
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

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "samsung.knox.intent.action.rcp.MOVEMENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x3

    :cond_4
    :goto_0
    new-instance v3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "KNOX_CONTAINER"

    const-string v5, "CONTAINER_EVENT"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_5
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_DUALDAR"

    const-string v7, "DUALDAR_PACKAGE_ADDED"

    invoke-direct {v2, v5, v6, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "pN"

    invoke-virtual {v2, v6, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "add"

    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v6, "PersonaManagerService:DualDARAnalytics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "On Pkg Add, Data values : packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", add = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PersonaManagerService:DualDARAnalytics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Payload / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "cTp"

    invoke-virtual {v3, v5, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v5, "e"

    const-string v7, "PACKAGE_CHANGED"

    invoke-virtual {v3, v5, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "pN"

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "add"

    invoke-virtual {v3, v7, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    nop

    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v7}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/pm/PackageManagerService;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "instN"

    invoke-virtual {v3, v7, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v7, 0x0

    if-ne v5, v6, :cond_8

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6, v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;I)I

    move-result v7

    :cond_8
    const-string v6, "ime"

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    :cond_9
    :goto_2
    goto/16 :goto_a

    :cond_a
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v4, "cTp"

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v4, "e"

    const-string v5, "PACKAGE_ADDED"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pN"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_b
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v4, "cTp"

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v4, "e"

    const-string v5, "PACKAGE_REMOVED"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pN"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_c
    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "cTp"

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v2, "e"

    const-string v4, "WORK_MODE_ON"

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_d
    const-string v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "cTp"

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v2, "e"

    const-string v4, "WORK_MODE_OFF"

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_e
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1f

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_b

    :cond_f
    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$4600(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v5, 0x1

    :cond_10
    goto :goto_3

    :cond_11
    if-nez v5, :cond_12

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caller_id_to_show_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Landroid/database/ContentObserver;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_12
    goto :goto_4

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void

    :cond_13
    const-string/jumbo v2, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$3600(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    nop

    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_17

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-nez v6, :cond_16

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_6

    :cond_14
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v6

    if-nez v6, :cond_15

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_15
    move v0, v5

    goto :goto_7

    :cond_16
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_17
    :goto_7
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v4

    if-eqz v4, :cond_18

    goto/16 :goto_8

    :cond_18
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3600(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    const-string/jumbo v5, "persona_policy"

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaPolicyManager;

    const-string v5, "Contacts"

    const-string v6, "knox-export-data"

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Contacts"

    const-string v7, "knox-import-data"

    invoke-virtual {v4, v0, v6, v7}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Calendar"

    const-string v8, "knox-export-data"

    invoke-virtual {v4, v0, v7, v8}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Calendar"

    const-string v9, "knox-import-data"

    invoke-virtual {v4, v0, v8, v9}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Notifications"

    const-string v10, "knox-sanitize-data"

    invoke-virtual {v4, v0, v9, v10}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Notifications"

    const-string v11, "knox-sanitize-data-lockscreen"

    invoke-virtual {v4, v0, v10, v11}, Landroid/os/PersonaPolicyManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "contactExp"

    const-string/jumbo v12, "true"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v11, "contactImp"

    const-string/jumbo v12, "true"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v11, "calendarExp"

    const-string/jumbo v12, "true"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v11, "calendarImp"

    const-string/jumbo v12, "true"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v11, "sntDtPc"

    const-string/jumbo v12, "true"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v11, "sntDtPcLckscn"

    const-string/jumbo v12, "true"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v11, "cTp"

    invoke-virtual {v3, v11, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v11, "e"

    const-string v12, "RCP_POLICY_CHANGED"

    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_a

    :cond_19
    :goto_8
    return-void

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_1a
    const-string/jumbo v2, "samsung.knox.intent.action.rcp.MOVEMENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "move_to_knox"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move v4, v2

    const-string v5, "cTp"

    invoke-virtual {v3, v5, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v5, "e"

    const-string v6, "MOVE_TO_KNOX_FILE"

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "move"

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    goto :goto_a

    :cond_1b
    const-string/jumbo v2, "samsung.knox.intent.action.CHANGE_LOCK_TYPE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    const/16 v7, 0x10

    invoke-virtual {v2, v7, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v7

    shl-int/2addr v7, v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "knox_finger_print_plus"

    invoke-static {v8, v9, v4, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v6, :cond_1c

    move v8, v6

    goto :goto_9

    :cond_1c
    move v8, v4

    :goto_9
    or-int v9, v5, v7

    const-string v10, "cTp"

    invoke-virtual {v3, v10, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v10, "e"

    const-string v11, "CHANGE_LOCK_TYPE"

    invoke-virtual {v3, v10, v11}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "lckTp"

    const-string v11, "lckTp"

    invoke-virtual {p2, v11, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v10, "bioInf"

    invoke-virtual {v3, v10, v9}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string/jumbo v10, "mfaEnb"

    if-eqz v8, :cond_1d

    move v4, v6

    nop

    :cond_1d
    invoke-virtual {v3, v10, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    nop

    :goto_a
    const-string v2, "PersonaManagerService:KnoxAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent receiver / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void

    :cond_1e
    return-void

    :cond_1f
    :goto_b
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$5500(Lcom/android/server/pm/PersonaManagerService;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "WORKAPP_USAGE"

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$5500(Lcom/android/server/pm/PersonaManagerService;)I

    move-result v6

    invoke-virtual {v5, v6, v2}, Lcom/android/server/pm/PersonaManagerService;->knoxAnalyticsContainer(ILjava/lang/String;)V

    :cond_20
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2, v4}, Lcom/android/server/pm/PersonaManagerService;->access$5502(Lcom/android/server/pm/PersonaManagerService;I)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/android/server/pm/PersonaManagerService;->access$5602(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$10;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$5702(Lcom/android/server/pm/PersonaManagerService;J)J

    return-void
.end method
