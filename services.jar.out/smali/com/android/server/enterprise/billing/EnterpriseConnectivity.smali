.class public Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.super Ljava/lang/Object;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;
    }
.end annotation


# static fields
.field private static final ACTION_DATA_STATE:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field private static final ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field private static final ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field private static final ACTION_NOTI_DISMISSED:Ljava/lang/String; = "com.samsung.server.enterprise.billing.notification_dismissed"

.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final ACTION_TYPE_APN_UID:Ljava/lang/String; = "com.samsung.server.enterprise.billing.mapping_modified"

.field private static final ACTION_TYPE_CONNECTION_CHANGED:Ljava/lang/String; = "com.samsung.server.enterprise.billing.profile_turn_on_status_modified"

.field private static final ACTION_TYPE_ENABLED:Ljava/lang/String; = "com.samsung.server.enterprise.billing.action_enable_status_modified"

.field private static final ACTION_TYPE_OFFLOAD_TO_MOBILE:Ljava/lang/String; = "com.samsung.server.enterprise.billing.mobile_fallback_modified"

.field private static final ACTION_TYPE_OFFLOAD_TO_WIFI:Ljava/lang/String; = "com.samsung.server.enterprise.billing.wifi_fallback_modified"

.field private static final ACTION_TYPE_ROAMING_ALLOWED:Ljava/lang/String; = "com.samsung.server.enterprise.billing.roaming_modified"

.field private static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field private static final DBG:Z = true

.field private static final EXTRA_APN_TYPE:Ljava/lang/String; = "ent_type"

.field private static final NETWORK_ENT1:I = 0x1c

.field private static final NETWORK_ENT2:I = 0x1d

.field private static final NETWORK_MOBILE:I = 0x0

.field private static final NETWORK_NONE:I = -0x1

.field private static final NETWORK_WIFI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EntConnectivity"

.field private static final TEST_SINGLE_USER:Z = false

.field private static final VDBG:Z


# instance fields
.field private final mConnSvc:Landroid/net/IConnectivityManager;

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

.field private mHandler:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

.field private mLooper:Landroid/os/Looper;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private final mNMSvc:Landroid/os/INetworkManagementService;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    sput-boolean v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$2;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$3;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDeviceStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$4;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;

    iput-object p3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;

    iput-object p4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error in enterprise billing db "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.server.enterprise.billing.mapping_modified"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.server.enterprise.billing.wifi_fallback_modified"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.server.enterprise.billing.profile_turn_on_status_modified"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.server.enterprise.billing.action_enable_status_modified"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.server.enterprise.billing.mobile_fallback_modified"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.server.enterprise.billing.roaming_modified"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDatabaseChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.server.enterprise.billing.notification_dismissed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDeviceStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "multi_sim_data_call"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->connectivityType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mHandler:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mHandler:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->callbackToName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mEntProviderInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V

    return-void
.end method

.method private callbackToName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "IP_CHANGED"

    return-object v0

    :pswitch_1
    const-string v0, "CAP_CHANGED"

    return-object v0

    :pswitch_2
    const-string v0, "UNAVAIL"

    return-object v0

    :pswitch_3
    const-string v0, "LOST"

    return-object v0

    :pswitch_4
    const-string v0, "LOSING"

    return-object v0

    :pswitch_5
    const-string v0, "AVAILABLE"

    return-object v0

    :pswitch_6
    const-string v0, "PRECHECK"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private connectivityType(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "ent1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    return v0

    :cond_0
    const-string/jumbo v0, "ent2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1d

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private static slogd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EntConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EntConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static slogv(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntConnectivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getActiveEnterpriseNetworkType(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnSvc:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error getActiveEnterpriseNetworkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v1

    goto :goto_2

    :cond_1
    move v1, v0

    :goto_2
    return v1

    :cond_2
    goto :goto_1

    :cond_3
    return v0
.end method

.method public getEnterpriseNetworkType(II)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadToWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v0

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return p2
.end method

.method public getUidsForApnType(Ljava/lang/String;)[I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public getUserHandleForConnection(I)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v3

    if-ne p1, v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUserHandle()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getUsersForNetwork(I)[I
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUserHandle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasIPv6Address(Landroid/net/LinkProperties;)Z
    .locals 4

    const-string/jumbo v0, "sys.knox.islabtest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntConnectivity"

    const-string/jumbo v2, "lab testing "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v0

    return v0
.end method

.method public isAnyConnectionAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAnyConnectionEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isEntApnEnabled(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectivityType()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    :cond_1
    goto :goto_0

    :cond_2
    return v2
.end method

.method public onActiveNetworkChanged(ILandroid/net/LinkProperties;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onActiveDefaultNetworkChanged(ILandroid/net/LinkProperties;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string/jumbo v2, "ent1"

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->start()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
