.class Lcom/android/server/connectivity/NetworkMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "android.net.netmon.launchCaptivePortalApp"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x25069

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mCaptivePortalReceiver - Launch Captive portal activity"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v2, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5300(Lcom/android/server/connectivity/NetworkMonitor;ZZ)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "reason"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCaptivePortalReceiver - reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v4, "CWeb"

    invoke-static {v3, v1, v0, v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$5400(Lcom/android/server/connectivity/NetworkMonitor;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.net.netmon.dismissHunNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mCaptivePortalReceiver - DISMISS Notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82013

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.net.netmon.signinHunNotification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mCaptivePortalReceiver - SIGNIN Notification"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v2, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5300(Lcom/android/server/connectivity/NetworkMonitor;ZZ)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mCaptivePortalReceiver - reason:5"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v3, 0x5

    const-string v4, "CWeb"

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$5400(Lcom/android/server/connectivity/NetworkMonitor;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mCaptivePortalReceiver - Screen on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$5500(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82010

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto :goto_0

    :cond_4
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mCaptivePortalReceiver - Locale changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82016

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    :cond_5
    :goto_0
    return-void
.end method
