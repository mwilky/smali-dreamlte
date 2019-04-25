.class final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;,
        Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;,
        Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;
    }
.end annotation


# static fields
.field private static final FLAG_OVERLAY_IS_UPGRADING:I = 0x2

.field private static final FLAG_TARGET_IS_UPGRADING:I = 0x1


# instance fields
.field private final mDefaultOverlays:[Ljava/lang/String;

.field private final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field private final mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    return-void
.end method

.method private addOverlaysForKnox(Ljava/lang/String;II)V
    .locals 5

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOverlaysForKnox targetPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    iget-object v4, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null overlay package not compatible with no flags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/pm/PackageInfo;I)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    :goto_1
    return v1
.end method

.method private isPackageUpdatableOverlay(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private static mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v1

    iget-boolean v2, p1, Landroid/content/om/OverlayInfo;->isStatic:Z

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget v2, p1, Landroid/content/om/OverlayInfo;->priority:I

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    return-void

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    return-void
.end method

.method private updateAllOverlaysForTarget(Ljava/lang/String;II)Z
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v5, v0

    move v0, v3

    :goto_1
    if-ge v0, v4, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/om/OverlayInfo;

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v8, v6, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v8, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v9, v6, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v10, v6, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-direct {p0, v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object v8, v6, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v8, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v8
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v5, v8

    goto :goto_2

    :catch_0
    move-exception v8

    const-string v9, "OverlayManager"

    const-string v10, "failed to update settings"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v10, v6, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v9

    or-int/2addr v5, v9

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-nez v5, :cond_4

    const-string v0, "android"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    goto :goto_4

    :cond_4
    :goto_3
    const/4 v3, 0x1

    :goto_4
    move v0, v3

    return v0
.end method

.method private updateState(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v3, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v3, "android"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v3, v0, v1, p3}, Lcom/android/server/om/IdmapManager;->createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    :cond_2
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/server/om/OverlayManagerSettings;->setCategory(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_3
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->getState(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;II)I

    move-result v5

    if-eq v4, v5, :cond_5

    sget-boolean v6, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "OverlayManager"

    const-string v7, "%s:%d: %s -> %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x2

    invoke-static {v4}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x3

    invoke-static {v5}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p2, p3, v5}, Lcom/android/server/om/OverlayManagerSettings;->setState(Ljava/lang/String;II)Z

    move-result v2

    or-int/2addr v3, v2

    :cond_5
    return v3
.end method


# virtual methods
.method applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/om/ISamsungOverlayCallback;",
            ")Z"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applySamsungThemeOverlays packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OverlayManager"

    const-string v1, "Current Overlays "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->printAllItems()V

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/overlays/currentstyle"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "OverlayManager"

    const-string v3, "[applyOverlays] List of overlayFiles is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1
    new-instance v7, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;

    invoke-direct {v7, p0, p4}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl;Landroid/content/om/ISamsungOverlayCallback;)V

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->parseSamsungThemeOverlayPackages(Ljava/io/File;Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManagerInternal$OverlayManagerCallback;)V

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getOverlaysForUser(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method onDump(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default overlays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method onOverlayPackageAdded(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;)V

    return-void
.end method

.method onOverlayPackageAdded(Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOverlayPackageAdded packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_1

    move v0, v14

    goto :goto_0

    :cond_1
    move v0, v13

    :goto_0
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v2, v12, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    if-nez v15, :cond_2

    const-string v0, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "overlay package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was added, but couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    return-void

    :cond_2
    iget-boolean v0, v15, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-eqz v0, :cond_3

    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v15, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v15}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v8

    iget v9, v15, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget-object v10, v15, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    iget-boolean v11, v15, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    move-object v3, v12

    move v4, v13

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)V

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v15, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v7

    iget v8, v15, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget-object v9, v15, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    move-object v3, v12

    move v4, v13

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-direct {v1, v0, v12, v13, v14}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, v15, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-eqz v0, :cond_4

    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v15, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    const/4 v7, 0x1

    move v5, v13

    move-object/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;Z)V

    goto :goto_2

    :cond_4
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v15, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v0, v2, v13}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "OverlayManager"

    const-string v3, "failed to update settings"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v12, v13}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    :goto_3
    return-void
.end method

