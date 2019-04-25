.class public Lcom/att/iqi/WiFiReceiver;
.super Ljava/lang/Object;
.source "WiFiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/WiFiReceiver$ScanResultComparator;
    }
.end annotation


# static fields
.field public static final WIFI_STATE_ASSOCIATED:B = 0x6t

.field public static final WIFI_STATE_ASSOCIATING:B = 0x5t

.field public static final WIFI_STATE_AUTHENTICATED:B = 0x4t

.field public static final WIFI_STATE_DISABLED:B = 0x1t

.field public static final WIFI_STATE_DISASSOCIATED:B = 0x2t

.field public static final WIFI_STATE_DORMANT:B = 0x8t

.field public static final WIFI_STATE_FOUR_WAY_HANDSHAKE:B = 0x3t

.field public static final WIFI_STATE_GROUP_HANDSHAKE:B = 0x7t

.field public static final WIFI_STATE_INACTIVE:B = 0x9t

.field public static final WIFI_STATE_SCANNING:B = 0xat

.field public static final WIFI_STATE_UNKNOWN:B


# instance fields
.field private final WIFI_IFACE:Ljava/lang/String;

.field private currentState:B

.field private mBssidToScanResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Lcom/att/iqi/lib/IQIManager;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectionState:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInitRcvd:J

.field private mInitSent:J

.field private mIsConnected:Z

.field private mLastMacAddrString:Ljava/lang/String;

.field private mLikelyChannel:B

