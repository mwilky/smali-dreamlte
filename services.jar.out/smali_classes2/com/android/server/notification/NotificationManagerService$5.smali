.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x5

    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v4, v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v5, v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v0, v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    :cond_1
    move/from16 v21, v5

    move v5, v0

    const-string v0, "android.intent.extra.user_handle"

    const/4 v15, -0x1

    invoke-virtual {v2, v0, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_2

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v13

    goto :goto_0

    :cond_2
    move v0, v12

    :goto_0
    move v11, v0

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " removing="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v10

    :goto_1
    move/from16 v25, v4

    move-object v15, v10

    move/from16 v26, v14

    const/4 v13, 0x0

    const/4 v14, -0x1

    move-object v4, v0

    goto/16 :goto_6

    :cond_4
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v9, v13, [I

    const-string v12, "android.intent.extra.UID"

    const/4 v15, -0x1

    invoke-virtual {v2, v12, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/4 v15, 0x0

    aput v12, v9, v15

    move-object v10, v9

    goto :goto_1

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-nez v12, :cond_8

    return-void

    :cond_8
    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_9

    return-void

    :cond_9
    if-eqz v21, :cond_e

    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v13, -0x1

    if-eq v14, v13, :cond_a

    move v13, v14

    goto :goto_2

    :cond_a
    nop

    const/4 v13, 0x0

    :goto_2
    invoke-interface {v0, v15, v13}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x1

    if-eq v0, v13, :cond_b

    if-nez v0, :cond_c

    :cond_b
    const/4 v0, 0x0

    move v6, v0

    :cond_c
    :goto_3
    move/from16 v25, v4

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    sget-boolean v13, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v13, :cond_d

    const-string v13, "NotificationService"

    move/from16 v25, v4

    const-string v4, "Exception trying to look up app enabled setting"

    invoke-static {v13, v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_d
    move/from16 v25, v4

    :goto_4
    goto :goto_5

    :cond_e
    move/from16 v25, v4

    :goto_5
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v15, v0, v13

    new-array v9, v4, [I

    const-string v4, "android.intent.extra.UID"

    move/from16 v26, v14

    const/4 v14, -0x1

    invoke-virtual {v2, v4, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    aput v4, v9, v13

    move-object v10, v9

    move-object v4, v0

    move-object v15, v10

    :goto_6
    if-eqz v4, :cond_13

    array-length v0, v4

    if-lez v0, :cond_13

    array-length v0, v4

    move v12, v13

    :goto_7
    if-ge v12, v0, :cond_13

    aget-object v22, v4, v12

    if-eqz v6, :cond_10

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1400()I

    move-result v10

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1500()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    if-nez v5, :cond_f

    const/16 v23, 0x1

    goto :goto_8

    :cond_f
    move/from16 v23, v13

    :goto_8
    const/16 v24, 0x0

    move/from16 v27, v11

    move/from16 v11, v16

    move/from16 v28, v12

    move/from16 v29, v13

    move-object/from16 v12, v22

    move-object/from16 v13, v17

    move/from16 v16, v14

    move/from16 v30, v26

    move/from16 v14, v18

    move-object/from16 v31, v15

    move/from16 v15, v19

    move/from16 v16, v23

    move/from16 v17, v30

    move/from16 v18, v20

    move-object/from16 v19, v24

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_9

    :cond_10
    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move-object/from16 v31, v15

    move/from16 v30, v26

    if-eqz v7, :cond_11

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v4}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    if-eqz v8, :cond_12

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v4}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    :cond_12
    :goto_9
    add-int/lit8 v12, v28, 0x1

    move/from16 v11, v27

    move/from16 v13, v29

    move/from16 v26, v30

    move-object/from16 v15, v31

    const/4 v14, -0x1

    goto :goto_7

    :cond_13
    move/from16 v27, v11

    move/from16 v29, v13

    move-object/from16 v31, v15

    move/from16 v30, v26

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    move/from16 v11, v30

    goto/16 :goto_e

    :cond_15
    :goto_a
    const/4 v0, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :cond_16
    move-object v10, v0

    move/from16 v11, v30

    const/4 v12, -0x1

    if-eq v11, v12, :cond_17

    move/from16 v29, v11

    nop

    :cond_17
    move/from16 v12, v29

    if-eqz v10, :cond_19

    :try_start_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v13, 0x80

    invoke-interface {v0, v10, v13, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v13, v0

    if-eqz v13, :cond_18

    iget-object v0, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_18

    const-string/jumbo v0, "user"

    iget-object v14, v13, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v15, "com.samsung.android.notification.listener.autobind"

    const-string v2, "default"

    invoke-virtual {v14, v15, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Notification listener autobind, pkg = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, v10, v12}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    const/high16 v2, 0xc0000

    invoke-virtual {v0, v10, v2, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v15, v0

    :try_start_2
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v32, v2

    const/4 v2, 0x1

    :try_start_3
    invoke-interface {v0, v15, v12, v2}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v32, v2

    const/4 v2, 0x1

    :goto_c
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_d
    nop

    move-object/from16 v2, v32

    goto :goto_b

    :cond_18
    goto :goto_e

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_19
    :goto_e
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    move/from16 v2, v27

    move-object/from16 v10, v31

    invoke-virtual {v0, v2, v4, v10}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v10}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v10}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    invoke-virtual {v0, v2, v11, v4, v10}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    move v0, v5

    move/from16 v5, v21

    move/from16 v4, v25

    :cond_1a
    return-void
.end method
