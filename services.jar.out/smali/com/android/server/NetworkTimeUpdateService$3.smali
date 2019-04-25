.class Lcom/android/server/NetworkTimeUpdateService$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkTimeUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive + intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.android.knox.intent.action.UPDATE_NTP_PARAMETERS_INTERNAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "enterprise_policy_new"

    move-object/from16 v4, p1

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getDateTimePolicy()Lcom/samsung/android/knox/datetime/DateTimePolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/datetime/DateTimePolicy;->getNtpInfo()Lcom/samsung/android/knox/datetime/NtpInfo;

    move-result-object v5

    const v9, 0x10e00a7

    const v10, 0x10e00a6

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v15, v13, v11

    if-eqz v15, :cond_0

    iget-object v10, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v10, v11, v12}, Lcom/android/server/NetworkTimeUpdateService;->access$802(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_0

    :cond_0
    iget-object v15, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v7, v6

    invoke-static {v15, v7, v8}, Lcom/android/server/NetworkTimeUpdateService;->access$802(Lcom/android/server/NetworkTimeUpdateService;J)J

    :goto_0
    invoke-virtual {v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->getPollingInterval()J

    move-result-wide v6

    cmp-long v8, v13, v6

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v8, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->access$902(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_1

    :cond_1
    iget-object v8, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v8, v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$902(Lcom/android/server/NetworkTimeUpdateService;J)J

    :goto_1
    invoke-virtual {v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->getMaxAttempts()I

    move-result v8

    if-eqz v8, :cond_2

    iget-object v9, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v9, v8}, Lcom/android/server/NetworkTimeUpdateService;->access$1002(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto :goto_2

    :cond_2
    iget-object v9, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v15, 0x10e00a8

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/server/NetworkTimeUpdateService;->access$1002(Lcom/android/server/NetworkTimeUpdateService;I)I

    :goto_2
    invoke-virtual {v5}, Lcom/samsung/android/knox/datetime/NtpInfo;->getTimeErrorThreshold()I

    move-result v9

    int-to-long v3, v9

    cmp-long v3, v13, v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v3, v9}, Lcom/android/server/NetworkTimeUpdateService;->access$502(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto :goto_3

    :cond_3
    iget-object v3, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x10e00a9

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/NetworkTimeUpdateService;->access$502(Lcom/android/server/NetworkTimeUpdateService;I)I

    :goto_3
    iget-object v3, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/NetworkTimeUpdateService;->access$302(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    iget-object v3, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/NetworkTimeUpdateService;->access$1102(Lcom/android/server/NetworkTimeUpdateService;I)I

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    iget-object v3, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v3, v4}, Lcom/android/server/NetworkTimeUpdateService;->access$302(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    iget-object v3, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v6, v4

    invoke-static {v3, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->access$802(Lcom/android/server/NetworkTimeUpdateService;J)J

    iget-object v3, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v6, v4

    invoke-static {v3, v6, v7}, Lcom/android/server/NetworkTimeUpdateService;->access$902(Lcom/android/server/NetworkTimeUpdateService;J)J

    iget-object v3, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e00a8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/NetworkTimeUpdateService;->access$1002(Lcom/android/server/NetworkTimeUpdateService;I)I

    iget-object v3, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e00a9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/NetworkTimeUpdateService;->access$502(Lcom/android/server/NetworkTimeUpdateService;I)I

    :goto_4
    iget-object v3, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v3}, Lcom/android/server/NetworkTimeUpdateService;->access$100(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    :cond_5
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/NetworkTimeUpdateService;->access$1202(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    :cond_6
    :goto_5
    return-void
.end method
