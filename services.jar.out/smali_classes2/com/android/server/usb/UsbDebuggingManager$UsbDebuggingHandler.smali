.class Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;
.super Landroid/os/Handler;
.source "UsbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbDebuggingHandler"
.end annotation


# static fields
.field public static final MESSAGE_ADB_ALLOW:I = 0x3

.field public static final MESSAGE_ADB_CLEAR:I = 0x6

.field public static final MESSAGE_ADB_CONFIRM:I = 0x5

.field public static final MESSAGE_ADB_DENY:I = 0x4

.field public static final MESSAGE_ADB_DISABLED:I = 0x2

.field public static final MESSAGE_ADB_ENABLED:I = 0x1

.field public static final MESSAGE_ADB_WAIT_CONFIRMATION:I = 0xa


# instance fields
.field private lastmessageCode:I

.field private mNotToShowCofirm:Z

.field final synthetic this$0:Lcom/android/server/usb/UsbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDebuggingManager;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->mNotToShowCofirm:Z

    iput v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->lastmessageCode:I

    return-void
.end method


# virtual methods
.method doNotRiseConfrmWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->mNotToShowCofirm:Z

    return-void
.end method

.method public getAdbState()I
    .locals 1

    iget v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->lastmessageCode:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->lastmessageCode:I

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$800(Lcom/android/server/usb/UsbDebuggingManager;)V

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "UsbDebuggingManager"

    const-string v3, "MESSAGE_ADB_CONFIRM"

    invoke-static {v0, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->lastmessageCode:I

    const-string/jumbo v0, "trigger_restart_min_framework"

    const-string/jumbo v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UsbDebuggingManager"

    const-string v2, "Deferring adb confirmation until after vold decrypt"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "UsbDebuggingManager"

    const-string v2, "MESSAGE_ADB_CONFIRM_D1"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->lastmessageCode:I

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v3, v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$400(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "UsbDebuggingManager"

    const-string v4, "MESSAGE_ADB_CONFIRM_D2"

    invoke-static {v2, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->lastmessageCode:I

    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v4, v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$400(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$502(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "persist.sys.auto_confirm"

    const-string v4, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v4, v2, v0}, Lcom/android/server/usb/UsbDebuggingManager;->allowUsbDebugging(ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->mNotToShowCofirm:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$500(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$700(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string v2, "UsbDebuggingManager"

    const-string v4, "MESSAGE_ADB_CONFIRM"

    invoke-static {v2, v4}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->lastmessageCode:I

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "UsbDebuggingManager"

    const-string v2, "MESSAGE_ADB_DENY"

    invoke-static {v0, v2}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->lastmessageCode:I

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v1, v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$400(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->access$500(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fingerprints do not match. Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->access$500(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2, v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$600(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    :cond_6
    const-string v2, "UsbDebuggingManager"

    const-string v3, "MESSAGE_ADB_ALLOW"

    invoke-static {v2, v3}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->lastmessageCode:I

    goto :goto_1

    :pswitch_4
    const-string v0, "UsbDebuggingManager"

    const-string v1, "MESSAGE_ADB_DISABLED"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->lastmessageCode:I

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$202(Lcom/android/server/usb/UsbDebuggingManager;Z)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->stopListening()V

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$302(Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    goto :goto_1

    :pswitch_5
    const-string v0, "UsbDebuggingManager"

    const-string v1, "MESSAGE_ADB_ENABLED"

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->lastmessageCode:I

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$200(Lcom/android/server/usb/UsbDebuggingManager;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v0, v2}, Lcom/android/server/usb/UsbDebuggingManager;->access$202(Lcom/android/server/usb/UsbDebuggingManager;Z)Z

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    new-instance v1, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-direct {v1, v2}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;-><init>(Lcom/android/server/usb/UsbDebuggingManager;)V

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager;->access$302(Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDebuggingManager;->access$300(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->start()V

    nop

    :cond_9
    :goto_1
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
