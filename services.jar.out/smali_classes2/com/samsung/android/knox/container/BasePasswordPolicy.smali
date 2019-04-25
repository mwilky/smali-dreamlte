.class public Lcom/samsung/android/knox/container/BasePasswordPolicy;
.super Ljava/lang/Object;
.source "BasePasswordPolicy.java"


# static fields
.field public static final PASSWORD_QUALITY_FINGERPRINT:I = 0x61000

.field public static final PASSWORD_QUALITY_SMARTCARDNUMERIC:I = 0x70000

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BasePasswordPolicy"

    sput-object v0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    return-object v0
.end method


# virtual methods
.method public clearResetPasswordToken(Landroid/content/ComponentName;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->clearResetPasswordToken(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFailedPasswordAttempts()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getCurrentFailedPasswordAttempts(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getKeyguardDisabledFeatures(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumTimeToLock(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;)J
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordExpiration(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;)J
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordExpirationTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMaximumLength(Landroid/content/ComponentName;)J
    .locals 2

    const-wide/16 v0, 0x10

    return-wide v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumLetters(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumLowerCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumNonLetter(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumNumeric(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumSymbols(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordMinimumUpperCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordQuality(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getTrustAgentConfiguration(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isActivePasswordSufficient()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isActivePasswordSufficient(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isResetPasswordTokenActive(Landroid/content/ComponentName;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isResetPasswordTokenActive(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->resetPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->resetPasswordWithToken(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setKeyguardDisabledFeatures"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setKeyguardDisabledFeatures(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setMaximumFailedPasswordsForWipe"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setMaximumTimeToLock"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setMaximumTimeToLock(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setPasswordExpirationTimeout"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordExpirationTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setPasswordHistoryLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setPasswordMinimumLength"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setPasswordMinimumLetters"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLetters(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setPasswordMinimumLowerCase"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumLowerCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setPasswordMinimumNonLetter"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumNonLetter(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setPasswordMinimumNumeric"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumNumeric(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setPasswordMinimumSymbols"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumSymbols(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setPasswordMinimumUpperCase"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordMinimumUpperCase(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BasePasswordPolicy.setPasswordQuality"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setPasswordQuality(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setResetPasswordToken(Landroid/content/ComponentName;[B)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setResetPasswordToken(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with password policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/container/BasePasswordPolicy;->getService()Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mService:Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/container/BasePasswordPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->setTrustAgentConfiguration(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/container/BasePasswordPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
