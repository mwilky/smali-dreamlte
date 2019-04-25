.class final Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "GracefulNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$1100(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$1000(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$900(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$800(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    move v0, v1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$700(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$000(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;II)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$500(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$100(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v0, v2, v3}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$200(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I[B)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$300(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$300(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->access$400(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
