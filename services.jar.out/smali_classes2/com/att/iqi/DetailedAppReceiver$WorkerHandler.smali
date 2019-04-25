.class Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;
.super Landroid/os/Handler;
.source "DetailedAppReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/DetailedAppReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# static fields
.field private static final MSG_HANDLE_APP_EXITED:I = 0x5

.field private static final MSG_HANDLE_APP_PID_EXITED:I = 0x8

.field private static final MSG_HANDLE_APP_PID_STARTED:I = 0x7

.field private static final MSG_HANDLE_APP_STARTED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/att/iqi/DetailedAppReceiver;


# direct methods
.method constructor <init>(Lcom/att/iqi/DetailedAppReceiver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;->this$0:Lcom/att/iqi/DetailedAppReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;->this$0:Lcom/att/iqi/DetailedAppReceiver;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/att/iqi/DetailedAppReceiver;->access$100(Lcom/att/iqi/DetailedAppReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/att/iqi/DetailedAppReceiver$WorkerHandler;->this$0:Lcom/att/iqi/DetailedAppReceiver;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/att/iqi/DetailedAppReceiver;->access$000(Lcom/att/iqi/DetailedAppReceiver;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
