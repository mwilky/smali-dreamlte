.class public Lcom/android/server/am/MARsDBManager;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsDBManager$SmartManagerDefaultWhiteListObserver;,
        Lcom/android/server/am/MARsDBManager$SmartManagerFASObserver;,
        Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;,
        Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;,
        Lcom/android/server/am/MARsDBManager$DBHandler;,
        Lcom/android/server/am/MARsDBManager$DBThread;,
        Lcom/android/server/am/MARsDBManager$FASDBValue;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final ACTION_MATCH_TYPE:Ljava/lang/String; = "matchType"

.field private static final ADJUST_TARGET_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field private static final APP_SIZE_INCREASED:Ljava/lang/String; = "appSizeIncreased"

.field private static final BIGDATA_RESTRICTION:Ljava/lang/String; = "bigdataRestriction"

.field private static final CALLEE:Ljava/lang/String; = "callee"

.field private static final CALLEEPKG:Ljava/lang/String; = "calleepackage"

.field private static final CALLER:Ljava/lang/String; = "caller"

.field private static final CALLERPKG:Ljava/lang/String; = "callerpackage"

.field private static final CONTENT_URI_BATTEY_DELTA:Landroid/net/Uri;

.field private static final CONTENT_URI_EXT_ALL_POWER:Landroid/net/Uri;

.field private static final CONTENT_URI_EXT_POWER:Landroid/net/Uri;

.field private static final CURRENT_IMPORTANT_VALUE:Ljava/lang/String; = "currentImportantValue"

.field private static final DATA_TRAFFIC_AMOUNT:Ljava/lang/String; = "dataTrafficAmount"

.field private static final DISABLETIME:Ljava/lang/String; = "disableTime"

.field private static final DISABLETYPE:Ljava/lang/String; = "disableType"

.field private static final EXTRAS:Ljava/lang/String; = "extras"

.field private static final FIRST_TRIGGER_TIME:Ljava/lang/String; = "firstTriggerTime"

.field private static final IS_ALLOWED:Ljava/lang/String; = "isAllowed"

.field private static final IS_BLOCKED:Ljava/lang/String; = "isblocked"

.field private static final IS_POLICY_ENABLED:Ljava/lang/String; = "isPolicyEnabled"

.field private static final KEY:Ljava/lang/String; = "key"

.field private static final KEY_SMEARED_POWER:Ljava/lang/String; = "smeared_power"

.field private static final KEY_START_TIME:Ljava/lang/String; = "start_time"

.field private static final KILL_TYPE:Ljava/lang/String; = "killType"

.field private static final LEVEL:Ljava/lang/String; = "level"

.field private static final MAIN_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field private static final MARS_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.mars"

.field static final MARS_DB_DELETE_PACKAGES_AS_USER_MSG:I = 0xb

.field static final MARS_DB_DELETE_PACKAGE_MSG:I = 0x9

.field static final MARS_DB_GETPOLICYCONDITION_MSG:I = 0xd

.field static final MARS_DB_INITMANAGEDPACKAGES_MSG:I = 0x1

.field static final MARS_DB_INITSETTING_MSG:I = 0x2

.field static final MARS_DB_INIT_DEFAULT_WHITE_LIST_MSG:I = 0x13

.field static final MARS_DB_INIT_SKT_PACKAGE_MSG:I = 0xc

.field static final MARS_DB_INSERT_PACKAGES_AS_USER_MSG:I = 0xa

.field static final MARS_DB_INSERT_PACKAGE_MSG:I = 0x8

.field static final MARS_DB_SM_CHANGED_MSG:I = 0x7

.field static final MARS_DB_UPDATE_APP_STARTUP_MSG:I = 0xe

.field static final MARS_DB_UPDATE_DATA_CLEARED_MSG:I = 0xf

.field static final MARS_DB_UPDATE_DUAL_APP_LIST_MSG:I = 0x10

.field static final MARS_DB_UPDATE_RESETTIME_MSG:I = 0x3

.field static final MARS_DB_UPDATE_RESETTIME_SPECIFIC_MSG:I = 0x4

.field static final MARS_DB_VERIFY_FORCED_APP_STANDBY_MSG:I = 0x11

.field static final MARS_FREECESS_SSRM_CHANGED_MSG:I = 0x12

.field static final MARS_SMART_MGR_DB_CHANGED:I = 0x5

.field static final MARS_SMART_MGR_SETTINGS_DB_CHANGED:I = 0x6

.field private static final MODE:Ljava/lang/String; = "mode"

.field private static final NEW:Ljava/lang/String; = "new"

.field private static final NOTIFICATION_UPDATED_COUNT:Ljava/lang/String; = "notificationUpdatedCount"

.field private static final PACKAGENAME:Ljava/lang/String; = "package_name"

.field private static final PACKAGETYPE:Ljava/lang/String; = "packageType"

.field private static final PACKAGE_NAME_MATCH_TYPE:Ljava/lang/String; = "matchType"

.field static final PACKAGE_TYPE_3RD_PARTY:I = 0x2

.field static final PACKAGE_TYPE_DEVICE_ADMIN:I = 0x8

.field static final PACKAGE_TYPE_DISABLEABLE:I = 0x20

.field public static final PACKAGE_TYPE_EXCEPTION_AUTORUN_DEFAULT_OFF:I = 0x20000

.field static final PACKAGE_TYPE_HAS_ICON:I = 0x1

.field static final PACKAGE_TYPE_INTENT_RECEIVING:I = 0x10

.field static final PACKAGE_TYPE_REMOVEABLE:I = 0x4

