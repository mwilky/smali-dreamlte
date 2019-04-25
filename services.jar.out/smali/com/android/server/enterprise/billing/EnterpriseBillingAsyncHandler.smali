.class public Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;
.super Ljava/lang/Thread;
.source "EnterpriseBillingAsyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;
    }
.end annotation


# static fields
.field private static final ACTION_ADMIN_CHANGED:I = 0x2

.field private static final ACTION_APN_CHANGE:I = 0x5

.field private static final ACTION_BOOT_COMPLETE:I = 0x3

.field private static final ACTION_DATA_SIM_CHANGE:I = 0x6

.field private static final ACTION_PACKAGE_MODIFIED:I = 0x1

.field private static final ACTION_TELEPHONY_CHANGE:I = 0x4

.field private static final ACTION_USER_REMOVED:I = 0x0

.field private static final INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field private static final TAG:Ljava/lang/String; = "EnterpriseBillingAsyncHandler"

.field private static sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;


# instance fields
.field private bootCompletereceiver:Landroid/content/BroadcastReceiver;

.field private containerAdminChangeReceiver:Landroid/content/BroadcastReceiver;

.field private dataSimChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mApnObserver:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;

.field private mContext:Landroid/content/Context;

.field private mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

.field private mHandler:Landroid/os/Handler;

.field private packageModificationReceiver:Landroid/content/BroadcastReceiver;

.field private telephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private userRemovalReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$2;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->userRemovalReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$3;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->packageModificationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$4;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->containerAdminChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$5;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$5;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->bootCompletereceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$6;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$6;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->telephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$7;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$7;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->dataSimChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;)Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;)V

    sput-object v1, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->sInstance:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    return-object v0
.end method

.method private initialize()V
    .locals 9

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->userRemovalReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->packageModificationReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "enterprise.container.admin.changed"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->containerAdminChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->bootCompletereceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->telephonyPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v5, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mApnObserver:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mApnObserver:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->dataSimChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "EnterpriseBillingAsyncHandler"

    const-string/jumbo v1, "run - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->initialize()V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$1;-><init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "EnterpriseBillingAsyncHandler"

    const-string/jumbo v1, "run - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
