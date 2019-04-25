.class Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler$1;
.super Landroid/os/Handler;
.source "UvdmSendExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->startThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler$1;->this$1:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler$1;->this$1:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    iget-object v0, v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->this$0:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/utils/Util;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler$1;->this$1:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->access$102(Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;Z)Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler$1;->this$1:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    iget-object v0, v0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->this$0:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor;->sendData([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler$1;->this$1:Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;->access$102(Lcom/samsung/android/lib/dexcontrol/uvdm/sender/UvdmSendExecutor$ExecutorHandler;Z)Z

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    return-void
.end method
