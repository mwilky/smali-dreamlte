.class Lcom/android/server/location/GnssLocationProvider_samsung$4;
.super Ljava/lang/Object;
.source "GnssLocationProvider_samsung.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider_samsung;->checkUDPSuplInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field socket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->access$500(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x5dc

    :try_start_0
    new-array v0, v0, [B

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    new-instance v2, Ljava/net/DatagramSocket;

    const/16 v3, 0x1c6b

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->socket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->socket:Ljava/net/DatagramSocket;

    const v3, 0xea60

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    const-string v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "received data through 7275 UDP port"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "packet_data"

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v3, "packet_length"

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    iget-object v3, v3, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$4;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    return-void
.end method
