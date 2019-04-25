.class Lcom/android/server/policy/PhoneWindowManager$7;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v0, 0x7d0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2800(Lcom/android/server/policy/PhoneWindowManager;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2702(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$2700(Lcom/android/server/policy/PhoneWindowManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "WindowManager"

    const-string v3, "Shared device service not found. Trying again"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->sharedDeviceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2900(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2700(Lcom/android/server/policy/PhoneWindowManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "WindowManager"

    const-string v4, "Shared device service not found. Trying again"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->sharedDeviceHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->access$2900(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    throw v2
.end method
