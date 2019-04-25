.class public Lcom/samsung/android/server/corestate/CoreStateObserverController;
.super Ljava/lang/Object;
.source "CoreStateObserverController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoreStateObserverController"


# instance fields
.field private final StateForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mController:Lcom/android/server/am/CoreStateController;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

.field private final mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

.field private final mTargetClass:Ljava/lang/Class;

.field private final mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CoreStateController;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Ljava/lang/Class;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->StateForUser:Landroid/util/SparseArray;

    const-string v0, "CoreStateObserverController"

    const-string v1, "CoreStateController()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mController:Lcom/android/server/am/CoreStateController;

    iput-object p3, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    iput-object p4, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    iput-object p5, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    iput-object p6, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->setObserverController()V

    return-void
.end method

.method private populateCoreState(I)I
    .locals 3

    const-string v0, "CoreStateObserverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "populateCoreState(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->StateForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->StateForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->populateState(Landroid/os/Bundle;I)I

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populateState(Landroid/os/Bundle;I)I

    move-result v2

    or-int/2addr v1, v2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->populateState(Landroid/os/Bundle;I)I

    move-result v2

    or-int/2addr v1, v2

    :cond_2
    return v1
.end method

.method private sendCoreState(ZI)V
    .locals 8

    const-string v0, "CoreStateObserverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCoreState(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->populateCoreState(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mController:Lcom/android/server/am/CoreStateController;

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v2, v3, p2, v1}, Lcom/android/server/am/CoreStateController;->onCoreStateChanged(Ljava/lang/Class;IZ)V

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getRunningUserIds()[I

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget v5, v2, v1

    if-eq v5, p2, :cond_1

    invoke-direct {p0, v5}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->populateCoreState(I)I

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mController:Lcom/android/server/am/CoreStateController;

    iget-object v7, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v6, v7, v5, v3}, Lcom/android/server/am/CoreStateController;->onCoreStateChanged(Ljava/lang/Class;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mController:Lcom/android/server/am/CoreStateController;

    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/am/CoreStateController;->onCoreStateChanged(Ljava/lang/Class;IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private setObserverController()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCoreStateLocked(I)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->StateForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    :goto_0
    return-object v1
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mTargetClass:Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->init()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettings()V

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZI)V

    return-void
.end method

.method public onCoreStateChanged(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZI)V

    return-void
.end method

.method public setVolatileState(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "IZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->setState(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZZ)V

    :cond_0
    return-void
.end method

.method public startUserLocked(IZZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    :cond_0
    if-nez p3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZI)V

    :cond_2
    return-void
.end method

.method public stopUserLocked(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getRunningUserIds()[I

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->endObserveCoreStateSettingsForSingleUser([II)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->StateForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->removeStatesForUser(I)V

    :cond_1
    return-void
.end method
