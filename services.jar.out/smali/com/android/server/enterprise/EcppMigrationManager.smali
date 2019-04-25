.class public Lcom/android/server/enterprise/EcppMigrationManager;
.super Ljava/lang/Object;
.source "EcppMigrationManager.java"


# static fields
.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field public static final NEW_CONTAINER_ID:I = 0x0

.field public static final OLD_CONTAINER_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EcppMigrationManager"

.field private static mInstance:Lcom/android/server/enterprise/EcppMigrationManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDPMService:Landroid/app/admin/IDevicePolicyManager;

.field private mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object p1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EcppStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    return-void
.end method

.method private copyMaximumFailedPasswordsForDisable(ILcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {v3, p2, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with enterprise password policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_2
    return-void
.end method

.method private copyMaximumFailedPasswordsForWipe(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_2
    return-void
.end method

.method private copyMaximumTimeToLockPassword(IILandroid/content/ComponentName;)V
    .locals 7

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v0, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "EcppMigrationManager"

    const-string v6, "Failed talking with device policy service"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_0
    :goto_2
    return-void
.end method

.method private copyPasswordExpirationTimeout(IILandroid/content/ComponentName;)V
    .locals 7

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v0, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "EcppMigrationManager"

    const-string v6, "Failed talking with enterprise password policy service"

    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_0
    :goto_2
    return-void
.end method

.method private copyPasswordHistoryLength(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_2
    return-void
.end method

.method private copyPasswordMinimumLength(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_2
    return-void
.end method

.method private copyPasswordMinimumLetters(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_2
    return-void
.end method

.method private copyPasswordMinimumNonLetter(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_2
    return-void
.end method

.method private copyPasswordMinimumNumeric(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_2
    return-void
.end method

.method private copyPasswordMinimumSymbols(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_2
    return-void
.end method

.method private copyPasswordQuality(IILandroid/content/ComponentName;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v3, p3, v0, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQualityMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_2
    return-void
.end method

.method private copyPasswordVisible(ILcom/samsung/android/knox/ContextInfo;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->isPasswordVisisbilityEnabled(I)Z

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-eqz v3, :cond_1

    :try_start_0
    iget v3, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {v4, v3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v4

    move v0, v4

    if-nez v0, :cond_0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "adminUid"

    iget v6, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "passwordVisibilityEnabled"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "passwordVisibilityEnabled"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PASSWORD"

    invoke-virtual {v6, v7, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "EcppMigrationManager"

    const-string v7, "Failed to update PasswordVisible value in PASSWORD"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    invoke-interface {v4, p2, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with enterprise password policy service"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    :goto_2
    return-void
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, ""

    const-string v3, "EcppMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check permission for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "com.sec.knox.containeragent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No Container Migration Permission to calling Package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private findContainerData(ILandroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->findContainerAdmin(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EcppMigrationManager;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/EcppMigrationManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/EcppMigrationManager;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EcppMigrationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public migrateEcppDB(Landroid/content/ComponentName;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/EcppMigrationManager;->enforceMigrationAgentSecurityCheck()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    long-to-int v3, p3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->findContainerData(ILandroid/content/ComponentName;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f

    move v1, v3

    if-nez v1, :cond_0

    return v4

    :cond_0
    nop

    :try_start_1
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumLength(IILandroid/content/ComponentName;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordMinimumLength()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    :try_start_2
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumLetters(IILandroid/content/ComponentName;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordMinimumLetters()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_1
    :try_start_3
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumNonLetter(IILandroid/content/ComponentName;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordMinimumNonLetter()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_2
    :try_start_4
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumNumeric(IILandroid/content/ComponentName;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordMinimumNumeric()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_3
    :try_start_5
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumSymbols(IILandroid/content/ComponentName;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordMinimumSymbols()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_4
    :try_start_6
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordQuality(IILandroid/content/ComponentName;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordQuality()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    :try_start_7
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordVisible(ILcom/samsung/android/knox/ContextInfo;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordVisible()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_6
    :try_start_8
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordHistoryLength(IILandroid/content/ComponentName;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :goto_7
    goto :goto_8

    :catch_7
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordHistoryLength()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_8

    :catch_8
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "copyPasswordHistoryLength(): Policy not yet set"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_7

    :goto_8
    :try_start_9
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumFailedPasswordsForWipe(IILandroid/content/ComponentName;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyMaximumFailedPasswordsForWipe()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_9
    :try_start_a
    invoke-direct {p0, v0, v2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumFailedPasswordsForDisable(ILcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyMaximumFailedPasswordsForDisable()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_a
    :try_start_b
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumTimeToLockPassword(IILandroid/content/ComponentName;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    :goto_b
    goto :goto_c

    :catch_b
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyMaximumTimeToLockPassword()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_c

    :catch_c
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "copyMaximumTimeToLockPassword(): Policy not yet set"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_b

    :goto_c
    :try_start_c
    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordExpirationTimeout(IILandroid/content/ComponentName;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    :goto_d
    goto :goto_e

    :catch_d
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "Exception in copyPasswordExpirationTimeout()"

    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_e

    :catch_e
    move-exception v3

    const-string v4, "EcppMigrationManager"

    const-string v5, "copyPasswordExpirationTimeout(): Policy not yet set"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_d

    :goto_e
    const-string v3, "EcppMigrationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "migrateEcppDB return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_f
    move-exception v3

    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in finding container data, Returning!!"

    invoke-static {v5, v6, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4
.end method
