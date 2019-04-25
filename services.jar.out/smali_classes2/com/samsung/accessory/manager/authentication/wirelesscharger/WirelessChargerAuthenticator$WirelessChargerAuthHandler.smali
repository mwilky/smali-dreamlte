.class final Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;
.super Landroid/os/Handler;
.source "WirelessChargerAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WirelessChargerAuthHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$200(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->removeMessages(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$908(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)I

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "authentication is timed out!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$1000(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    const/4 v0, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->removeAuthenticationTimeOuts()V

    const/4 v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget v2, v2, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->wirelessChargerState:I

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget v3, v3, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->WIRELESSCHARGER_DISCONNECTED:I

    const/16 v4, 0x65

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v1, v4, v5}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$1100(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;ILcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_1

    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$900(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_4

    :cond_3
    if-eqz v0, :cond_7

    :cond_4
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget v1, v1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->auth_result:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget v1, v1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->auth_result:I

    if-eq v1, v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    const/16 v2, 0x66

    invoke-static {v1, v2, v5}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$1100(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;ILcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_1

    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget v2, v2, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->auth_result:I

    invoke-static {v1, v2, v5}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$1100(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;ILcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v0, p1}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$700(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;Landroid/os/Message;)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$800(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator$WirelessChargerAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;->access$600(Lcom/samsung/accessory/manager/authentication/wirelesscharger/WirelessChargerAuthenticator;)V

    nop

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
