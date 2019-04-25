.class public Lcom/android/server/ConnectivityService$PcoBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PcoBroadcastReceiver"
.end annotation


# instance fields
.field private final mConnectivityService:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$PcoBroadcastReceiver;->mConnectivityService:Lcom/android/server/ConnectivityService;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "com.android.internal.telephony.CARRIER_SIGNAL_PCO_VALUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "Invalid CARRIER_SIGNAL_PCO_VALUE broadcast. No extras"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v3, "apnType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pcoValue"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "Invalid CARRIER_SIGNAL_PCO_VALUE broadcast. incorrect apn type"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz v4, :cond_a

    array-length v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    aget-byte v7, v4, v5

    add-int/lit8 v7, v7, -0x30

    const-string v8, "default"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "hipri"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "ims"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_6
    const/4 v8, 0x3

    if-eq v7, v8, :cond_8

    const/4 v8, 0x5

    if-ne v7, v8, :cond_7

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/server/ConnectivityService$PcoBroadcastReceiver;->mConnectivityService:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->setShowSignInNotification(Z)V

    goto :goto_1

    :cond_8
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received pco value \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\' on pdn \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'. Hide \'Sign into network\' notification"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/ConnectivityService$PcoBroadcastReceiver;->mConnectivityService:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/connectivity/NetworkNotificationManager;->setShowSignInNotification(Z)V

    iget-object v6, p0, Lcom/android/server/ConnectivityService$PcoBroadcastReceiver;->mConnectivityService:Lcom/android/server/ConnectivityService;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v5, v8}, Lcom/android/server/ConnectivityService;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pco key doesn\'t contain valid pco value for apn "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_3
    const-string v3, "Invalid CARRIER_SIGNAL_PCO_VALUE broadcast. No pdns"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    return-void

    :cond_c
    :goto_4
    return-void
.end method
