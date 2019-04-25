.class Lcom/android/server/display/WifiDisplayController$WfdAppMonitor$1;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor$1;->this$1:Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor$1;->this$1:Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$7700(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor$1;->this$1:Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController;->setWifiDisplayCPUBoost(ILandroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor$1;->this$1:Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$3000(Lcom/android/server/display/WifiDisplayController;Z)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor$1;->this$1:Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$7700(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;->unlinkToDeath()V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor$1;->this$1:Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->access$7702(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;)Lcom/android/server/display/WifiDisplayController$WfdAppMonitor;

    :cond_0
    return-void
.end method
