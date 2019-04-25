.class Lcom/android/server/usb/UsbMirrorLinkManager$3;
.super Landroid/os/Handler;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMirrorLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMirrorLinkManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$900(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/os/Handler;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v5}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connect_in_call_popup_msg"

    invoke-static {v4, v5, v6}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$1000(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v1, v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$1102(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v5}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connect_pin_window_popup_msg"

    invoke-static {v4, v5, v6}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$1000(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v1, v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$1202(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v5}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$200(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connect_in_voice_assistant_popup_msg"

    invoke-static {v4, v5, v6}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$1000(Lcom/android/server/usb/UsbMirrorLinkManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$3;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v1, v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->access$1302(Lcom/android/server/usb/UsbMirrorLinkManager;Z)Z

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
