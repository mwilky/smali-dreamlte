.class final Lcom/android/server/sepunion/cover/StateNotifier$H;
.super Landroid/os/Handler;
.source "StateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final MSG_NOTIFY_COVER_ATTACH_STATE:I = 0x1

.field static final MSG_NOTIFY_COVER_SWITCH_STATE:I


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/StateNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->access$200(Lcom/android/server/sepunion/cover/StateNotifier;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/cover/CoverState;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-static {v0, v3, v1}, Lcom/android/server/sepunion/cover/StateNotifier;->access$100(Lcom/android/server/sepunion/cover/StateNotifier;Lcom/samsung/android/cover/CoverState;Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
