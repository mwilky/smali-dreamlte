.class public Lcom/android/server/GmsAlarmManager;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GmsAlarmManager$NetWorkStats;,
        Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;,
        Lcom/android/server/GmsAlarmManager$GmsHandler;,
        Lcom/android/server/GmsAlarmManager$SCPMReceiver;,
        Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;,
        Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;,
        Lcom/android/server/GmsAlarmManager$ScreenReceiver;,
        Lcom/android/server/GmsAlarmManager$NetworkReceiver;,
        Lcom/android/server/GmsAlarmManager$BatteryCharingReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ALARM_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_check_gms_network"

.field private static final ACTION_ALARM_INSERT_LOG_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.action_insert_log"

.field public static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "sec.app.policy.UPDATE.gmsnet"

.field private static final ACTION_SETUPWIZARD_COMPLETE_BROADCAST:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field private static final ALARM_RESTRICTION_ENABLE:I = 0x1

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CHECKINSERVER_URL:Ljava/lang/String; = "checkin.gstatic.com"

.field private static final CHINA_MODE:Ljava/lang/String; = "CHINA"

.field private static final CONFIGUPDATER_PKG:Ljava/lang/String; = "com.google.android.configupdater"

.field private static final DATA1:Ljava/lang/String; = "data1"

.field static DEBUG_SCPM:Z = false

.field public static final GMSALARMMANAGERLOGGING_APP_ID:Ljava/lang/String; = "com.android.server.gmsalarmmanager"

.field public static final GMSALARMMANAGERLOGGING_FEATURE_GNET:Ljava/lang/String; = "GNET"

.field private static final GMS_PKG:Ljava/lang/String; = "com.google.android.gms"

.field private static final GNET_ALARM_RESTRICTION_ITEM:Ljava/lang/String; = "alarm_restriction"

.field private static final GNET_CHECKIN_ITEM:Ljava/lang/String; = "checkin_addr"

.field private static final GNET_NETWORK_RESTRICTION_ITEM:Ljava/lang/String; = "network_restriction"

.field private static final GNET_SWITCH_CATEGORY:Ljava/lang/String; = "switch"

.field private static final GNET_WAKELOCK_RESTRICTION_ITEM:Ljava/lang/String; = "wakelock_restriction"

.field private static final GNET_WHITELIST_CATEGORY:Ljava/lang/String; = "whitelist"

.field private static final HONG_KONG_MODE:Ljava/lang/String; = "HONG KONG"

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final MASK:I = 0x7

.field private static final MSG_CHECK_MULTIUSERID:I = 0xa

.field private static final MSG_CHECK_NETWORK:I = 0x1

.field private static final MSG_CHECK_SPCM_PARAMETERES:I = 0x7

.field private static final MSG_DISABLE_GMS_NETWORK:I = 0x2

.field private static final MSG_DISABLE_GMS_NETWORK_BY_UNCHARGING:I = 0x5

.field private static final MSG_ENABLE_GMS_NETWORK:I = 0x3

.field private static final MSG_ENABLE_GMS_NETWORK_BY_CHARGING:I = 0x4

.field private static final MSG_FORCE_RESET_GMS_NETWORK:I = 0xc

.field private static final MSG_INSERT_LOG:I = 0x6

.field private static final MSG_SETTINGS_CHANGE:I = 0xb

.field private static final MSG_USER_ADDED:I = 0x9

.field private static final MSG_USER_REMOVED:I = 0x8

.field private static final NETWORK_RESTRICTION_ENABLE:I = 0x2

.field private static final PLAY_STORE_PKG:Ljava/lang/String; = "com.android.vending"

.field private static final POLICY_ENABLE:Ljava/lang/String; = "true"

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "gmsnet"

.field private static final SCREEN_ON_ALARM_DELAY:J = 0x36ee80L

.field private static final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "GmsAlarmManager"

.field private static final TIME_DELAY:J = 0x2710L

.field private static final TIME_DELAY_AFTER_SETUPWIZARD_COMPLETE:J = 0x3e8L

.field private static final TIME_DELAY_INSERT_LOG:J = 0x5265c00L

.field private static final TIME_OUT_DELAY:J = 0x1d4c0L

