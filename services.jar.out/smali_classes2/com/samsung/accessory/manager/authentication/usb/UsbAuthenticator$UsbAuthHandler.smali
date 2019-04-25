.class final Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;
.super Landroid/os/Handler;
.source "UsbAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbAuthHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$100()Ljava/lang/String;

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

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$200(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->removeMessages(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$908(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)I

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "authentication is timed out!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$1000(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;->stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    const/4 v0, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    const/4 v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget v2, v2, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->usbState:I

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget v3, v3, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->USB_DETACHED:I

    if-eq v2, v3, :cond_3

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$900(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$1100(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mResult:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {v0, p1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$700(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$800(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->access$600(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;)V

    nop

    :cond_4
    :goto_0
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