.field static final PACKAGE_TYPE_SSRM_WL_FREECESS:I = 0x200

.field static final PACKAGE_TYPE_SYSTEM:I = 0x40

.field static final PACKAGE_TYPE_UPDATED_SYSTEM:I = 0x80

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.smartmanager.provider"

.field private static final REASON:Ljava/lang/String; = "reason"

.field private static final REPEAT_TRIGGER_TIME:Ljava/lang/String; = "repeatTriggerTime"

.field private static final REQUEST_TIME:Ljava/lang/String; = "requestTime"

.field private static final RESETTIME:Ljava/lang/String; = "resetTime"

.field private static final RESTRICTION:Ljava/lang/String; = "restriction"

.field private static final RESTRICTION_TYPE:Ljava/lang/String; = "restrictionType"

.field static final TAG:Ljava/lang/String; = "MARsDBManager"

.field private static final TARGET_CATEGORY:Ljava/lang/String; = "targetCategory"

.field private static final TARGET_PACKAGE_CONDITION:Ljava/lang/String; = "condition"

.field private static final TARGET_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TARGET_POLICY_NUM:Ljava/lang/String; = "policyNum"

.field private static final TRAFFIC_INTERVAL:Ljava/lang/String; = "trafficInterval"

.field private static final UID:Ljava/lang/String; = "uid"

.field private static final UNUSED_AUTO_FREEZE_TIME:Ljava/lang/String; = "unusedAutoFreezeTime"

.field static final UPDATE_SMDB_COLUMN_DISABLETIME:I = 0x100

.field static final UPDATE_SMDB_COLUMN_DISABLETYPE:I = 0x80

.field static final UPDATE_SMDB_COLUMN_EXTRAS:I = 0x8

.field static final UPDATE_SMDB_COLUMN_FASREASON:I = 0x4

.field static final UPDATE_SMDB_COLUMN_LEVEL:I = 0x40

.field static final UPDATE_SMDB_COLUMN_MODE:I = 0x1

.field static final UPDATE_SMDB_COLUMN_NEW:I = 0x2

.field static final UPDATE_SMDB_COLUMN_PKGTYPE:I = 0x20

.field static final UPDATE_SMDB_COLUMN_RESETTIME:I = 0x10

.field private static final URL:Ljava/lang/String; = "content://com.sec.smartmanager.provider"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final VERSION:Ljava/lang/String; = "version"

.field private static final mCountry:Ljava/lang/String;

.field static final ssrm_path:Ljava/lang/String; = "/data/system/ssrm_local_freecess"


# instance fields
.field private final MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

.field private final MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

.field private final MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

.field private final MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

.field private final MARS_POLICY_DEFINITION:Landroid/net/Uri;

.field private final MARS_SETTINGS_URI:Landroid/net/Uri;

.field MARsDBVersion:Ljava/lang/String;

.field MARsLocalVersion:Ljava/lang/String;

.field private final SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

.field private final SMART_MGR_DEFAULT_WHITE_LIST_URI:Landroid/net/Uri;

.field private final SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

.field private final SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

.field private final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field private final SMART_MGR_VERIFY_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

.field mAppStartUpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDBCreate:Z

.field private mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

.field private mDBUpdated:Z

.field mIsBigDataRestrictionColumnExist:Z

.field private mIsDataClearedColumnExist:Z

.field private final mMARsVersion:Ljava/lang/String;

.field private mOldVersion:Z

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field private mPreviousPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/MARsDBManager$FASDBValue;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisteredSmartManagerDefaultWhiteListObserver:Z

.field private mRegisteredSmartManagerExcludedAppObserver:Z

.field private mRegisteredSmartManagerForcedAppStandbyObserver:Z

.field private mRegisteredSmartManagerSettingsObserver:Z

.field private final mSMVersion:Ljava/lang/String;

.field mSmartManagerDefaultWhiteListObserver:Lcom/android/server/am/MARsDBManager$SmartManagerDefaultWhiteListObserver;

.field mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

.field mSmartManagerFASObserver:Lcom/android/server/am/MARsDBManager$SmartManagerFASObserver;

.field mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

