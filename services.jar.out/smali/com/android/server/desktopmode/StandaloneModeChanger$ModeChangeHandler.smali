.class final Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;
.super Landroid/os/Handler;
.source "StandaloneModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/StandaloneModeChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ModeChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/os/Looper;Lcom/android/server/desktopmode/StandaloneModeChanger$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;-><init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-static {v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->access$800(Lcom/android/server/desktopmode/StandaloneModeChanger;)Z

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->access$900(Lcom/android/server/desktopmode/StandaloneModeChanger;ZI)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/StandaloneModeChanger;->access$700(Lcom/android/server/desktopmode/StandaloneModeChanger;ZI)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-static {v5}, Lcom/android/server/desktopmode/StandaloneModeChanger;->access$400(Lcom/android/server/desktopmode/StandaloneModeChanger;)Lcom/samsung/android/multidisplay/MultiDisplayManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->goodToChangeMode(II)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-static {v5}, Lcom/android/server/desktopmode/StandaloneModeChanger;->access$400(Lcom/android/server/desktopmode/StandaloneModeChanger;)Lcom/samsung/android/multidisplay/MultiDisplayManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->goodToChangeMode(II)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/StandaloneModeChanger;->access$500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not all activities are stopped! retryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", waiting more "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v5, v5, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v6, v6, Lcom/android/server/desktopmode/StandaloneModeChanger;->mHandler:Landroid/os/Handler;

    add-int/2addr v1, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v4, v1, v3, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/server/desktopmode/StandaloneModeChanger;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not all activities are stopped! timeout!! retryCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$ModeChangeHandler;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    invoke-static {v3, v0}, Lcom/android/server/desktopmode/StandaloneModeChanger;->access$600(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    nop

    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
