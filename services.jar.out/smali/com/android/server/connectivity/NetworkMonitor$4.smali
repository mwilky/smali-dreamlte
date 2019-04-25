.class Lcom/android/server/connectivity/NetworkMonitor$4;
.super Landroid/app/IProcessObserver$Stub;
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

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 12

    if-eqz p3, :cond_c

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82012

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$5700(Lcom/android/server/connectivity/NetworkMonitor;I)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, p2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5802(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5902(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {p2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$6002(Lcom/android/server/connectivity/NetworkMonitor;J)J

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$6100(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$6102(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    :cond_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onForegroundActivitiesChanged: pid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mIsSmartDetectionActivityCreated:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$6200(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTOFILL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$6300(Lcom/android/server/connectivity/NetworkMonitor;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v5

    move v5, v2

    :goto_0
    const/4 v9, 0x1

    if-ge v5, v7, :cond_3

    aget-object v10, v6, v5

    if-nez v8, :cond_2

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    move v9, v2

    nop

    :cond_2
    :goto_1
    move v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_4

    const-string v5, "AUTOFILL"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    const-string v5, "AUTOFILL"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_2
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v5, 0x3e8

    if-ne v5, p2, :cond_5

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "onForegroundActivitiesChanged: skip system uid"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6402(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$6400(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "onForegroundActivitiesChanged: DO NOT check after captiveportallogin"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6402(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    return-void

    :cond_6
    const-string v5, "com.android.captiveportallogin"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, v9}, Lcom/android/server/connectivity/NetworkMonitor;->access$6402(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v6, 0x82015

    invoke-static {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$6500(Lcom/android/server/connectivity/NetworkMonitor;I)V

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$5600(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onForegroundActivitiesChanged: calling state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$6600(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onForegroundActivitiesChanged: mobile data not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    if-eqz v8, :cond_a

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onForegroundActivitiesChanged: auto fill package"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$600(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Previously, user didn\'t get authenticated. skip Smart Detection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    :goto_3
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$6200(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$6700(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$6802(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v1, v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IJ)V

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$4;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$6902(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;

    :cond_c
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