.field mSsrmWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVersionManager:Lcom/android/server/am/MARsVersionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MARsDBManager;->mCountry:Ljava/lang/String;

    const-string v0, "content://com.sec.smartmanager.provider/Battery_delta"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MARsDBManager;->CONTENT_URI_BATTEY_DELTA:Landroid/net/Uri;

    const-string v0, "content://com.sec.smartmanager.provider/batterystat_ext/all_power"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MARsDBManager;->CONTENT_URI_EXT_ALL_POWER:Landroid/net/Uri;

    const-string v0, "content://com.sec.smartmanager.provider/batterystat_ext/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MARsDBManager;->CONTENT_URI_EXT_POWER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsVersionManager;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerExcludedAppObserver:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerDefaultWhiteListObserver:Z

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.sec.android.app.clockpackage"

    const-string v3, "com.ih.app.btsdlsvc"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSsrmWhiteList:Ljava/util/ArrayList;

    const-string v1, "content://com.samsung.android.sm/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const-string v1, "content://com.samsung.android.sm/excluded_app"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    const-string v1, "content://com.samsung.android.sm/DefaultWhiteList"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_DEFAULT_WHITE_LIST_URI:Landroid/net/Uri;

    const-string v1, "content://com.samsung.android.sm.appstart/appstart_record"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    const-string v1, "content://com.samsung.android.sm/ForcedAppStandby"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    const-string v1, "content://com.samsung.android.sm/VerifyForcedAppStandby"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_VERIFY_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    const-string v1, "content://com.samsung.android.sm.mars/MARs_Policy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const-string v1, "content://com.samsung.android.sm.mars/MARs_AutoRunParameter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

    const-string v1, "content://com.samsung.android.sm.mars/MARs_ExcludeTarget"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    const-string v1, "content://com.samsung.android.sm.mars/MARs_IsCurrentImportant"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    const-string v1, "content://com.samsung.android.sm.mars/MARs_AdjustRestriction"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    const-string v1, "content://com.samsung.android.sm.mars/MARs_Settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->MARS_SETTINGS_URI:Landroid/net/Uri;

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mIsDataClearedColumnExist:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    const-string v0, "30801"

    iput-object v0, p0, Lcom/android/server/am/MARsDBManager;->mMARsVersion:Ljava/lang/String;

    const-string v0, "30801"

    iput-object v0, p0, Lcom/android/server/am/MARsDBManager;->mSMVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iput-object p2, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iput-object p3, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/MARsDBManager$DBThread;

    const-string v1, "MARsDBThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsDBManager$DBThread;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager$DBThread;->start()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/am/MARsDBManager;Lcom/android/server/am/MARsDBManager$DBHandler;)Lcom/android/server/am/MARsDBManager$DBHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/MARsDBManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initManagedPackagesInternal()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/MARsDBManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->doDelPkgAsUserToFASDB(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/MARsDBManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getExcludedAppDBValues()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/MARsDBManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->getPolicyDefaultInfoFromSMToMARs(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/MARsDBManager;->updateCompHistory(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/MARsDBManager;->updateDataClearedPackageFromMARsToSM(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/MARsDBManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->doUpdateDualAppToSMDB(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/MARsDBManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->doVerifyForcedAppStandBy()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MARsDBManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->getSettingsValueFromDB(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/MARsDBManager;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsDBManager;->updatePkgsToSMDB(ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$FASDBValue;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/MARsDBManager;->updatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$FASDBValue;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/MARsDBManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MARsDBManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getDefaultWhiteListDBValues()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsDBManager;->doInsertPkg(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsDBManager;->doDeletePkg(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/MARsDBManager;->doInsertPkgAsUserToFASDB(ZLjava/util/ArrayList;ZI)V

    return-void
.end method

.method private checkSmDBVersion()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.mars"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    return-void
.end method

