.class public Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EnqueueNotificationRunnable"
.end annotation


# instance fields
.field private final r:Lcom/android/server/notification/NotificationRecord;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field private final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static/range {v2 .. v8}, Lcom/android/server/notification/NotificationManagerService;->access$7300(Lcom/android/server/notification/NotificationManagerService;IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnqueueNotificationRunnable.run for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    if-eqz v3, :cond_3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationRecord;->copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V

    :cond_3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    move v14, v5

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    move-object v15, v5

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v9

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v5, v6, v3, v4, v14}, Lcom/android/server/notification/NotificationManagerService;->access$7400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v15}, Landroid/app/Notification;->isGroupChild()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$4500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v6

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v12, v6, v7}, Lcom/android/server/notification/SnoozeHelper;->repostGroupSummary(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerRune;->SUPPORT_NOTI_LOG_DEBUG:Z

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    const-string v5, "com.android.providers.downloads"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "DownloadManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v17, v12

    goto :goto_5

    :cond_7
    :goto_2
    const/4 v5, 0x0

    if-eqz v3, :cond_8

    const/4 v5, 0x1

    :cond_8
    move/from16 v16, v5

    iget-object v5, v15, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_9

    const-string v5, "NULL"

    :goto_3
    move-object v13, v5

    goto :goto_4

    :cond_9
    iget-object v5, v15, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :goto_4
    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    invoke-virtual {v15}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v11

    move v5, v4

    move v6, v14

    move-object v7, v12

    move-object/from16 v17, v12

    move/from16 v12, v16

    invoke-static/range {v5 .. v13}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :goto_5
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationEnqueued(Lcom/android/server/notification/NotificationRecord;)V

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$5400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v5, v6, v10, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_a
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$5400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