.method onOverlayPackageChanged(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageChanged packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OverlayManager"

    const-string v2, "failed to update settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method onOverlayPackageChanged(Ljava/lang/String;IZLandroid/content/om/ISamsungOverlayCallback;)V
    .locals 11

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    const-string/jumbo v2, "onOverlayPackageChanged packageName=%s enable=%s userId=%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v2, p1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v1, "OverlayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOverlayPackageChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has wrong target"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v4

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    or-int/2addr v1, v4

    if-eqz v1, :cond_6

    iget-boolean v4, v2, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move v8, p2

    move-object v9, p4

    move v10, p3

    invoke-interface/range {v5 .. v10}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;Z)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v4, v5, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;->printStackTrace()V

    iget-boolean v3, v2, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    const/4 v6, 0x0

    move-object v5, p1

    move v7, p2

    move-object v8, p4

    move v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;Z)V

    :cond_7
    return-void
.end method

.method onOverlayPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    invoke-virtual {v0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OverlayManager"

    const-string v2, "failed to remove overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method onOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;)V
    .locals 8

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageRemoved packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    iget-boolean v2, v1, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    move v0, v2

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p3, v3}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overlay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was not found in settings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    if-nez p4, :cond_4

    if-nez v0, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;Z)V

    :goto_2
    return-void
.end method

.method onOverlayPackageUpgraded(Ljava/lang/String;I)V
    .locals 10

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageUpgraded packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "overlay package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was upgraded, but couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v7

    iget v8, v0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    :cond_3
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OverlayManager"

    const-string v3, "failed to update settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method onOverlayPackageUpgrading(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageUpgrading packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OverlayManager"

    const-string v2, "failed to update settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method onTargetPackageAdded(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTargetPackageAdded packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->addOverlaysForKnox(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method onTargetPackageChanged(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTargetPackageChanged packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;II)Z

    return-void
.end method

.method onTargetPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTargetPackageRemoved packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method onTargetPackageUpgraded(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTargetPackageUpgraded packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/content/om/SamsungThemeConstants;->siblingTargetMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;II)Z

    return-void
.end method

.method onTargetPackageUpgrading(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTargetPackageUpgrading packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;II)Z

    return-void
.end method

