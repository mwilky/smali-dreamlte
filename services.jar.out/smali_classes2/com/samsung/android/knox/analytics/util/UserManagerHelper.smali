.class public Lcom/samsung/android/knox/analytics/util/UserManagerHelper;
.super Ljava/lang/Object;
.source "UserManagerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final USER_TYPE_BBC:I = 0x6

.field private static final USER_TYPE_COM:I = 0x5

.field private static final USER_TYPE_DO:I = 0x2

.field private static final USER_TYPE_DO_PREMIUM:I = 0x3

.field private static final USER_TYPE_LEGACY_CL:I = 0x4

.field private static final USER_TYPE_PO:I = 0x0

.field private static final USER_TYPE_PO_PREMIUM:I = 0x1

.field private static final USER_TYPE_REGULAR:I = 0x7

.field private static final USER_TYPE_SECURE_FOLDER:I = 0x8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v1, "getDevicePolicyManagerService(): could not get DevicePolicyManager!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method


# virtual methods
.method public getDoPackageName()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string v1, ""

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, v2}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v4, "isDoActive(): Exception in DPMS.getDeviceOwnerComponent - "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v2, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoPackageName(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getPoPackageName()Ljava/lang/String;
    .locals 10

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    nop

    nop

    const/4 v3, 0x0

    const-string v4, ""

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    :try_start_1
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v7}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v8

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v7

    sget-object v8, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v9, "getPoPackageName() - Remote exception: "

    invoke-static {v8, v9, v7}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    goto :goto_0

    :cond_2
    sget-object v5, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPoPackageName(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catch_1
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "getPoPackageName() - Runtime exception: "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_3
    :goto_2
    return-object v2
.end method

.method public getPoPackageName(I)Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string v1, ""

    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v4, "getPoPackageName() - Remote exception: "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v2, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPoPackageName(int userId): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getUserType(I)I
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v2, "getUserType(): UserInfo is null!"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isBBCContainer()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    return v1

    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isCLContainer()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    return v1

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    return v1

    :cond_5
    const/4 v1, 0x2

    return v1

    :cond_6
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    return v1

    :cond_7
    const/4 v1, 0x0

    return v1

    :cond_8
    const/4 v1, 0x7

    return v1
.end method

.method public isAnyPOActive()Z
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    nop

    nop

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    :try_start_1
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v6}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v6

    sget-object v7, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v8, "isAnyPOActive() - Remote exception: "

    invoke-static {v7, v8, v6}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    goto :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAnyPOActive(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_1
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "isAnyPOActive() - Runtime exception: "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public isDoActive()Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    nop

    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasDeviceOwner()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v4, "isDoActive(): Exception in DPMS.hasDeviceOwner - "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v2, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDoActive(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
