.class final Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "DreamyNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

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

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$1000(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$900(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$800(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V

    goto :goto_0

    :pswitch_4
    const-wide/16 v0, 0x0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-static {v2, v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$700(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;J)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$600(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$500(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$400(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    move v0, v1

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$300(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$000(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$200(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;II)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;->access$100(Lcom/android/server/sepunion/cover/DreamyNfcLedCoverController;I[B)V

    nop

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
