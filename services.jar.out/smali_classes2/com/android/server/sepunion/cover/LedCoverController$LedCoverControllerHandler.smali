.class final Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;
.super Landroid/os/Handler;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/LedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/LedCoverController;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/LedCoverController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/LedCoverController;

    invoke-static {v0, v2}, Lcom/android/server/sepunion/cover/LedCoverController;->access$002(Lcom/android/server/sepunion/cover/LedCoverController;Z)Z

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/LedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/LedCoverController;->access$300(Lcom/android/server/sepunion/cover/LedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/LedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/LedCoverController;->access$300(Lcom/android/server/sepunion/cover/LedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/LedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/LedCoverController;->access$200(Lcom/android/server/sepunion/cover/LedCoverController;Z)V

    goto :goto_2

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/LedCoverController;

    invoke-static {v0, v2}, Lcom/android/server/sepunion/cover/LedCoverController;->access$002(Lcom/android/server/sepunion/cover/LedCoverController;Z)Z

    goto :goto_1

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/LedCoverController;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/LedCoverController;->access$002(Lcom/android/server/sepunion/cover/LedCoverController;Z)Z

    :goto_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/LedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/cover/LedCoverController;->access$100(Lcom/android/server/sepunion/cover/LedCoverController;I[B)V

    nop

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
