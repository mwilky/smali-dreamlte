.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$Shell;,
        Lcom/android/server/pm/UserManagerService$LocalService;,
        Lcom/android/server/pm/UserManagerService$MainHandler;,
        Lcom/android/server/pm/UserManagerService$LifeCycle;,
        Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;,
        Lcom/android/server/pm/UserManagerService$UserData;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFY_KPU:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NOTIFY_KPU_INTERNAL"

.field private static final ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION:I = 0x32c

.field private static final ATTR_ATTRIBUTES:Ljava/lang/String; = "attributes"

.field private static final ATTR_CCM_BEEN_PROVISIONED:Ljava/lang/String; = "hasCCMBeenProvisioned"

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_FINGERPRINT:Ljava/lang/String; = "lastLoggedInFingerprint"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PROFILE_BADGE:Ljava/lang/String; = "profileBadge"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_RESTRICTED_PROFILE_PARENT_ID:Ljava/lang/String; = "restrictedProfileParentId"

.field private static final ATTR_SEED_ACCOUNT_NAME:Ljava/lang/String; = "seedAccountName"

.field private static final ATTR_SEED_ACCOUNT_TYPE:Ljava/lang/String; = "seedAccountType"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field static final DBG:Z = false

.field private static final DBG_WITH_STACKTRACE:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final LOG_USERICON_TAG:Ljava/lang/String; = "UserIcon"

.field static final MAX_MANAGED_PROFILES:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_RECENTLY_REMOVED_IDS_SIZE:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_USER_ID:I = 0x53e2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_USER_ID:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final RELEASE_DELETED_USER_ID:Z = false

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ACCOUNT:Ljava/lang/String; = "account"

.field private static final TAG_DEVICE_OWNER_USER_ID:Ljava/lang/String; = "deviceOwnerUserId"

.field private static final TAG_DEVICE_POLICY_GLOBAL_RESTRICTIONS:Ljava/lang/String; = "device_policy_global_restrictions"

.field private static final TAG_DEVICE_POLICY_RESTRICTIONS:Ljava/lang/String; = "device_policy_restrictions"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GLOBAL_RESTRICTION_OWNER_ID:Ljava/lang/String; = "globalRestrictionOwnerUserId"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_SDP:Ljava/lang/String; = "UserManagerService.SDP"

.field private static final TAG_SEED_ACCOUNT_OPTIONS:Ljava/lang/String; = "seedAccountOptions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final TRON_DEMO_CREATED:Ljava/lang/String; = "users_demo_created"

.field private static final TRON_GUEST_CREATED:Ljava/lang/String; = "users_guest_created"

.field private static final TRON_USER_CREATED:Ljava/lang/String; = "users_user_created"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x7

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final mUserRestriconToken:Landroid/os/IBinder;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field private final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK_AFTER_DEVICE_UNLOCK:Ljava/lang/String;

.field private final MAX_RETRY_READ:I

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mAppRestrictionsLock:Ljava/lang/Object;

.field private final mAppliedUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation
.end field

.field private final mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field private mForceEphemeralUsers:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mGuestRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mGuestRestrictions"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeviceManaged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mIsUserManaged:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextSerialNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackagesLock"
    .end annotation
.end field

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRecentlyRemovedIds:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mRestrictionsLock:Ljava/lang/Object;

.field private mSdpManagerService:Lcom/android/server/SdpManagerService;

.field private final mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

.field private mUserIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictionsListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserRestrictionsListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/UserManagerInternal$UserRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserStates:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserStates"
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersLock:Ljava/lang/Object;

