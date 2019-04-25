.class Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;
.super Landroid/os/Handler;
.source "KnoxKeyguardScrimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrimTimeoutHandler"
.end annotation


# static fields
.field public static final MSG_CHECK_KEYGUARD_SERVICE_RUNNING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/KnoxKeyguardScrimView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "KnoxKeyguardScrimView"

    const-string v1, "MSG_CHECK_KEYGUARD_SERVICE_RUNNING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/pm/KnoxKeyguardScrimView;->access$500()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/KnoxKeyguardScrimView;->isKnoxKeyguardServiceRunning(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->access$600(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->isKnoxKeyguardServiceRunning(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_4

    const-string v1, "KnoxKeyguardScrimView"

    const-string v3, "keyguard service is not running, dismiss scrim"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->access$700(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "KnoxKeyguardScrimView"

    const-string v2, "kiosk mode enabled. cannot dismiss scrim"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->hideScrim()V

    const-string v1, "KnoxKeyguardScrimView"

    const-string v3, "forcefully removed scrim. switch to primary user"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {v2, v1}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    :cond_4
    const-string v1, "KnoxKeyguardScrimView"

    const-string v2, "keyguard service is running, keep scrim"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
