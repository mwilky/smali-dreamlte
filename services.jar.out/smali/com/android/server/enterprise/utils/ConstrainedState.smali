.class public Lcom/android/server/enterprise/utils/ConstrainedState;
.super Ljava/lang/Object;
.source "ConstrainedState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    }
.end annotation


# static fields
.field private static final CONSTRAINED_DATA_PATH:Ljava/lang/String; = "/efs/constrained"

.field private static final CONSTRAINED_DEFAULT_COMMENT:Ljava/lang/String; = "DEFAULT"

.field private static final CONSTRAINED_DELIMITER:[B

.field private static final CONSTRAINED_MODE_CHANNEL_ID:Ljava/lang/String; = "CONSTRAINED_MODE"

.field private static final CONSTRAINED_MODE_NOTIFICATION_ID:I = 0x11ce

.field private static final CONSTRAINED_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field private static final CONSTRAINED_TYPE_NORMALv2:Ljava/lang/String; = "normalv2"

.field private static final CONSTRAINED_TYPE_NORMALv3:Ljava/lang/String; = "normalv3"

.field private static final TAG:Ljava/lang/String; = "ConstrainedState"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;


# instance fields
.field private final DEBUG:Z

.field private cachedConstrainedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-void

    :array_0
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/utils/ConstrainedState$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$2;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    return-void
.end method

.method private disableConstrainedStateInternal(ILjava/lang/String;)Z
    .locals 19

    move-object/from16 v7, p0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v11, v0

    const/4 v13, 0x1

    :try_start_0
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v14, v1

    iget-object v1, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnrollData;

    move-object v15, v1

    invoke-virtual {v15}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, p2

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ConstrainedState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/constrained"

    invoke-direct {v1, v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    iget-object v1, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ConstrainedStateTable"

    const-string/jumbo v3, "status"

    move/from16 v4, p1

    invoke-virtual {v1, v4, v2, v3, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v4, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    nop

    move v8, v1

    move v9, v2

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-ne v9, v13, :cond_2

    invoke-direct {v7, v13}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    :cond_2
    :goto_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v10, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->setScreenCapture(Z)Z

    const-string v0, "ConstrainedState"

    const-string/jumbo v1, "setScreenCapture enabled due to disableConstrainedState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "ConstrainedState"

    const-string v1, "No data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :goto_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    .locals 8

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    invoke-direct {v0}, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_0
    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    iget-object v5, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ConstrainedState"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ConstrainedState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    goto :goto_3

    :cond_2
    if-nez p1, :cond_3

    const-string v2, ""

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x1040

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    iput-object p1, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_4
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    iget-object v6, v0, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "ConstrainedState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-object v0
.end method

.method private getConstrainedStateAll()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnrollData;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    const/4 v2, 0x0

    return-object v2

    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-object v0
.end method

.method private isMatch([B[BI)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    add-int v2, p3, v1

    array-length v3, p2

    if-lt v2, v3, :cond_0

    return v0

    :cond_0
    aget-byte v2, p1, v1

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ConstrainedNoti"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    const-string v2, "ConstrainedState"

    const-string v3, "Failed to get NotificationManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "CONSTRAINED_MODE"

    const/4 v4, 0x4

    invoke-direct {v2, v3, p1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/16 v2, 0x11ce

    if-eqz p5, :cond_4

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v5, "CONSTRAINED_MODE"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const v4, 0x108066f

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v5, 0x1040248

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v4, "DEFAULT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v5, 0x104029c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v6, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "pkg"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const-string/jumbo v5, "targetPkgName"

    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_3
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_1
    return-void
.end method

.method private split([B[B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/utils/ConstrainedState;->isMatch([B[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, p1

    add-int/2addr v3, v2

    move v2, v3

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v2, p2

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private updateConstrainedStateData(Z)V
    .locals 50

    move-object/from16 v7, p0

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v8, v2

    const/4 v9, 0x2

    new-array v2, v9, [Ljava/lang/String;

    move-object v10, v2

    const-string v2, "adminUid"

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const-string/jumbo v2, "status"

    const/4 v12, 0x1

    aput-object v2, v10, v12

    iget-object v2, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ConstrainedStateTable"

    invoke-virtual {v2, v3, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/constrained"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v2

    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v14, v2

    if-eqz v14, :cond_14

    array-length v15, v14

    move v6, v11

    :goto_0
    if-ge v6, v15, :cond_14

    aget-object v2, v14, v6

    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    move-object v4, v2

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object v3, v2

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move/from16 v16, v1

    if-nez v16, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    move-object/from16 v42, v0

    move-object v1, v3

    move/from16 v23, v6

    move/from16 v17, v9

    move-object/from16 v49, v10

    move/from16 v22, v11

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v10, v3

    goto/16 :goto_18

    :catch_0
    move-exception v0

    move-object v1, v3

    goto/16 :goto_16

    :cond_0
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-direct {v7, v1, v4}, Lcom/android/server/enterprise/utils/ConstrainedState;->split([B[B)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    const/4 v1, 0x0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v17, :cond_1

    :try_start_4
    new-instance v9, Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, [B

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, [B

    array-length v11, v11

    move-object/from16 v21, v1

    const/4 v1, 0x0

    invoke-direct {v9, v12, v1, v11}, Ljava/lang/String;-><init>([BII)V

    move-object v1, v9

    goto :goto_1

    :cond_1
    move-object/from16 v21, v1

    move-object/from16 v9, v21

    :goto_1
    if-nez v9, :cond_2

    const-string v1, "ConstrainedState"

    const-string/jumbo v11, "something\'s wrong // type is null"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    move-object/from16 v42, v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    const/16 v17, 0x2

    const/16 v22, 0x0

    move-object v10, v3

    move-object v9, v5

    goto/16 :goto_11

    :cond_2
    :try_start_5
    const-string/jumbo v1, "normal"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-nez v1, :cond_4

    :try_start_6
    const-string/jumbo v1, "normalv2"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "normalv3"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "ConstrainedState"

    const-string/jumbo v11, "type is not normal"

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :cond_4
    :goto_3
    const/4 v1, 0x0

    const/4 v11, 0x1

    :try_start_7
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v12, :cond_5

    :try_start_8
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    array-length v11, v12

    if-lez v11, :cond_5

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x1

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, [B

    move-object/from16 v23, v1

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, [B

    array-length v1, v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v24, v3

    const/4 v3, 0x0

    :try_start_9
    invoke-direct {v11, v12, v3, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v1, v11

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v10, v24

    goto/16 :goto_18

    :catch_1
    move-exception v0

    move-object/from16 v1, v24

    goto/16 :goto_16

    :catchall_2
    move-exception v0

    move-object/from16 v24, v3

    move-object v1, v0

    move-object/from16 v10, v24

    goto/16 :goto_18

    :catch_2
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v1, v24

    goto/16 :goto_16

    :cond_5
    move-object/from16 v23, v1

    move-object/from16 v24, v3

    move-object/from16 v11, v23

    :goto_4
    if-eqz v11, :cond_12

    const/4 v1, 0x0

    const/4 v3, 0x2

    :try_start_a
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_11

    new-instance v12, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, [B

    move-object/from16 v33, v1

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, [B

    array-length v1, v1

    move-object/from16 v34, v4

    const/4 v4, 0x0

    invoke-direct {v12, v3, v4, v1}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v27, v12

    const/4 v1, 0x3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v12, v3

    const/4 v3, 0x0

    if-eqz v12, :cond_6

    const/4 v4, 0x0

    :try_start_b
    aget-byte v1, v12, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    move/from16 v35, v3

    const/4 v4, 0x1

    aget-byte v3, v12, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    const/16 v17, 0x2

    aget-byte v3, v12, v17

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v3, v12, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    move/from16 v35, v1

    goto :goto_5

    :cond_6
    move/from16 v35, v3

    const/16 v17, 0x2

    :goto_5
    if-gtz v35, :cond_7

    const-string v1, "ConstrainedState"

    const-string/jumbo v3, "something\'s wrong"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v42, v0

    move-object/from16 v19, v2

    move/from16 v23, v6

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v10, v24

    move-object/from16 v21, v34

    const/16 v22, 0x0

    move-object v9, v5

    goto/16 :goto_e

    :cond_7
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v36, v1

    :try_start_c
    const-string/jumbo v1, "normalv2"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-nez v1, :cond_9

    :try_start_d
    const-string/jumbo v1, "normalv3"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    move-object/from16 v37, v3

    move-object/from16 v18, v4

    move-object/from16 v39, v5

    goto :goto_8

    :cond_9
    :goto_6
    const/4 v1, 0x4

    :try_start_e
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v18, :cond_a

    :try_start_f
    new-instance v1, Ljava/lang/String;

    move-object/from16 v37, v3

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, [B

    move-object/from16 v38, v4

    const/4 v4, 0x4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    move-object/from16 v39, v5

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_7

    :cond_a
    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v1, v36

    :goto_7
    const/4 v3, 0x5

    :try_start_10
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object/from16 v36, v1

    move-object/from16 v18, v3

    :goto_8
    const-string/jumbo v1, "normalv3"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v1, :cond_b

    :try_start_11
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-object/from16 v37, v1

    goto :goto_9

    :cond_b
    const/4 v5, 0x0

    :goto_9
    :try_start_12
    new-instance v1, Lcom/samsung/android/knox/EnrollData;

    invoke-direct {v1}, Lcom/samsung/android/knox/EnrollData;-><init>()V

    move-object v4, v1

    iget-object v1, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object v3, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    :try_start_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_e

    const/16 v20, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_a
    move-object/from16 v40, v21

    move-object/from16 v5, v40

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    move-object/from16 v41, v21

    move-object/from16 v42, v0

    const-string v0, "adminUid"

    move/from16 v43, v1

    move-object/from16 v1, v41

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v44, v2

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v45, v1

    iget-object v1, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v46, v5

    new-instance v5, Landroid/content/ComponentName;

    move/from16 v47, v6

    const-string v6, "com.sds.mobile.mdm.client.MDMService"

    move-object/from16 v48, v9

    const-string v9, "com.sds.mobile.mdm.client.MDMService.ui.receiver.DeviceAdminPolicyReceiver"

    invoke-direct {v5, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x3e8

    if-ne v0, v6, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v3, v5}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "ConstrainedState"

    const-string v9, "Constrained mode is off - sds mdm was activated"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    nop

    :goto_b
    move/from16 v43, v6

    goto :goto_c

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "ConstrainedState"

    const-string v9, "Constrained mode is off"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move v6, v2

    goto :goto_b

    :cond_d
    nop

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v44

    move-object/from16 v20, v45

    move-object/from16 v21, v46

    move/from16 v6, v47

    move-object/from16 v9, v48

    const/4 v5, 0x0

    goto :goto_a

    :cond_e
    move-object/from16 v42, v0

    move/from16 v43, v1

    move-object/from16 v44, v2

    move/from16 v47, v6

    move-object/from16 v48, v9

    :goto_c
    move-object/from16 v25, v4

    move-object/from16 v26, v11

    move/from16 v28, v35

    move-object/from16 v29, v36

    move/from16 v30, v43

    move-object/from16 v31, v18

    move-object/from16 v32, v37

    :try_start_14
    invoke-virtual/range {v25 .. v32}, Lcom/samsung/android/knox/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move/from16 v9, p1

    const/4 v0, 0x1

    if-ne v9, v0, :cond_10

    if-nez v43, :cond_f

    const/4 v6, 0x1

    move-object v1, v7

    move-object/from16 v19, v44

    move-object v2, v11

    move-object/from16 v20, v3

    move-object/from16 v5, v24

    move-object/from16 v3, v27

    move-object v0, v4

    move-object/from16 v21, v34

    move-object/from16 v4, v36

    move-object/from16 v49, v10

    move-object/from16 v9, v39

    const/16 v22, 0x0

    move-object v10, v5

    move-object/from16 v5, v37

    move/from16 v23, v47

    :try_start_15
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_d

    :cond_f
    move-object/from16 v20, v3

    move-object v0, v4

    move-object/from16 v49, v10

    move-object/from16 v10, v24

    move-object/from16 v21, v34

    move-object/from16 v9, v39

    move-object/from16 v19, v44

    move/from16 v23, v47

    const/16 v22, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v11

    move-object/from16 v3, v27

    move-object/from16 v4, v36

    move-object/from16 v5, v37

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_d

    :cond_10
    move-object/from16 v20, v3

    move-object v0, v4

    move-object/from16 v49, v10

    move-object/from16 v10, v24

    move-object/from16 v21, v34

    move-object/from16 v9, v39

    move-object/from16 v19, v44

    move/from16 v23, v47

    const/16 v22, 0x0

    :goto_d
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    goto :goto_f

    :cond_11
    move-object/from16 v42, v0

    move-object/from16 v33, v1

    move-object/from16 v19, v2

    move/from16 v17, v3

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v10, v24

    const/16 v22, 0x0

    move-object v9, v5

    const-string v0, "ConstrainedState"

    const-string v1, "comment is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    goto :goto_10

    :catchall_3
    move-exception v0

    move-object/from16 v10, v24

    move-object v1, v0

    goto/16 :goto_18

    :catch_3
    move-exception v0

    move-object/from16 v10, v24

    move-object v1, v10

    goto/16 :goto_16

    :cond_12
    move-object/from16 v42, v0

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v10, v24

    const/16 v17, 0x2

    const/16 v22, 0x0

    move-object v9, v5

    const-string v0, "ConstrainedState"

    const-string/jumbo v1, "package name is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    nop

    :goto_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    const/4 v1, 0x0

    goto :goto_12

    :catchall_4
    move-exception v0

    goto :goto_15

    :catch_4
    move-exception v0

    move-object v1, v10

    goto :goto_16

    :catchall_5
    move-exception v0

    move-object v10, v3

    move-object v1, v0

    goto/16 :goto_18

    :catch_5
    move-exception v0

    move-object v10, v3

    move-object v1, v10

    goto :goto_16

    :cond_13
    move-object/from16 v42, v0

    move/from16 v23, v6

    move/from16 v17, v9

    move-object/from16 v49, v10

    move/from16 v22, v11

    :goto_12
    add-int/lit8 v6, v23, 0x1

    move/from16 v9, v17

    move/from16 v11, v22

    move-object/from16 v0, v42

    move-object/from16 v10, v49

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_14
    move-object/from16 v42, v0

    move-object/from16 v49, v10

    :try_start_16
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "ConstrainedState"

    const-string v2, "Data is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_13

    :cond_15
    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :goto_13
    if-eqz v1, :cond_16

    :try_start_17
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    goto :goto_14

    :catch_6
    move-exception v0

    goto :goto_17

    :cond_16
    :goto_14
    goto :goto_17

    :catchall_6
    move-exception v0

    move-object v10, v1

    :goto_15
    move-object v1, v0

    goto :goto_18

    :catch_7
    move-exception v0

    :goto_16
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_17

    iget-object v2, v7, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :cond_17
    if-eqz v1, :cond_16

    :try_start_19
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    goto :goto_14

    :goto_17
    return-void

    :goto_18
    nop

    if-eqz v10, :cond_18

    :try_start_1a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8

    goto :goto_19

    :catch_8
    move-exception v0

    nop

    :cond_18
    :goto_19
    throw v1
.end method

.method private updateNotification()V
    .locals 11

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public checkConstrainedState()Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 16

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    const/4 v0, 0x0

    move-object v5, v0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    move-object v5, v0

    if-eqz v5, :cond_0

    invoke-static {v5, v6}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v9

    if-nez v9, :cond_2

    return v6

    :cond_2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p0

    invoke-direct {v12, v1, v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v13

    if-eqz v13, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    iget-object v14, v13, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v6, "ConstrainedState"

    const-string/jumbo v14, "signature check success"

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :cond_3
    const-string v14, "ConstrainedState"

    const-string v15, "Signature is different"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    move-object/from16 v12, p0

    :cond_5
    goto :goto_0

    :cond_6
    move-object/from16 v12, p0

    goto :goto_2

    :cond_7
    :goto_1
    move-object/from16 v12, p0

    const-string v0, "ConstrainedState"

    const-string/jumbo v7, "something\'s wrong"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v6

    :catch_0
    move-exception v0

    move-object/from16 v12, p0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    return v6
.end method

.method public checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 16

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    const/4 v0, 0x0

    move-object v5, v0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    move-object v5, v0

    if-eqz v5, :cond_0

    invoke-static {v5, v6}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnrollData;->getSignature()[B

    move-result-object v9

    if-nez v9, :cond_2

    return v6

    :cond_2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p0

    invoke-direct {v12, v1, v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v13

    if-eqz v13, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    iget-object v14, v13, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v6, "ConstrainedState"

    const-string/jumbo v14, "signature check success"

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :cond_3
    const-string v14, "ConstrainedState"

    const-string v15, "Signature is different"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    move-object/from16 v12, p0

    :cond_5
    goto :goto_0

    :cond_6
    move-object/from16 v12, p0

    goto :goto_2

    :cond_7
    :goto_1
    move-object/from16 v12, p0

    const-string v0, "ConstrainedState"

    const-string/jumbo v7, "something\'s wrong"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v6

    :catch_0
    move-exception v0

    move-object/from16 v12, p0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    return v6
.end method

.method public cleanUpConstrainedState(I)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    const-string v3, "Only system or itself can remove an EDM admin"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "adminUid"

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ConstrainedStateTable"

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    :cond_1
    goto :goto_0

    :cond_2
    const-string v4, "ConstrainedState"

    const-string v5, "constrained state will go on"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

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

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v5, p6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    const-string v7, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    const-string v8, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v7, p1

    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v6

    const/4 v7, 0x0

    if-gtz v5, :cond_0

    return v7

    :cond_0
    iget-object v0, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v11, "/efs/constrained"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v0, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v13}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "ConstrainedState"

    const-string v15, "already existing values // update"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/io/File;

    const-string v15, "/efs/constrained"

    invoke-direct {v14, v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    const/4 v12, 0x0

    const/4 v0, 0x0

    move-object v13, v0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v15, 0x7fffffff

    and-int/2addr v0, v15

    new-instance v15, Ljava/io/File;

    const-string v7, "/efs/constrained"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v11

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v15, v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v15

    move-object v13, v7

    move v7, v0

    :goto_2
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v7, v7, 0x1

    new-instance v0, Ljava/io/File;

    const-string v11, "/efs/constrained"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v11, v5, 0x18

    int-to-byte v11, v11

    const/4 v15, 0x0

    aput-byte v11, v0, v15

    shr-int/lit8 v11, v5, 0x10

    int-to-byte v11, v11

    const/4 v15, 0x1

    aput-byte v11, v0, v15

    const/4 v11, 0x2

    shr-int/lit8 v15, v5, 0x8

    int-to-byte v15, v15

    aput-byte v15, v0, v11

    const/4 v11, 0x3

    int-to-byte v15, v5

    aput-byte v15, v0, v11

    move-object v11, v0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v12, v0

    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string/jumbo v0, "normalv3"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const-string/jumbo v0, "normalv2"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "normal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_3
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_4

    :cond_7
    const-string v0, "DEFAULT"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_4
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v12, v11}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p4, :cond_8

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    if-eqz p5, :cond_8

    new-instance v0, Landroid/content/pm/Signature;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    move-object/from16 v17, v0

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v12, v2}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    iget-object v2, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v2

    move-object/from16 v18, v0

    const/16 v0, 0x40

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v0, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    array-length v0, v3

    move-object/from16 v20, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_b

    aget-object v17, v3, v2

    move-object/from16 v21, v17

    move/from16 v22, v0

    move-object/from16 v0, v21

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v22

    goto :goto_5

    :cond_a
    move-object/from16 v19, v0

    move-object/from16 v20, v2

    :cond_b
    move-object/from16 v2, v18

    :goto_6
    if-eqz v2, :cond_c

    new-instance v0, Landroid/content/pm/Signature;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    move-object/from16 v23, v0

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v12, v3}, Ljava/io/FileOutputStream;->write([B)V

    :cond_c
    :goto_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, v6, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "ConstrainedStateTable"

    const-string/jumbo v4, "status"

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    move v2, v0

    if-nez v2, :cond_e

    nop

    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    if-eqz v12, :cond_d

    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_9

    :cond_d
    :goto_8
    nop

    :goto_9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    return v3

    :cond_e
    const/4 v3, 0x1

    :try_start_5
    invoke-direct {v1, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    nop

    if-eqz v12, :cond_f

    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_b

    :cond_f
    :goto_a
    nop

    :goto_b
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x1

    return v3

    :catch_2
    move-exception v0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object/from16 v16, v11

    move-object v2, v0

    goto :goto_e

    :catch_3
    move-exception v0

    move-object/from16 v16, v11

    :goto_c
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v12, :cond_10

    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v2, v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_10

    :cond_10
    :goto_d
    goto :goto_10

    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_e
    if-eqz v12, :cond_11

    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_f

    :catch_5
    move-exception v0

    move-object v3, v0

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :cond_11
    :goto_f
    throw v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_11

    :catch_6
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_10
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x0

    return v2

    :goto_11
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getConstrainedState()I
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public isRestrictedByConstrainedState(I)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getPolicyBitMask()I

    move-result v1

    and-int v4, v1, p1

    if-lez v4, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method