.field private mLikelyMacAddr:[B

.field private mLikelySSID:Ljava/lang/String;

.field private mNeedWL15:Z

.field private mNeedWL19:Z

.field private mScanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mSupplicantReceiver:Landroid/content/BroadcastReceiver;

.field private mWL14:Lcom/att/iqi/lib/metrics/wl/WL14;

.field private mWL15:Lcom/att/iqi/lib/metrics/wl/WL15;

.field private mWL18:Lcom/att/iqi/lib/metrics/wl/WL18;

.field private mWL19:Lcom/att/iqi/lib/metrics/wl/WL19;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private qwBytesRcvd:J

.field private qwBytesSent:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/att/iqi/lib/IQIManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/att/iqi/WiFiReceiver;->currentState:B

    const-string/jumbo v1, "wlan0"

    iput-object v1, p0, Lcom/att/iqi/WiFiReceiver;->WIFI_IFACE:Ljava/lang/String;

    new-instance v1, Lcom/att/iqi/lib/metrics/wl/WL14;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/wl/WL14;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mWL14:Lcom/att/iqi/lib/metrics/wl/WL14;

    new-instance v1, Lcom/att/iqi/lib/metrics/wl/WL15;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/wl/WL15;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mWL15:Lcom/att/iqi/lib/metrics/wl/WL15;

    new-instance v1, Lcom/att/iqi/lib/metrics/wl/WL18;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/wl/WL18;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mWL18:Lcom/att/iqi/lib/metrics/wl/WL18;

    new-instance v1, Lcom/att/iqi/lib/metrics/wl/WL19;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/wl/WL19;-><init>()V

    iput-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mWL19:Lcom/att/iqi/lib/metrics/wl/WL19;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/att/iqi/WiFiReceiver;->mInitRcvd:J

    iput-wide v1, p0, Lcom/att/iqi/WiFiReceiver;->mInitSent:J

    iput-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mIsConnected:Z

    iput-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL15:Z

    iput-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL19:Z

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mLikelyMacAddr:[B

    const-string v1, ""

    iput-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mLastMacAddrString:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mLikelySSID:Ljava/lang/String;

    iput-byte v0, p0, Lcom/att/iqi/WiFiReceiver;->mLikelyChannel:B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mScanList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mBssidToScanResult:Ljava/util/HashMap;

    const/4 v0, 0x4

    iput v0, p0, Lcom/att/iqi/WiFiReceiver;->mConnectionState:I

    iput-object p1, p0, Lcom/att/iqi/WiFiReceiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/att/iqi/WiFiReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;

    new-instance v0, Lcom/att/iqi/WiFiReceiver$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/WiFiReceiver$1;-><init>(Lcom/att/iqi/WiFiReceiver;)V

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/att/iqi/WiFiReceiver$2;

    invoke-direct {v0, p0}, Lcom/att/iqi/WiFiReceiver$2;-><init>(Lcom/att/iqi/WiFiReceiver;)V

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/att/iqi/WiFiReceiver$3;

    invoke-direct {v0, p0}, Lcom/att/iqi/WiFiReceiver$3;-><init>(Lcom/att/iqi/WiFiReceiver;)V

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mSupplicantReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/att/iqi/WiFiReceiver$4;

    invoke-direct {v0, p0}, Lcom/att/iqi/WiFiReceiver$4;-><init>(Lcom/att/iqi/WiFiReceiver;)V

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/att/iqi/WiFiReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/WiFiReceiver;->onStateChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/att/iqi/WiFiReceiver;Landroid/net/wifi/SupplicantState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/WiFiReceiver;->handleSuppState(Landroid/net/wifi/SupplicantState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/att/iqi/WiFiReceiver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/WiFiReceiver;->updateWifiState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/att/iqi/WiFiReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->populateWL18()V

    return-void
.end method

.method static synthetic access$400(Lcom/att/iqi/WiFiReceiver;)Lcom/att/iqi/lib/metrics/wl/WL18;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL18:Lcom/att/iqi/lib/metrics/wl/WL18;

    return-object v0
.end method

.method static synthetic access$500(Lcom/att/iqi/WiFiReceiver;)Lcom/att/iqi/lib/IQIManager;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;

    return-object v0
.end method

.method private beginTrafficStats()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->qwBytesRcvd:J

    iput-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->qwBytesSent:J

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->getWifiRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->mInitRcvd:J

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->getWifiTxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->mInitSent:J

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginTrafficStats() mInitRcvd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/att/iqi/WiFiReceiver;->mInitRcvd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInitSent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/att/iqi/WiFiReceiver;->mInitSent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkForMacStringChanges(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mLastMacAddrString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "API reported mac change"

    invoke-direct {p0, v0}, Lcom/att/iqi/WiFiReceiver;->doWL19(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/att/iqi/WiFiReceiver;->mLastMacAddrString:Ljava/lang/String;

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mLikelyMacAddr:[B

    invoke-direct {p0, v0, p1}, Lcom/att/iqi/WiFiReceiver;->convertMacStringToBytes([BLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkForTrafficInit()V
    .locals 6

    iget-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->mInitRcvd:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->getWifiRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->mInitRcvd:J

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNSUPPORTED was seen for WiFiRxBytes at WL15, checking again. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/att/iqi/WiFiReceiver;->mInitRcvd:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->mInitSent:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->getWifiTxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->mInitSent:J

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNSUPPORTED was seen for WiFiTxBytes at WL15, checking again."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/att/iqi/WiFiReceiver;->mInitSent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private clearStateData()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mLikelyMacAddr:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mLastMacAddrString:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mLikelySSID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/att/iqi/WiFiReceiver;->mLikelyChannel:B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private convertMacStringToBytes([BLjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertMacStringToBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p2}, Lcom/att/iqi/lib/metrics/ConvertMacStringToBytes;->convert([BLjava/lang/String;)V

    return-void
.end method

.method private convertSupplicantState(Landroid/net/wifi/SupplicantState;)B
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/att/iqi/WiFiReceiver;->mConnectionState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/att/iqi/WiFiReceiver$6;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/att/iqi/WiFiReceiver;->mIsConnected:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Lcom/att/iqi/WiFiReceiver;->currentState:B

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_6
    iget-byte v0, p0, Lcom/att/iqi/WiFiReceiver;->currentState:B

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_8
    iget-byte v0, p0, Lcom/att/iqi/WiFiReceiver;->currentState:B

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x9

    nop

    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doWL14()V
    .locals 2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "doWL14()"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL15:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL14:Lcom/att/iqi/lib/metrics/wl/WL14;

    invoke-virtual {v0}, Lcom/att/iqi/lib/metrics/wl/WL14;->clear()V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL14:Lcom/att/iqi/lib/metrics/wl/WL14;

    invoke-virtual {v0}, Lcom/att/iqi/lib/metrics/wl/WL14;->setModeInfrastructure()V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL14:Lcom/att/iqi/lib/metrics/wl/WL14;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mLikelyMacAddr:[B

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/wl/WL14;->setPeerMacAddr([B)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL14:Lcom/att/iqi/lib/metrics/wl/WL14;

    iget-byte v1, p0, Lcom/att/iqi/WiFiReceiver;->mLikelyChannel:B

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/wl/WL14;->setChannel(B)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL14:Lcom/att/iqi/lib/metrics/wl/WL14;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mLikelySSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/wl/WL14;->setSsid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "mclient is null"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mWL14:Lcom/att/iqi/lib/metrics/wl/WL14;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL15:Z

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL15:Lcom/att/iqi/lib/metrics/wl/WL15;

    invoke-virtual {v0}, Lcom/att/iqi/lib/metrics/wl/WL15;->clear()V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL19:Lcom/att/iqi/lib/metrics/wl/WL19;

    invoke-virtual {v0}, Lcom/att/iqi/lib/metrics/wl/WL19;->clear()V

    return-void
.end method

.method private doWL15(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doWl15( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL15:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL15:Lcom/att/iqi/lib/metrics/wl/WL15;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mLikelyMacAddr:[B

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/wl/WL15;->setPeerMacAddr([B)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL15:Lcom/att/iqi/lib/metrics/wl/WL15;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mLikelySSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/wl/WL15;->setSsid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL15:Lcom/att/iqi/lib/metrics/wl/WL15;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->findDisassociationReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/wl/WL15;->setResult(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL15:Z

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "mclient is null"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mWL15:Lcom/att/iqi/lib/metrics/wl/WL15;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL19:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->beginTrafficStats()V

    :cond_4
    if-eqz p2, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL19:Z

    :cond_5
    return-void
.end method

.method private doWL19(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doWl19( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ), with mNeedWL19 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL19:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL19:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL19:Lcom/att/iqi/lib/metrics/wl/WL19;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mLikelyMacAddr:[B

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/wl/WL19;->setPeerMacAddr([B)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL19:Lcom/att/iqi/lib/metrics/wl/WL19;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mLikelySSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/wl/WL19;->setSsid(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->updateTrafficStats()V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL19:Lcom/att/iqi/lib/metrics/wl/WL19;

    iget-wide v1, p0, Lcom/att/iqi/WiFiReceiver;->qwBytesRcvd:J

    invoke-virtual {v0, v1, v2}, Lcom/att/iqi/lib/metrics/wl/WL19;->setBytesRcvd(J)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL19:Lcom/att/iqi/lib/metrics/wl/WL19;

    iget-wide v1, p0, Lcom/att/iqi/WiFiReceiver;->qwBytesSent:J

    invoke-virtual {v0, v1, v2}, Lcom/att/iqi/lib/metrics/wl/WL19;->setBytesSent(J)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL19:Lcom/att/iqi/lib/metrics/wl/WL19;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->findDisassociationReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/metrics/wl/WL19;->setReason(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "mclient is null"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mWL19:Lcom/att/iqi/lib/metrics/wl/WL19;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mWL19:Lcom/att/iqi/lib/metrics/wl/WL19;

    invoke-virtual {v0}, Lcom/att/iqi/lib/metrics/wl/WL19;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL19:Z

    :cond_3
    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->endTrafficStats()V

    return-void
.end method

.method private static emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private endTrafficStats()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->qwBytesRcvd:J

    iput-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->qwBytesSent:J

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->clearStateData()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->mInitRcvd:J

    iput-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->mInitSent:J

    return-void
.end method

.method private findDisassociationReason()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->getWifiNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private findHighestPriority()V
    .locals 6

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/att/iqi/WiFiReceiver;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/att/iqi/WiFiReceiver;->mBssidToScanResult:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_0

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eqz v4, :cond_2

    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v4, :cond_2

    :cond_0
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "new hp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_1
    move-object v1, v3

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "WifiConfiguration best Priority BSSID"

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/att/iqi/WiFiReceiver;->mBssidToScanResult:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v2}, Lcom/att/iqi/WiFiReceiver;->setLikelyNetworkValues(Landroid/net/wifi/ScanResult;)V

    :cond_5
    return-void
.end method

.method private generateTrafficValue(JJ)J
    .locals 5

    sub-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private getWifiNetworkInfo()Landroid/net/NetworkInfo;
    .locals 8

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getWifiRxBytes()J
    .locals 2

    const-string/jumbo v0, "wlan0"

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getWifiTxBytes()J
    .locals 2

    const-string/jumbo v0, "wlan0"

    invoke-static {v0}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private guessAtBSSID()V
    .locals 3

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/att/iqi/WiFiReceiver;->setLikelyNetworkValues(Landroid/net/wifi/WifiInfo;)V

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->updateScanResults()V

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiInfo knows the Bssid"

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/att/iqi/WiFiReceiver;->checkForMacStringChanges(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/att/iqi/WiFiReceiver;->mBssidToScanResult:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "found WifiInfo Bssid"

    invoke-static {v2}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/att/iqi/WiFiReceiver;->mBssidToScanResult:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v2}, Lcom/att/iqi/WiFiReceiver;->setLikelyNetworkValues(Landroid/net/wifi/ScanResult;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->findHighestPriority()V

    :cond_3
    return-void
.end method

.method private declared-synchronized handleStateChange(BB)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "oldState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newstate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNeedWL15 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL15:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->doWL14()V

    goto :goto_1

    :pswitch_1
    iget-boolean v1, p0, Lcom/att/iqi/WiFiReceiver;->mNeedWL15:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/att/iqi/WiFiReceiver;->stateToString(B)Ljava/lang/String;

    move-result-object v1

    iput-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mIsConnected:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure: previous state was :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/att/iqi/WiFiReceiver;->doWL15(Ljava/lang/String;Z)V

    :cond_1
    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->doWL14()V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mIsConnected:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->doWL14()V

    :cond_2
    const-string v0, "Success"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/att/iqi/WiFiReceiver;->doWL15(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_3
    iget-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mIsConnected:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->doWL14()V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/att/iqi/WiFiReceiver;->stateToString(B)Ljava/lang/String;

    move-result-object v1

    iput-boolean v0, p0, Lcom/att/iqi/WiFiReceiver;->mIsConnected:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure: previous state was :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/att/iqi/WiFiReceiver;->doWL15(Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/att/iqi/WiFiReceiver;->doWL19(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    if-eqz v0, :cond_3

    const-string v0, "Unhandled state"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private declared-synchronized handleSuppState(Landroid/net/wifi/SupplicantState;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "handleSuppState retrieving supplicant state from API"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    move-object p1, v1

    :cond_1
    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->guessAtBSSID()V

    invoke-direct {p0, p1}, Lcom/att/iqi/WiFiReceiver;->convertSupplicantState(Landroid/net/wifi/SupplicantState;)B

    move-result v0

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new supplicant state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_2
    iget-byte v1, p0, Lcom/att/iqi/WiFiReceiver;->currentState:B

    if-eq v0, v1, :cond_3

    iget-byte v1, p0, Lcom/att/iqi/WiFiReceiver;->currentState:B

    invoke-direct {p0, v1, v0}, Lcom/att/iqi/WiFiReceiver;->handleStateChange(BB)V

    :cond_3
    iget-boolean v1, p0, Lcom/att/iqi/WiFiReceiver;->mIsConnected:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->checkForTrafficInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onStateChange(Landroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State Change Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/att/iqi/WiFiReceiver;->mIsConnected:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/att/iqi/WiFiReceiver;->mIsConnected:Z

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-direct {p0, v1}, Lcom/att/iqi/WiFiReceiver;->handleSuppState(Landroid/net/wifi/SupplicantState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->guessAtBSSID()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/att/iqi/WiFiReceiver;->mIsConnected:Z

    sget-object v2, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-direct {p0, v2}, Lcom/att/iqi/WiFiReceiver;->handleSuppState(Landroid/net/wifi/SupplicantState;)V

    const-string v2, "Success"

    invoke-direct {p0, v2, v1}, Lcom/att/iqi/WiFiReceiver;->doWL15(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-direct {p0, v1}, Lcom/att/iqi/WiFiReceiver;->handleSuppState(Landroid/net/wifi/SupplicantState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized populateWL18()V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->updateScanResults()V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mScanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/att/iqi/WiFiReceiver;->mScanList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    new-instance v5, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    invoke-direct {v5}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;-><init>()V

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->setSsid(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->getBssId()[B

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/att/iqi/WiFiReceiver;->convertMacStringToBytes([BLjava/lang/String;)V

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->setCapabilities(Ljava/lang/String;)V

    iget v6, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v5, v6}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->setChanFromFreq(I)V

    iget v6, v4, Landroid/net/wifi/ScanResult;->level:I

    const/16 v7, 0x10

    invoke-static {v6, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v6

    if-ltz v6, :cond_1

    if-le v6, v1, :cond_0

    goto :goto_1

    :cond_0
    int-to-byte v7, v6

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, -0x1

    :goto_2
    invoke-virtual {v5, v7}, Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;->setRssi(B)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WL18 metric encoding: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mWL18:Lcom/att/iqi/lib/metrics/wl/WL18;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;

    invoke-virtual {v1, v3}, Lcom/att/iqi/lib/metrics/wl/WL18;->setBssInfo([Lcom/att/iqi/lib/metrics/wl/WL18$bssInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setLikelyNetworkValues(Landroid/net/wifi/ScanResult;)V
    .locals 2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set likely to  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/att/iqi/WiFiReceiver;->checkForMacStringChanges(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mLikelySSID:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Lcom/att/iqi/lib/metrics/wl/WL14;->frequencyToChannel(I)B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/WiFiReceiver;->mLikelyChannel:B

    return-void
.end method

.method private setLikelyNetworkValues(Landroid/net/wifi/WifiInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "<unknown ssid>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mLikelySSID:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Lcom/att/iqi/lib/metrics/wl/WL14;->frequencyToChannel(I)B

    move-result v1

    iput-byte v1, p0, Lcom/att/iqi/WiFiReceiver;->mLikelyChannel:B

    return-void
.end method

.method private stateToString(B)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "UNKNOWN"

    goto :goto_0

    :pswitch_0
    const-string v0, "SCANNING"

    goto :goto_0

    :pswitch_1
    const-string v0, "INACTIVE"

    goto :goto_0

    :pswitch_2
    const-string v0, "DORMANT"

    goto :goto_0

    :pswitch_3
    const-string v0, "GROUP_HANDSHAKE"

    goto :goto_0

    :pswitch_4
    const-string v0, "ASSOCIATED"

    goto :goto_0

    :pswitch_5
    const-string v0, "ASSOCIATING"

    goto :goto_0

    :pswitch_6
    const-string v0, "AUTHENTICATED"

    goto :goto_0

    :pswitch_7
    const-string v0, "FOUR_WAY_HANDSHAKE"

    goto :goto_0

    :pswitch_8
    const-string v0, "DISSASSOCIATED"

    goto :goto_0

    :pswitch_9
    const-string v0, "DISABLED"

    nop

    :goto_0
    nop

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized updateScanResults()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mBssidToScanResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mScanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifiscanner"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner;

    invoke-virtual {v0}, Landroid/net/wifi/WifiScanner;->getSingleScanResults()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/att/iqi/WiFiReceiver;->mScanList:Ljava/util/List;

    new-instance v2, Lcom/att/iqi/WiFiReceiver$ScanResultComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/att/iqi/WiFiReceiver$ScanResultComparator;-><init>(Lcom/att/iqi/WiFiReceiver$1;)V

    iget-object v3, p0, Lcom/att/iqi/WiFiReceiver;->mScanList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, p0, Lcom/att/iqi/WiFiReceiver;->mBssidToScanResult:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/att/iqi/WiFiReceiver;->mScanList:Ljava/util/List;

    invoke-static {v3}, Lcom/att/iqi/WiFiReceiver;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v5, p0, Lcom/att/iqi/WiFiReceiver;->mBssidToScanResult:Ljava/util/HashMap;

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WL18 Scan Saw: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mBssidToScanResult:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WL18 ScanResults exception"

    invoke-static {v1, v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateTrafficStats()V
    .locals 6

    iget-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->mInitRcvd:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/att/iqi/WiFiReceiver;->mInitSent:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->getWifiRxBytes()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/att/iqi/WiFiReceiver;->mInitRcvd:J

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/att/iqi/WiFiReceiver;->generateTrafficValue(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/att/iqi/WiFiReceiver;->qwBytesRcvd:J

    :cond_0
    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->getWifiTxBytes()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/att/iqi/WiFiReceiver;->mInitSent:J

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/att/iqi/WiFiReceiver;->generateTrafficValue(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/att/iqi/WiFiReceiver;->qwBytesSent:J

    :cond_1
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTrafficStats() bytesRecvd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/att/iqi/WiFiReceiver;->qwBytesRcvd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bytesSent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/att/iqi/WiFiReceiver;->qwBytesSent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private updateWifiState(I)V
    .locals 1

    iget v0, p0, Lcom/att/iqi/WiFiReceiver;->mConnectionState:I

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-direct {p0, v0}, Lcom/att/iqi/WiFiReceiver;->handleSuppState(Landroid/net/wifi/SupplicantState;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected endListening()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mSupplicantReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WiFiReceiver unregistered"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected startListening()V
    .locals 9

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Init wifi receiver impl"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "No IQIManager"

    invoke-static {v0}, Lcom/att/iqi/LogUtil;->loge(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "wifircv"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/att/iqi/WiFiReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/att/iqi/WiFiReceiver;->mClient:Lcom/att/iqi/lib/IQIManager;

    sget-object v2, Lcom/att/iqi/lib/metrics/wl/WL18;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v3, Lcom/att/iqi/WiFiReceiver$5;

    invoke-direct {v3, p0}, Lcom/att/iqi/WiFiReceiver$5;-><init>(Lcom/att/iqi/WiFiReceiver;)V

    invoke-virtual {v1, v2, v3}, Lcom/att/iqi/lib/IQIManager;->registerQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-direct {p0, v1}, Lcom/att/iqi/WiFiReceiver;->handleSuppState(Landroid/net/wifi/SupplicantState;)V

    invoke-direct {p0}, Lcom/att/iqi/WiFiReceiver;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/att/iqi/WiFiReceiver;->updateWifiState(I)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/att/iqi/WiFiReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/att/iqi/WiFiReceiver;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/att/iqi/WiFiReceiver;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/att/iqi/WiFiReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/att/iqi/WiFiReceiver;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/att/iqi/WiFiReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/att/iqi/WiFiReceiver;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/att/iqi/WiFiReceiver;->mSupplicantReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/att/iqi/WiFiReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/att/iqi/WiFiReceiver;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/att/iqi/WiFiReceiver;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/att/iqi/WiFiReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/att/iqi/LogUtil;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "WiFiReceiver registered"

    invoke-static {v5}, Lcom/att/iqi/LogUtil;->logd(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Looper cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
