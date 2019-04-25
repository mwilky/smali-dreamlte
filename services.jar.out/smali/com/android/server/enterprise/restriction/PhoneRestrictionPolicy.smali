.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.super Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;
    }
.end annotation


# static fields
.field private static final ACCESS_TO_PB_ADD:I = 0x1

.field private static final ACCESS_TO_PB_EDIT:I = 0x3

.field private static final ACTION_RCS_FILE_RECEIVED_SENT:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

.field private static final ACTION_RCS_FILE_THUMBNAIL_RECEIVED:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

.field private static final ACTION_RCS_MSG_FILE_RECEIVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_FILE_RECEIVED"

.field private static final ACTION_RCS_MSG_FILE_SENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_FILE_SENT"

.field private static final ACTION_RCS_MSG_FILE_THUMBNAIL_RECEIVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_FILE_THUMBNAIL_RECEIVED"

.field private static final ACTION_RCS_MSG_RECEIVED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

.field private static final ACTION_RCS_MSG_SENT:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

.field private static final ACTION_RCS_MSG_TEXT_RECEIVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_RECEIVED"

.field private static final ACTION_RCS_MSG_TEXT_SENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_SENT"

.field private static final ACTION_SIM_PIN_SERVICE:Ljava/lang/String; = "com.sec.enterprise.SimPinCode"

.field private static final EXTRA_FILE_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field private static final EXTRA_MSG_ID:Ljava/lang/String; = "id"

.field private static final EXTRA_MSG_SENT_REQUEST_SUCCESS:Ljava/lang/String; = "response_status"

.field private static final EXTRA_SESSION_DIRECTION:Ljava/lang/String; = "sessionDirection"

.field private static final INCOMING:I = 0x0

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final MSG_DELIVERY_MMS:I = 0x1

.field private static final MSG_DELIVERY_SMS:I = 0x0

.field private static final MSG_DELIVERY_SMS_MMS:I = 0x2

.field private static final OUTGOING:I = 0x1

