.class final Lcom/android/server/am/ActivityManagerPerformance$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerPerformance;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerPerformance;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received MSG_CFMS_HINT_AMS_HOME pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "AMS_APP_HOME"

    invoke-static {v2, v1}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received MSG_CFMS_HINT_AMS_SWITCH pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v2, "AMS_APP_SWITCH"

    invoke-static {v2, v1}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received MSG_CFMS_EXEC_ACTIVITY pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v2, "EXEC_ACTIVITY"

    invoke-static {v2, v1}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received MSG_ENABLE_ACT_RESUME_TAIL r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-static {v2, v3, v0}, Lcom/android/server/am/ActivityManagerPerformance;->access$300(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    :pswitch_4
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received MSG_DISABLE_ACT_RESUME, r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-static {v2, v3, v0}, Lcom/android/server/am/ActivityManagerPerformance;->access$000(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    :pswitch_5
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const-string v2, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received MSG_DISABLE_ACT_START, r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-static {v2, v3, v0}, Lcom/android/server/am/ActivityManagerPerformance;->access$100(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    :pswitch_6
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received MSG_DISABLE_APP_SWITCH, r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-static {v2, v3, v0}, Lcom/android/server/am/ActivityManagerPerformance;->access$200(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