.method onUserRemoved(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserRemoved userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z

    return-void
.end method

.method pkgOnUpdateOnlyOverlayTargetList(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "com.samsung.systemui.hidenotch"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method setEnabled(Ljava/lang/String;ZI)Z
    .locals 7

    const-string v0, "OverlayManager"

    const-string/jumbo v1, "setEnabled packageName=%s enable=%s userId=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v2

    iget-object v4, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, v6, p3, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    or-int/2addr v2, v4

    if-eqz v2, :cond_3

    nop

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->pkgOnUpdateOnlyOverlayTargetList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v6, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v4, v6, v5, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v6, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v4, v6, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return v5

    :catch_0
    move-exception v1

    return v3
.end method

.method setEnabledExclusive(Ljava/lang/String;ZI)Z
    .locals 12

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    const-string/jumbo v3, "setEnabledExclusive packageName=%s withinCategory=%s userId=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p0, v4, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v7, v6

    move v6, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/om/OverlayInfo;

    iget-object v8, v8, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v9, v8, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-nez v9, :cond_2

    iget-object v10, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10, v8, p3}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v10

    or-int/2addr v7, v10

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    iget-object v11, v3, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10, v8, p3, v2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v10

    or-int/2addr v7, v10

    invoke-direct {p0, v4, v8, p3, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v10

    or-int/2addr v7, v10

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v6, p1, p3, v1}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v6

    or-int/2addr v6, v7

    invoke-direct {p0, v4, p1, p3, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v7

    or-int/2addr v6, v7

    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v7, v4, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return v1

    :catch_0
    move-exception v1

    return v2
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHighestPriority packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLowestPriority packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPriority packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newParentPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method updateOverlaysForUser(I)Ljava/util/ArrayList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v12, p1

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOverlaysForUser newUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v0

    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v12}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v15

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v15}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v11, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v15, :cond_2

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move v0, v12

    :goto_2
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getOverlayPackages(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_b

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v2, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/content/om/OverlayInfo;

    sget-boolean v2, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOverlaysForUser for overlay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v6, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v5, :cond_5

    iget-object v2, v5, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v6, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v17

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    :goto_4
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v18

    iget v10, v6, Landroid/content/pm/PackageInfo;->overlayPriority:I

    move-object/from16 v19, v11

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    if-eqz v5, :cond_7

    move-object/from16 v20, v4

    iget-boolean v4, v5, Landroid/content/om/OverlayInfo;->mIsSamsungTheme:Z

    :goto_5
    move/from16 v21, v4

    goto :goto_6

    :cond_7
    move-object/from16 v20, v4

    iget-boolean v4, v6, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    goto :goto_5

    :goto_6
    move v4, v12

    move-object/from16 v22, v5

    move-object/from16 v5, v20

    move-object/from16 v23, v14

    move-object v14, v6

    move-object v6, v7

    move/from16 v24, v15

    const/4 v15, 0x1

    move/from16 v7, v17

    move/from16 v25, v8

    move/from16 v8, v18

    move-object/from16 v26, v9

    move v9, v10

    move-object v10, v11

    move-object/from16 v27, v19

    move/from16 v11, v21

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)V

    if-nez v22, :cond_a

    iget-boolean v2, v14, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling overlay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " by default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v12, v15}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    goto :goto_7

    :cond_9
    move-object/from16 v22, v5

    move/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v11

    move-object/from16 v23, v14

    move/from16 v24, v15

    move-object v14, v6

    :cond_a
    :goto_7
    iget-object v2, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v3, v27

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move-object v11, v3

    move-object/from16 v14, v23

    move/from16 v15, v24

    move/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_3

    :cond_b
    move/from16 v25, v8

    move-object/from16 v26, v9

    move-object v3, v11

    move-object/from16 v23, v14

    move/from16 v24, v15

    const/4 v15, 0x1

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_c

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    iget-object v5, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v7, v4, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    invoke-direct {v1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    iget-object v5, v4, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v13, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_c
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getAllPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    const/16 v6, 0x80

    invoke-interface {v5, v4, v6, v12}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/om/SemSamsungThemeUtils;->hasSamsungThemeSibling(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "samsungtheme-sibling"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/server/om/SemSamsungThemeUtils;->addSiblingTarget(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_d
    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    :goto_a
    move v4, v0

    move/from16 v5, v25

    if-ge v4, v5, :cond_f

    move-object/from16 v6, v26

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object v7, v0

    :try_start_0
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x0

    :try_start_1
    invoke-direct {v1, v0, v8, v12, v9}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_1
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    const/4 v9, 0x0

    :goto_b
    const-string v8, "OverlayManager"

    const-string v10, "failed to update settings"

    invoke-static {v8, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v8, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v12}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    :goto_c
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x1

    move/from16 v25, v5

    move-object/from16 v26, v6

    goto :goto_a

    :cond_f
    move-object/from16 v6, v26

    const/4 v9, 0x0

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v7, v0, v12}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-nez v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_10
    nop

    move-object v0, v4

    goto :goto_d

    :cond_11
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v0

    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v12}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    move v0, v9

    :goto_e
    if-ge v0, v10, :cond_15

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_12

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_f

    :cond_12
    move v14, v9

    :goto_f
    move/from16 v16, v9

    :goto_10
    move/from16 v28, v16

    move/from16 v9, v28

    if-ge v9, v14, :cond_14

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/content/om/OverlayInfo;

    invoke-virtual {v15}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_13

    move/from16 v29, v2

    iget-object v2, v15, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_13
    move/from16 v29, v2

    :goto_11
    add-int/lit8 v16, v9, 0x1

    move/from16 v2, v29

    const/4 v9, 0x0

    const/4 v15, 0x1

    goto :goto_10

    :cond_14
    move/from16 v29, v2

    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x0

    const/4 v15, 0x1

    goto :goto_e

    :cond_15
    move/from16 v29, v2

    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    array-length v9, v2

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v9, :cond_18

    aget-object v0, v2, v11

    move-object v14, v0

    :try_start_2
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v14, v12}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    iget-object v15, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    const-string v15, "OverlayManager"
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v30, v2

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v31, v3

    :try_start_4
    const-string v3, "Enabling default overlay \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for target \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' in category \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-virtual {v2, v3, v12, v15}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v15, 0x0

    :try_start_5
    invoke-direct {v1, v2, v3, v12, v15}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_15

    :catch_3
    move-exception v0

    const/4 v15, 0x0

    goto :goto_15

    :catch_4
    move-exception v0

    goto :goto_14

    :cond_16
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    const/4 v15, 0x0

    :cond_17
    :goto_13
    goto :goto_16

    :catch_5
    move-exception v0

    move-object/from16 v30, v2

    :goto_14
    move-object/from16 v31, v3

    const/4 v15, 0x0

    :goto_15
    const-string v2, "OverlayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to set default overlay \'"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\' for user "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    goto/16 :goto_12

    :cond_18
    move-object/from16 v31, v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
