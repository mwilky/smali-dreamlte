.class Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;
.super Landroid/os/Handler;
.source "NetworkAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NapHandler"
.end annotation


# static fields
.field private static final ACTION_ACTIVATE_MONITOR_CLIENT:I = 0x1

.field private static final ACTION_BOOT_COMPLETED:I = 0x3

.field private static final ACTION_INITIALIZE_NAP:I = 0x4

.field private static final ACTION_NEW_PROFILE_REGISTERED:I = 0xa

.field private static final ACTION_ON_ADMIN_REMOVED:I = 0x9

.field private static final ACTION_ON_PRE_ADMIN_REMOVED:I = 0x8

.field private static final ACTION_PACKAGE_ADDED:I = 0x7

.field private static final ACTION_PACKAGE_REMOVED:I = 0x6

.field private static final ACTION_PROFILE_STATUS:I = 0xe

.field private static final ACTION_ULTRA_POWER_SAVING_MODE:I = 0xc

.field private static final ACTION_UNREGISTER_CLIENT:I = 0x5

.field private static final ACTION_USER_REMOVED:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/16 v4, 0xe

    if-eq v3, v4, :cond_7

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "reason"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "NetworkAnalytics:Service"

    const-string/jumbo v5, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$1000(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    sget-boolean v4, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "NetworkAnalytics:Service"

    const-string/jumbo v5, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE ON"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$1100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$700(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$200(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gtz v2, :cond_4

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_c

    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v4, "handleMessage: ACTION_ON_ADMIN_REMOVED: Invalid adminUid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$900(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V

    goto/16 :goto_0

    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gtz v2, :cond_5

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_c

    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v4, "handleMessage: ACTION_ON_PRE_ADMIN_REMOVED: Invalid adminUid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$800(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v4, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$600(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v4, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->userId:I

    invoke-static {v3, v4, v5}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$500(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    if-nez v0, :cond_c

    sget-boolean v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "NetworkAnalytics:Service"

    const-string/jumbo v4, "handleMessage:UNREGISTER_CLIENT:handleObj null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :pswitch_8
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->initializeTables()V

    goto :goto_0

    :pswitch_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$400(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_8

    return-void

    :cond_8
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v3, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$1200(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_b

    sget-boolean v5, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "NetworkAnalytics:Service"

    const-string/jumbo v6, "handleMessage:ACTIVATE_MONITOR_CLIENT:handleObj null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    :cond_b
    iget-object v5, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v5, v0, v4, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->access$300(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    nop

    :cond_c
    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
