.class final Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1400(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1300(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1200(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1100(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$000(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v4}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$1000(Lcom/android/server/sepunion/cover/NfcLedCoverController;I)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$700(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$900(Lcom/android/server/sepunion/cover/NfcLedCoverController;II)V

    goto :goto_2

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$800(Lcom/android/server/sepunion/cover/NfcLedCoverController;I)V

    goto :goto_2

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$100(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$200(Lcom/android/server/sepunion/cover/NfcLedCoverController;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$300(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$400(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$500(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_2

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$100(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    invoke-static {v0, v4, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$400(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->access$700(Lcom/android/server/sepunion/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
