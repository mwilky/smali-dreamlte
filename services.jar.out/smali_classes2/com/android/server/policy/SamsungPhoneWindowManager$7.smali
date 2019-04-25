.class Lcom/android/server/policy/SamsungPhoneWindowManager$7;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Sweep LEFT, but keyguard on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    const-string v1, "SamsungPhoneWindowManager"

    const-string v4, "Sweep LEFT, so takeScreenshot"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PalmMotion"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v5}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v5

    if-ne v5, v3, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const-string v6, "MAIN"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const-string v6, "SUB"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x4

    :cond_3
    :goto_0
    new-instance v6, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-direct {v6, v3, v2, v4, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;-><init>(IIII)V

    move-object v2, v6

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v6, v7, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_4
    const-string v1, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Sweep RIGHT, but keyguard on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    const-string v1, "SamsungPhoneWindowManager"

    const-string v5, "Sweep RIGHT, so takeScreenshot"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PalmMotion"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mMultiDisplayPolicy:Lcom/android/server/policy/MultiDisplayPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/policy/MultiDisplayPolicyManager;->getDexModeTi()I

    move-result v6

    if-ne v6, v3, :cond_6

    const/4 v5, 0x2

    goto :goto_1

    :cond_6
    const-string v7, "MAIN"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    const-string v7, "SUB"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v5, 0x4

    :cond_8
    :goto_1
    new-instance v7, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-direct {v7, v3, v4, v5, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;-><init>(IIII)V

    move-object v2, v7

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v4, v7, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_9
    const-string v1, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "SamsungPhoneWindowManager"

    const-string v2, "Sweep FULL SCREEN, but keyguard on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const-string v1, "SamsungPhoneWindowManager"

    const-string v5, "Sweep FULL SCREEN, so takeScreenshot"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-direct {v1, v3, v3, v4, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;-><init>(IIII)V

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$7;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    :goto_2
    return-void
.end method