.method private doDelPkgAsUserToFASDB(I)V
    .locals 7

    const-string/jumbo v0, "uid>? AND uid<?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x186a0

    mul-int v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    add-int/lit8 v3, p1, 0x1

    mul-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    move v2, v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "MARsDBManager"

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

    :goto_0
    if-gez v2, :cond_0

    const-string v3, "MARsDBManager"

    const-string/jumbo v4, "doDeletePkg error!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private doDeletePkg(Ljava/lang/String;I)V
    .locals 7

    const-string/jumbo v0, "package_name=? AND uid=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    nop

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "MARsDBManager"

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

    :goto_0
    if-gez v2, :cond_0

    const-string v3, "MARsDBManager"

    const-string/jumbo v4, "doDeletePkg error!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private doInsertPkg(Ljava/lang/String;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, v1, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-wide v6, v0, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    sub-long/2addr v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x100f

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v12, "package_name"

    const-string/jumbo v13, "uid"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v10, "package_name=? AND uid=?"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v0, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v0, v15

    move-object/from16 v18, v0

    move v11, v12

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    iget-object v0, v1, Lcom/android/server/am/MARsDBManager;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    const/16 v19, 0x0

    move v13, v15

    move-object v15, v0

    move-object/from16 v17, v10

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    if-eqz v9, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v14, "MARsDBManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "doInsertPkg "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v14, "MARsDBManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " userId : "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-ne v12, v3, :cond_1

    const-string v13, "MARsDBManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "doInsertPkg "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "(uid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") is already exist in DB!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move v11, v0

    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    if-eqz v11, :cond_3

    return-void

    :cond_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-interface {v0, v2, v8, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_4

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v1, v7}, Lcom/android/server/am/MARsDBManager;->getPackageType(Landroid/content/pm/PackageInfo;)I

    move-result v0

    move v6, v0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "package_name"

    invoke-virtual {v0, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "uid"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "resetTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "packageType"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/am/MARsDBManager;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    const-string v13, "MARsDBManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "doInsertPkg "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " uri = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v12, "MARsDBManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception with contentResolver : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v12, "MARsDBManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error getting package info: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    nop

    :goto_2
    return-void
.end method

.method private doInsertPkgAsUserToFASDB(ZLjava/util/ArrayList;ZI)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsDBManager$FASDBValue;",
            ">;ZI)V"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    const-string v0, "MARsDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doInsertPkgAsUserToSMDB, --- generate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " --onUpgrade = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    move/from16 v4, p3

    :goto_0
    iget-object v0, v1, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v5, 0x100f

    move/from16 v6, p4

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    const/16 v0, 0x64

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    iget-object v13, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v12}, Lcom/android/server/am/MARsDBManager;->getAppUid(Landroid/content/pm/PackageInfo;)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v1, v12}, Lcom/android/server/am/MARsDBManager;->getPackageType(Landroid/content/pm/PackageInfo;)I

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v15, v16

    move-object/from16 v17, v2

    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "packageType"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    if-eq v9, v0, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v11, v4, :cond_4

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v18, v2

    iget-object v2, v1, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/android/server/am/MARsDBManager;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    if-ne v9, v0, :cond_4

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    move v9, v2

    goto :goto_2

    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const-string v2, "MARsDBManager"

    const-string v3, "Unfortunately error !!!! "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v17

    move/from16 v3, p1

    move/from16 v4, p3

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    move-object/from16 v17, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    :goto_3
    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on handling DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method private doUpdateDualAppToSMDB(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x100f

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-direct {p0, v5, p1}, Lcom/android/server/am/MARsDBManager;->doInsertPkg(Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private doUpdatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const-string v0, "MARsDBManager"

    const-string/jumbo v13, "parameter is error!"

    invoke-static {v0, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v13, v0

    if-eqz v2, :cond_2

    const-string/jumbo v0, "package_name"

    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string/jumbo v0, "uid"

    invoke-virtual {v13, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v4, :cond_4

    const-string/jumbo v0, "mode"

    invoke-virtual {v13, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v5, :cond_5

    const-string/jumbo v0, "new"

    invoke-virtual {v13, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v6, :cond_6

    const-string/jumbo v0, "reason"

    invoke-virtual {v13, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v7, :cond_7

    const-string/jumbo v0, "extras"

    invoke-virtual {v13, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v8, :cond_8

    const-string/jumbo v0, "resetTime"

    invoke-virtual {v13, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v9, :cond_9

    const-string/jumbo v0, "packageType"

    invoke-virtual {v13, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v10, :cond_a

    const-string/jumbo v0, "level"

    invoke-virtual {v13, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v11, :cond_b

    const-string/jumbo v0, "disableType"

    invoke-virtual {v13, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v12, :cond_c

    const-string/jumbo v0, "disableTime"

    invoke-virtual {v13, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string/jumbo v14, "package_name=? AND uid=?"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v2, v0, v15

    const/4 v15, 0x1

    aput-object v3, v0, v15

    move-object v15, v0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/MARsDBManager;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "MARs-self"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v13, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception with update() : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private doUpdateUserIdToSMDB(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private doVerifyForcedAppStandBy()V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "temp"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_VERIFY_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with doVerifyForcedAppStandBy() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getAppUid(Landroid/content/pm/PackageInfo;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_0
    return v0
.end method

.method private getDefaultWhiteListDBValues()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "type=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const/4 v8, 0x0

    aput-object v1, v5, v8

    const/4 v1, 0x0

    move-object v9, v1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_DEFAULT_WHITE_LIST_URI:Landroid/net/Uri;

    const-string/jumbo v3, "package_name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with contentResolver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v9, :cond_3

    :cond_1
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->setDefaultWhiteList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getExcludedAppDBValues()V
    .locals 15

    const-string/jumbo v0, "exclude_category"

    const-string/jumbo v1, "exclude_type"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    const/4 v8, 0x3

    new-array v11, v8, [Ljava/lang/String;

    const-string/jumbo v8, "package_name"

    aput-object v8, v11, v7

    aput-object v0, v11, v5

    aput-object v1, v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v9, "MARsDBManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception with contentResolver : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_0
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "2"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "6"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v8, "7"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5, v2}, Lcom/android/server/am/MARsPolicyManager;->setSKTSpeicalPackages(Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5, v3}, Lcom/android/server/am/MARsPolicyManager;->setWhiteListIntentsForSKT(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getManagedPackagesFromDB()Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsDBManager$FASDBValue;",
            ">;"
        }
    .end annotation

    move-object/from16 v14, p0

    const/4 v1, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v0, 0x0

    iget-object v2, v14, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v2, :cond_0

    const-string v2, "MARsDBManager"

    const-string/jumbo v3, "getManagedPackagesFromDB!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v23, "package_name"

    const-string/jumbo v24, "uid"

    const-string/jumbo v25, "mode"

    const-string/jumbo v26, "new"

    const-string/jumbo v27, "reason"

    const-string/jumbo v28, "extras"

    const-string/jumbo v29, "resetTime"

    const-string/jumbo v30, "packageType"

    const-string/jumbo v31, "level"

    const-string/jumbo v32, "disableType"

    const-string/jumbo v33, "disableTime"

    filled-new-array/range {v23 .. v33}, [Ljava/lang/String;

    move-result-object v17

    :try_start_0
    iget-object v0, v14, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    iget-object v0, v14, Lcom/android/server/am/MARsDBManager;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with contentResolver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v15, v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    if-eqz v16, :cond_1

    if-eqz v18, :cond_1

    new-instance v30, Lcom/android/server/am/MARsDBManager$FASDBValue;

    move-object/from16 v1, v30

    move-object v2, v14

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/MARsDBManager$FASDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    nop

    :cond_2
    move-object v1, v15

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v15

    :cond_4
    const-string v1, "MARsDBManager"

    const-string/jumbo v2, "getManagedPackagesFromDB no database!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private getPolicyDefaultInfoFromSMToMARs(Z)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->isCompareDBVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initMARsSettingsDefinitionInternal()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsVersionManager;->setMARsSettingsInfoList(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initPolicyDefinitionInternal()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v3, v2}, Lcom/android/server/am/MARsVersionManager;->setPolicy(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsVersionManager;->getPolicyFromDefaultValue()V

    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initAdjustTargetExcludePackageInternal()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v4, v3}, Lcom/android/server/am/MARsVersionManager;->setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v4}, Lcom/android/server/am/MARsVersionManager;->getExcludeTargetFromDefaultValue()V

    :goto_2
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initAdjustTargetIsCurrentImportantInternal()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v5, v4}, Lcom/android/server/am/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v5}, Lcom/android/server/am/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    :goto_3
    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->initAdjustRestrictionInternal()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6, v5}, Lcom/android/server/am/MARsVersionManager;->setAdjustRestriction(Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_4
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsVersionManager;->getAdjustRestrictionFromDefaultValue()V

    :goto_4
    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsVersionManager;->getMARsSettingsInfoFromDefaultValue()V

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsVersionManager;->getPolicyFromDefaultValue()V

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsVersionManager;->getExcludeTargetFromDefaultValue()V

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsVersionManager;->getIsCurrentImportantFromDefaultValue()V

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsVersionManager;->getAdjustRestrictionFromDefaultValue()V

    :goto_5
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    iget-object v2, v2, Lcom/android/server/am/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsPolicyManager;->setFakeTopActivityList(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->createPolicies()V

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsPolicyManager;->initInternal(Z)V

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->setMARsBigDataSettingsInfo()V

    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->cancelAllPolicy()V

    :cond_6
    return-void
.end method

.method private getSMVersionFromSM()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "version"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSMVersionFromSM: Exception : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    const-string v2, "MARsDBManager"

    const-string/jumbo v3, "getSMVersionFromSM error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method private getSettingsValueFromDB(Z)V
    .locals 12

    const-string/jumbo v0, "key"

    const-string/jumbo v1, "value"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo v5, "key"

    const-string/jumbo v8, "value"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "MARsDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception with contentResolver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v4, :cond_5

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :try_start_1
    const-string/jumbo v7, "spcm_locking_time"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    iget-object v7, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7, v2}, Lcom/android/server/am/MARsPolicyManager;->setPackagesUnusedLockingTime(I)V

    :cond_0
    const-string/jumbo v7, "spcm_switch"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v3, v7

    iget-object v7, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7, v3, p1}, Lcom/android/server/am/MARsPolicyManager;->setAllPoliciesOnOffState(IZ)V

    :cond_1
    const-string/jumbo v7, "disabler_switch"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_2

    move v5, v8

    nop

    :cond_2
    iget-object v7, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7, v5}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    goto :goto_2

    :catch_1
    move-exception v5

    const-string v7, "MARsDBManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception with parseInt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_1

    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method private initAdjustRestrictionInternal()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$AdjustRestriction;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const-string/jumbo v3, "restrictionType"

    const-string/jumbo v4, "isAllowed"

    const-string v5, "callee"

    const-string v6, "caller"

    const-string/jumbo v7, "matchType"

    const-string v8, "action"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initAdjustRestrictionInternal: Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;

    iget-object v13, v1, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v9

    move v14, v0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v12 .. v19}, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;-><init>(Lcom/android/server/am/MARsVersionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    const-string v0, "MARsDBManager"

    const-string/jumbo v4, "initAdjustRestrictionInternal error, no database!!"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v3
.end method

.method private initAdjustTargetExcludePackageInternal()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "policyNum"

    const-string v2, "condition"

    const-string/jumbo v3, "matchType"

    const-string/jumbo v4, "packageName"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initAdjustTargetExcludePackageInternal: Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;

    iget-object v9, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v6

    move v10, v2

    move v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;-><init>(Lcom/android/server/am/MARsVersionManager;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    const-string v2, "MARsDBManager"

    const-string/jumbo v3, "initAdjustTargetExcludePackageInternal error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v1
.end method

.method private initAdjustTargetIsCurrentImportantInternal()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "policyNum"

    const-string v2, "currentImportantValue"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

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

    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initAdjustTargetIsCurrentImportantInternal: Exception : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v6, v2, v3}, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(Lcom/android/server/am/MARsVersionManager;II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    const-string v2, "MARsDBManager"

    const-string/jumbo v3, "initAdjustTargetIsCurrentImportantInternal error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v1
.end method

.method private initMARsSettingsDefinitionInternal()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "key"

    const-string/jumbo v2, "value"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->MARS_SETTINGS_URI:Landroid/net/Uri;

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

    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initMARsSettingsDefinitionInternal : Exception : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v6, v2, v3}, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;-><init>(Lcom/android/server/am/MARsVersionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    const-string v2, "MARsDBManager"

    const-string/jumbo v3, "initMARsSettingsDefinitionInternal error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v1
.end method

.method private initManagedPackagesInternal()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->checkSmDBVersion()V

    const-string v0, "/data/system/ssrm_local_freecess"

    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsDBManager;->readSysfs(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/MARsDBManager;->getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->updatePkgInfoFromSMToMARs(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getManagedFASDBValueList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v1, "MARsDBManager"

    const-string v2, "Packages database not exist, and not created!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/am/MARsDBManager$SmartManagerFASObserver;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsDBManager$SmartManagerFASObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/MARsDBManager$SmartManagerFASObserver;

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/MARsDBManager$SmartManagerFASObserver;

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iput-boolean v5, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    :cond_2
    return-void
.end method

.method private initPolicyDefinitionInternal()Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsVersionManager$PolicyInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsDBManager;->checkBigDataRestrictionColumnExist()V

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-boolean v3, v1, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v3, :cond_0

    const-string/jumbo v4, "policyNum"

    const-string/jumbo v5, "isPolicyEnabled"

    const-string/jumbo v6, "targetCategory"

    const-string/jumbo v7, "restriction"

    const-string/jumbo v8, "killType"

    const-string/jumbo v9, "firstTriggerTime"

    const-string/jumbo v10, "repeatTriggerTime"

    const-string v11, "bigdataRestriction"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "policyNum"

    const-string/jumbo v4, "isPolicyEnabled"

    const-string/jumbo v5, "targetCategory"

    const-string/jumbo v6, "restriction"

    const-string/jumbo v7, "killType"

    const-string/jumbo v8, "firstTriggerTime"

    const-string/jumbo v9, "repeatTriggerTime"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initPolicyDefinitionInternal: Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v2, :cond_4

    :cond_1
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x5

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v11, 0x6

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    iget-object v11, v1, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v11, v0}, Lcom/android/server/am/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v26

    const/4 v11, 0x0

    iget-boolean v12, v1, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v12, :cond_2

    const/4 v12, 0x7

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :cond_2
    move/from16 v27, v11

    new-instance v28, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget-object v12, v1, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v28

    move-object/from16 v13, v26

    move v14, v0

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move-wide/from16 v19, v7

    move-wide/from16 v21, v24

    move/from16 v23, v27

    invoke-direct/range {v11 .. v23}, Lcom/android/server/am/MARsVersionManager$PolicyInfo;-><init>(Lcom/android/server/am/MARsVersionManager;Ljava/lang/String;IIIIIJJI)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_4
    const-string v0, "MARsDBManager"

    const-string/jumbo v3, "initPolicyDefinitionInternal error, no database!!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object v10
.end method

.method private isAutoRunDefaultOffExceptionPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    const-string v4, "com.sec.android.EXCEPTION_AUTORUN_DEFAULT_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    return v0
.end method

.method private isCompareDBVersion()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mVersionManager:Lcom/android/server/am/MARsVersionManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsVersionManager;->getMARsLocalVersionFromDefaultValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/MARsDBManager;->getSMDBVersionFromDB()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "MARsDBManager"

    const-string/jumbo v7, "isCompareDBVersion(), IndexOutOfBoundsException"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "MARsDBManager"

    const-string/jumbo v5, "isCompareDBVersion(), IndexOutOfBoundsException"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->MARsDBVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->MARsLocalVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isDeviceAdminPackages(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x8080

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isDisablePossiblePackage(Landroid/content/pm/PackageInfo;)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->getAppUid(Landroid/content/pm/PackageInfo;)I

    move-result v2

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private isIntentReceivingPackages(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isShowIconPackage(Ljava/lang/String;I)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v2
.end method

.method private isSystemPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 6

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v1, "com.sec.enterprise.knox.express"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "/system/app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "/system/priv-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method private isUsingSMVersion(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "30801"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "MARsDBManager"

    const-string/jumbo v2, "isUsingSMVersion(), MARs db version is same"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "30801"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isUsingSMVersion(), marsImportantFlag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", smImportantFlag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", the value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    return v1

    :cond_1
    return v3
.end method

.method private updateCompHistory(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "calleepackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callerpackage"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "isblocked"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "requestTime"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x63

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsDBManager;->doUpdateCompHistory(Z)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateDataClearedPackageFromMARsToSM(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method private updatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$FASDBValue;)V
    .locals 23

    move/from16 v1, p3

    move-object/from16 v2, p4

    if-eqz p1, :cond_a

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, v2, Lcom/android/server/am/MARsDBManager$FASDBValue;->strMode:Ljava/lang/String;

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/am/MARsDBManager$FASDBValue;->strNew:Ljava/lang/String;

    move-object v3, v4

    :cond_2
    move-object v15, v3

    const/4 v3, 0x0

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/server/am/MARsDBManager$FASDBValue;->strFasReason:Ljava/lang/String;

    move-object v3, v4

    :cond_3
    move-object/from16 v16, v3

    const/4 v3, 0x0

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/server/am/MARsDBManager$FASDBValue;->strExtras:Ljava/lang/String;

    move-object v3, v4

    :cond_4
    move-object/from16 v17, v3

    const/4 v3, 0x0

    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_5

    iget-object v4, v2, Lcom/android/server/am/MARsDBManager$FASDBValue;->strResetTime:Ljava/lang/String;

    move-object v3, v4

    :cond_5
    move-object/from16 v18, v3

    const/4 v3, 0x0

    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_6

    iget-object v4, v2, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPackageType:Ljava/lang/String;

    move-object v3, v4

    :cond_6
    move-object/from16 v19, v3

    const/4 v3, 0x0

    and-int/lit8 v4, v1, 0x40

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/android/server/am/MARsDBManager$FASDBValue;->strLevel:Ljava/lang/String;

    move-object v3, v4

    :cond_7
    move-object/from16 v20, v3

    const/4 v3, 0x0

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_8

    iget-object v4, v2, Lcom/android/server/am/MARsDBManager$FASDBValue;->strDisableType:Ljava/lang/String;

    move-object v3, v4

    :cond_8
    move-object/from16 v21, v3

    const/4 v3, 0x0

    and-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_9

    iget-object v4, v2, Lcom/android/server/am/MARsDBManager$FASDBValue;->strDisableTime:Ljava/lang/String;

    move-object v3, v4

    :cond_9
    move-object/from16 v22, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v0

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    invoke-direct/range {v3 .. v14}, Lcom/android/server/am/MARsDBManager;->doUpdatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    nop

    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on handling DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_a
    :goto_3
    return-void
.end method

.method private updatePkgsToSMDB(ILjava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsDBManager$FASDBValue;",
            ">;)V"
        }
    .end annotation

    move/from16 v1, p1

    :try_start_0
    const-string v0, "MARsDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePkgsToSMDB : begin --size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, v2, :cond_a

    move-object/from16 v2, p2

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsDBManager$FASDBValue;

    iget-object v4, v3, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPkgName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/am/MARsDBManager$FASDBValue;->strUid:Ljava/lang/String;

    const/4 v5, 0x0

    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_0

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$FASDBValue;->strMode:Ljava/lang/String;

    move-object v5, v6

    :cond_0
    move-object/from16 v17, v5

    const/4 v5, 0x0

    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$FASDBValue;->strNew:Ljava/lang/String;

    move-object v5, v6

    :cond_1
    move-object/from16 v18, v5

    const/4 v5, 0x0

    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$FASDBValue;->strFasReason:Ljava/lang/String;

    move-object v5, v6

    :cond_2
    move-object/from16 v19, v5

    const/4 v5, 0x0

    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$FASDBValue;->strExtras:Ljava/lang/String;

    move-object v5, v6

    :cond_3
    move-object/from16 v20, v5

    const/4 v5, 0x0

    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$FASDBValue;->strResetTime:Ljava/lang/String;

    move-object v5, v6

    :cond_4
    move-object/from16 v21, v5

    const/4 v5, 0x0

    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_5

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$FASDBValue;->strPackageType:Ljava/lang/String;

    move-object v5, v6

    :cond_5
    move-object/from16 v22, v5

    const/4 v5, 0x0

    and-int/lit8 v6, v1, 0x40

    if-eqz v6, :cond_6

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$FASDBValue;->strLevel:Ljava/lang/String;

    move-object v5, v6

    :cond_6
    move-object/from16 v23, v5

    const/4 v5, 0x0

    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_7

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$FASDBValue;->strDisableType:Ljava/lang/String;

    move-object v5, v6

    :cond_7
    move-object/from16 v24, v5

    const/4 v5, 0x0

    and-int/lit16 v6, v1, 0x100

    if-eqz v6, :cond_8

    iget-object v6, v3, Lcom/android/server/am/MARsDBManager$FASDBValue;->strDisableTime:Ljava/lang/String;

    move-object v5, v6

    :cond_8
    move-object/from16 v25, v5

    if-eqz v4, :cond_9

    move-object/from16 v5, p0

    move-object v6, v4

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    move-object/from16 v16, v25

    invoke-direct/range {v5 .. v16}, Lcom/android/server/am/MARsDBManager;->doUpdatePkgToSMDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_a
    move-object/from16 v2, p2

    const-string v0, "MARsDBManager"

    const-string/jumbo v3, "updatePkgsToSMDB : end"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v2, p2

    :goto_1
    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on handling DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public checkBigDataRestrictionColumnExist()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const-string v2, "bigdataRestriction"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_0

    const-string v3, "MARsDBManager"

    const-string v4, "checkBigDataRestrictionColumnExist-sql, catch no column exception!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :catch_1
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_1

    const-string v3, "MARsDBManager"

    const-string v4, "checkBigDataRestrictionColumnExist, catch no column exception!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mIsBigDataRestrictionColumnExist:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method doUpdateCompHistory(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mAppStartUpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MARsDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on handling DB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method getDay(J)Ljava/lang/Long;
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "start_time"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/MARsDBManager;->CONTENT_URI_EXT_ALL_POWER:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isSameDay(JJ)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with getDayTableName() : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    :goto_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method getDayTableName()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "start_time"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/MARsDBManager;->CONTENT_URI_EXT_ALL_POWER:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with getDayTableName() : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method getMARsPolicyCondition(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "boot"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method getPackageType(Landroid/content/pm/PackageInfo;)I
    .locals 6

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->getAppUid(Landroid/content/pm/PackageInfo;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/MARsDBManager;->isShowIconPackage(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v3, v3, 0x1

    :cond_0
    if-eqz v0, :cond_1

    const-string v4, "/data/app"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_3

    or-int/lit8 v3, v3, 0x2

    :cond_3
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_5

    :cond_4
    or-int/lit8 v3, v3, 0x4

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, v1}, Lcom/android/server/am/MARsDBManager;->isDeviceAdminPackages(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    or-int/lit8 v3, v3, 0x8

    :cond_6
    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isIntentReceivingPackages(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_7

    or-int/lit8 v3, v3, 0x10

    :cond_7
    if-eqz v1, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isDisablePossiblePackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_8

    or-int/lit8 v3, v3, 0x20

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_9

    or-int/lit8 v3, v3, 0x40

    :cond_9
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_a

    or-int/lit16 v3, v3, 0x80

    :cond_a
    if-eqz v1, :cond_b

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsDBManager;->isAutoRunDefaultOffExceptionPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    :cond_b
    if-eqz v1, :cond_c

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mSsrmWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    or-int/lit16 v3, v3, 0x200

    :cond_c
    return v3
.end method

.method getPowerCurrent(J)Landroid/util/ArrayMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, "smeared_power"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.sec.smartmanager.provider/batterystat_ext/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const v3, 0x186a0

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    nop

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with getPowerCurrent() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    return-object v0

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method getSMDBVersionFromDB()Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v5, :cond_0

    const-string v5, "MARsDBManager"

    const-string/jumbo v6, "getSMDBVersionFromDB!"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "key=?"

    const-string/jumbo v5, "marsversion"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v3, "value"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MARsDBManager;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    move-object v10, v2

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "MARsDBManager"

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
    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_3
    const-string v3, "MARsDBManager"

    const-string/jumbo v4, "getSMDBVersionFromDB error, no database!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method initDefaultWhiteList()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerDefaultWhiteListObserver:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/MARsDBManager$SmartManagerDefaultWhiteListObserver;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsDBManager$SmartManagerDefaultWhiteListObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerDefaultWhiteListObserver:Lcom/android/server/am/MARsDBManager$SmartManagerDefaultWhiteListObserver;

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_DEFAULT_WHITE_LIST_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerDefaultWhiteListObserver:Lcom/android/server/am/MARsDBManager$SmartManagerDefaultWhiteListObserver;

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerDefaultWhiteListObserver:Z

    :cond_0
    return-void
.end method

.method initManagedPackages()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method initSKTPackagesWhiteList()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerExcludedAppObserver:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerExcludedAppObserver:Z

    :cond_0
    return-void
.end method

.method initSettingFromUI()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v5, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    :cond_0
    return-void
.end method

.method isSMProviderExist()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/MARsDBManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    throw v2

    :catch_0
    move-exception v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method onSMDBChanged(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "onCreate"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "onUpgrade"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method readSysfs(Ljava/lang/String;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_13

    if-eqz v0, :cond_1

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ":"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_12

    aget-object v4, v2, v3

    if-eqz v4, :cond_2

    aget-object v4, v2, v3

    aget-object v6, v2, v3

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v4, ""

    :goto_1
    const/4 v6, 0x1

    aget-object v7, v2, v6

    if-eqz v7, :cond_3

    aget-object v7, v2, v6

    goto :goto_2

    :cond_3
    const-string v7, ""

    :goto_2
    aget-object v8, v2, v5

    if-eqz v8, :cond_4

    aget-object v5, v2, v5

    goto :goto_3

    :cond_4
    const-string v5, ""

    :goto_3
    const-string v8, "ALL"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "WL"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v5, :cond_12

    const-string v6, "@"

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    :goto_4
    if-ge v3, v8, :cond_6

    aget-object v9, v6, v3

    if-eqz v9, :cond_5

    iget-object v10, p0, Lcom/android/server/am/MARsDBManager;->mSsrmWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/server/am/MARsDBManager;->mSsrmWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    goto/16 :goto_6

    :cond_7
    const-string v8, "Switch"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v9, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->getFreecessEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    move v3, v6

    nop

    :cond_8
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, v3}, Lcom/android/server/am/MARsPolicyManager;->turnOnOffFreecessMonitor(Z)V

    goto/16 :goto_6

    :cond_9
    const-string v8, "Enhance_Switch"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v9, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->getFreecessEnhancementEnabledState()Z

    move-result v9

    if-eqz v9, :cond_a

    move v3, v6

    nop

    :cond_a
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, v3}, Lcom/android/server/am/MARsPolicyManager;->setFreeceeEnhanceEnabled(Z)V

    goto/16 :goto_6

    :cond_b
    sget-object v8, Lcom/android/server/am/MARsDBManager;->mCountry:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "WL"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    if-eqz v5, :cond_12

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mSsrmWhiteList:Ljava/util/ArrayList;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mSsrmWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const-string v6, "@"

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    :goto_5
    if-ge v3, v8, :cond_d

    aget-object v9, v6, v3

    if-eqz v9, :cond_c

    iget-object v10, p0, Lcom/android/server/am/MARsDBManager;->mSsrmWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/android/server/am/MARsDBManager;->mSsrmWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    goto :goto_6

    :cond_e
    const-string v8, "Switch"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v9, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->getFreecessEnabled()Z

    move-result v9

    if-eqz v9, :cond_f

    move v3, v6

    nop

    :cond_f
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, v3}, Lcom/android/server/am/MARsPolicyManager;->turnOnOffFreecessMonitor(Z)V

    goto :goto_6

    :cond_10
    const-string v8, "Enhance_Switch"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v9, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPolicyManager;->getFreecessEnhancementEnabledState()Z

    move-result v9

    if-eqz v9, :cond_11

    move v3, v6

    nop

    :cond_11
    iget-object v6, p0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6, v3}, Lcom/android/server/am/MARsPolicyManager;->setFreeceeEnhanceEnabled(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    :goto_6
    goto/16 :goto_0

    :cond_13
    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v2

    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    const-string/jumbo v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_14
    :goto_8
    goto :goto_9

    :catchall_0
    move-exception v2

    goto :goto_a

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_14

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v2

    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catch_3
    move-exception v2

    :try_start_4
    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_14

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception v2

    const-string v3, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :goto_9
    return-void

    :goto_a
    nop

    if-eqz v1, :cond_15

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    :catch_5
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MARsDBManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_15
    :goto_b
    throw v2
.end method

.method sendDelPkgAsUserMsgToDBHandler(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendDelPkgMsgToDBHandler(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendInsPkgAsUserMsgToDBHandler(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendInsPkgMsgToDBHandler(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendSCPMChangedPkgMsgToDBHandler()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method sendVerifyForcedAppStandby()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public unregisterContentObserver()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerSettingsObserver:Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerSettingsObserver:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerExcludedAppObserver:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerExcludedAppObserver:Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerExcludedAppObserver:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mSmartManagerFASObserver:Lcom/android/server/am/MARsDBManager$SmartManagerFASObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v1, p0, Lcom/android/server/am/MARsDBManager;->mRegisteredSmartManagerForcedAppStandbyObserver:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MARsDBManager"

    const-string v2, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "callee"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "caller"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "isblock"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "requesttime"

    invoke-virtual {v1, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method updateDataClearedPackage(Ljava/lang/String;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "isDataCleared"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method updateDualAppList(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method updateResetTime(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/MARsDBManager$FASDBValue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "values"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method updateResetTimeSpecific(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v2, "strUid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v2, "strMode"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string/jumbo v2, "strExtras"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p7, :cond_4

    const-string/jumbo v2, "strPackageType"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p8, :cond_5

    const-string/jumbo v2, "strLevel"

    invoke-virtual {v1, v2, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/am/MARsDBManager;->mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