.field private static final RCS_PROJ:[Ljava/lang/String;

.field private static final RCS_URI:Landroid/net/Uri;

.field private static final RCS_WHERE:Ljava/lang/String; = "_id=?"

.field private static final SIM_PIN_BIND_TIMER:J = 0x3e8L

.field private static final SIM_SLOT_0:I = 0x0

.field private static final SIM_SLOT_1:I = 0x1

.field private static final SIM_SLOT_ALL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PhoneRestrictionPolicy"

.field private static final TYPE_MMS:I = 0x1

.field private static final TYPE_SMS:I


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDataCheckboxPreviousState:Z

.field private mDataLimitEnabled:Z

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private volatile mIsPhoneShuttingDown:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mRcsReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

.field private mSimLockBroadcast:Landroid/content/BroadcastReceiver;

.field private mSimPinBind:Ljava/lang/Runnable;

.field private mSimPinHandler:Landroid/os/Handler;

.field private mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

.field private mSimPinServiceConn:Landroid/content/ServiceConnection;

.field private mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private final subChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "content://com.samsung.rcs.im/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->RCS_URI:Landroid/net/Uri;

    const-string/jumbo v1, "is_filetransfer"

    const-string/jumbo v2, "remote_uri"

    const-string/jumbo v3, "sender_alias"

    const-string v4, "content_type"

    const-string v5, "body"

    const-string/jumbo v6, "inserted_timestamp"

    const-string/jumbo v7, "sent_timestamp"

    const-string v8, "direction"

    const-string/jumbo v9, "file_path"

    const-string/jumbo v10, "thumbnail_path"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->RCS_PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    new-instance v2, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-direct {v2, p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;)V

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mRcsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->subChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$6;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$6;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimLockBroadcast:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinServiceConn:Landroid/content/ServiceConnection;

    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, " >>> PhoneRestrictionPolicy.PhoneRestrictionPolicy()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCheckboxState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "edm.intent.action.PHONE_READY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/restriction/SimDBProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "telephony_subscription_service"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    const-string v2, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "edm.intent.action.PHONE_READY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimLockBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v4, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mRcsReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "com.samsung.rcs.im.READ_PERMISSION"

    invoke-virtual {v4, v5, v3, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->subChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->unlockAllSimCards()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinServiceConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Lcom/samsung/android/knox/restriction/ISimPinPolicy;)Lcom/samsung/android/knox/restriction/ISimPinPolicy;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->sendRcsBroadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deliveryBlockedMsgs(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifyRcsChangesAllUser()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private blockDataNetwork()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Telephony Manager"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    iget-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_1
    return v3
.end method

.method private changeSimPinCodeService(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/restriction/ISimPinPolicy;->changeSimPinCode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/16 v0, 0x64

    return v0
.end method

.method private dataLimitCounter(Ljava/lang/String;J)V
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p2

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private deleteMessageFromStorageProvider(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "smsMmsBlockedRowId"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SMSMMSBlockedDelivery"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method private declared-synchronized deliveryBlockedMsgs(I)V
    .locals 24

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    const-string v0, "PhoneRestrictionPolicy"

    const-string v3, " >>>> deliveryBlockedMsgs"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "smsMmsBlockedRowId"

    const-string/jumbo v3, "smsMmsSendType"

    const-string/jumbo v4, "smsMmsPdu"

    const-string/jumbo v5, "smsMmsTimeStamp"

    const-string/jumbo v6, "smsMmsOrigAddress"

    filled-new-array {v0, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    if-nez p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    move-object v4, v0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v5, v0

    const-string/jumbo v0, "smsMmsType"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SMSMMSBlockedDelivery"

    invoke-virtual {v0, v6, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    const-string v0, "PhoneRestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cvList size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    move-object v8, v0

    iget-boolean v0, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    if-eqz v0, :cond_2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v7, "Phone is shutting down ...quitting"

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v15, v0

    const/4 v0, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_6

    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v0, "PhoneRestrictionPolicy"

    const-string v7, "Block SMS with storage applies... quitting"

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string/jumbo v10, "smsMmsOrigAddress"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "com.samsung.android.knox.intent.action.SEND_BLOCKED_SMS_INTERNAL"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_5
    :goto_2
    const-string v0, "PhoneRestrictionPolicy"

    const-string v9, "Other incoming SMS policies apply... delete message and continue"

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "smsMmsBlockedRowId"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deleteMessageFromStorageProvider(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v0, "PhoneRestrictionPolicy"

    const-string v7, "Block MMS with storage applies... quitting"

    invoke-static {v0, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :cond_7
    :try_start_4
    invoke-virtual {v1, v9, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move-object/from16 v17, v15

    goto/16 :goto_7

    :cond_9
    :goto_4
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->isWapPushAllowed()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    const-string v0, "com.samsung.android.knox.intent.extra.TIME_STAMP_INTERNAL"

    const-string/jumbo v9, "smsMmsTimeStamp"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.ORIG_ADDRESS_INTERNAL"

    const-string/jumbo v9, "smsMmsOrigAddress"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.action.SEND_BLOCKED_MMS_INTERNAL"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    const-string/jumbo v0, "smsMmsBlockedRowId"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deleteMessageFromStorageProvider(Ljava/lang/String;)V

    const-string/jumbo v0, "smsMmsPdu"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    if-eqz v14, :cond_c

    invoke-static {v14}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v13, v0

    const/4 v0, -0x1

    const-string/jumbo v9, "smsMmsSendType"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    move-object v12, v9

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v0, v9

    :cond_b
    move v11, v0

    const-string v0, "com.samsung.android.knox.intent.extra.PDU_INTERNAL"

    invoke-virtual {v15, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.SEND_TYPE_INTERNAL"

    invoke-virtual {v15, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v10, v0

    iget-object v9, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.knox.permission.KNOX_RECEIVE_BLOCKED_SMS_MMS_INTERNAL"

    new-instance v2, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;

    invoke-direct {v2, v1, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Ljava/lang/Object;)V

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v10

    move-object v10, v15

    move/from16 v21, v11

    move-object v11, v0

    move-object/from16 v22, v12

    move-object v12, v2

    move-object v2, v13

    move-object/from16 v13, v16

    move-object/from16 v23, v14

    move/from16 v14, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    invoke-virtual/range {v9 .. v16}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v9, v20

    :try_start_5
    monitor-enter v9
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-wide/16 v10, 0x1f4

    :try_start_6
    invoke-virtual {v9, v10, v11}, Ljava/lang/Object;->wait(J)V

    monitor-exit v9

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_0
    move-exception v0

    :try_start_8
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, ""

    invoke-static {v10, v11, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_6
    goto/16 :goto_1

    :cond_d
    move-object/from16 v17, v15

    :goto_7
    const-string v0, "PhoneRestrictionPolicy"

    const-string v2, "Other incoming MMS policies apply... delete message and continue"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "smsMmsBlockedRowId"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deleteMessageFromStorageProvider(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string v0, "PhoneRestrictionPolicy"

    const-string v2, " deliveryBlockedMsgs >>>> "

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_PHONE_RESTRICTION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePhoneApp()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforcePhoneAppOrAdmin(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object p1, v0

    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p1
.end method

.method private enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object p1, v0

    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p1
.end method

.method private enforcePhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "android.permission.sec.MDM_PHONE_RESTRICTION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSms()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only receive SMS by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystemUser()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDataCheckboxState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "dataCallPacketDataCheckBox"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "PHONERESTRICTION"

    invoke-virtual {v1, v2, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    invoke-virtual {v1, v2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    goto :goto_0

    :cond_2
    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getSimSubId(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getSmsMmsAllowed(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "adminUid"

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v3, 0x1

    aput-object v2, v0, v3

    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PHONERESTRICTION"

    invoke-virtual {v0, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v8, p1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/ContentValues;

    const-string v0, "adminUid"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_1

    nop

    :goto_1
    move-object/from16 v3, p3

    goto :goto_2

    :cond_1
    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, v0

    nop

    nop

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "PHONERESTRICTION"

    move-object/from16 v3, p3

    invoke-virtual {v0, v14, v15, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    :try_start_1
    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    nop

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-nez v15, :cond_5

    return v4

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v7, "PhoneRestrictionPolicy"

    const-string/jumbo v15, "failed to compile pattern for exception"

    invoke-static {v7, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_4
    move-object/from16 v3, p3

    :cond_5
    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v3, p3

    move-object v12, v0

    const-string v12, "PhoneRestrictionPolicy"

    const-string/jumbo v13, "failed to compile pattern for restriction"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v3, p3

    const/4 v4, 0x1

    return v4

    :cond_7
    :goto_3
    move v4, v3

    move-object/from16 v3, p3

    return v4
.end method

.method private isOperationAllowed(II)Z
    .locals 17

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    if-eq v2, v0, :cond_0

    const-string v3, "PhoneRestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> PhoneRestrictionPolicy.isOperationAllowed() was failed - SlotID is invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v3, "PhoneRestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOperationAllowed >>> slotNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " function: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "slotId"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "allowData"

    aput-object v4, v3, v0

    const-string v4, "allowIncomingCall"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "allowOutgoingCall"

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "allowIncomingSMS"

    const/4 v8, 0x4

    aput-object v4, v3, v8

    const-string v4, "allowOutgoingSMS"

    const/4 v9, 0x5

    aput-object v4, v3, v9

    const-string v4, "allowMMS"

    const/4 v10, 0x6

    aput-object v4, v3, v10

    const/4 v4, 0x7

    const-string v11, "adminUid"

    aput-object v11, v3, v4

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v11, 0x1

    const-string/jumbo v12, "slotId"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v12, p0

    iget-object v13, v12, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "PHONERESTRICTION_SLOTID"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v3, v4, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_1

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.isOperationAllowed() Cursor is Null"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    if-nez v14, :cond_e

    const-string v14, "PhoneRestrictionPolicy"

    const-string v15, ">>> PhoneRestrictionPolicy.isOperationAllowed() - dB have some valid values"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v0, :cond_3

    const-string v14, "PhoneRestrictionPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ">>> PhoneRestrictionPolicy.isOperationAllowed() - Result is - "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "allowData"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_2

    const-string v0, "allowData"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    move v11, v0

    :cond_3
    if-ne v1, v6, :cond_5

    if-eqz v11, :cond_4

    const-string v0, "allowIncomingCall"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v5

    :goto_2
    move v11, v0

    :cond_5
    if-ne v1, v7, :cond_7

    if-eqz v11, :cond_6

    const-string v0, "allowOutgoingCall"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v5

    :goto_3
    move v11, v0

    :cond_7
    if-ne v1, v8, :cond_9

    if-eqz v11, :cond_8

    const-string v0, "allowIncomingSMS"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    move v0, v5

    :goto_4
    move v11, v0

    :cond_9
    if-ne v1, v9, :cond_b

    if-eqz v11, :cond_a

    const-string v0, "allowOutgoingSMS"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    move v0, v5

    :goto_5
    move v11, v0

    :cond_b
    if-ne v1, v10, :cond_d

    if-eqz v11, :cond_c

    const-string v0, "allowMMS"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    move v0, v5

    :goto_6
    move v11, v0

    :cond_d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_e
    if-eqz v13, :cond_f

    :goto_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_1
    const-string v5, "PhoneRestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occurred accessing Enterprise db "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_f

    goto :goto_7

    :cond_f
    :goto_8
    return v11

    :goto_9
    if-eqz v13, :cond_10

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0
.end method

.method private isRCSEnabledInternal(IZLjava/lang/String;)Z
    .locals 5

    const-string v0, "PhoneRestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRCSEnabledInternal(), showMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", columnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSFeature(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "PhoneRestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRCSEnabledInternal(): allowed. not support feature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    invoke-virtual {v0, v2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, p1

    if-eq v4, p1, :cond_3

    const-string v1, "PhoneRestrictionPolicy"

    const-string/jumbo v2, "isRCSEnabledInternal(): disallowed by EDM"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const v1, 0x10408e5

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_2
    const/4 v1, 0x0

    return v1

    :cond_3
    goto :goto_0

    :cond_4
    return v1
.end method

.method private isRCSFeature(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSimLocked(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/ISimPinPolicy;->isSimLocked(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private logError(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "lockUnlockCorporateSimCard Sim not inserted"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "lockUnlockCorporateSimCard Sim pin owned by another admin"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "lockUnlockCorporateSimCard Sim pin already locked by admin"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "lockUnlockCorporateSimCard Sim pin database error"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "lockUnlockCorporateSimCard Sim not ready"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "lockUnlockCorporateSimCard Sim pin exceeded max retries"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "lockUnlockCorporateSimCard Sim pin blocked by puk"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "lockUnlockCorporateSimCard Sim pin already unlocked"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "lockUnlockCorporateSimCard Sim pin already locked"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "lockUnlockCorporateSimCard Sim pin unknown"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "lockUnlockCorporateSimCard invalid pincode"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyRcsChangesAllUser()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider2/PhoneRestrictionPolicy/isRCSEnabled"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private putDataCheckboxState(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "dataCallPacketDataCheckBox"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "\\s+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method private restorePacketDataNetworkSetting()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v1, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Telephony Manager"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    iget-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    :cond_2
    return v1
.end method

.method private sendRcsBroadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_4

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    const-string/jumbo v1, "id"

    const-string/jumbo v4, "sessionId"

    invoke-virtual {p2, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.android.knox.intent.action.RCS_MSG_FILE_THUMBNAIL_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "sessionDirection"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.samsung.android.knox.intent.action.RCS_MSG_FILE_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string v1, "com.samsung.android.knox.intent.action.RCS_MSG_FILE_SENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    :goto_0
    const-string/jumbo v1, "id"

    const-string/jumbo v4, "message_id"

    invoke-virtual {p2, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    const-string v1, "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_SENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_1
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "RcsReceiver, sendRcsBroadcast"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-string v0, "PhoneRestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDynamicSimControl >>> slotNum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " function: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    if-eq v2, v0, :cond_0

    const-string v0, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setDynamicSimControl() was failed - SlotID is invalid"

    invoke-static {v0, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v5, 0x1

    iget-object v6, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    iget-object v8, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_c

    const/4 v10, 0x0

    move v11, v5

    move v5, v10

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_3

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v12}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v12

    if-ne v12, v2, :cond_2

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    if-nez v4, :cond_1

    iget-object v14, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v14

    if-ne v14, v13, :cond_1

    if-ne v3, v0, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "PhoneRestrictionPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current Sim "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "is request for Data Block"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_1
    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const-string v9, "PhoneRestrictionPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Current Sim is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ". Requested block Sim is not present in SlotId"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ne v3, v0, :cond_4

    const-string v5, "allowData"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_4
    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    const-string v5, "allowIncomingCall"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_5
    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    const-string v5, "allowOutgoingCall"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_6
    const/4 v5, 0x4

    if-ne v3, v5, :cond_7

    const-string v5, "allowIncomingSMS"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_7
    const/4 v5, 0x5

    if-ne v3, v5, :cond_8

    const-string v5, "allowOutgoingSMS"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_8
    const/4 v5, 0x6

    if-ne v3, v5, :cond_9

    const-string v5, "allowMMS"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_9
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "adminUid"

    move-object/from16 v12, p1

    iget v13, v12, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v9, "slotId"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v11, :cond_a

    :try_start_0
    iget-object v9, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "PHONERESTRICTION_SLOTID"

    invoke-virtual {v9, v13, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_a

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v9, "PhoneRestrictionPolicy"

    const-string/jumbo v10, "setDynamicSimControl(): failed. unexpected exception - dB error"

    invoke-static {v9, v10, v0}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v9, -0x4

    return v9

    :cond_a
    move v0, v10

    :goto_2
    nop

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    const/4 v10, -0x2

    :goto_3
    return v10

    :cond_c
    move-object/from16 v12, p1

    const-string v0, "PhoneRestrictionPolicy"

    const-string v9, "CurrentSims list is null"

    invoke-static {v0, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    return v0
.end method

.method private setLockedIccIdsSystemUI(I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getIccIdListByAdmin()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLockedIccIdsAsUser(I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setRCSEnabledInternal(Lcom/samsung/android/knox/ContextInfo;IZLjava/lang/String;)I
    .locals 5

    const-string v0, "PhoneRestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRCSEnabledInternal(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", columnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PhoneRestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRCSEnabledInternal(): failed. not support feature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0xff

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "PHONERESTRICTION"

    invoke-virtual {v2, v3, v4, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    if-gez v1, :cond_1

    const/16 v1, 0xff

    :cond_1
    if-eqz p3, :cond_2

    or-int/2addr v1, p2

    goto :goto_1

    :cond_2
    not-int v2, p2

    and-int/2addr v1, v2

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "PHONERESTRICTION"

    invoke-virtual {v2, v3, v4, p4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v2

    const/4 v0, 0x0

    const-string v3, "PhoneRestrictionPolicy"

    const-string/jumbo v4, "setRCSEnabledInternal(): failed. unexpected exception"

    invoke-static {v3, v4, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifyRcsChangesAllUser()V

    :cond_3
    if-eqz v0, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, -0x2

    :goto_3
    return v2
.end method

.method private setSubIdLockEnabled(IZLjava/lang/String;)I
    .locals 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "setSubIdLockEnabled "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/restriction/ISimPinPolicy;->setSubIdLockEnabled(IZLjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/16 v0, 0x64

    return v0
.end method

.method private declared-synchronized unlockAllSimCards()V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/SimDBProxy;->hasAnySimcard()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    const-string v8, "PhoneRestrictionPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unlockAllSimCards Got iccId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " for subscriptionId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v8

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getPinCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {p0, v9, v7}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->supplyPinReportResultForSubscriber(Ljava/lang/String;I)Z

    :cond_2
    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_2
    goto :goto_0

    :cond_5
    const-string v3, "PhoneRestrictionPolicy"

    const-string/jumbo v4, "unlockAllSimCards subInfoList list is null"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getKeyguardManager()Landroid/app/KeyguardManager;

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateDataSimSlotValueSystemUI(IZ)Z
    .locals 12

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ne v4, p1, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    if-nez p2, :cond_3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->semGetWifiApState()I

    move-result v10

    move v7, v10

    const/16 v10, 0xd

    if-eq v7, v10, :cond_1

    const/16 v10, 0xc

    if-ne v7, v10, :cond_3

    :cond_1
    invoke-virtual {v9, v8, p2}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0

    :cond_2
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Mobile Hotspot cannot be disabled"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    goto :goto_3

    :catch_0
    move-exception v7

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object v7

    invoke-virtual {v7, v3, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setCellularDataAllowedAsUser(IZ)V

    invoke-virtual {v7, v3, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiTetheringAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    nop

    :try_start_1
    const-string v8, "PhoneRestrictionPolicy"

    const-string/jumbo v9, "updateDataSimSlotValueSystemUI failed "

    invoke-static {v8, v9, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_4
    :goto_4
    return v0
.end method

.method private updateDateAndCounters()V
    .locals 11

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.updateDateAndCounters()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "dateDay"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "dateWeek"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "dateMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "dateDay"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "incomingCallCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "outgoingCallCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v8, v9, :cond_0

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_1

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "dateWeek"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "incomingCallCountWeek"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "outgoingCallCountWeek"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_3

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "dateMonth"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "incomingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "outgoingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    const-string v1, "PhoneRestrictionPolicy"

    const-string v7, "PhoneRestrictionPolicy.updateDateAndCounters() >>>"

    invoke-static {v1, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateDateAndCountersSms()V
    .locals 11

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> SmsRestrictionPolicy.updateDateAndCountersSms()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "smsDateDay"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "smsDateWeek"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "smsDateMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-string v7, "PhoneRestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "smsDateDay"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "incomingSmsCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "outgoingSmsCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v8, v9, :cond_0

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_1

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "smsDateWeek"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "incomingSmsCountWeek"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "outgoingSmsCountWeek"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_3

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "smsDateMonth"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "incomingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    const-string v1, "PhoneRestrictionPolicy"

    const-string v7, "SmsRestrictionPolicy.updateDateAndCountersSms() >>>"

    invoke-static {v1, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateSystemUIMonitor(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    return-void
.end method

.method private validatePinCode(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public addIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addIncomingCallExceptionPattern()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public addIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addIncomingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public addIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addIncomingSmsExceptionPattern()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public addIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public addNumberOfIncomingCalls()Z
    .locals 10

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addNumberOfIncomingCalls()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "incomingCallCountDay"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingCallCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingCallCountMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v7

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfIncomingCalls - exception"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "incomingCallCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    add-int/lit8 v2, v2, 0x1

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "incomingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v0, v7

    add-int/lit8 v3, v3, 0x1

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "incomingCallCountMonth"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v0, v7

    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, "PhoneRestrictionPolicy.addNumberOfIncomingCalls() >>>"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public addNumberOfIncomingSms()Z
    .locals 7

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> SMSRestrictionPolicy.addNumberOfIncomingSMS()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "incomingSmsCountDay"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "incomingSmsCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "incomingSmsCountWeek"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "incomingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "incomingSmsCountMonth"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "incomingSmsCountMonth"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v0, v4

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "SMSRestrictionPolicy.addNumberOfIncomingSMS() >>>"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 10

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addNumberOfOutgoingCalls()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "outgoingCallCountDay"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingCallCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingCallCountMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v7

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfOutgoingCalls - exception"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "outgoingCallCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    add-int/lit8 v2, v2, 0x1

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "outgoingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v0, v7

    add-int/lit8 v3, v3, 0x1

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "outgoingCallCountMonth"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v0, v7

    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, "PhoneRestrictionPolicy.addNumberOfOutgoingCalls >>>"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 7

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> SmsRestrictionPolicy.addNumberOfOutgoingSms()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "outgoingSmsCountDay"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingSmsCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingSmsCountWeek"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "outgoingSmsCountMonth"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "outgoingSmsCountMonth"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v0, v4

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public addOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addOutgoingCallExceptionPattern()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public addOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addOutgoingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public addOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addOutgoingSmsExceptionPattern()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public addOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public allowCallerIDDisplay(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "PHONERESTRICTION"

    const-string v4, "allowCallerID"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PhoneRestrictionPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public allowCopyContactToSim(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "copyContactToSimEnabled"

    invoke-virtual {v4, v1, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4
.end method

.method public allowDataNetworkFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, -0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDataSimSlotValueSystemUI(IZ)Z

    :cond_0
    return v0
.end method

.method public allowIncomingCallFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I

    move-result v0

    return v0
.end method

.method public allowIncomingMms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowIncomingMms"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowIncomingSms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowIncomingSms"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowIncomingSmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I

    move-result v0

    return v0
.end method

.method public allowMmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I

    move-result v0

    return v0
.end method

.method public allowOutgoingCallFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I

    move-result v0

    return v0
.end method

.method public allowOutgoingMms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowOutgoingMms"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowOutgoingSms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowOutgoingSms"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowOutgoingSmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I

    move-result v0

    return v0
.end method

.method public allowWapPush(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "wapPushEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blockMmsWithStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string v3, "blockMmsWithStorage"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return v0
.end method

.method public blockSmsWithStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string v3, "blockSmsWithStorage"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return v0
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 13

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const-string/jumbo v0, "incomingPattern"

    const-string/jumbo v3, "incomingCallExceptionPattern"

    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCounters()V

    invoke-virtual {p0, v4, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lt v8, v7, :cond_3

    if-ge v7, v1, :cond_6

    :cond_3
    invoke-virtual {p0, v4, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "incomingCallCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lt v10, v9, :cond_4

    if-ge v9, v1, :cond_6

    :cond_4
    const/4 v11, 0x2

    invoke-virtual {p0, v4, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v4

    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "incomingCallCountMonth"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v11, v4, :cond_5

    if-ge v4, v1, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_7
    const/4 v3, 0x1

    :goto_0
    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    move v1, v2

    :goto_1
    const-string v2, "PhoneRestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneRestrictionPolicy.canIncomingCall >>>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 14

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "smsRestrictionIncomingPattern"

    const-string/jumbo v2, "incomingSmsExceptionPattern"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    const-string v4, "PhoneRestrictionPolicy"

    const-string v8, "Limit of sms is enabled!!!"

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    invoke-virtual {p0, v3, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v4

    const-string v8, "PhoneRestrictionPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canIncomingSms - limitDay = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingSmsCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "PhoneRestrictionPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "canIncomingSms - countDay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v8, v4, :cond_1

    if-ge v4, v0, :cond_4

    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "incomingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lt v10, v9, :cond_2

    if-ge v9, v0, :cond_4

    :cond_2
    const/4 v11, 0x2

    invoke-virtual {p0, v3, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v3

    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "incomingSmsCountMonth"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-lt v11, v3, :cond_3

    if-ge v3, v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    const-string v12, "PhoneRestrictionPolicy"

    const-string v13, "canIncomingSms - limit = true"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_5
    const/4 v2, 0x1

    :goto_0
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    move v0, v5

    :goto_1
    return v0
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 13

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string/jumbo v1, "outgoingPattern"

    const-string/jumbo v2, "outgoingCallExceptionPattern"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCounters()V

    invoke-virtual {p0, v3, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v4

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lt v8, v4, :cond_2

    if-ge v4, v0, :cond_5

    :cond_2
    invoke-virtual {p0, v3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "outgoingCallCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lt v10, v9, :cond_3

    if-ge v9, v0, :cond_5

    :cond_3
    const/4 v11, 0x2

    invoke-virtual {p0, v3, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v3

    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "outgoingCallCountMonth"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v11, v3, :cond_4

    if-ge v3, v0, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_6
    const/4 v2, 0x1

    :goto_0
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move v0, v5

    :goto_1
    const-string v3, "PhoneRestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneRestrictionPolicy.canOutgoingCall >>>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 14

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "smsRestrictionOutgoingPattern"

    const-string/jumbo v2, "outgoingSmsExceptionPattern"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    const-string v4, "PhoneRestrictionPolicy"

    const-string v8, "Limit of sms is enabled!!!"

    invoke-static {v4, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    invoke-virtual {p0, v3, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v4

    const-string v8, "PhoneRestrictionPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canOutgoingSms - limitDay = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingSmsCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "PhoneRestrictionPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "canOutgoingSms - countDay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v8, v4, :cond_1

    if-ge v4, v0, :cond_4

    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "outgoingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lt v10, v9, :cond_2

    if-ge v9, v0, :cond_4

    :cond_2
    const/4 v11, 0x2

    invoke-virtual {p0, v3, v11}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v3

    iget-object v11, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "outgoingSmsCountMonth"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-lt v11, v3, :cond_3

    if-ge v3, v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    const-string v12, "PhoneRestrictionPolicy"

    const-string v13, "canOutgoingSms - limit = true"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_5
    const/4 v2, 0x1

    :goto_0
    const-string v3, "PhoneRestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmsRestrictionPolicy.canOutgoingSms >>>>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " >>> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    move v0, v5

    :goto_1
    return v0
.end method

.method public changeSimPinCode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    const/16 v3, 0x9

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "lockUnlockCorporateSimCard Sim not inserted"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSimSubId(Ljava/lang/String;)I

    move-result v1

    const-string v2, "PhoneRestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lockUnlockCorporateSimCard Sim subscription ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/16 v2, 0xd

    return v2

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLocked(I)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x5

    return v2

    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getAdminBySimcard(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_5

    if-eq v3, v0, :cond_5

    const/16 v2, 0xc

    return v2

    :cond_5
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->changeSimPinCodeService(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    const/4 v4, 0x1

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v5, v0, p2, p4}, Lcom/android/server/enterprise/restriction/SimDBProxy;->addSimcard(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v5, v0, p2, p4}, Lcom/android/server/enterprise/restriction/SimDBProxy;->setPincode(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    :goto_0
    if-nez v4, :cond_7

    const/16 v5, 0xa

    return v5

    :cond_7
    return v2

    :cond_8
    :goto_1
    const/4 v1, 0x2

    return v1
.end method

.method public checkDataCallLimit()Z
    .locals 21

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser()V

    iget-boolean v0, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J

    move-result-wide v6

    const/4 v8, 0x2

    invoke-virtual {v1, v0, v8}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v16, v14

    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "dataCallBytesCountByDay"

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v10, v18

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PhoneRestrictionPolicy"

    const-string v5, "Could not read from Storage"

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "dataCallBytesCountByWeek"

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v12, v18

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "PhoneRestrictionPolicy"

    const-string v5, "Could not read from Storage"

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    iget-object v0, v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "dataCallByteCountByMonth"

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-wide/from16 v16, v18

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "PhoneRestrictionPolicy"

    const-string v5, "Could not read from Storage"

    invoke-static {v2, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    cmp-long v0, v14, v3

    if-gez v0, :cond_1

    cmp-long v0, v10, v3

    if-gtz v0, :cond_3

    :cond_1
    cmp-long v0, v14, v6

    if-gez v0, :cond_2

    cmp-long v0, v12, v6

    if-gtz v0, :cond_3

    :cond_2
    cmp-long v0, v14, v8

    if-gez v0, :cond_4

    cmp-long v0, v16, v8

    if-lez v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    return v2

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const v3, 0x1040259

    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public clearStoredBlockedMms(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v0, "smsMmsType"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SMSMMSBlockedDelivery"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public clearStoredBlockedSms(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v0, "smsMmsType"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SMSMMSBlockedDelivery"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 7

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> SmsRestrictionPolicy.decreaseNumberOfOutgoingSms()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "outgoingSmsCountDay"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingSmsCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingSmsCountWeek"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "outgoingSmsCountMonth"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "outgoingSmsCountMonth"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v0, v4

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    const-string v1, "SimTable"

    const-string v2, "adminUid"

    const-string v3, "SimIccId"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RCSEnabled for sim slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enableLimitNumberOfCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " >>>> enableLimitNumberOfCalls "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    move v0, v6

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    move v0, v6

    :cond_3
    const-string v3, "PhoneRestrictionPolicy"

    const-string/jumbo v4, "enableLimitNumberOfCalls  >>>>>"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "limitCallEnable"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1
.end method

.method public enableLimitNumberOfSms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " >>>> enableLimitNumberOfSMS "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetSmsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    move v0, v6

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    move v0, v6

    :cond_2
    const-string v3, "PhoneRestrictionPolicy"

    const-string/jumbo v4, "enableLimitNumberOfSMS  >>>>>"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "limitSmsEnable"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "enableLimitDataCall"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 3

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getDisclaimerText()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PHONERESTRICTION"

    const-string/jumbo v2, "disclaimerText"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    if-nez p2, :cond_3

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-nez p1, :cond_1

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object p1, v2

    :cond_1
    if-nez v1, :cond_2

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "PHONERESTRICTION"

    const-string/jumbo v5, "emergencyCallOnly"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Operation supported only on owner space"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "emergencyCallOnly"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    return v2

    :cond_4
    goto :goto_0

    :cond_5
    :goto_1
    goto :goto_3

    :goto_2
    nop

    const/4 v0, 0x0

    :goto_3
    const-string v1, "PhoneRestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEmergencyCall >>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getIncomingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v1, "incomingCallExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "incomingPattern"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingSmsExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v1, "incomingSmsExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const-wide/16 v1, -0x1

    return-wide v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByMonth"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-wide/16 v1, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByWeek"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-wide/16 v1, 0x0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByDay"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-wide/16 v1, 0x0

    nop

    :goto_0
    nop

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    cmp-long v8, v4, v1

    if-ltz v8, :cond_0

    cmp-long v6, v1, v6

    if-nez v6, :cond_1

    :cond_0
    move-wide v1, v4

    :cond_1
    goto :goto_1

    :cond_2
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "incomingCallByMonth"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "incomingCallByWeek"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "incomingCallByDay"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    nop

    :goto_0
    nop

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v1, :cond_1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    goto :goto_1

    :cond_3
    return v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 v1, -0x1

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "incomingSmsByMonth"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "incomingSmsByWeek"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "incomingSmsByDay"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    nop

    :goto_0
    nop

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    goto :goto_1

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "outgoingCallByMonth"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "outgoingCallByWeek"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "outgoingCallByDay"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    nop

    :goto_0
    nop

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v1, :cond_1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    goto :goto_1

    :cond_3
    return v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 v1, -0x1

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "outgoingSmsByMonth"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "outgoingSmsByWeek"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "outgoingSmsByDay"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    nop

    :goto_0
    nop

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    goto :goto_1

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOutgoingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v1, "outgoingCallExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "outgoingPattern"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingSmsExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v1, "outgoingSmsExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPinCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.systemui"

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "Unable to resolve SystemUI\'s UID."

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_0
    const-string v2, "android.uid.systemui"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v4, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v6, "Can only be called by System, Phone or System UI"

    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getPincode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getRCSMessage(Lcom/samsung/android/knox/ContextInfo;J)Landroid/os/Bundle;
    .locals 9

    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "getRCS, Start"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    const-string v2, "PhoneRestrictionPolicy"

    const-string/jumbo v3, "getRCS, Start query"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->RCS_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->RCS_PROJ:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "getRCS, collect data"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "remote-uri"

    const-string/jumbo v7, "remote_uri"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "sender-alias"

    const-string/jumbo v7, "sender_alias"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "content-type"

    const-string v7, "content_type"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "body"

    const-string v7, "body"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "direction"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "timestamp"

    const-string/jumbo v7, "inserted_timestamp"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "timestamp"

    const-string/jumbo v7, "sent_timestamp"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    const-string/jumbo v5, "is_filetransfer"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v1, :cond_1

    const-string/jumbo v1, "file-path"

    const-string/jumbo v5, "file_path"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "thumbnail-path"

    const-string/jumbo v5, "thumbnail_path"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v0, v4

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v3, v1

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v1

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    goto :goto_4

    :catch_2
    move-exception v1

    const-string v2, "PhoneRestrictionPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v1, "PhoneRestrictionPolicy"

    const-string/jumbo v2, "getRCS, End"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PHONERESTRICTION"

    const-string v2, "blockMmsWithStorage"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PHONERESTRICTION"

    const-string v2, "blockSmsWithStorage"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "allowCallerID"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "PhoneRestrictionPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v0
.end method

.method public isCopyContactToSimAllowed(I)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "copyContactToSimEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const-string v2, "PhoneRestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCopyContactToSimAllowed wrong message value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Access to PB Edit "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x10402ea

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_2

    :cond_3
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Access to PB ADD "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x1040095

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    nop

    :cond_4
    :goto_2
    return v0
.end method

.method public isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "copyContactToSimEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public isDataAllowedFromSimSlot(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result v0

    return v0
.end method

.method public isIncomingCallAllowedFromSimSlot(I)Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result v0

    return v0
.end method

.method public isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    const-string v0, "allowIncomingMms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    const-string v0, "allowIncomingSms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIncomingSmsAllowedFromSimSlot(I)Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result v0

    return v0
.end method

.method public isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "limitCallEnable"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    return v1
.end method

.method public isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "PHONERESTRICTION"

    const-string/jumbo v2, "limitSmsEnable"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isMmsAllowedFromSimSlot(I)Z
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result v0

    return v0
.end method

.method public isOutgoingCallAllowedFromSimSlot(I)Z
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    const-string v0, "allowOutgoingMms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    const-string v0, "allowOutgoingSms"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingSmsAllowedFromSimSlot(I)Z
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result v0

    return v0
.end method

.method public isRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .locals 1

    const-string/jumbo v0, "enableRCS"

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledInternal(IZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    if-eq p4, v0, :cond_0

    const-string v0, "PhoneRestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRCSEnabledBySimSlot(): failed. invalid simSlotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v1, "enableRCSForSimSlot0"

    if-ne p4, v0, :cond_1

    const-string/jumbo v1, "enableRCSForSimSlot1"

    :cond_1
    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledInternal(IZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/SimDBProxy;->hasAnySimcard()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getPincode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isSubIdLockedByAdmin(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "wapPushEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    const-string v2, "PhoneRestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWapPushAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public declared-synchronized lockUnlockCorporateSimCard(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "PhoneRestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockUnlockCorporateSimCard lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " iccId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    move-object p1, v0

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    const-string v1, "PhoneRestrictionPolicy"

    const-string/jumbo v2, "lockUnlockCorporateSimCard valid pincode"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x9

    if-nez v2, :cond_1

    monitor-exit p0

    return v3

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    move-object p2, v4

    if-nez p2, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    :cond_2
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSimSubId(Ljava/lang/String;)I

    move-result v1

    const-string v2, "PhoneRestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lockUnlockCorporateSimCard Sim subscription ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getAdminBySimcard(Ljava/lang/String;)I

    move-result v3

    const-string v4, "PhoneRestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lockUnlockCorporateSimCard Sim owner "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLocked(I)Z

    move-result v4

    const-string v5, "PhoneRestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lockUnlockCorporateSimCard isSimLocked  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xc

    if-eqz p4, :cond_9

    if-eqz v4, :cond_6

    if-ne v3, v2, :cond_4

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v2

    :cond_4
    if-ne v3, v0, :cond_5

    const/16 v2, 0xb

    :try_start_5
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2

    :cond_5
    if-eq v3, v0, :cond_f

    :try_start_6
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v5

    :cond_6
    if-ne v3, v2, :cond_7

    goto :goto_0

    :cond_7
    if-ne v3, v0, :cond_8

    :try_start_7
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v5, v0, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z

    goto :goto_0

    :cond_8
    if-eq v3, v0, :cond_f

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v5

    :cond_9
    if-eqz v4, :cond_c

    if-ne v3, v2, :cond_a

    goto :goto_0

    :cond_a
    if-ne v3, v0, :cond_b

    goto :goto_0

    :cond_b
    if-eq v3, v0, :cond_f

    :try_start_8
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return v5

    :cond_c
    const/4 v5, 0x5

    :try_start_9
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-ne v3, v2, :cond_d

    monitor-exit p0

    return v5

    :cond_d
    if-ne v3, v0, :cond_e

    :try_start_a
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return v5

    :cond_e
    if-eq v3, v0, :cond_f

    monitor-exit p0

    return v5

    :cond_f
    :goto_0
    :try_start_b
    invoke-direct {p0, v1, p4, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setSubIdLockEnabled(IZLjava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V

    if-nez v5, :cond_13

    const/4 v6, 0x1

    if-eqz p4, :cond_11

    if-ne v3, v2, :cond_10

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->addSimcard(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v6, v2

    goto :goto_1

    :cond_10
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->setPincode(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v6, v2

    goto :goto_1

    :cond_11
    if-eq v3, v2, :cond_12

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z

    move-result v2

    move v6, v2

    :cond_12
    :goto_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    if-nez v6, :cond_13

    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return v7

    :cond_13
    monitor-exit p0

    return v5

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDataLimitState()V

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcardsByAdmin(I)Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateSystemUIMonitor(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifyRcsChangesAllUser()V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public removeIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeIncomingCallExceptionPattern()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeIncomingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeIncomingSmsExceptionPattern()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeOutgoingCallExceptionPattern()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeOutgoingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeOutgoingSmsExceptionPattern()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "incomingCallCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingCallCountDay"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "incomingCallCountWeek"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingCallCountWeek"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "incomingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public resetDataCallLimitCounter(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "dataCallBytesCountByDay"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "dataCallBytesCountByWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "dataCallByteCountByMonth"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public resetSmsCount(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "incomingSmsCountDay"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingSmsCountDay"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "incomingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "incomingSmsCountMonth"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingSmsCountMonth"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public setDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetDataCallLimitCounter(Lcom/samsung/android/knox/ContextInfo;)Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "dataCallDateDay"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "dataCallDateWeek"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "dataCallDateMonth"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v0, v4

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "PHONERESTRICTION"

    const-string/jumbo v4, "enableLimitDataCall"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getDeviceInventory()Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->dataUsageTimerActivation()V

    :cond_2
    return v0
.end method

.method public setDisclaimerText(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setDisclaimerText()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_0

    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, ">>> PhoneRestrictionPolicy.setDisclaimerText() was failed - text is over 30 char"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string/jumbo v4, "disclaimerText"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "disclaimerText"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v3, "PhoneRestrictionPolicy"

    const-string v4, ">>> PhoneRestrictionPolicy.setDisclaimerText() was failed - other admin already set text"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v4, "PHONERESTRICTION"

    const-string/jumbo v5, "disclaimerText"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public setEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "emergencyCallOnly"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setIncomingCallExceptionPattern()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "incomingCallExceptionPattern"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setIncomingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "incomingPattern"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "incomingSmsExceptionPattern"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "smsRestrictionIncomingPattern"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;JJJ)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, p4, v0

    if-ltz v2, :cond_1

    cmp-long v0, p6, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByDay"

    move v1, v6

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v7

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByWeek"

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v7, v0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByMonth"

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v0, v7

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;III)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    if-gez p4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string/jumbo v4, "incomingCallByDay"

    invoke-virtual {v1, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    move v1, v4

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    nop

    :goto_1
    return v2

    :cond_4
    :goto_2
    return v2
.end method

.method public setLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;III)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    if-gez p4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string/jumbo v4, "incomingSmsByDay"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    move v2, v4

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    nop

    :goto_1
    return v1

    :cond_3
    :goto_2
    return v1
.end method

.method public setLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;III)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    if-gez p4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string/jumbo v4, "outgoingCallByDay"

    invoke-virtual {v1, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    move v1, v4

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    nop

    :goto_1
    return v2

    :cond_4
    :goto_2
    return v2
.end method

.method public setLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;III)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v1, 0x0

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    if-gez p4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string/jumbo v4, "outgoingSmsByDay"

    invoke-virtual {v2, v0, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    move v2, v4

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    nop

    :goto_1
    return v1

    :cond_3
    :goto_2
    return v1
.end method

.method public setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setOutgoingCallExceptionPattern()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "outgoingCallExceptionPattern"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setOutgoingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "outgoingPattern"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "outgoingSmsExceptionPattern"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "smsRestrictionOutgoingPattern"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string/jumbo v0, "enableRCS"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setRCSEnabledInternal(Lcom/samsung/android/knox/ContextInfo;IZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    if-eq p4, v0, :cond_0

    const-string v0, "PhoneRestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRCSEnabledBySimSlot(): failed. invalid simSlotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const-string/jumbo v1, "enableRCSForSimSlot0"

    if-ne p4, v0, :cond_1

    const-string/jumbo v1, "enableRCSForSimSlot1"

    :cond_1
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setRCSEnabledInternal(Lcom/samsung/android/knox/ContextInfo;IZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "SMSMMSBlockedDelivery"

    const-string/jumbo v3, "smsMmsPdu"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "smsMmsSendType"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "smsMmsType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "smsMmsOrigAddress"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v3, "smsMmsTimeStamp"

    invoke-virtual {v1, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    const-string v3, "PhoneRestrictionPolicy"

    const-string/jumbo v4, "sms/mms stored successfully"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "could not write sms/mms into edm database"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public supplyPinReportResultForSubscriber(Ljava/lang/String;I)Z
    .locals 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "supplyPinReportResultForSubscriber start"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "supplyPinReportResultForSubscriber call"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/restriction/ISimPinPolicy;->supplyPinReportResultForSubscriber(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "supplyPinReportResultForSubscriber schedule"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public updateDataLimitState()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    return-void
.end method

.method public updateDateAndDataCallCounters(J)V
    .locals 11

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser()V

    iget-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "dataCallDateDay"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "dataCallDateWeek"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    :try_start_2
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "dataCallDateMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    :goto_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "dataCallDateDay"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "dataCallBytesCountByDay"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v8, v9, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_2

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "dataCallDateWeek"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "dataCallBytesCountByWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_4

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "dataCallDateMonth"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "dataCallByteCountByMonth"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    const-wide/16 v7, 0x0

    cmp-long v2, v7, p1

    if-gez v2, :cond_5

    const-string v2, "dataCallBytesCountByDay"

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    const-string v2, "dataCallBytesCountByWeek"

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    const-string v2, "dataCallByteCountByMonth"

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->blockDataNetwork()Z

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    :goto_3
    return-void
.end method
