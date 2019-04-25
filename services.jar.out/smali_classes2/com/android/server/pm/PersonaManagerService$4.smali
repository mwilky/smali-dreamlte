.class Lcom/android/server/pm/PersonaManagerService$4;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "caller_id_to_show_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x3

    :cond_4
    :goto_0
    new-instance v5, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v6, "KNOX_CONTAINER"

    const-string v7, "CONTAINER_EVENT"

    const/4 v8, 0x1

    invoke-direct {v5, v6, v8, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_11

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v9, v3

    move/from16 v3, p3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "caller_id_to_show_"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "caller_id_to_show_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v11, v0

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$3600(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    move v0, v7

    :goto_2
    move v13, v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_9

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v14, v0

    if-eqz v14, :cond_8

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_8

    :cond_6
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v15, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v15, :cond_7

    move v3, v14

    goto :goto_4

    :cond_7
    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    add-int/lit8 v0, v13, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    const/4 v9, 0x0

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    move v9, v0

    goto :goto_6

    :cond_b
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    :cond_c
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_5

    :cond_d
    :goto_6
    const-string v0, "e"

    const-string v13, "CALLER_ID_CHANGED"

    invoke-virtual {v5, v0, v13}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "s"

    if-ne v11, v8, :cond_e

    move v13, v8

    goto :goto_7

    :cond_e
    move v13, v7

    :goto_7
    invoke-virtual {v5, v0, v13}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :cond_f
    :goto_8
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_9
    goto/16 :goto_1

    :cond_11
    move v9, v3

    move/from16 v3, p3

    :cond_12
    :try_start_3
    const-string v0, "KNOX_SETTINGS_KNOX_STYLE"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "KNOX_SETTINGS_KNOX_STYLE"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "FOLDER"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "e"

    const-string v7, "KNOX_STYLE_CHANGED"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "sty"

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_3_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-ltz v6, :cond_13

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4, v3}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;I)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string/jumbo v7, "widg"

    invoke-virtual {v5, v7, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    goto/16 :goto_d

    :cond_14
    const-string v0, "disabled_print_services"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "disabled_print_services"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "e"

    const-string v6, "DISABLE_PRINT_SERVICES"

    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "disPrnSrv"

    invoke-virtual {v5, v4, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_15
    const-string v0, "location_providers_allowed"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$4600(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object v0

    const-string/jumbo v4, "no_share_location"

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-nez v4, :cond_17

    const-string v6, "e"

    const-string v10, "LOCATION_CHANGED"

    invoke-virtual {v5, v6, v10}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "s"

    if-eqz v0, :cond_16

    goto :goto_a

    :cond_16
    move v7, v8

    :goto_a
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_17
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v6, v0, :cond_19

    const-string v6, "e"

    const-string v10, "LOCATION_CHANGED"

    invoke-virtual {v5, v6, v10}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "s"

    if-eqz v0, :cond_18

    goto :goto_b

    :cond_18
    move v7, v8

    :goto_b
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    goto :goto_d

    :cond_19
    return-void

    :cond_1a
    const-string v0, "knox_screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "CHANGE_KNOX_SCREEN_OFF_TIMEOUT"

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/pm/PersonaManagerService;->knoxAnalyticsContainer(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1b
    :goto_d
    nop

    const-string v0, "cTp"

    invoke-virtual {v5, v0, v9}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v0, "PersonaManagerService:KnoxAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings observer / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService$4;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, v5}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