.field private final sPersonaManager:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 7

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 7

    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->MAX_RETRY_READ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    const-string v2, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    const-string v2, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK_DEVICE_UNLOCK"

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK_AFTER_DEVICE_UNLOCK:Ljava/lang/String;

    new-instance v2, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v2, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v3, p5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    const/4 v6, -0x1

    invoke-static {v4, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v6, "userlist.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    const-class v0, Landroid/os/UserManagerInternal;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    sput-object p1, Lcom/android/server/pm/UserManagerService;->sContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;ILandroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->invalidateEffectiveUserRestrictionsLR(I)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/pm/UserManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/pm/UserManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/IBinder;
    .locals 1

    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object v0
.end method

.method private broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_0

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private canAddMoreDualApp(I)Z
    .locals 6

    const-string v0, "check if more DualApp can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.managed_users"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v3

    move v4, v0

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-lt v4, v2, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private canAddMoreManagedProfiles(IZI)Z
    .locals 4

    const-string v0, "check if more managed profiles can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.managed_users"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p3, v0}, Lcom/android/server/pm/PersonaServiceHelper;->canAddMoreManagedProfiles(Landroid/content/Context;ZILjava/util/List;)Z

    move-result v1

    return v1

    :cond_3
    :goto_0
    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 4

    const-string v0, "UserManagerService"

    sget-object v1, Lcom/android/server/pm/UserManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final checkManageOrCreateUsersPermission(I)V
    .locals 3

    and-int/lit16 v0, p0, -0x32d

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only system may: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->mergeAll(Landroid/util/SparseArray;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-static {v3, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v3
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 5

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_0

    const-string/jumbo v0, "no_add_managed_profile"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "no_add_user"

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add user. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is enabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    and-int/lit8 v1, p2, 0x20

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "UserManagerService"

    const-string v4, "MultiUserManager policy blocked to create user"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method private createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 36

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-interface {v4}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    const-string v0, "UserManagerService"

    const-string v6, "Cannot add user. Not enough space on disk."

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    and-int/lit8 v0, v2, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v9, v0

    const/high16 v0, 0x400000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move v10, v0

    const/high16 v0, 0x4000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move v11, v0

    const/high16 v0, 0x20000

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    move v12, v0

    const/high16 v0, 0x10000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    move v13, v0

    const/high16 v0, 0x20000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v14, 0x3e8

    if-ne v0, v14, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    move v14, v0

    and-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    move v15, v0

    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    move/from16 v16, v0

    move/from16 v18, v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const/high16 v0, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    :goto_9
    move/from16 v19, v0

    and-int/lit16 v0, v2, 0x4000

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    :goto_a
    move/from16 v20, v0

    and-int/lit16 v0, v2, 0x2000

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_b

    :cond_c
    const/4 v0, 0x0

    :goto_b
    move/from16 v21, v0

    :try_start_0
    iget-object v6, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1f

    const/16 v22, 0x0

    const/16 v0, -0x2710

    if-eq v3, v0, :cond_d

    :try_start_1
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {v1, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v23

    move-object/from16 v22, v23

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v22, :cond_d

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v33, v10

    move/from16 v28, v11

    move/from16 v26, v12

    move/from16 v25, v13

    :goto_c
    move-object/from16 v11, p4

    goto/16 :goto_1c

    :cond_d
    move-object/from16 v5, v22

    if-eqz v9, :cond_e

    if-nez v14, :cond_e

    const/4 v0, 0x0

    :try_start_6
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles(IZI)Z

    move-result v22

    if-nez v22, :cond_e

    const-string v0, "UserManagerService"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v24, v4

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move/from16 v25, v13

    :try_start_8
    const-string v13, "Cannot add more managed profiles for user "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return-object v0

    :catchall_2
    move-exception v0

    move/from16 v25, v13

    move/from16 v33, v10

    move/from16 v28, v11

    move/from16 v26, v12

    move-object/from16 v11, p4

    goto/16 :goto_1c

    :catchall_3
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v25, v13

    move/from16 v33, v10

    move/from16 v28, v11

    move/from16 v26, v12

    move-object/from16 v11, p4

    goto/16 :goto_1c

    :cond_e
    move-object/from16 v24, v4

    move/from16 v25, v13

    if-nez v18, :cond_f

    if-nez v9, :cond_f

    if-nez v16, :cond_f

    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez v19, :cond_f

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return-object v0

    :cond_f
    if-eqz v18, :cond_10

    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return-object v0

    :catchall_4
    move-exception v0

    move/from16 v33, v10

    move/from16 v28, v11

    move/from16 v26, v12

    goto :goto_c

    :cond_10
    if-eqz v19, :cond_11

    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentBModeUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return-object v0

    :cond_11
    if-eqz v15, :cond_12

    :try_start_c
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz v3, :cond_12

    const-string v0, "UserManagerService"

    const-string v4, "Cannot add restricted profile - parent user must be owner"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return-object v0

    :cond_12
    if-eqz v15, :cond_14

    :try_start_d
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez v5, :cond_13

    const-string v0, "UserManagerService"

    const-string v4, "Cannot add restricted profile - parent user must be specified"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return-object v0

    :cond_13
    :try_start_e
    iget-object v0, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return-object v0

    :cond_14
    :try_start_f
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1c

    if-eqz v0, :cond_16

    if-nez v18, :cond_16

    if-nez v9, :cond_16

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_16

    or-int/lit8 v2, v2, 0x1

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    iget-boolean v0, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v0, :cond_15

    or-int/lit8 v0, v2, 0x2

    move v2, v0

    :cond_15
    monitor-exit v4

    goto :goto_d

    :catchall_5
    move-exception v0

    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw v0

    :cond_16
    :goto_d
    if-eqz v14, :cond_17

    invoke-direct {v1, v3}, Lcom/android/server/pm/UserManagerService;->canAddMoreDualApp(I)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot add more dual app for user "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return-object v0

    :cond_17
    :try_start_13
    invoke-virtual {v1, v11, v12, v14}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId(ZZZ)I

    move-result v0

    move v4, v0

    invoke-static {v4}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x1120082

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1c

    move v13, v0

    move/from16 v26, v12

    :try_start_14
    iget-object v12, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1b

    if-eqz v18, :cond_18

    if-nez v13, :cond_19

    :cond_18
    :try_start_15
    iget-boolean v0, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_19

    if-nez v0, :cond_19

    if-eqz v5, :cond_1a

    :try_start_16
    iget-object v0, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    if-eqz v0, :cond_1a

    goto :goto_f

    :catchall_6
    move-exception v0

    move/from16 v33, v10

    move/from16 v28, v11

    move/from16 v27, v13

    :goto_e
    move-object/from16 v11, p4

    goto/16 :goto_1b

    :cond_19
    :goto_f
    or-int/lit16 v2, v2, 0x100

    :cond_1a
    if-eqz v9, :cond_1b

    if-nez v14, :cond_1b

    :try_start_17
    const-string/jumbo v0, "ro.crypto.type"
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    move/from16 v27, v13

    :try_start_18
    const-string v13, ""

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "file"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-nez v0, :cond_1c

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v2, v0

    goto :goto_10

    :catchall_7
    move-exception v0

    move/from16 v33, v10

    move/from16 v28, v11

    goto :goto_e

    :catchall_8
    move-exception v0

    move/from16 v27, v13

    move/from16 v33, v10

    move/from16 v28, v11

    move-object/from16 v11, p4

    goto/16 :goto_1b

    :cond_1b
    move/from16 v27, v13

    :cond_1c
    :goto_10
    :try_start_19
    new-instance v0, Landroid/content/pm/UserInfo;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_18

    move-object/from16 v13, p1

    move/from16 v28, v11

    const/4 v11, 0x0

    :try_start_1a
    invoke-direct {v0, v4, v13, v11, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_17

    if-eqz v9, :cond_1d

    :try_start_1b
    iput v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    iget v11, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v17, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    goto :goto_11

    :catchall_9
    move-exception v0

    move-object/from16 v11, p4

    move/from16 v33, v10

    goto/16 :goto_1b

    :cond_1d
    :try_start_1c
    iget v11, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    add-int/lit8 v13, v11, 0x1

    iput v13, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v11, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_17

    const-wide v31, 0xdc46c32800L

    cmp-long v11, v29, v31

    if-lez v11, :cond_1e

    move/from16 v33, v10

    move-wide/from16 v10, v29

    goto :goto_12

    :cond_1e
    const-wide/16 v31, 0x0

    move/from16 v33, v10

    move-wide/from16 v10, v31

    :goto_12
    :try_start_1d
    iput-wide v10, v0, Landroid/content/pm/UserInfo;->creationTime:J

    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/content/pm/UserInfo;->partial:Z

    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_16

    if-eqz v9, :cond_1f

    const/16 v10, -0x2710

    if-eq v3, v10, :cond_1f

    :try_start_1e
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(I)I

    move-result v10

    iput v10, v0, Landroid/content/pm/UserInfo;->profileBadge:I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    goto :goto_13

    :catchall_a
    move-exception v0

    goto/16 :goto_e

    :cond_1f
    :goto_13
    :try_start_1f
    new-instance v10, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v10}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    iput-object v0, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v11, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v11, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v12
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_16

    :try_start_20
    invoke-direct {v1, v10}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_15

    if-eqz v5, :cond_23

    if-eqz v9, :cond_21

    :try_start_21
    iget-object v11, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_20

    iget-object v11, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v12, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    iput v12, v11, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-direct {v1, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_20
    iget-object v11, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v11, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_14

    :catchall_b
    move-exception v0

    goto/16 :goto_c

    :cond_21
    if-eqz v15, :cond_23

    iget-object v11, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_22

    iget-object v11, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v12, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    iput v12, v11, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-direct {v1, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_22
    iget-object v11, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v11, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    :cond_23
    :goto_14
    :try_start_22
    monitor-exit v6
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_15

    move-object v5, v0

    move-object v6, v10

    if-eqz v9, :cond_24

    const/high16 v0, 0x40000000    # 2.0f

    and-int v10, v2, v0

    if-ne v10, v0, :cond_24

    :try_start_23
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/server/pm/PersonaServiceHelper;->mayPrepareKnoxLegacyPartition(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "UserManagerService"

    const-string v10, " legacy partition moutn failed"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    nop

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return-object v0

    :catchall_c
    move-exception v0

    move-object/from16 v11, p4

    goto/16 :goto_1d

    :cond_24
    :try_start_24
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v10, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    move-object v10, v0

    if-eqz v10, :cond_2d

    iget v0, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v11

    invoke-virtual {v10, v4, v0, v11}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget v11, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v12, 0x3

    invoke-virtual {v0, v4, v11, v12}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_14

    move-object/from16 v11, p4

    :try_start_25
    invoke-virtual {v0, v4, v11}, Lcom/android/server/pm/PackageManagerService;->createNewUser(I[Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/content/pm/UserInfo;->partial:Z

    iget-object v12, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    :try_start_26
    invoke-direct {v1, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v12
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    :try_start_27
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    move-object v12, v0

    if-eqz v18, :cond_25

    :try_start_28
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v13
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1d

    :try_start_29
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    monitor-exit v13

    goto :goto_15

    :catchall_d
    move-exception v0

    monitor-exit v13
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    :try_start_2a
    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1d

    :cond_25
    :goto_15
    :try_start_2b
    iget-object v13, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    :try_start_2c
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v13
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    :try_start_2d
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(I)V

    if-nez v18, :cond_2a

    if-nez v14, :cond_2a

    if-nez v19, :cond_2a

    if-eqz v9, :cond_29

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->enableSyntheticPassword(I)V

    const-string v0, "UserManagerService.SDP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_12

    move/from16 v34, v2

    :try_start_2e
    const-string v2, "Creating user - SP is enabled for user "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v33, :cond_26

    if-nez v28, :cond_26

    if-eqz v26, :cond_27

    :cond_26
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v4, v2, v13}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    const-string v0, "UserManagerService.SDP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Creating user - Separate challenge is enabled for user "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    if-nez v20, :cond_28

    if-nez v21, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/-$$Lambda$UserManagerService$fyovbUl7MfV9tywMmjLVeBgu5CE;

    invoke-direct {v2, v4}, Lcom/android/server/pm/-$$Lambda$UserManagerService$fyovbUl7MfV9tywMmjLVeBgu5CE;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_28
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PersonaManagerService;->onNewUserCreated(Landroid/content/pm/UserInfo;)V

    goto :goto_16

    :cond_29
    move/from16 v34, v2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getSdpManagerService()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/-$$Lambda$UserManagerService$snt4YHvNh_oSXz6JpFMVPbFW13M;

    invoke-direct {v2, v4}, Lcom/android/server/pm/-$$Lambda$UserManagerService$snt4YHvNh_oSXz6JpFMVPbFW13M;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_16

    :cond_2a
    move/from16 v34, v2

    :goto_16
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_ADDED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USERS"

    invoke-virtual {v2, v0, v13, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    if-eqz v18, :cond_2b

    const-string/jumbo v3, "users_guest_created"

    goto :goto_17

    :cond_2b
    if-eqz v16, :cond_2c

    const-string/jumbo v3, "users_demo_created"

    goto :goto_17

    :cond_2c
    const-string/jumbo v3, "users_user_created"

    :goto_17
    const/4 v13, 0x1

    invoke-static {v2, v3, v13}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_13

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    move-object v0, v5

    move-object v2, v6

    move v3, v4

    return-object v0

    :catchall_e
    move-exception v0

    move/from16 v34, v2

    :goto_18
    :try_start_2f
    monitor-exit v13
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_f

    :try_start_30
    throw v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_13

    :catchall_f
    move-exception v0

    goto :goto_18

    :catchall_10
    move-exception v0

    move/from16 v34, v2

    :goto_19
    :try_start_31
    monitor-exit v12
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_11

    :try_start_32
    throw v0

    :catchall_11
    move-exception v0

    goto :goto_19

    :catchall_12
    move-exception v0

    goto :goto_1a

    :cond_2d
    move-object/from16 v11, p4

    move/from16 v34, v2

    const-string v0, "UserManagerService"

    const-string v2, "StorageManager Instance is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_13

    nop

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return-object v0

    :catchall_13
    move-exception v0

    goto/16 :goto_1e

    :catchall_14
    move-exception v0

    move-object/from16 v11, p4

    :goto_1a
    move/from16 v34, v2

    goto/16 :goto_1e

    :catchall_15
    move-exception v0

    move-object/from16 v11, p4

    move/from16 v34, v2

    goto :goto_1c

    :catchall_16
    move-exception v0

    move-object/from16 v11, p4

    move/from16 v34, v2

    goto :goto_1b

    :catchall_17
    move-exception v0

    move-object/from16 v11, p4

    move/from16 v34, v2

    move/from16 v33, v10

    goto :goto_1b

    :catchall_18
    move-exception v0

    move/from16 v34, v2

    move/from16 v33, v10

    move/from16 v28, v11

    move-object/from16 v11, p4

    goto :goto_1b

    :catchall_19
    move-exception v0

    move/from16 v33, v10

    move/from16 v28, v11

    move/from16 v27, v13

    move-object/from16 v11, p4

    :goto_1b
    :try_start_33
    monitor-exit v12
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1a

    :try_start_34
    throw v0

    :catchall_1a
    move-exception v0

    goto :goto_1b

    :catchall_1b
    move-exception v0

    move/from16 v33, v10

    move/from16 v28, v11

    move-object/from16 v11, p4

    goto :goto_1c

    :catchall_1c
    move-exception v0

    move/from16 v33, v10

    move/from16 v28, v11

    move/from16 v26, v12

    move-object/from16 v11, p4

    :goto_1c
    monitor-exit v6
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1e

    :try_start_35
    throw v0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1d

    :catchall_1d
    move-exception v0

    :goto_1d
    move/from16 v34, v2

    goto :goto_1e

    :catchall_1e
    move-exception v0

    goto :goto_1c

    :catchall_1f
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v33, v10

    move/from16 v28, v11

    move/from16 v26, v12

    move/from16 v25, v13

    move-object/from16 v11, p4

    move/from16 v34, v2

    :goto_1e
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 3

    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-long v0, p2, p4

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v0, " ago"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private ensureCanModifyQuietMode(Ljava/lang/String;IZ)V
    .locals 4

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_3

    const-string v0, "android.permission.MODIFY_QUIET_MODE"

    invoke-static {v0, p2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->verifyCallingPackage(Ljava/lang/String;I)V

    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutServiceInternal;

    if-eqz v1, :cond_2

    nop

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fallbackToSingleUserLP()V
    .locals 15

    const/16 v0, 0x10

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x3

    :cond_0
    new-instance v1, Landroid/content/pm/UserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v2, v0}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v4

    const-string/jumbo v5, "sys.knox.exists"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    array-length v9, v6

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    move v9, v10

    :goto_0
    :try_start_0
    array-length v11, v6

    if-ge v9, v11, :cond_1

    new-instance v11, Landroid/content/pm/UserInfo;

    aget-object v12, v6, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v13, v6, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {p0, v13}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v13, v13, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const v14, 0x10000020

    invoke-direct {v11, v12, v13, v2, v14}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iput v3, v11, Landroid/content/pm/UserInfo;->profileGroupId:I

    aget-object v12, v6, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v11, Landroid/content/pm/UserInfo;->serialNumber:I

    new-instance v12, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v12}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    iput-object v11, v12, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v8, 0x0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v8, :cond_3

    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v13, v11, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_7

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :try_start_2
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x1070072

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    array-length v11, v9

    move v12, v3

    :goto_3
    if-ge v12, v11, :cond_5

    aget-object v13, v9, v12

    invoke-static {v13}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v2, v13, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    goto :goto_4

    :catch_1
    move-exception v9

    const-string v10, "UserManagerService"

    const-string v11, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_3
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v10, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v9

    goto :goto_5

    :catchall_1
    move-exception v3

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_6
    :goto_5
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {p0, v9}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_6

    :cond_7
    return-void

    :goto_7
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method private findCurrentBModeUser()Landroid/content/pm/UserInfo;
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAliveUsersExcludingGuestsCountLU()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getConfigMaxMultiUsers()I
    .locals 4

    const/4 v0, -0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_ConfigMaxMultiUsers"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-gtz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private getConfigStatusMultiUser()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ConfigStatusMultiUser"

    const-string v2, "NoCscFound"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    invoke-direct {v1, p1, v0}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .locals 2

    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getMaxManagedProfiles()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "persist.sys.max_profiles"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040646

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProfileIdsLU(IZ)Landroid/util/IntArray;
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    new-instance v1, Landroid/util/IntArray;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v0, v4}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v2, p1, :cond_2

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private getProfilesLU(IZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-nez p3, :cond_0

    new-instance v5, Landroid/content/pm/UserInfo;

    invoke-direct {v5, v4}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    move-object v4, v5

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getSdpManagerService()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/SdpManagerService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService;

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mSdpManagerService:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    const/4 v3, -0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method private getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object v0
.end method

.method private getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserInfo: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    nop

    :cond_1
    return-object v1
.end method

.method private getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final hasManageOrCreateUsersPermission()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.CREATE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static final hasManageUsersPermission()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static hasPermissionGranted(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, p1, v1, v0}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initDefaultGuestRestrictions()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_config_wifi"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_install_unknown_sources"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_outgoing_calls"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_sms"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private invalidateEffectiveUserRestrictionsLR(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 2

    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSameProfileGroupNoChecks(II)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget v3, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, v4, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    monitor-exit v0

    return v2

    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    :cond_4
    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isUserLimitReached()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic lambda$createUserInternalUnchecked$0(ILcom/android/server/SdpManagerService;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->welcomeNewUser(I)V

    return-void
.end method

.method static synthetic lambda$createUserInternalUnchecked$1(ILcom/android/server/SdpManagerService;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/SdpManagerService;->prepareEncUserDirectory(I)V

    return-void
.end method

.method private mayRemoveKnoxLegacyEncryptionKey(Landroid/content/pm/UserInfo;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isLegacyEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/KnoxFileHandler;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/KnoxFileHandler;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x1

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/KnoxFileHandler;->clearLegacyEncryptionKey(IZI)Z

    move-result v1

    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearLegacyEncryptionKey status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private mayUnmountKnoxLegacyPartition(Landroid/content/pm/UserInfo;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isLegacyEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/KnoxFileHandler;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/KnoxFileHandler;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Lcom/android/server/KnoxFileHandler;->unmount(II)Z

    move-result v1

    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mayUnmountKnoxLegacyPartition status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read restrictions file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    invoke-static {v0, v1, v3}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return-object v0

    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private static readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "entry"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "key"

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "type"

    invoke-interface {p2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "m"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_0
    :goto_0
    if-lez v5, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v0, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v1, "B"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    const-string v1, "BA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    nop

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    invoke-virtual {p0, v2, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "b"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_6
    const-string v5, "i"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-wide p3

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    return-wide p3
.end method

.method private readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v4

    :goto_0
    add-int/lit8 v6, v1, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x6

    if-ge v1, v7, :cond_7

    const/16 v1, 0x1fc

    const/4 v7, -0x1

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v9

    :try_start_1
    new-instance v9, Lcom/android/internal/util/FastPrintWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v10, v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v9, v10}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v9

    goto :goto_1

    :catch_0
    move-exception v9

    const/4 v10, 0x4

    :try_start_2
    const-string/jumbo v11, "there is no log(readUserLP) file"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_1
    new-instance v9, Lcom/android/server/pm/XmlMoreAtomicFile;

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".xml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v9, v10, v0}, Lcom/android/server/pm/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V

    move-object v3, v9

    invoke-virtual {v3}, Lcom/android/server/pm/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v9

    move-object v2, v9

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    if-eqz v5, :cond_1

    nop

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1
    return-object v9

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v9

    :try_start_3
    const-string v10, "UserManagerService"

    const-string v11, "Error reading user list"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "XmlPullParserException during readUserLocked for id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_2
    if-eqz v5, :cond_4

    goto :goto_2

    :catch_2
    move-exception v9

    :try_start_4
    const-string v10, "UserManagerService"

    const-string v11, "Error reading user list"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException during readUserLocked for id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_3
    if-eqz v5, :cond_4

    :goto_2
    nop

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_4
    move v1, v6

    goto/16 :goto_0

    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_5
    if-eqz v5, :cond_6

    nop

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_6
    throw v4

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to read user "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", giving up"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v4
.end method

.method private readUserListLP()V
    .locals 19

    move-object/from16 v1, p0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x6

    if-ge v0, v4, :cond_1d

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x1

    :try_start_0
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v10}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v10, 0x4

    const-string/jumbo v11, "there is no log(readUserListLP) file"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_1
    new-instance v0, Lcom/android/server/pm/XmlMoreAtomicFile;

    iget-object v10, v1, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v0, v10, v7}, Lcom/android/server/pm/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V

    move-object v10, v0

    const/16 v11, 0x1fc

    const/4 v12, -0x1

    :try_start_1
    invoke-virtual {v10}, Lcom/android/server/pm/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v6, v0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v13, v0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    const/4 v15, 0x2

    if-eq v0, v15, :cond_0

    if-eq v14, v9, :cond_0

    goto :goto_2

    :cond_0
    if-eq v14, v15, :cond_3

    invoke-virtual {v10}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V

    const-string v0, "Unable to read user list"

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    :cond_1
    if-eqz v8, :cond_2

    nop

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11, v12, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_c

    :cond_3
    :try_start_2
    iput v12, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "users"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "nextSerialNumber"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    :cond_4
    const-string/jumbo v12, "version"

    invoke-interface {v13, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    :cond_5
    move-object v0, v11

    :goto_3
    move-object v2, v0

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    if-eq v0, v9, :cond_14

    if-ne v14, v15, :cond_13

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    const-string/jumbo v0, "user"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "id"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    move-object/from16 v11, v16

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    move-object/from16 v17, v0

    move-object/from16 v15, v17

    if-eqz v15, :cond_9

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v5, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v0, :cond_6

    iget v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget-object v5, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-gt v0, v5, :cond_7

    :cond_6
    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    :cond_7
    iget v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v5, 0x96

    if-lt v0, v5, :cond_8

    iget v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/16 v5, 0xa0

    if-gt v0, v5, :cond_8

    const/16 v0, 0xa1

    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    :cond_8
    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " might be broken"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_4
    nop

    :cond_a
    const/4 v0, 0x2

    const/4 v4, 0x3

    goto :goto_5

    :cond_b
    const-string v0, "guestRestrictions"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    if-eq v0, v9, :cond_a

    const/4 v4, 0x3

    if-eq v14, v4, :cond_d

    const/4 v0, 0x2

    if-ne v14, v0, :cond_c

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "restrictions"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v11, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v13, v11}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    monitor-exit v5

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_d
    const/4 v0, 0x2

    :cond_e
    :goto_5
    const/4 v11, 0x0

    goto :goto_7

    :cond_f
    const/4 v0, 0x2

    const/4 v4, 0x3

    const-string v5, "deviceOwnerUserId"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "globalRestrictionOwnerUserId"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_6

    :cond_10
    const-string v5, "device_policy_restrictions"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    nop

    invoke-static {v13}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v5

    move-object v2, v5

    goto :goto_5

    :cond_11
    :goto_6
    const-string v5, "id"

    const/4 v11, 0x0

    invoke-interface {v13, v11, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v1, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_12
    nop

    :goto_7
    nop

    move v15, v0

    move-object v0, v2

    const/4 v5, 0x6

    goto/16 :goto_3

    :cond_13
    move-object v0, v2

    goto/16 :goto_3

    :cond_14
    const/4 v4, 0x0

    :try_start_7
    invoke-direct {v1, v4}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-virtual {v10}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V

    const-string/jumbo v0, "there isn\'t owner user, fallback to single user"

    const/4 v5, 0x6

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    goto :goto_8

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    invoke-direct {v1, v2}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_8
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    :cond_16
    if-eqz v8, :cond_17

    nop

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const/16 v4, 0x1fc

    invoke-static {v0, v4, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_17
    return-void

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    const/4 v4, 0x0

    :goto_9
    :try_start_8
    invoke-virtual {v10}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V

    const-string v2, "XmlPullParserException during readUserListLocked"

    const/4 v5, 0x6

    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v7, :cond_18

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    :cond_18
    if-eqz v8, :cond_1a

    goto :goto_b

    :catch_4
    move-exception v0

    const/4 v4, 0x0

    :goto_a
    :try_start_9
    invoke-virtual {v10}, Lcom/android/server/pm/XmlMoreAtomicFile;->processDamagedFile()V

    const-string v2, "IOException during readUserListLocked"

    const/4 v5, 0x6

    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v7, :cond_19

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    :cond_19
    if-eqz v8, :cond_1a

    :goto_b
    nop

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, -0x1

    const/16 v9, 0x1fc

    invoke-static {v2, v9, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1a
    :goto_c
    move v0, v3

    goto/16 :goto_0

    :goto_d
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    :cond_1b
    if-eqz v8, :cond_1c

    nop

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    const/16 v5, 0x1fc

    invoke-static {v2, v5, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1c
    throw v0

    :cond_1d
    const-string v0, "failed to read user list, giving up"

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    return-void
.end method

.method private removeNonSystemUsers()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private removeUserState(I)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying key for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed, continuing anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "UserManagerService"

    const-string/jumbo v2, "unable to clear GK secure user id"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isLegacyEncryption()Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit16 v0, v0, 0x80

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->mayUnmountKnoxLegacyPartition(Landroid/content/pm/UserInfo;)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->mayRemoveKnoxLegacyEncryptionKey(Landroid/content/pm/UserInfo;)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/pm/UserDataPreparer;->destroyUserData(II)V

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, p1, v5}, Lcom/android/server/EnterprisePartitionManager;->removePartition(II)Z

    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    :cond_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    new-instance v4, Lcom/android/server/pm/XmlMoreAtomicFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/server/pm/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Lcom/android/server/pm/XmlMoreAtomicFile;->delete()V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v5

    const/16 v6, 0x63

    if-ne p1, v6, :cond_5

    const/16 v7, 0x5f

    :goto_2
    if-gt v7, v6, :cond_5

    :try_start_6
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    monitor-exit v5

    goto :goto_3

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v6

    :cond_6
    :goto_3
    return-void

    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    :catchall_2
    move-exception v5

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v5

    :catchall_3
    move-exception v4

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v4

    :catchall_4
    move-exception v5

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v5
.end method

.method private removeUserUnchecked(I)Z
    .locals 12

    const/4 v0, 0x0

    const-string v1, "device_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "UserManagerService"

    const-string v5, "Can\'t get profile owner"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, p1, :cond_2

    const-string v5, "UserManagerService"

    const-string v6, "Current user cannot be removed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p1, :cond_a

    if-eqz v7, :cond_a

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/multiuser/MultiUserManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_5
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v6, v7

    :try_start_7
    iget-object v7, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-boolean v9, v7, Landroid/content/pm/UserInfo;->partial:Z

    iget-object v7, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v7, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v7, Landroid/content/pm/UserInfo;->flags:I

    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v5, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_9
    const-string v7, "UserManagerService"

    const-string v8, "Unable to notify AppOpsService of removing user"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v5, v7, :cond_6

    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v7, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5, v7, v0}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(IILjava/lang/String;)V

    :cond_6
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v7

    if-ne v7, v9, :cond_7

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getConfigMaxMultiUsers()I

    move-result v7

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getConfigStatusMultiUser()Z

    move-result v8

    const-string/jumbo v10, "persist.sys.show_multiuserui"

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "persist.sys.max_users"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_8
    :goto_2
    :try_start_c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    new-instance v7, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v7, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v5, p1, v9, v7}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v5
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    nop

    nop

    if-nez v5, :cond_9

    move v4, v9

    goto :goto_3

    :cond_9
    nop

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_2
    move-exception v5

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_a
    :goto_4
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_1
    move-exception v4

    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v4

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :catchall_3
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private runList(Ljava/io/PrintWriter;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, "Error: couldn\'t get users"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v3, "Users:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v4, v1}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " running"

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private scanNextAvailableIdLocked(ZZZ)I
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    const/16 v0, 0xa

    if-eqz p1, :cond_0

    const/16 v0, 0xc3

    :cond_0
    if-eqz p2, :cond_1

    const/16 v0, 0x96

    :cond_1
    if-eqz p3, :cond_2

    const/16 v0, 0x5f

    :cond_2
    :goto_0
    const/16 v1, 0x53e2

    const/4 v2, -0x1

    if-ge v0, v1, :cond_6

    if-eqz p2, :cond_3

    const/16 v1, 0xa0

    if-le v0, v1, :cond_3

    return v2

    :cond_3
    if-eqz p3, :cond_4

    const/16 v1, 0x63

    if-le v0, v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method private scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private sendProfileRemovedBroadcast(IILjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string v1, "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "android.intent.extra.USER"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setContainerInfo()V
    .locals 11

    const-string v0, ":"

    const-string v1, ","

    const-string/jumbo v2, "persist.sys.knox.userinfo"

    const-string v3, ""

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v6, 0x0

    move v7, v4

    move-object v4, v3

    move v3, v6

    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v8, v8, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    :cond_0
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isBBCContainer()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "sys.knox.bbcid"

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v3, "persist.sys.knox.userinfo"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_4

    const-string/jumbo v3, "sys.knox.bbcid"

    const-string v5, ""

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2, p3, p4, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->sortToGlobalAndLocal(Landroid/os/Bundle;ZILandroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v4

    if-eqz p3, :cond_0

    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    goto :goto_0

    :cond_0
    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v5, p1, :cond_1

    const/16 v5, -0x2710

    iput v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    :cond_5
    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method private setQuietModeEnabled(IZLandroid/content/IntentSender;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-ne v3, p2, :cond_0

    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quiet mode is already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5, v0}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_2

    new-instance v0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    goto :goto_0

    :cond_2
    nop

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    goto :goto_3

    :goto_2
    nop

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_3
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    :try_start_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not a profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0, v3, v3, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->createConfirmProfileCredentialIntent(I)Landroid/content/Intent;

    move-result-object v2

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x54000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v5, 0x10800000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v1, v3}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in calling startConfirmDeviceCredentialIntent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private showDeviceConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)Z
    .locals 9

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/ddar/DualDARController;->fetchOuterLayerKey(I)[B

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v5

    move-object v3, v5

    if-nez v3, :cond_1

    return v1

    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK_DEVICE_UNLOCK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string v6, "android.intent.extra.INTENT"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    const-string v6, "android.intent.extra.USER_ID"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/high16 v7, 0x54000000

    invoke-static {v6, v1, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v7, 0x10800000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, v3, v4}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    return v1

    :cond_3
    sget-object v3, Lcom/samsung/android/knox/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/ddar/fsm/Event;

    invoke-static {p1, v3}, Lcom/samsung/android/knox/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/ddar/fsm/Event;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException in calling startConfirmDeviceCredentialIntent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    nop

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    :goto_0
    return v0
.end method

.method private updateUserIds()V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v4, [I

    const/4 v5, 0x0

    nop

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v0, v5

    move v5, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    move v4, v0

    move-object v0, v2

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-direct {p0, p2, v1, v0}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    .locals 9

    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    const-string v4, "Primary"

    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040646

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_0
    const/4 v1, 0x1

    :cond_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_2

    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_2
    const/4 v1, 0x2

    :cond_3
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    const/4 v1, 0x4

    :cond_4
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    const/4 v1, 0x5

    :cond_5
    const/4 v2, 0x6

    const/16 v4, -0x2710

    if-ge v1, v2, :cond_8

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    move v6, v3

    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v2, :cond_6

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v8, v4, :cond_6

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput v3, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-direct {p0, v7}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    monitor-exit v5

    const/4 v1, 0x6

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_8
    :goto_1
    const/4 v2, 0x7

    if-ge v1, v2, :cond_a

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_9

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-eq v5, v4, :cond_9

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    const-string v4, "ensure_verify_apps"

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/UserRestrictionsUtils;->moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    monitor-exit v3

    const/4 v1, 0x7

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_a
    :goto_2
    if-ge v1, v2, :cond_b

    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " didn\'t upgrade as expected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    if-ge v0, v2, :cond_c

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    :cond_c
    :goto_3
    return-void
.end method

.method private userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    return-object p1
.end method

.method private verifyCallingPackage(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not match the calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v4, "restrictions"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "restrictions"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v2, "UserManagerService"

    const-string v3, "Error writing application restrictions list"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {p1, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    return-void
.end method

.method private writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "photo.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "photo.png.tmp"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    nop

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v5

    invoke-virtual {p2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "UserManagerService"

    const-string v2, "Error setting photo for user "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "entry"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "key"

    invoke-interface {p1, v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "type"

    const-string v5, "b"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_6

    :cond_0
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "type"

    const-string v5, "i"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_6

    :cond_1
    if-eqz v2, :cond_8

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :cond_2
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_3

    const-string/jumbo v3, "type"

    const-string v5, "B"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_6

    :cond_3
    instance-of v3, v2, [Landroid/os/Parcelable;

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    const-string/jumbo v3, "type"

    const-string v6, "BA"

    invoke-interface {p1, v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v3, v2

    check-cast v3, [Landroid/os/Parcelable;

    array-length v6, v3

    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v7, v3, v5

    instance-of v8, v7, Landroid/os/Bundle;

    if-eqz v8, :cond_4

    const-string v8, "entry"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "type"

    const-string v9, "B"

    invoke-interface {p1, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v8, v7

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v8, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v8, "entry"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "bundle-array can only hold Bundles"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    goto :goto_6

    :cond_6
    const-string/jumbo v3, "type"

    const-string/jumbo v6, "sa"

    invoke-interface {p1, v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v3, v2

    check-cast v3, [Ljava/lang/String;

    const-string v6, "m"

    array-length v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    array-length v6, v3

    :goto_2
    if-ge v5, v6, :cond_a

    aget-object v7, v3, v5

    const-string/jumbo v8, "value"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v7, :cond_7

    move-object v8, v7

    goto :goto_3

    :cond_7
    const-string v8, ""

    :goto_3
    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "value"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    const-string/jumbo v3, "type"

    const-string/jumbo v5, "s"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v2, :cond_9

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    goto :goto_5

    :cond_9
    const-string v3, ""

    :goto_5
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    :goto_6
    const-string v3, "entry"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v1

    :try_start_0
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x4

    const-string/jumbo v5, "there is no log(writeUserLP) file"

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_0
    new-instance v3, Lcom/android/server/pm/XmlMoreAtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4, v2}, Lcom/android/server/pm/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V

    const/16 v4, 0x1fc

    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/pm/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    move-object v0, v6

    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Lcom/android/server/pm/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_0
    if-eqz v1, :cond_2

    :goto_1
    nop

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_2

    :catchall_0
    move-exception v6

    goto :goto_3

    :catch_1
    move-exception v6

    :try_start_2
    const-string v7, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error writing user info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3, v0}, Lcom/android/server/pm/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_3
    if-eqz v1, :cond_4

    nop

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_4
    throw v6
.end method

.method private writeUserListLP()V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x1

    :try_start_0
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v5, 0x4

    const-string/jumbo v6, "there is no log(writeUserListLP) file"

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_0
    new-instance v4, Lcom/android/server/pm/XmlMoreAtomicFile;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Lcom/android/server/pm/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V

    const/16 v5, 0x1fc

    const/4 v6, -0x1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->setContainerInfo()V

    invoke-virtual {v4}, Lcom/android/server/pm/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    move-object v0, v7

    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v8, v9, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v3, "users"

    invoke-interface {v8, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "nextSerialNumber"

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v10, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "version"

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v10, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "guestRestrictions"

    invoke-interface {v8, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v11, "restrictions"

    invoke-static {v8, v9, v11}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v3, "guestRestrictions"

    invoke-interface {v8, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "deviceOwnerUserId"

    invoke-interface {v8, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "id"

    iget v9, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v10, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "deviceOwnerUserId"

    invoke-interface {v8, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    new-array v9, v9, [I

    const/4 v11, 0x0

    move v12, v11

    :goto_1
    array-length v13, v9

    if-ge v12, v13, :cond_0

    iget-object v13, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v13, v13, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    aput v14, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v9

    :try_start_5
    array-length v9, v3

    :goto_2
    if-ge v11, v9, :cond_1

    aget v12, v3, v11

    const-string/jumbo v13, "user"

    invoke-interface {v8, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "id"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v10, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v13, "user"

    invoke-interface {v8, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    const-string/jumbo v9, "users"

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v4, v0}, Lcom/android/server/pm/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_2
    if-eqz v1, :cond_4

    :goto_3
    nop

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_4

    :catchall_0
    move-exception v9

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_1
    move-exception v9

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v3

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_a
    invoke-virtual {v4, v0}, Lcom/android/server/pm/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v7, "UserManagerService"

    const-string v8, "Error writing user list"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    return-void

    :goto_5
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_5
    if-eqz v1, :cond_6

    nop

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_6
    throw v3
.end method


# virtual methods
.method addRemovingUserIdLocked(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method applyUserRestrictionsForAllUsersLR()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    new-instance v0, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method applyUserRestrictionsLR(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    return-void
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .locals 8

    const-string v0, "check if more managed profiles can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.managed_users"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    sub-int v4, v0, v3

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v5

    if-lt v4, v5, :cond_3

    return v1

    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v6

    sub-int/2addr v6, v3

    if-eq v6, v2, :cond_6

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v7

    if-ge v6, v7, :cond_5

    goto :goto_1

    :cond_5
    goto :goto_2

    :cond_6
    :goto_1
    move v1, v2

    :goto_2
    monitor-exit v4

    return v1

    :cond_7
    :goto_3
    monitor-exit v4

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canHaveRestrictedProfile(I)Z
    .locals 4

    const-string v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    monitor-exit v0

    return v2

    :cond_3
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method cleanupPartialUsers()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x64

    move v7, v3

    :try_start_1
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v9, 0x64

    if-ge v8, v9, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v9, 0x96

    if-lt v8, v9, :cond_3

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v9, 0xa0

    if-gt v8, v9, :cond_3

    const/4 v7, 0x1

    :cond_3
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-nez v7, :cond_4

    iget-boolean v8, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v8, :cond_4

    iget-boolean v8, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v8, :cond_4

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/content/pm/UserInfo;->partial:Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    :goto_3
    move v2, v3

    if-ge v2, v1, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing partially created user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_3

    :cond_7
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public clearSeedAccountData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Cannot clear seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createProfileForUserEvenWhenDisallowed(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 8

    const-string/jumbo v0, "setupRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string/jumbo v0, "no_modify_accounts"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "location_mode"

    const/4 v6, 0x0

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v4, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v0, "no_share_location"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 3

    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    const/high16 v0, 0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportTwoPhoneService"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UserManagerService"

    const-string v1, "Cannot add BMode user. SUPPORTTWOPHONESERVICE is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getConfigMaxMultiUsers()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "persist.sys.show_multiuserui"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "persist.sys.max_users"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v10, p2

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v2, "UserManagerService"

    invoke-static {v0, v2, v10}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    :try_start_1
    const-string v0, "Users:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    move v9, v2

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_e

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    move-object v6, v2

    if-nez v6, :cond_1

    nop

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v18, v13

    goto/16 :goto_2

    :cond_1
    iget-object v2, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object v7, v2

    iget v2, v7, Landroid/content/pm/UserInfo;->id:I

    move v4, v2

    const-string v2, "  "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    goto/16 :goto_6

    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserInfo{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    const-string v2, " serialNo="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v7, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-eqz v2, :cond_3

    :try_start_4
    const-string v2, " <removing> "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :try_start_5
    iget-boolean v2, v7, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-eqz v2, :cond_4

    :try_start_6
    const-string v2, " <partial>"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v2, "    State: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    :try_start_8
    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {v5, v4, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    move v5, v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    invoke-static {v5}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Created: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    :try_start_a
    iget-wide v0, v7, Landroid/content/pm/UserInfo;->creationTime:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v2, v10

    move/from16 v16, v4

    move/from16 v17, v5

    move-wide v4, v11

    move-wide/from16 v18, v13

    move-object v13, v6

    move-object v14, v7

    move-wide v6, v0

    :try_start_b
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v0, "    Last logged in: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v14, Landroid/content/pm/UserInfo;->lastLoggedInTime:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object v4, v10

    move-object v5, v3

    move-wide v6, v11

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide v8, v0

    :try_start_c
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v0, "    Last logged in fingerprint: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v14, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Start time: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v13, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    move-object v4, v10

    move-object v5, v3

    move-wide/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v0, "    Unlock time: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v13, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    move-object v4, v10

    move-object v5, v3

    move-wide/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    const-string v0, "    Has profile owner: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v1, p0

    :try_start_d
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    move/from16 v4, v16

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    Restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :try_start_e
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "    Device policy global restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "    Device policy local restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "    Effective restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_5
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Seed account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         account type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_6
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_7

    const-string v0, "         account options exist"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_7
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "    KNOX flags: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " <LEGACY CL TYPE> "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "    KNOX attributes: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v14, Landroid/content/pm/UserInfo;->attributes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, " <PREMIUM> "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, " <admin locked> "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isLicenseLocked()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, " <license expired> "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isDeviceCompromised()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, " <device compromise detected> "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    :cond_d
    :goto_2
    add-int/lit8 v2, v21, 0x1

    move-wide/from16 v13, v18

    move-object/from16 v8, v20

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v20, v8

    :goto_3
    move-object/from16 v1, p0

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    move-object/from16 v1, p0

    goto/16 :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v18, v13

    move-object v13, v6

    move-object v14, v7

    :goto_4
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    throw v0

    :catchall_6
    move-exception v0

    goto :goto_4

    :cond_e
    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    monitor-exit v20
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    :try_start_14
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "klm_eula_shown"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  agree Knox Privacy Policy: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    const-string/jumbo v4, "true"

    goto :goto_5

    :cond_f
    const-string v4, "false"

    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Device owner id:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Guest restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    :try_start_15
    const-string v0, "    "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :try_start_16
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    :try_start_17
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Device managed: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Recently removed userIds: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_10
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :try_start_18
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Started users state: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :try_start_1a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Max users: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Supports switchable users: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  All guests ephemeral: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v15
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    return-void

    :catchall_7
    move-exception v0

    :try_start_1b
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :try_start_1c
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    :catchall_8
    move-exception v0

    :try_start_1d
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    :try_start_1e
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    :catchall_9
    move-exception v0

    :try_start_1f
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :try_start_20
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    :catchall_a
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    :goto_6
    :try_start_21
    monitor-exit v20
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    :try_start_22
    throw v0

    :catchall_b
    move-exception v0

    goto :goto_6

    :catchall_c
    move-exception v0

    move-wide/from16 v18, v13

    :goto_7
    monitor-exit v15
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_7
.end method

.method public evictCredentialEncryptionKey(I)V
    .locals 5

    const-string v0, "evict CE key"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->restartUserInBackground(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public exists(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v0

    return v0
.end method

.method finishRemoveUser(I)V
    .locals 13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.MANAGE_USERS"

    new-instance v8, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v8, p0, p1}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
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

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get application restrictions for other user/app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBModeDefaultIcon(I)Landroid/graphics/Bitmap;
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v6, -0x2710

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eq v3, p1, :cond_2

    if-nez v6, :cond_2

    const-string v7, "get the icon of a user who is not related"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentBModeUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v7

    invoke-static {v2, p1, v7}, Lcom/android/internal/util/UserIcons;->getDefaultUserIconForBMode(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_4
    monitor-exit v0

    return-object v2

    :cond_5
    :goto_1
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .locals 3

    const-string v0, "get the credential owner"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return v2

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
    return p1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 3

    const-string v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getFreeProfileBadgeLU(I)I
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v0

    new-array v1, v0, [Z

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v6, p1, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->profileBadge:I

    if-ge v6, v0, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->profileBadge:I

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_3

    aget-boolean v5, v1, v4

    if-nez v5, :cond_2

    return v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v3
.end method

.method public getManagedProfileBadge(I)I
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You need MANAGE_USERS permission to: check if specified user a managed profile outside your profile group"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v3, v2, Landroid/content/pm/UserInfo;->profileBadge:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    monitor-exit v1

    return v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getNextAvailableId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId(ZZZ)I

    move-result v0

    return v0
.end method

.method getNextAvailableId(ZZZ)I
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked(ZZZ)I

    move-result v1

    if-ltz v1, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "UserManagerService"

    const-string v3, "All available IDs are used. Recycling LRU ids."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked(ZZZ)I

    move-result v2

    move v1, v2

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    if-ltz v0, :cond_3

    return v0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No user id available!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 6

    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileIds(IZ)[I
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2

    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileParentId(I)I
    .locals 1

    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v0

    return v0
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting profiles related to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(IZZ)Ljava/util/List;

    move-result-object v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .locals 2

    const-string v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserCreationTime(I)J
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    if-ne v0, p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    move-object v1, v4

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget-wide v2, v1, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v2

    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "userHandle can only be the calling user or a managed profile associated with this user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getUserHandle(I)I
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v6, p1, :cond_0

    monitor-exit v0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v6, -0x2710

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eq v3, p1, :cond_2

    if-nez v6, :cond_2

    const-string v7, "get the icon of a user who is not related"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    :cond_2
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v7, :cond_3

    monitor-exit v0

    return-object v2

    :cond_3
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    move-object v1, v7

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v3, "UserManagerService"

    const-string v4, "Couldn\'t find icon file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :cond_4
    :goto_1
    :try_start_2
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getUserIds()[I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 3

    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/pm/UserInfo;

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v2, v1}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v3}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    const-string v0, "getUserRestrictionSource"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v3, -0x2710

    invoke-direct {v1, v3, v2}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    move v2, v4

    if-ltz v2, :cond_4

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v4, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v2, -0x1

    goto :goto_0

    :cond_4
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserSerialNumber(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    monitor-exit v0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserStartRealtime()J
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v3

    :cond_0
    const-wide/16 v3, 0x0

    monitor-exit v1

    return-wide v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUserUnlockRealtime()J
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .locals 4

    const-string v0, "hasBaseUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasManagedProfile(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v6, :cond_0

    invoke-static {v1, v5}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRestrictedProfiles()Z
    .locals 7

    const-string v0, "hasRestrictedProfiles"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v6, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v6, v0, :cond_0

    monitor-exit v1

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .locals 3

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .locals 7

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isDemoUser(I)Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is a demo user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    monitor-exit v1

    return v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isManagedProfile(I)Z
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You need MANAGE_USERS permission to: check if specified user a managed profile outside your profile group"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    monitor-exit v1

    return v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isQuietModeEnabled(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public isRestricted()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSameProfileGroup(II)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v0

    return v0
.end method

.method isUserInitialized(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserInitialized(I)Z

    move-result v0

    return v0
.end method

.method public isUserNameSet(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUserRunning(I)Z
    .locals 1

    const-string v0, "isUserRunning"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(I)Z
    .locals 1

    const-string v0, "isUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .locals 1

    const-string v0, "isUserUnlockingOrUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public makeInitialized(I)V
    .locals 6

    const-string/jumbo v0, "makeInitialized"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/content/pm/UserInfo;->flags:I

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    :try_start_1
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public markGuestForDeletion(I)Z
    .locals 7

    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_remove_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UserManagerService"

    const-string v1, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz p1, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_2
    :try_start_4
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v2, Landroid/content/pm/UserInfo;->flags:I

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v4

    :cond_3
    :goto_0
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onBeforeStartUser(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v4, p1, v1, v3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, p1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :goto_0
    return-void
.end method

.method public onBeforeUnlockUser(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v4, 0x2

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    return-void
.end method

.method onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I
    .locals 5

    if-nez p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x32b09e

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->runList(Ljava/io/PrintWriter;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    return v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/pm/UserManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserLoggedIn(I)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0xdc46c32800L

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    :cond_1
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void

    :cond_2
    :goto_0
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userForeground: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;
    .locals 72
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    move v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, -0x2710

    const/4 v13, 0x0

    const/16 v14, -0x2710

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v26, v3

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    move/from16 v27, v0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v4

    move-object/from16 v4, p2

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move/from16 v29, v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    move/from16 v0, v29

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    move-object/from16 v4, p2

    goto :goto_0

    :cond_0
    move/from16 v0, v29

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_19

    if-ne v0, v4, :cond_15

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    move/from16 v32, v0

    const-string/jumbo v0, "user"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "id"

    const/4 v4, -0x1

    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_13

    const-string/jumbo v4, "serialNumber"

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    move/from16 v33, v4

    const-string v4, "flags"

    move-object/from16 v34, v5

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    move/from16 v35, v4

    const-string v4, "attributes"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v25

    const-string v4, "icon"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "created"

    move-object/from16 v38, v6

    const-wide/16 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v4, "lastLoggedIn"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v4, "lastLoggedInFingerprint"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v4, "profileGroupId"

    const/16 v5, -0x2710

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v4, "profileBadge"

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v6}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v4, "restrictedProfileParentId"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    const-string/jumbo v4, "partial"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    move v15, v6

    :cond_2
    const-string v6, "guestToRemove"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    move/from16 v16, v6

    :cond_3
    const-string v6, "hasCCMBeenProvisioned"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    move/from16 v17, v6

    :cond_4
    const-string/jumbo v6, "seedAccountName"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v6, "seedAccountType"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v19, :cond_5

    if-eqz v20, :cond_6

    :cond_5
    const/16 v18, 0x1

    :cond_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move/from16 v39, v6

    move-object/from16 v40, v4

    const/4 v4, 0x1

    if-eq v6, v4, :cond_12

    const/4 v6, 0x3

    move/from16 v4, v39

    if-ne v4, v6, :cond_8

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v5, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v42, v4

    goto/16 :goto_8

    :cond_8
    :goto_2
    const/4 v6, 0x3

    if-eq v4, v6, :cond_11

    const/4 v6, 0x4

    if-ne v4, v6, :cond_9

    nop

    move/from16 v42, v4

    move/from16 v43, v5

    goto/16 :goto_6

    :cond_9
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v42, v4

    const-string/jumbo v4, "name"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move/from16 v43, v5

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v28

    :cond_a
    :goto_3
    move/from16 v32, v4

    goto :goto_5

    :cond_b
    move/from16 v43, v5

    const-string/jumbo v4, "restrictions"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v22

    :cond_c
    :goto_4
    move/from16 v32, v42

    goto :goto_5

    :cond_d
    const-string v4, "device_policy_restrictions"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v23

    goto :goto_4

    :cond_e
    const-string v4, "device_policy_global_restrictions"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v24

    goto :goto_4

    :cond_f
    const-string v4, "account"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v34

    goto :goto_3

    :cond_10
    const-string/jumbo v4, "seedAccountOptions"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v3}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v21

    const/16 v18, 0x1

    goto :goto_4

    :goto_5
    nop

    move-object/from16 v4, v40

    goto :goto_7

    :cond_11
    move/from16 v42, v4

    move/from16 v43, v5

    :goto_6
    move-object/from16 v4, v40

    move/from16 v32, v42

    :goto_7
    move/from16 v5, v43

    goto/16 :goto_1

    :cond_12
    move/from16 v42, v39

    :goto_8
    move-object/from16 v44, v3

    move v1, v13

    move/from16 v45, v14

    move/from16 v13, v16

    move/from16 v14, v17

    move/from16 v50, v18

    move-object/from16 v48, v19

    move-object/from16 v49, v20

    move-object/from16 v51, v21

    move-object/from16 v52, v22

    move-object/from16 v53, v23

    move-object/from16 v54, v24

    move/from16 v46, v25

    move-object/from16 v3, v28

    move/from16 v6, v33

    move-object/from16 v47, v34

    move/from16 v5, v35

    move-object/from16 v4, v38

    goto :goto_a

    :cond_13
    move-object/from16 v34, v5

    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v44, v3

    const-string v3, "Unable id "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not match the file name "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_14
    move-object/from16 v44, v3

    move-object/from16 v34, v5

    goto :goto_9

    :cond_15
    move/from16 v32, v0

    move-object/from16 v44, v3

    move-object/from16 v34, v5

    :goto_9
    move-object v4, v6

    move v1, v13

    move/from16 v45, v14

    move/from16 v13, v16

    move/from16 v14, v17

    move/from16 v50, v18

    move-object/from16 v48, v19

    move-object/from16 v49, v20

    move-object/from16 v51, v21

    move-object/from16 v52, v22

    move-object/from16 v53, v23

    move-object/from16 v54, v24

    move/from16 v46, v25

    move/from16 v6, v26

    move/from16 v5, v27

    move-object/from16 v3, v28

    move/from16 v42, v32

    move-object/from16 v47, v34

    :goto_a
    move/from16 v71, v15

    move v15, v12

    move/from16 v12, v71

    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v55, v0

    move-object/from16 v56, v3

    move-object/from16 v3, v55

    iput v6, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    iput-wide v7, v3, Landroid/content/pm/UserInfo;->creationTime:J

    iput-wide v9, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    iput-object v11, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    iput-boolean v12, v3, Landroid/content/pm/UserInfo;->partial:Z

    iput-boolean v13, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    iput-boolean v14, v3, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    iput v15, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v1, v3, Landroid/content/pm/UserInfo;->profileBadge:I

    move/from16 v57, v1

    move/from16 v1, v45

    iput v1, v3, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    move/from16 v58, v1

    move/from16 v1, v46

    iput v1, v3, Landroid/content/pm/UserInfo;->attributes:I

    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    move-object/from16 v59, v0

    move/from16 v60, v1

    move-object/from16 v1, v59

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v61, v3

    move-object/from16 v3, v47

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    move-object/from16 v62, v3

    move-object/from16 v3, v48

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    move-object/from16 v63, v3

    move-object/from16 v3, v49

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    move-object/from16 v64, v3

    move/from16 v3, v50

    iput-boolean v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    move/from16 v65, v3

    move-object/from16 v3, v51

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    move-object/from16 v66, v3

    move-object/from16 v67, v4

    move/from16 v29, v57

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4

    move/from16 v68, v5

    move-object/from16 v5, v52

    if-eqz v5, :cond_16

    :try_start_0
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object/from16 v69, v5

    move-object/from16 v70, v53

    :goto_b
    move-object/from16 v5, v54

    goto :goto_e

    :cond_16
    :goto_c
    move-object/from16 v69, v5

    move-object/from16 v5, v53

    if-eqz v5, :cond_17

    :try_start_1
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v70, v5

    goto :goto_b

    :cond_17
    :goto_d
    move-object/from16 v70, v5

    move-object/from16 v5, v54

    if-eqz v5, :cond_18

    :try_start_2
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    monitor-exit v4

    return-object v1

    :goto_e
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_e

    :cond_19
    move/from16 v32, v0

    move-object/from16 v44, v3

    move-object/from16 v34, v5

    move-object v3, v1

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read user "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method reconcileUsers(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public removeUser(I)Z
    .locals 6

    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v1, v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const-string/jumbo v0, "no_remove_managed_profile"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "no_remove_user"

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot remove user. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is enabled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v2

    return v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .locals 1

    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method removeUserInfo(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;)Z
    .locals 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "target should only be specified when we are disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/pm/UserManagerService;->ensureCanModifyQuietMode(Ljava/lang/String;IZ)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz p2, :cond_3

    :try_start_0
    invoke-direct {p0, p3, v2, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_5
    :try_start_2
    invoke-direct {p0, p3, v1, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resetKnoxUserData(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isLegacyEncryption()Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit16 v1, v1, 0x80

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->resetKnoxUserData(II)Z

    move-result v2

    return v2
.end method

.method public semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/pm/SemUserInfo;

    invoke-direct {v1, v0}, Landroid/content/pm/SemUserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "there is no UserInfo for userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4

    const-string/jumbo v0, "set application restrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_0
    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :try_start_1
    const-string v2, "com.samsung.android.knox.kpu"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    const-string/jumbo v2, "ro.product_ship"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android"

    invoke-virtual {v0, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.NOTIFY_KPU_INTERNAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    return-void

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .locals 6

    const-string v0, "Require MANAGE_USERS permission to set user seed data"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such user for settings seed data u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    :try_start_3
    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    iput-object p3, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    iput-object p4, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    iput-boolean p5, v2, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p5, :cond_1

    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "set user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v3, :cond_0

    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User not found for setting user account: u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    :try_start_3
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iput-object p2, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    move-object v0, v3

    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_2

    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method

.method public setUserAdmin(I)V
    .locals 3

    const-string/jumbo v0, "set user admin"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string/jumbo v0, "no_sms"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    const-string/jumbo v0, "no_outgoing_calls"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    return-void

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public setUserCCMProvisioned(I)V
    .locals 4

    const-string v0, "ccm provisioned"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setUserEnabled(I)V
    .locals 3

    const-string v0, "enable user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 2

    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    const-string/jumbo v0, "no_set_user_icon"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UserManagerService"

    const-string v1, "Cannot set user icon. DISALLOW_SET_USER_ICON is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "rename users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v4, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object v1, v4

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    const/4 v0, 0x1

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1, p2}, Lcom/samsung/android/knox/SemPersonaManager;->processProfileNameChange(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    :try_start_1
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserName: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .locals 2

    const-string/jumbo v0, "setUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Cannot check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method systemReady()V
    .locals 6

    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "no_config_wifi"

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "no_config_wifi"

    const/4 v2, 0x1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK_DEVICE_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateUserInfo(ILandroid/os/Bundle;)Z
    .locals 13

    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUserInfo is called for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUserInfo is skiped for dual app user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v0, "updateUserInfo"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    if-eqz p2, :cond_9

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v5, :cond_7

    iget-object v6, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-eqz v6, :cond_6

    const-string v7, "flags"

    invoke-virtual {p2, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "fotaUpgradeVersion"

    const/16 v9, 0x8

    invoke-virtual {p2, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ge v8, v9, :cond_1

    iget v9, v6, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit16 v9, v9, -0x81

    iput v9, v6, Landroid/content/pm/UserInfo;->flags:I

    iget v9, v6, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v10, 0x10000000

    or-int/2addr v9, v10

    iput v9, v6, Landroid/content/pm/UserInfo;->flags:I

    :cond_1
    if-lez v7, :cond_2

    iget v9, v6, Landroid/content/pm/UserInfo;->flags:I

    or-int/2addr v9, v7

    iput v9, v6, Landroid/content/pm/UserInfo;->flags:I

    const/4 v0, 0x1

    const-string v9, "UserManagerService"

    const-string/jumbo v10, "updateUserInfo flags is updated"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v9, "attributes"

    invoke-virtual {p2, v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    iget v9, v6, Landroid/content/pm/UserInfo;->attributes:I

    or-int/2addr v9, v1

    iput v9, v6, Landroid/content/pm/UserInfo;->attributes:I

    const/4 v0, 0x1

    const-string v9, "UserManagerService"

    const-string/jumbo v10, "updateUserInfo attributes is updated"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v9, "name"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    iput-object v9, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v10, "UserManagerService"

    const-string/jumbo v11, "updateUserInfo attributes is updated"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v10, "UserManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateUserInfoFlags needUpdate - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v11, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v10, "UserManagerService"

    const-string/jumbo v11, "updateUserInfoFlags updated user cache"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    goto :goto_0

    :cond_6
    const-string v1, "UserManagerService"

    const-string/jumbo v7, "updateUserInfoFlags user info is null"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string v1, "UserManagerService"

    const-string/jumbo v6, "updateUserInfoFlags user data is null"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v5

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    const/4 v2, 0x1

    const-string v5, "UserManagerService"

    const-string/jumbo v6, "updateUserInfoFlags updated user xml"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_8
    :goto_1
    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_9
    const-string v1, "UserManagerService"

    const-string/jumbo v4, "updateUserInfoFlags bundle data is null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    const-string v1, "UserManagerService"

    const-string/jumbo v4, "updateUserInfoFlags userid is not knox workspace.."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v1, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateUserInfoFlags status - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const-string/jumbo v2, "user"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "id"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "serialNumber"

    iget v4, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "flags"

    iget v4, v1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "attributes"

    iget v4, v1, Landroid/content/pm/UserInfo;->attributes:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "created"

    iget-wide v4, v1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "lastLoggedIn"

    iget-wide v4, v1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "lastLoggedInFingerprint"

    iget-object v4, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "icon"

    iget-object v4, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "partial"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v2, :cond_3

    const-string v2, "guestToRemove"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    if-eqz v2, :cond_4

    const-string v2, "hasCCMBeenProvisioned"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_5

    const-string/jumbo v2, "profileGroupId"

    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const-string/jumbo v2, "profileBadge"

    iget v5, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v2, v4, :cond_6

    const-string/jumbo v2, "restrictedProfileParentId"

    iget v4, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string/jumbo v2, "seedAccountName"

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string/jumbo v2, "seedAccountType"

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string/jumbo v2, "name"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "name"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string/jumbo v5, "restrictions"

    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "device_policy_restrictions"

    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "device_policy_global_restrictions"

    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v2, :cond_a

    const-string v2, "account"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "account"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_b

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v2, :cond_b

    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    const-string/jumbo v2, "user"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
