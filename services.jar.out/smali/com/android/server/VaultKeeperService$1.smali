.class Lcom/android/server/VaultKeeperService$1;
.super Landroid/os/Handler;
.source "VaultKeeperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VaultKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VaultKeeperService;


# direct methods
.method constructor <init>(Lcom/android/server/VaultKeeperService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$100(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$100(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "wakelock is released!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$000(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$000(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$100(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$100(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "VaultKeeperService"

    const-string/jumbo v2, "wakelock is acquired!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {v0}, Lcom/android/server/VaultKeeperService;->access$000(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    nop

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