.field private static final WAKELOCK_RESTRICTION_ENABLE:I = 0x4

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field static sb:Ljava/lang/StringBuilder;


# instance fields
.field public final SCPM_URI_GNET:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field private avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

.field private cm:Landroid/net/ConnectivityManager;

.field deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

.field private isCharging:Z

.field private isChinaMode:Z

.field private isGmsNetWorkLimt:Z

.field private isHongKongMode:Z

.field private isSetupWizardCompleteOrBootComplete:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmService:Lcom/android/server/AlarmManagerService;

.field private mBatteryCharingReceiver:Lcom/android/server/GmsAlarmManager$BatteryCharingReceiver;

.field private mBigdataEnable:Z

.field mCheckinServerUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigupdaterUid:I

.field private mContext:Landroid/content/Context;

.field private mCurrentIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGmsPkgAppid:I

.field private mGmsPkgUid:I

.field private mGmsUidOfMultiUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGoogleNetWork:Z

.field private mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

.field private mInsertLogIntent:Landroid/content/Intent;

.field private mInsertLogPendingIntent:Landroid/app/PendingIntent;

.field private mIntent:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkReceiver:Lcom/android/server/GmsAlarmManager$NetworkReceiver;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mObserver:Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPolicyControlSwitch:I

.field private mSCPMReceiver:Lcom/android/server/GmsAlarmManager$SCPMReceiver;

.field private mScreenOffChange:Z

.field private mScreenOn:Z

.field private mScreenReceiver:Lcom/android/server/GmsAlarmManager$ScreenReceiver;

.field private mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

.field private mTimeoutcount:I

.field private mUserAddRemoveReceiver:Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;

.field private mUserEnable:Z

.field private mVendingUid:I

.field private mWaitCheckNetWork:Z

.field private noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

