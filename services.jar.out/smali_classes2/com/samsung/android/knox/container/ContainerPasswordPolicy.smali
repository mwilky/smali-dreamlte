.class public Lcom/samsung/android/knox/container/ContainerPasswordPolicy;
.super Ljava/lang/Object;
.source "ContainerPasswordPolicy.java"


# static fields
.field public static final CONTAINER_INTENT_LISTENER:Ljava/lang/String; = "com.sec.knox.container"

.field public static final CONTAINER_INTENT_LISTENER_PERMISSION:Ljava/lang/String; = "android.permission.sec.MDM_SECURITY"

.field public static final EXTRA_CONTAINER_ID:Ljava/lang/String; = "containerid"

.field public static final EXTRA_NEW_VALUE:Ljava/lang/String; = "value"

.field public static final MILISECONDS:J = 0x3e8L

.field public static final MINUTE_MILISECONDS:J = 0xea60L

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_BIOMETRIC_WEAK:I = 0x8000

.field public static final PASSWORD_QUALITY_COMPLEX:I = 0x60000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_SIGNATURE:I = 0x9000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final PWD_CHANGE_ENFORCED:I = 0x1

.field public static final PWD_CHANGE_ENFORCED_CANCELLED:I = 0x2

.field public static final PWD_CHANGE_ENFORCED_NEW_PASSWORD:I = 0x3

.field public static final PWD_CHANGE_ENFORCE_CANCELLING:I = -0x1

.field public static final PWD_CHANGE_NOT_ENFORCED:I = 0x0

.field public static final PWD_CHANGE_TIMEOUT:Ljava/lang/String; = "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

.field private static TAG:Ljava/lang/String;

.field private static gPasswordService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

.field private static mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ContainerPasswordPolicy"

    sput-object v0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method static declared-synchronized getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "mum_container_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mMUMContainerService:Lcom/samsung/android/knox/container/IKnoxContainerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->gPasswordService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-nez v1, :cond_0

    const-string/jumbo v1, "password_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->gPasswordService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->gPasswordService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public deleteAllRestrictions()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.deleteAllRestrictions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->deleteAllRestrictions(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public enforcePwdChange()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.enforcePwdChange"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->enforcePwdChange(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public excludeExternalStorageForFailedPasswordsWipe(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.excludeExternalStorageForFailedPasswordsWipe"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->excludeExternalStorageForFailedPasswordsWipe(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with password policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public getForbiddenStrings(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed getDataForbidden!!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getMaximumCharacterOccurences()I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed getMaxRepeatedCharacters!!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public getMaximumCharacterSequenceLength()I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed getMaximumCharacterSequenceLength!!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public getMaximumFailedPasswordsForDeviceDisable(Landroid/content/ComponentName;)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public getMaximumNumericSequenceLength()I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed getNumericSequencesForbidden!!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)I
    .locals 6

    const-wide/16 v0, -0x1

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v3, v0

    return v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumTimeToLock(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J

    move-result-wide v3

    move-wide v0, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    long-to-int v3, v0

    return v3
.end method

.method public getMinPasswordComplexChars(Landroid/content/ComponentName;)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumNonLetter(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with password policy"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public getMinimumCharacterChangeLength()I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed getMinimumCharacterChangeLength!!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public getPasswordExpires(Landroid/content/ComponentName;)I
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordExpirationTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    const-wide/32 v5, 0x5265c00

    div-long v5, v3, v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v5, v5

    return v5

    :cond_1
    const/4 v5, 0x0

    return v5

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with password policy"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public getPasswordHistory(Landroid/content/ComponentName;)I
    .locals 6

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with password policy"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with password policy"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordQuality(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with password policy"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public hasForbiddenCharacterSequence(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public hasForbiddenData(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public hasForbiddenNumericSequence(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public hasMaxRepeatedCharacters(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->hasMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public isActivePasswordSufficient()Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isActivePasswordSufficient(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public isChangeRequested()I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public isExternalStorageForFailedPasswordsWipeExcluded()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.isExternalStorageForFailedPasswordsWipeExcluded"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with password policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public isPasswordPatternMatched(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordPatternMatched(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public isPasswordVisibilityEnabled()Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with password policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public resetPassword()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.resetPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getMUMContainerService()Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->forceResetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setForbiddenStrings(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setForbiddenStrings"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed setDataForbidden!!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setMaximumCharacterOccurrences(I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setMaximumCharacterOccurrences"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumCharacterOccurrences(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed setMaxRepeatedCharacters!!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setMaximumCharacterSequenceLength(I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setMaximumCharacterSequenceLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed setMaximumCharacterSequenceLength!!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setMaximumFailedPasswordsForDeviceDisable(Landroid/content/ComponentName;I)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setMaximumFailedPasswordsForDeviceDisable"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setMaximumNumericSequenceLength(I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setMaximumNumericSequenceLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed setNumericSequencesForbidden!!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;I)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setMaximumTimeToLock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    int-to-long v3, p2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumTimeToLock(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setMinPasswordComplexChars(Landroid/content/ComponentName;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setMinPasswordComplexChars"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumNonLetter(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    const/4 v2, 0x4

    if-lt p2, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumUpperCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLowerCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumUpperCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V

    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLowerCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with password policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public setMinimumCharacterChangeLength(I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setMinimumCharacterChangeLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed setMinimumCharacterChangeLength!!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setPasswordExpires(Landroid/content/ComponentName;I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setPasswordExpires"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    int-to-long v3, p2

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordExpirationTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with password policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setPasswordHistory(Landroid/content/ComponentName;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setPasswordHistory"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with password policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setPasswordMinimumLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with password policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setPasswordQuality"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordQuality(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with password policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setPasswordVisibilityEnabled(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setPasswordVisibilityEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with password policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setPwdChangeRequested(I)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setRequiredPasswordPattern(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ContainerPasswordPolicy.setRequiredPasswordPattern"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->getPasswordService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerPassword PolicyService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setRequiredPasswordPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/container/ContainerPasswordPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with ContainerPasswordPolicy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method
