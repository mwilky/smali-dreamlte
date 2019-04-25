.class public Lcom/android/server/pm/PersonaServiceHelper;
.super Ljava/lang/Object;
.source "PersonaServiceHelper.java"


# static fields
.field private static final ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DUALDAR_TYPE_DO_ONLY:I = 0x2

.field public static final DUALDAR_TYPE_DO_PO:I = 0x1

.field public static final DUALDAR_TYPE_NONE:I = -0x1

.field public static final DUALDAR_TYPE_PO_ONLY:I = 0x0

.field static final STOCK_PM_FLAGS:I = 0x400

.field private static final TAG:Ljava/lang/String; = "PersonaServiceHelper"

.field static mApplicationPolicyService:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private static mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field private static mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private static mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.bluetooth/com.android.bluetooth.hfp.HeadsetService"

    const-string v2, "com.android.bluetooth/com.android.bluetooth.a2dp.A2dpService"

    const-string v3, "com.android.bluetooth/com.android.bluetooth.a2dp.A2dpSinkService"

    const-string v4, "com.android.bluetooth/com.android.bluetooth.hfpclient.HeadsetClientService"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSecureFodlerImmeditateLockExceptionalCase(Ljava/util/List;)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "PersonaServiceHelper"

    const-string/jumbo v1, "mSecureFodlerImmeditateLockExceptionalList == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    const-string v0, "com.android.systemui.recents.RecentsActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.systemui.recents.SeparatedRecentsActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings.ConfirmLockPattern$InternalActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings.ConfirmLockPassword$InternalActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings.ChooseLockGeneric"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings.ChooseLockPattern"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings.ChooseLockPassword"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.settings.notification.SecRedactionInterstitial"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.voc.LauncherActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.voc.disclaimer.DisclaimerActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.app.syncmldm.ui.XUIInstallConfirmActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.internal.app.ChooserActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.knox.securefolder.foldercontainer.MultiwindowLockActivity"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.smartmirroring.CastingDialog"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static canAddMoreManagedProfiles(Landroid/content/Context;ZILjava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    return v6

    :cond_0
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isBBCContainer()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isMyKnox()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    :cond_5
    :goto_2
    goto :goto_0

    :cond_6
    const/high16 v4, 0x4000000

    and-int/2addr v4, p2

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    const-string v4, "PersonaServiceHelper"

    const-string v7, "creating BBC container"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v3, v5, :cond_b

    const-string v4, "PersonaServiceHelper"

    const-string v5, "creation failed when already exists bbc container"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_7
    const/high16 v4, 0x20000

    and-int/2addr v4, p2

    if-nez v4, :cond_a

    const/high16 v4, 0x2000000

    and-int/2addr v4, p2

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    const-string v4, "PersonaServiceHelper"

    const-string v7, "creating enterprise owned container"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v2, v5, :cond_9

    const-string v4, "PersonaServiceHelper"

    const-string v5, "creation failed, cannot remove legacy CL/COM container"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_9
    if-lt v1, v5, :cond_b

    if-nez p1, :cond_b

    const-string v4, "PersonaServiceHelper"

    const-string v5, "creation failed when not allowed to remove PO"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_a
    :goto_3
    const-string v4, "PersonaServiceHelper"

    const-string v7, "creating user owned container"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v0, v5, :cond_b

    const-string v4, "PersonaServiceHelper"

    const-string v5, "creation failed when already exists user-owned container"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_b
    return v5
.end method

.method private static changeIntentforKiosk(Landroid/content/Intent;Ljava/lang/String;II)Z
    .locals 5

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "true"

    sget-object v2, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKnoxKioskMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    if-eqz p0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    or-int/2addr v4, p3

    invoke-interface {v3, v0, p1, v4, p2}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    nop

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v3

    nop

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->isAllowedtoLaunch(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_2
    return v1
.end method

.method static checkPackageInstallationForKnox(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Ljava/lang/String;ILandroid/content/pm/VerificationParams;ILandroid/content/Context;Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageManagerService;)Z
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p7

    const/4 v6, 0x0

    if-eqz p4, :cond_8

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_8

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v8

    const-string v0, "PersonaServiceHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Installer check with calling uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " and name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " original uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.knox.container.permission.KNOX_SYSTEM_APP_UPGRADE_PERMISSION"

    move-object/from16 v9, p6

    invoke-virtual {v9, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    const-string v12, "PersonaServiceHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Check if installer "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " isAllowedToInstall "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    if-eqz v0, :cond_5

    const/4 v13, 0x0

    move-object v14, v12

    :try_start_0
    new-instance v0, Ljava/io/File;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v15, p0

    :try_start_1
    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v15, p0

    :goto_1
    const-string v11, "PersonaServiceHelper"

    const-string v12, "Check Installer, PackageParserException "

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v14, :cond_4

    iget-object v0, v14, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object/from16 v11, p8

    invoke-virtual {v11, v0, v6, v3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    if-eqz v12, :cond_3

    iget v6, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v16, 0x800000

    and-int v6, v6, v16

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v11, p8

    :cond_3
    move v6, v13

    :goto_3
    const-string v12, "PersonaServiceHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Installer "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Is allowed to install pkg "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ? "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    move v6, v13

    goto :goto_4

    :cond_5
    move-object/from16 v15, p0

    move-object/from16 v11, p8

    move v6, v0

    :goto_4
    if-nez v6, :cond_9

    invoke-virtual {v5, v4, v3}, Lcom/android/server/pm/PackageInstallerService;->isFromApprovedInstaller(II)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    if-eq v8, v0, :cond_9

    invoke-virtual {v5, v8, v3}, Lcom/android/server/pm/PackageInstallerService;->isFromApprovedInstaller(II)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_6
    const-string v0, "PersonaServiceHelper"

    const-string v7, "Block installation either because the calling or the original installer is not approved"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    :try_start_2
    const-string v0, ""

    const/16 v7, -0x6f

    const/4 v12, 0x0

    invoke-interface {v1, v0, v7, v12, v12}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v7, "PersonaServiceHelper"

    const-string/jumbo v12, "remote exception"

    invoke-static {v7, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_5
    const/4 v7, 0x1

    return v7

    :cond_8
    move-object/from16 v15, p0

    move-object/from16 v9, p6

    move-object/from16 v11, p8

    :cond_9
    const/4 v6, 0x0

    return v6
.end method

.method static createKnoxContainer(ILcom/android/server/pm/UserManagerService;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p0, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "no_outgoing_beam"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, p0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    const-string/jumbo v1, "no_add_user"

    invoke-virtual {p1, v1, v2, p0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    return-void
.end method

.method static deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;IILandroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageHandler;Lcom/android/server/pm/Settings;ZZ)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p4

    if-eqz p8, :cond_1

    const-string v0, "PersonaServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START PACKAGE DELETE: observer{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}\npkg{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}\nuser{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v0, "PersonaServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START PACKAGE DELETE: observer{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "null"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}\npkg{<packageName>}\nuser{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v0, "android.permission.DELETE_PACKAGES"

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    const-string v0, "PersonaServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackageAsUser : uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, v12, :cond_3

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackage for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "no_uninstall_apps"

    move-object/from16 v9, p5

    invoke-virtual {v9, v12, v0}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v11, :cond_4

    const/4 v0, -0x3

    :try_start_0
    invoke-interface {v11, v10, v0}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    nop

    :goto_4
    return-void

    :cond_5
    if-eqz p9, :cond_6

    const-string v0, "PersonaServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackageAsUser: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$1;

    move-object v1, v0

    move-object/from16 v2, p6

    move v3, v12

    move/from16 v4, p3

    move-object v5, v10

    move-object v6, v9

    move-object/from16 v7, p7

    move-object v8, v11

    move-object v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/PersonaServiceHelper$1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageHandler;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Landroid/content/pm/IPackageDeleteObserver;Landroid/content/Context;)V

    move-object/from16 v1, p6

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static deletePackageForUsersAndFlags(Lcom/android/server/pm/PackageInstallerService;IILandroid/content/pm/IPackageDeleteObserver2;Landroid/content/pm/VersionedPackage;ILcom/android/server/pm/Settings;Lcom/android/server/pm/PackageManagerService;)Z
    .locals 14

    move v1, p1

    move/from16 v8, p2

    move/from16 v2, p5

    const/4 v0, -0x3

    const/4 v9, 0x1

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/PackageInstallerService;->isFromApprovedUnInstaller(II)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deletePackageAsUser deleting for Persona is not allowed for this caller:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    move-object/from16 v10, p3

    :try_start_1
    invoke-interface {v10, v3, v0, v4}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v10, p3

    :goto_0
    return v9

    :cond_0
    move-object/from16 v10, p3

    const-string v3, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deletePackageAsUser- pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", flag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v9

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v11, p7

    invoke-virtual {v11, v5, v4, v4}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    const/16 v6, 0x3e8

    if-ne v1, v6, :cond_2

    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v11, p7

    :goto_2
    if-nez v3, :cond_4

    const-string v5, "com.google.android.webview"

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    :cond_4
    move v12, v3

    if-nez v12, :cond_5

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v13, p6

    invoke-static {v3, v13}, Lcom/android/server/pm/PersonaServiceHelper;->isPackageEnabledInAnyPersona(Ljava/lang/String;Lcom/android/server/pm/Settings;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "PersonaServiceHelper"

    const-string v4, "deletePackageAsUser deleting for ALL_USERS is not allowed, removing the flag"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/2addr v0, v2

    const-string v2, "PersonaServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackageAsUser- pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", flag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p4

    move-object v3, v10

    move v4, v8

    move v5, v0

    move-object v6, v13

    move-object v7, v11

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PersonaServiceHelper;->deletePackageOnlyForUsers(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IILcom/android/server/pm/Settings;Lcom/android/server/pm/PackageManagerService;)V

    return v9

    :cond_5
    move-object/from16 v13, p6

    :cond_6
    move v0, v2

    const-string v3, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deletePackageAsUser- pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", userId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", flag"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private static deletePackageOnlyForUsers(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IILcom/android/server/pm/Settings;Lcom/android/server/pm/PackageManagerService;)V
    .locals 8

    const-string v0, "PersonaServiceHelper"

    const-string v1, "deletePackageOnlyForUsers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PersonaServiceHelper"

    const-string/jumbo v3, "user manager exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    const-string v3, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " current user is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_1

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v5, "PersonaServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleting given package for user :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p5, p0, p1, v5, p3}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    goto :goto_2

    :cond_0
    const-string v5, "PersonaServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not installed in user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ". Do not try to uninstall this package."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method private static getApplicationPolicyService()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v0, :cond_0

    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    :cond_0
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method public static getDualDARType(I)I
    .locals 4

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p0, :cond_1

    const/4 v0, 0x2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "PersonaServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DualDAR Container Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getDualDARUser()I
    .locals 2

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v1, -0x1

    return v1
.end method

.method static getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/PackageManagerService;)Landroid/util/Pair;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isForKnoxNFC()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PersonaServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getLastChosenActivity NFC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.sec.knox.EXTRA_KNOX_ARRAY"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_3

    const/4 v0, 0x0

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v14, v0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v15, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Integer;

    const-string v0, "PersonaServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastChosenActivity NFC for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v8, p1

    move/from16 v7, p2

    move-object/from16 v6, p3

    invoke-virtual {v6, v10, v8, v7, v0}, Lcom/android/server/pm/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v16

    if-nez v16, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object v0, v6

    move-object v1, v10

    move-object v2, v8

    move v3, v7

    move-object/from16 v4, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move-object v11, v9

    move/from16 v9, v20

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService;->findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;IZZZI)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    const-string v0, "PersonaServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pms.getLastChosenActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_1

    new-instance v0, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    goto/16 :goto_0

    :cond_2
    const-string v0, "PersonaServiceHelper"

    const-string v1, "getLastChosenActivity NFC return null as no user has one"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/Pair;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    const-string v0, "PersonaServiceHelper"

    const-string v1, "getLastChosenActivity NFC null integer array"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getPersonaManager()Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    :cond_0
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method public static getPlayForWorkProxy(Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 29

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    if-eqz v3, :cond_0

    const-string v0, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PfW getPlayForWorkProxy() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    const-string/jumbo v0, "packageName"

    const-string/jumbo v5, "signature"

    const-string v6, "flags"

    filled-new-array {v0, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v0, 0x0

    move v7, v0

    :try_start_0
    invoke-virtual {v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    if-ne v10, v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    move v10, v0

    if-eqz v10, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v19, v4

    :goto_0
    move-object/from16 v20, v5

    goto/16 :goto_a

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "PlayForWorkProxy"

    invoke-virtual {v4, v15, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-eqz v15, :cond_5

    :try_start_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_5

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentValues;

    move-object/from16 v17, v16

    const-string/jumbo v11, "packageName"

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v19, v4

    :try_start_4
    const-string/jumbo v4, "signature"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    const-string v4, "flags"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v14, v4

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_3
    nop

    move-object v0, v11

    move-object/from16 v4, v19

    goto :goto_2

    :cond_4
    move-object/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v11, v18

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    goto/16 :goto_a

    :cond_5
    move-object/from16 v19, v4

    move-object v11, v0

    :goto_3
    if-eqz v3, :cond_6

    const-string v0, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PfW getPlayForWorkProxy() flags & FLAG_ALLOW_PROXY_FOR_PFW "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v8, v14, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_6
    :goto_4
    and-int/lit8 v0, v14, 0x1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    if-eqz v3, :cond_7

    const-string v0, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PfW getPlayForWorkProxy() flag "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " does not allow PfW"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    const/4 v4, 0x0

    return-object v4

    :cond_8
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v8, 0x8080

    invoke-virtual {v0, v4, v8, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    if-nez v4, :cond_9

    if-eqz v3, :cond_9

    const-string v0, "PersonaServiceHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v20, v5

    :try_start_6
    const-string v5, "PfW getPlayForWorkProxy() Admin *not found* in "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    move-object/from16 v20, v5

    :goto_5
    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v8, v6

    move v6, v0

    :goto_6
    if-ge v6, v5, :cond_e

    :try_start_7
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v21, v0

    move-object/from16 v22, v4

    move-object/from16 v4, v21

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move/from16 v24, v5

    move-object/from16 v5, v23

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v26, v5

    move-object/from16 v5, v25

    if-nez v5, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    if-eqz v0, :cond_d

    :try_start_8
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v1, v4}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    new-instance v1, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v1, v11, v13}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/server/pm/PersonaServiceHelper;->validatePfWProxySig(Lcom/samsung/android/knox/AppIdentity;I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object v8, v1

    :cond_b
    if-eqz v3, :cond_c

    const-string v1, "PersonaServiceHelper"

    move-object/from16 v27, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PfW getPlayForWorkProxy() found activateAdmin for package  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    :cond_c
    move-object/from16 v27, v0

    :goto_7
    goto :goto_9

    :catch_3
    move-exception v0

    if-eqz v3, :cond_d

    :try_start_9
    const-string v1, "PersonaServiceHelper"

    const-string v2, "PfW getPlayForWorkProxy() Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_d
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v22

    move/from16 v5, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v6, v8

    goto :goto_a

    :cond_e
    :goto_9
    nop

    return-object v8

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    :goto_a
    if-eqz v3, :cond_f

    const-string v1, "PersonaServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PfW getPlayForWorkProxy exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method static getPreferredInfoForUser(Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/pm/PackageManagerService;)Landroid/content/pm/ResolveInfo;
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual {v14, v10, v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget v5, v9, Landroid/content/pm/ResolveInfo;->priority:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v14

    move-object v1, v10

    move-object v2, v11

    move v3, v12

    move-object v4, v15

    move-object/from16 v16, v9

    move v9, v13

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService;->findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;IZZZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTimaInstance()Lcom/android/server/pm/TimaHelper;
    .locals 2

    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    const-string v0, "PersonaServiceHelper"

    const-string v1, "getTimaInstance success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object v0
.end method

.method public static getUserManager()Lcom/android/server/pm/UserManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    :cond_0
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static installStageForKnox(Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageManagerService;)Z
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p7

    const-string v0, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installStageForKnox(user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " installerUid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v14, p0

    move-object/from16 v6, p2

    move-object/from16 v8, p6

    move-object/from16 v15, p8

    goto/16 :goto_6

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_0

    move-object/from16 v6, p2

    iget v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    const-string v0, "PersonaServiceHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Installer check name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " original uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.knox.container.permission.KNOX_SYSTEM_APP_UPGRADE_PERMISSION"

    move-object/from16 v8, p6

    invoke-virtual {v8, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    const-string v11, "PersonaServiceHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Check if installer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " isAllowedToInstall "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    if-eqz v0, :cond_6

    const/4 v12, 0x0

    move-object v13, v11

    nop

    move-object/from16 v14, p0

    :try_start_0
    invoke-static {v14, v5}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v15, v0

    const-string v15, "PersonaServiceHelper"

    const-string v11, "Check Installer, PackageParserException "

    invoke-static {v15, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v13, :cond_5

    iget-object v0, v13, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    nop

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    move-object/from16 v15, p8

    invoke-virtual {v15, v0, v5, v11}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    if-eqz v11, :cond_4

    iget v5, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v16, 0x800000

    and-int v5, v5, v16

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v15, p8

    :cond_4
    move v5, v12

    :goto_3
    const-string v11, "PersonaServiceHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Installer "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Is allowed to install pkg "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ? "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    move-object/from16 v15, p8

    move v5, v12

    goto :goto_4

    :cond_6
    move-object/from16 v14, p0

    move-object/from16 v15, p8

    move v5, v0

    :goto_4
    if-nez v5, :cond_9

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lcom/android/server/pm/PackageInstallerService;->isFromApprovedInstaller(II)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_9

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v10, 0x1

    invoke-virtual {v4, v7, v0, v10}, Lcom/android/server/pm/PackageInstallerService;->isFromApprovedInstaller(IIZ)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    const-string v0, "PersonaServiceHelper"

    const-string v10, "Block installation either because the calling or the original installer is not approved"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_8

    :try_start_1
    const-string v0, ""

    const/16 v10, -0x6f

    const/4 v11, 0x0

    invoke-interface {v1, v0, v10, v11, v11}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v10, "PersonaServiceHelper"

    const-string/jumbo v11, "remote exception"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_5
    const/4 v10, 0x1

    return v10

    :cond_9
    :goto_6
    const/4 v5, 0x0

    return v5
.end method

.method public static interceptHomeReplaceAcitivty(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 3

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaServiceHelper;->changeIntentforKiosk(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.knox.containeragent"

    const-string v2, "com.samsung.android.knox.containeragent.switcher.HomeReplaceActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static isCallerApprovedToInstall(Landroid/content/Context;IIZ)Z
    .locals 3

    const-string v0, "PersonaServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallerApprovedToInstall(uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userHandle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string v1, "PersonaServiceHelper"

    const-string v2, "caller is system_service process...."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "PersonaServiceHelper"

    const-string v2, "None premium contaienr. No Knox app install enforcement"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    :goto_0
    const-string v1, "PersonaServiceHelper"

    const-string v2, "Secure folder or BBD has no Knox app install enforcement"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    if-nez p2, :cond_5

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PersonaServiceHelper"

    const-string v2, "DO is not enabled. no Knox app install enforcement"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "PersonaServiceHelper"

    const-string v2, "None premium DO. No Knox app install enforcement"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "PersonaServiceHelper"

    const-string v1, "failed to find application policy service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isFromApprovedInstaller(II)Z

    move-result v0

    return v0
.end method

.method public static isCallerApprovedToUninstall(Landroid/content/Context;II)Z
    .locals 11

    const-string v0, "PersonaServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallerApprovedToUnnstall: uid, userId, appid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1

    invoke-static {p0, p1, p2, v1}, Lcom/android/server/pm/PersonaServiceHelper;->isCallerApprovedToInstall(Landroid/content/Context;IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "PersonaServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCallerApprovedToUnnstall: isApproved : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    const-string v6, "com.android.packageinstaller"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.google.android.packageinstaller"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.samsung.android.packageinstaller"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-nez v0, :cond_6

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v5, 0x10040

    invoke-virtual {v2, v4, v5, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v10, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    goto :goto_3

    :catch_0
    move-exception v1

    const-string v4, "PersonaServiceHelper"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    :goto_4
    nop

    :goto_5
    const-string v1, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCallerApprovedToUnnstall: isApproved before exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDERestrictionEnforced(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DualDARPolicy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfig(I)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    const-string v3, "dualdar-config-de-restriction"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PersonaServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDERestrictionEnforced exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDualDAREnabled()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "PersonaServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDualDAREnabled result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isExternalStorageBlacklisted(ILjava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationExternalStorageBlacklisted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isExternalStorageWhitelisted(ILjava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationExternalStorageWhitelisted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isForKnoxContainerAndNFC(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isForKnoxNFC()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PersonaServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " called from NFC, just return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isForKnoxNFC()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x403

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInDisplayFingerSensor(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->getCharacteristics()Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->getSensorPosition()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->getCharacteristics()Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PersonaServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static isKnoxKeyguardShownForKioskMode(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getKeyguardShowState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;Lcom/android/server/pm/PackageManagerService;)Z
    .locals 9

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isForKnoxNFC()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.sec.knox.EXTRA_KNOX_ARRAY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PersonaServiceHelper"

    const-string v2, "Set last chosen activity with user list."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/PersonaServiceHelper;->setLastChosenActivityForKnox(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PersonaServiceHelper"

    const-string/jumbo v2, "set last chosen activity has been handled by Knox logic"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isMdfppContainer(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpUtil;->getInstance()Lcom/samsung/android/knox/sdp/SdpUtil;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v1

    move-object v0, v1

    if-nez v0, :cond_0

    const-string v1, "PersonaServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMdfppContainer: SDP is not supported for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/sdp/core/SdpException;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static isMyKnoxAdmin(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms.agent.global.myknox"

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.agent.myknox"

    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms.agent.global.myknox"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms.agent.myknox"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method private static isPackageEnabledInAnyPersona(Ljava/lang/String;Lcom/android/server/pm/Settings;)Z
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    const-string v3, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " listOfPersonas :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "PersonaServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "verifying pkg settings for persona :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    const-string v6, "PersonaServiceHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isInstalled for this persona :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    const-string v3, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Final result of the pkg from all personas:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isPackageWhitelistedForDEAccessForDualDAR(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "PersonaServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default app allowed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v2, "DualDARPolicy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfig(I)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "dualdar-config-datalock-whitelistpackages"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v0, v6, :cond_2

    aget-object v7, v5, v0

    move-object v8, v7

    check-cast v8, Lcom/samsung/android/knox/AppIdentity;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v6, 0x80

    invoke-interface {v0, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {p0, p2, p1, v4}, Lcom/android/server/pm/PersonaServiceHelper;->verifyPackageForDualDAR(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Z

    move-result v6

    return v6

    :cond_3
    const-string v0, "PersonaServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPackageStartable failed to acquire dualDARPolicy for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v1
.end method

.method public static isPackageWhitelistedForDualDAR(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->DUAL_DAR_DEFAULT_WHITELIST_PKGS:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "PersonaServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default app allowed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v2, "DualDARPolicy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfig(I)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "dualdar-config-datalock-whitelistpackages"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v0, v6, :cond_2

    aget-object v7, v5, v0

    move-object v8, v7

    check-cast v8, Lcom/samsung/android/knox/AppIdentity;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v6, 0x80

    invoke-interface {v0, p1, v6, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isDirectBootAware()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPartiallyDirectBootAware()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-static {p0, p2, p1, v4}, Lcom/android/server/pm/PersonaServiceHelper;->verifyPackageForDualDAR(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x1

    const-string v6, "PersonaServiceHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkPackageStartable direct boot aware and whitelisted allowed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    goto :goto_1

    :cond_5
    const-string v0, "PersonaServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPackageStartable failed to acquire dualDARPolicy for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v1
.end method

.method private static isRunningPackageName(Ljava/util/HashSet;Landroid/content/Context;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x64

    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-gt v7, v8, :cond_1

    iget v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/16 v8, 0xc7

    if-gt v7, v8, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    return v2
.end method

.method public static isTimaAvailable(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isTimaSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getTimaInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/TimaHelper;->isTimaAvailable()Z

    move-result v1

    const-string v2, "PersonaServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTimaAvailable() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v1, "PersonaServiceHelper"

    const-string v2, "isTimaAvailable() getInstance is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static isTimaSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static isUsbHostModeEnabledForContainer(Landroid/content/Context;)Z
    .locals 11

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string v4, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUsbHostModeEnabledForContainer: userId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v5

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v7, v5, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v6, p0, v7}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isUsbAccessEnabled()Z

    move-result v8

    move v0, v8

    if-nez v0, :cond_0

    const-string v8, "PersonaServiceHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isUsbHostModeEnabledForContainer: Usb Host Mode sdcard is disabled for User-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ". Ignoring USB device access request..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "PersonaServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in isUsbHostModeEnabledForContainer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method static knoxDataPartitionExists(ILandroid/content/Context;)Z
    .locals 3

    const-string v0, "PersonaServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isKnoxDataPartitionExist called for userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/EnterprisePartitionManager;->isMounted(I)Z

    move-result v1

    return v1
.end method

.method public static mayMountKnoxLegacyPartition(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isLegacyEncryption()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/KnoxFileHandler;

    invoke-direct {v1, p0}, Lcom/android/server/KnoxFileHandler;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x110

    :try_start_0
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x1

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/KnoxFileHandler;->mountFS(ILjava/lang/String;ZIZI)Z

    move-result v2

    const-string v3, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mount file system status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static mayPrepareKnoxLegacyPartition(Landroid/content/Context;I)Z
    .locals 10

    const-string/jumbo v0, "ro.crypto.type"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "PersonaServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to mount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/KnoxFileHandler;

    invoke-direct {v0, p0}, Lcom/android/server/KnoxFileHandler;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2, v1, p1}, Lcom/android/server/KnoxFileHandler;->createPartition(ILjava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v9, 0x110

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, v0

    move v3, p1

    move v6, p1

    move v8, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/KnoxFileHandler;->mountFS(ILjava/lang/String;ZIZI)Z

    move-result v2

    const-string v3, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CreatePersona : mountStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string v2, "PersonaServiceHelper"

    const-string v3, "Creation failed due to createPartition error response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static mayUnmountKnoxLegacyPartition(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isLegacyEncryption()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDeviceCompromised()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    new-instance v3, Lcom/android/server/KnoxFileHandler;

    invoke-direct {v3, p0}, Lcom/android/server/KnoxFileHandler;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v1}, Lcom/android/server/KnoxFileHandler;->unmount(II)Z

    move-result v1

    const-string v4, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unmount file system status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public static notifyActivityDrawn(ILandroid/content/ComponentName;ZIIIZZZ)V
    .locals 10

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PersonaManagerService;->notifyActivityDrawn(ILandroid/content/ComponentName;ZIIIZZZ)V

    return-void
.end method

.method private static setLastChosenActivityForKnox(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/IntentFilter;",
            "I",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")Z"
        }
    .end annotation

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    move-object/from16 v2, p6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    if-eqz v12, :cond_5

    iget v13, v12, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-ne v13, v4, :cond_0

    const-string v1, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "profile group id is not set for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v0, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLastChosenActivityForKnox parent id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v6, v13, :cond_2

    :cond_1
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v13, :cond_3

    :cond_2
    const-string v6, "PersonaServiceHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setLastChosenActivityForKnox remove pref for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v11, p0

    move-object/from16 v10, p1

    move/from16 v9, p2

    move-object/from16 v8, p7

    invoke-virtual {v8, v11, v10, v9, v6}, Lcom/android/server/pm/PackageManagerService;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    move-object v14, v8

    move-object v15, v11

    move-object/from16 v16, v10

    move/from16 v17, v9

    move-object/from16 v18, v6

    move/from16 v23, v7

    invoke-virtual/range {v14 .. v23}, Lcom/android/server/pm/PackageManagerService;->findPreferredActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;IZZZI)Landroid/content/pm/ResolveInfo;

    goto :goto_1

    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v10, p1

    move/from16 v9, p2

    move-object/from16 v8, p7

    :goto_1
    goto :goto_0

    :cond_4
    move-object/from16 v11, p0

    move-object/from16 v10, p1

    move/from16 v9, p2

    move-object/from16 v8, p7

    const-string v4, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setLastChosenActivityForKnox setting preferred activity for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v14, 0x0

    const-string v15, "Setting last chosen"

    move-object v4, v8

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    move v9, v14

    move v10, v3

    move-object v11, v15

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/pm/PackageManagerService;->addPreferredActivityForKnox(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLastChosenActivityForKnox invalid user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_3

    :cond_6
    move-object/from16 v2, p6

    const-string v0, "PersonaServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLastChosenActivityForKnox invalid size for user list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v1
.end method

.method public static shouldBlockBluetooth(Landroid/content/Context;I)Z
    .locals 7

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isKnoxBluetoothEnabled(): SecurityException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v3, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BMS::isKnoxBluetoothEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public static shouldBlockBluetoothHeadset(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p0, p2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "PersonaServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retrieveServiceLocked(): SecurityException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static shouldBlockUsbHostMode(Landroid/content/Context;)Z
    .locals 1

    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceHelper;->isUsbHostModeEnabledForContainer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldBlockUserStart(Landroid/content/Context;I)Z
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "PersonaServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldBlockUserStart() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceHelper;->isTimaAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x4

    invoke-static {p1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->setAttributes(II)Z

    const-string v3, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device compromise attribute set for user : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eqz v3, :cond_0

    const-string v3, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blocking when device compromised "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_0
    :try_start_1
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDeviceCompromised()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blocking when device compromised : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "PersonaServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blocking non-BYOD super locked user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_2
    const/4 v3, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static trimPersonaFromInstallation(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v0, "PersonaServiceHelper"

    const-string/jumbo v4, "trimPersonaFromInstallation is called..."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p2, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    move v6, v0

    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    move v7, v0

    if-nez v1, :cond_2

    const-string v0, "PersonaServiceHelper"

    const-string/jumbo v4, "package setting is null"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v0, 0x0

    move-object v10, v0

    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    :try_start_1
    const-string v11, "PersonaServiceHelper"

    const-string/jumbo v12, "user manager exception "

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    if-eqz v10, :cond_12

    const/16 v0, 0x64

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v13

    const/16 v14, 0x64

    if-eqz v13, :cond_3

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v13

    if-nez v13, :cond_5

    :cond_3
    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v13

    if-nez v13, :cond_5

    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v13

    if-nez v13, :cond_5

    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    if-lt v13, v14, :cond_4

    goto :goto_5

    :cond_4
    const-string v13, "PersonaServiceHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User is not knox premium container "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_5
    :goto_5
    const-string v5, "PersonaServiceHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Processing premimum container in trimPersonaFromInstallation - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_7

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "PersonaServiceHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "user = all\n for persona "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-ne v5, v4, :cond_6

    const-string v5, "PersonaServiceHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "if already installed, then don\'t trim it\n set true for persona "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto/16 :goto_6

    :cond_6
    const-string v5, "PersonaServiceHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "in trim for persona "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " setting false "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto/16 :goto_7

    :cond_7
    if-eqz v6, :cond_8

    if-nez v3, :cond_8

    const-string v5, "PersonaServiceHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "New installation & target user = null or all\n set false for persona "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto/16 :goto_7

    :cond_8
    if-eqz v7, :cond_11

    if-eqz v3, :cond_9

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_9
    if-nez v2, :cond_a

    const-string v5, "PersonaServiceHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "If no info about old packages trim it\n set false for persona "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto/16 :goto_7

    :cond_a
    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    const/16 v13, 0xa0

    if-eq v5, v4, :cond_c

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    const/16 v14, 0x96

    if-lt v5, v14, :cond_b

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    if-gt v5, v13, :cond_b

    const-string v5, "com.samsung.knox.securefolder"

    iget-object v13, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "PersonaServiceHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "trimPersonaFromInstallation - \'com.samsung.knox.securefolder\' is not installed in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ". Do not trim SecureFolder package."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto/16 :goto_6

    :cond_b
    const-string v5, "PersonaServiceHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "if already not installed, then trim it\n set false for persona "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto/16 :goto_7

    :cond_c
    const-string v5, "com.sec.android.app.kidshome"

    iget-object v14, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    const/16 v14, 0x64

    if-lt v5, v14, :cond_d

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    if-gt v5, v13, :cond_d

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    const-string v5, "PersonaServiceHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "trimPersonaFromInstallation - \'com.sec.android.app.kidshome\' is installed . trim it for"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_7

    :cond_f
    const-string v5, "com.samsung.android.voc"

    iget-object v13, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v5

    if-nez v5, :cond_10

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    const-string v5, "PersonaServiceHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "trimPersonaFromInstallation - \'com.samsung.android.voc\' is installed . trim it for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v12, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v13, 0x0

    :goto_7
    move v5, v13

    goto/16 :goto_4

    :cond_12
    return-void

    :goto_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static validatePfWProxySig(Lcom/samsung/android/knox/AppIdentity;I)Z
    .locals 9

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v2, "PersonaServiceHelper"

    const-string v4, "PfW validatePfWProxySig() ** SIG MATCH **"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static verifyPackageForDualDAR(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PersonaServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyPackageForDualDAR package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const-string v1, "PersonaServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not whitelisted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    nop

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    return v1

    :cond_3
    const/4 v1, 0x1

    return v1
.end method
