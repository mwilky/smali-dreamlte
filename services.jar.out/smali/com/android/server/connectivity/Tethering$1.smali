.class Lcom/android/server/connectivity/Tethering$1;
.super Landroid/telephony/PhoneStateListener;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCallStateChanged wifiApState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xb

    if-eq v2, v4, :cond_5

    const/16 v4, 0xa

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDataBlockedDuringCall : TelephonyManager DataState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " CallState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_3

    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering;->access$302(Lcom/android/server/connectivity/Tethering;Z)Z

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;Z)V

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)V

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const v5, 0x10809bf

    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I)V

    :cond_3
    if-nez p1, :cond_4

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering;->access$302(Lcom/android/server/connectivity/Tethering;Z)Z

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;Z)V

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)V

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const v5, 0x1080a21

    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;I)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mWifiManager or TelephonyManager is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