.field private vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.sm/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/GmsAlarmManager;->DEBUG_SCPM:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    iput v0, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    iput v0, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    iput v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgAppid:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    iput v1, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogIntent:Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mBigdataEnable:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    const-string v0, "content://com.samsung.android.sm.policy/policy_item/gmsnet"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    new-instance v0, Lcom/android/server/GmsAlarmManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/GmsAlarmManager$1;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isChn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isHongkong()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    :try_start_0
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    const-string v2, "com.google.android.configupdater"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgAppid:I

    const-string v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMS_PACKAGE_UID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$GmsHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/GmsAlarmManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->cancelAlarm()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/GmsAlarmManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/GmsAlarmManager;->sendCheckNetWorkDelay(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/GmsAlarmManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isChnSimOrNoSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->checkActiveNet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/GmsAlarmManager;->checkGoogleNetwork(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/GmsAlarmManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/GmsAlarmManager;->sendInsertLogDelay(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isChnSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/GmsAlarmManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/GmsAlarmManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/GmsAlarmManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/GmsAlarmManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/GmsAlarmManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/GmsAlarmManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/GmsAlarmManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/GmsAlarmManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/GmsAlarmManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->setGmsNetWorkAllow(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/GmsAlarmManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->setWakeLockBlackListEnableDisable(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/GmsAlarmManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->restoreGcmAlarm()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/GmsAlarmManager;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/GmsAlarmManager;->bigData(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/GmsAlarmManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/GmsAlarmManager;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/GmsAlarmManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->updateSCPMParametersFromDB()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/GmsAlarmManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->enableMultiUserGmsRestriction(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/GmsAlarmManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->disableMultiUserGmsRestriction(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/GmsAlarmManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->checkOnceMultiUserid()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/GmsAlarmManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->setGmsNetWorkForceReset()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/GmsAlarmManager;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/GmsAlarmManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->forceWakeLockBlackListReset()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/GmsAlarmManager;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/GmsAlarmManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getSettingsValueFromDB()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/GmsAlarmManager;)Lcom/android/server/GmsAlarmManager$NetWorkStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/GmsAlarmManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/GmsAlarmManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/GmsAlarmManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/GmsAlarmManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/GmsAlarmManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    return p1
.end method

.method private bigData(J)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"GMST\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->access$4300(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"GMSC\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->access$4400(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"NGMST\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->access$4300(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"NGMSC\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->access$4400(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"VPNT\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->access$4300(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"VPNC\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-static {v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->access$4400(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cancelAlarm()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private checkActiveNet()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "networkInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkGoogleNetwork(Ljava/lang/String;I)Z
    .locals 8

    const-string v0, "GmsAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGoogleNetwork :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v0, v4

    const/16 v4, 0xbb8

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v4, "HEAD"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const-string v5, "GmsAlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkGoogleNetwork :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x9d0b

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(II)I

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p2, :cond_1

    nop

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return v1

    :cond_1
    if-eqz v0, :cond_4

    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isVPNConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    const-string v4, "GmsAlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkGoogleNetwork timeout count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mTimeoutcount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return v2

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v1
.end method

.method private checkOnceMultiUserid()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const-string v5, "GmsAlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    if-eqz v4, :cond_0

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const/16 v6, 0x9

    iput v6, v5, Landroid/os/Message;->what:I

    iput v4, v5, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    invoke-virtual {v6, v5}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private disableMultiUserGmsRestriction(I)V
    .locals 6

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "disableMultiUserGmsRestriction "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->updateMultiUserGmsUid(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "GmsAlarmManager"

    const-string/jumbo v3, "failed to get NetworkManagementService instance"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "GmsAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "GmsAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    nop

    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method private dumpNetStats(J)Ljava/lang/String;
    .locals 3

    const-string v0, "Since last 24 hours\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Total time and # of event Google access is available   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Total time and # of event Google access is not possible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Total time and # of event VPN is connected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->dump(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private enableMultiUserGmsRestriction(I)V
    .locals 6

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "enableMultiUserGmsRestriction "

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->updateMultiUserGmsUid(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "GmsAlarmManager"

    const-string/jumbo v2, "failed to get NetworkManagementService instance"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "GmsAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "GmsAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    nop

    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method private forceWakeLockBlackListReset()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgAppid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    :cond_0
    return-void
.end method

.method private getDeviceIdleService()Lcom/android/server/DeviceIdleController$LocalService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    return-object v0
.end method

.method private getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method private getSCPMPolicyItemFromDB()V
    .locals 12

    const/4 v0, 0x0

    const-string/jumbo v1, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const-string v2, "GmsAlarmManager"

    const-string/jumbo v3, "getSCPMPolicyItemFromDB!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "GmsAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with contentResolver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_c

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "checkin_addr"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "whitelist"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v1, v8

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/android/server/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v2, :cond_a

    const-string v2, "GmsAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSCPMPolicyItemFromDB category = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ,scpm url: data1 = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    const-string/jumbo v9, "switch"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    sget-boolean v9, Lcom/android/server/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v9, :cond_2

    const-string v9, "GmsAlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " item = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " switch category = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ,scpm url: data1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v9, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0xe15f73b

    if-eq v10, v11, :cond_5

    const v11, 0x3cdd985c

    if-eq v10, v11, :cond_4

    const v11, 0x6677fade

    if-eq v10, v11, :cond_3

    goto :goto_2

    :cond_3
    const-string v10, "alarm_restriction"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_3

    :cond_4
    const-string/jumbo v2, "wakelock_restriction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v7

    goto :goto_3

    :cond_5
    const-string/jumbo v2, "network_restriction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_3

    :cond_6
    :goto_2
    move v2, v9

    :goto_3
    packed-switch v2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const-string/jumbo v2, "true"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    goto :goto_4

    :cond_7
    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    goto :goto_4

    :pswitch_1
    const-string/jumbo v2, "true"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/2addr v2, v7

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    goto :goto_4

    :cond_8
    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    goto :goto_4

    :pswitch_2
    const-string/jumbo v2, "true"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    goto :goto_4

    :cond_9
    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    nop

    :cond_a
    :goto_4
    goto/16 :goto_1

    :cond_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :cond_c
    const-string v2, "GmsAlarmManager"

    const-string/jumbo v3, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSettingsValueFromDB()V
    .locals 10

    const-string/jumbo v0, "key"

    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo v3, "key"

    const-string/jumbo v6, "value"

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "GmsAlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with contentResolver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_3

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :try_start_1
    const-string/jumbo v5, "spcm_switch"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    move v3, v5

    nop

    :cond_0
    const-string v5, "GmsAlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get from smartmanager DB, spcm_switch : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    if-eq v5, v3, :cond_1

    iput-boolean v3, p0, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_2

    :catch_1
    move-exception v3

    const-string v5, "GmsAlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with parseInt : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_1

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method private hasValidItemFromDB()Z
    .locals 10

    const/4 v0, 0x0

    const-string/jumbo v1, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "GmsAlarmManager"

    const-string/jumbo v4, "hasValidItemFromDB!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->SCPM_URI_GNET:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "GmsAlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with contentResolver : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_3

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "checkin_addr"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "whitelist"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    iget-object v7, p0, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_3
    const-string v3, "GmsAlarmManager"

    const-string/jumbo v4, "hasValidItemFromDB error, no database!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v2
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mBigdataEnable:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "feature"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string/jumbo v1, "extra"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    const-string v0, "GmsAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", feature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isChn()Z
    .locals 2

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHINA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isChnSim()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GmsAlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIccid ---- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    return v1

    :cond_0
    const-string v3, "8986"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "8985"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v1
.end method

.method private isChnSimOrNoSim()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIccid ---- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v3, "8986"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "8985"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private isGmsDelay12HourAlarm(Landroid/app/PendingIntent;)Z
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "com.google.android.gms.gcm."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.google.android.intent.action.GCM_RECONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isGmsDelay6HourAlarm(Landroid/app/PendingIntent;)Z
    .locals 6

    if-eqz p1, :cond_4

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v4, "CONTEXT_MANAGER_ALARM_WAKEUP_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.google.android.gms.common.receiver.LOG_CORE_ANALYTICS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.google.android.gms.matchstick.register_intent_action"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.google.android.gms.reminders.notification.ACTION_REFRESH_TIME_REMINDERS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.google.android.intent.action.SEND_IDLE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    return v3

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.gms.checkin.EventLogServiceReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v3

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private isHongkong()Z
    .locals 2

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HONG KONG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isNeedUpdateSCPMPolicy()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/server/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v2, :cond_0

    const-string v2, "GmsAlarmManager"

    const-string/jumbo v3, "isNeedUpdateSCPMPolicy"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "GmsAlarmManager"

    const-string/jumbo v4, "policy list is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "policyName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "policyVersion"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "gmsnet"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "GmsAlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , policyVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v1
.end method

.method private isSCPMAvailable()Z
    .locals 3

    sget-boolean v0, Lcom/android/server/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v0, :cond_0

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "isSCPMAvailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method

.method private isVPNConnected()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isWifiConnected()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private restoreGcmAlarm()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmService:Lcom/android/server/AlarmManagerService;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.intent.action.GCM_RECONNECT"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->getAlarm(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    const-wide/16 v7, 0x2710

    if-gt v5, v6, :cond_1

    add-long v5, v3, v7

    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    goto :goto_0

    :cond_1
    add-long v5, v1, v7

    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :goto_0
    add-long/2addr v7, v1

    iput-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    const-string v5, "GmsAlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreGcmAlarm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/GmsAlarmManager;->mAlarmService:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/AlarmManagerService;->addAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V

    return-void
.end method

.method private sendCheckNetWorkDelay(J)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    :cond_1
    return-void
.end method

.method private sendInsertLogDelay(J)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method private setGMSLocationProviderChangeReceiverState(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.location.network.LocationProviderChangeReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string v2, "GmsAlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setGMSLocationProviderChangeReceiverState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setGmsDozeWhiteList(Z)V
    .locals 3

    const-string v0, "GmsAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGmsDozeWhiteList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getDeviceIdleService()Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "failed to get deviceIdleService instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$LocalService;->removeSystemPowerSaveWhiteList(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$LocalService;->addSystemPowerSaveWhiteList(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method private setGmsMultiUserWorkAllow(Z)V
    .locals 4

    const-string v0, "GmsAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGmsMultiUserWorkAllow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "failed to get NetworkManagementService instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    nop

    :goto_1
    return-void
.end method

.method private setGmsNetWorkAllow(Z)V
    .locals 4

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GmsAlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGmsNetworkAllow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "failed to get NetworkManagementService instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->setGmsMultiUserWorkAllow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private setGmsNetWorkForceReset()V
    .locals 4

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "setGmsNetWorkForceReset"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "failed to get NetworkManagementService instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v1, v2, v0}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v1, v2, v0}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v1, v2, v0}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v2, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-interface {v1, v2, v0}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    invoke-direct {p0, v0}, Lcom/android/server/GmsAlarmManager;->setGmsMultiUserWorkAllow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private setWakeLockBlackListEnableDisable(Z)V
    .locals 2

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgAppid:I

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManagerInternal;->setWakeLockBlackListEnableDisable(IZ)V

    :cond_1
    return-void
.end method

.method private updateMultiUserGmsUid(I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const-string v5, "GmsAlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get Multi userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    if-le p1, v5, :cond_0

    :try_start_0
    const-string v5, "com.google.android.gms"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v5

    move v2, v5

    const-string v5, "com.android.vending"

    invoke-virtual {v0, v5, v6, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v5

    move v3, v5

    const-string v5, "com.google.android.configupdater"

    invoke-virtual {v0, v5, v6, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v5

    move v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "GmsAlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "gmsuid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " vendinguid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " configupdate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "GmsAlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NameNotFoundException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method private updateSCPMParametersFromDB()V
    .locals 2

    sget-boolean v0, Lcom/android/server/GmsAlarmManager;->DEBUG_SCPM:Z

    if-eqz v0, :cond_0

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "updateSCPMParametersFromDB"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getSCPMPolicyItemFromDB()V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/GmsAlarmManager$GmsHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "scpm doesn\'t find the Policy name for gmsnet"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public doDump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "  <GmsAlarmManager>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isChinaMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isHongKongMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGmsPkgUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVendingUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mVendingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConfigupdaterUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mConfigupdaterUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsUidOfMultiUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiUidList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWaitCheckNetWork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGoogleNetWork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isGmsNetWorkLimt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenOffChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mScreenOffChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceIdle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCharging:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPolicyControlSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/GmsAlarmManager;->dumpNetStats(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCheckinServerUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public init(Lcom/android/server/AlarmManagerService;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GmsAlarmManager"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/server/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/GmsAlarmManager$GmsHandler;

    sget-object v1, Lcom/android/server/GmsAlarmManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/GmsAlarmManager$GmsHandler;-><init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    :cond_1
    iput-object p1, p0, Lcom/android/server/GmsAlarmManager;->mAlarmService:Lcom/android/server/AlarmManagerService;

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCheckinServerUrl:Ljava/util/ArrayList;

    const-string v2, "checkin.gstatic.com"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/GmsAlarmManager$NetworkReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/GmsAlarmManager$NetworkReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkReceiver:Lcom/android/server/GmsAlarmManager$NetworkReceiver;

    new-instance v0, Lcom/android/server/GmsAlarmManager$ScreenReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/GmsAlarmManager$ScreenReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mScreenReceiver:Lcom/android/server/GmsAlarmManager$ScreenReceiver;

    new-instance v0, Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mUserAddRemoveReceiver:Lcom/android/server/GmsAlarmManager$UserAddRemoveReceiver;

    new-instance v0, Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mSetupWizardCompleteOrBootCompleteReceiver:Lcom/android/server/GmsAlarmManager$SetupWizardCompleteOrBootCompleteReceiver;

    new-instance v0, Lcom/android/server/GmsAlarmManager$SCPMReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/GmsAlarmManager$SCPMReceiver;-><init>(Lcom/android/server/GmsAlarmManager;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mSCPMReceiver:Lcom/android/server/GmsAlarmManager$SCPMReceiver;

    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->deviceIdleService:Lcom/android/server/DeviceIdleController$LocalService;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.server.action_check_gms_network"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.server.action_insert_log"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mWaitCheckNetWork:Z

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    iput-boolean v1, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.server.action_check_gms_network"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.server.action_insert_log"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogIntent:Landroid/content/Intent;

    invoke-static {v2, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->mInsertLogPendingIntent:Landroid/app/PendingIntent;

    new-instance v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/GmsAlarmManager$1;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->avaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    new-instance v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-direct {v1, v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/GmsAlarmManager$1;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->noAvaStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    new-instance v1, Lcom/android/server/GmsAlarmManager$NetWorkStats;

    invoke-direct {v1, v2}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>(Lcom/android/server/GmsAlarmManager$1;)V

    iput-object v1, p0, Lcom/android/server/GmsAlarmManager;->vpnStats:Lcom/android/server/GmsAlarmManager$NetWorkStats;

    :cond_2
    return-void
.end method

.method public initGmsState()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/GmsAlarmManager;->setGMSLocationProviderChangeReceiverState(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isGmsNetWorkLimt:Z

    :cond_0
    return-void
.end method

.method maxTriggerTime(JJJ)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    sub-long v0, p3, p1

    goto :goto_0

    :cond_0
    move-wide v0, p5

    :goto_0
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p3

    return-wide v2
.end method

.method public parseHostAndSetUrlFirewallRule(Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    move-object v4, v0

    move v0, v3

    :goto_0
    :try_start_1
    array-length v5, v2

    if-ge v0, v5, :cond_0

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    const-string v5, "GmsAlarmManager"

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v0}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    invoke-virtual {p0, v3, v1}, Lcom/android/server/GmsAlarmManager;->setUrlFirewallRule(ZLjava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mCurrentIpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public schedulingGmsAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget v0, v7, Lcom/android/server/GmsAlarmManager;->mPolicyControlSwitch:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v7, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, v7, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_b

    :cond_1
    iget v0, v7, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-eqz v8, :cond_b

    iget-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    iget-boolean v0, v7, Lcom/android/server/GmsAlarmManager;->mUserEnable:Z

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {v7, v0}, Lcom/android/server/GmsAlarmManager;->isGmsDelay12HourAlarm(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    :goto_0
    goto :goto_1

    :cond_3
    iget-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {v7, v0}, Lcom/android/server/GmsAlarmManager;->isGmsDelay6HourAlarm(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    goto :goto_0

    :goto_1
    move v9, v0

    iget-boolean v0, v7, Lcom/android/server/GmsAlarmManager;->mGoogleNetWork:Z

    if-nez v0, :cond_9

    const-string v0, "GmsAlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedulingGmsAlarms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-gt v0, v1, :cond_4

    move-wide v2, v12

    goto :goto_2

    :cond_4
    move-wide v2, v10

    :goto_2
    move-wide v14, v2

    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v2, v14

    int-to-long v4, v9

    const-wide/32 v16, 0x36ee80

    mul-long v4, v4, v16

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    return-void

    :cond_5
    iget v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-gt v0, v1, :cond_6

    int-to-long v0, v9

    mul-long v0, v0, v16

    add-long/2addr v0, v12

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    goto :goto_3

    :cond_6
    int-to-long v0, v9

    mul-long v0, v0, v16

    add-long/2addr v0, v10

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    :goto_3
    int-to-long v0, v9

    mul-long v0, v0, v16

    add-long/2addr v0, v10

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    goto :goto_4

    :cond_7
    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    iget-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v0, v2

    goto :goto_4

    :cond_8
    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object v0, v7

    move-wide v1, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/GmsAlarmManager;->maxTriggerTime(JJJ)J

    move-result-wide v0

    :goto_4
    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    :cond_9
    return-void

    :cond_a
    return-void

    :cond_b
    :goto_5
    return-void
.end method

.method public setUrlFirewallRule(ZLjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "failed to get NetworkManagementService instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v2, v3, v1, p1}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleMobileData(ILjava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager;->mNetworkService:Landroid/os/INetworkManagementService;

    iget v3, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    invoke-interface {v2, v3, v1, p1}, Landroid/os/INetworkManagementService;->setUrlFirewallRuleWifi(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public skipGmsAlarms(Landroid/app/PendingIntent;)Z
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.gms.checkin.CheckinServiceReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public skipGmsAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isChinaMode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isCharging:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/server/GmsAlarmManager;->skipGmsAlarms(Landroid/app/PendingIntent;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateSettings()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager;->mHandler:Lcom/android/server/GmsAlarmManager$GmsHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager;->mObserver:Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;

    iget-object v0, p0, Lcom/android/server/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/GmsAlarmManager;->mObserver:Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager;->getSettingsValueFromDB()V

    :cond_0
    return-void
.end method
