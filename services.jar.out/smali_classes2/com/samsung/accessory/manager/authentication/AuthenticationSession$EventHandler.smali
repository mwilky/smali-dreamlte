.class Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
.super Landroid/os/Handler;
.source "AuthenticationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "session is timed out!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v2, 0x1f

    invoke-static {v0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_0

    :pswitch_5
    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$802(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1102(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1100(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$700(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Connectivity is turned off while authentication is running!"

    invoke-static {v0, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$802(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connectivity is disabled by user"

    invoke-static {v0, v1}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$502(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$600(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$700(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$600(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$900(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    nop

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
