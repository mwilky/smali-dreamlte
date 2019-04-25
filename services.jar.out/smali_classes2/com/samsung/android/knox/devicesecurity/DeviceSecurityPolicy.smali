.class public Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;
.super Ljava/lang/Object;
.source "DeviceSecurityPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final WIPE_EXTERNAL_MEMORY:I = 0x2

.field public static final WIPE_INTERNAL_EXTERNAL_MEMORY:I = 0x3

.field public static final WIPE_INTERNAL_MEMORY:I = 0x1


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

.field private mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DeviceSecurityPolicy"

    sput-object v0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private formatStorageCard(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->formatStorageCard(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getMiscService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object v0
.end method

.method private getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "security_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    return-object v0
.end method


# virtual methods
.method public addClipboardTextData(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.addClipboardTextData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/IMiscPolicy;->addClipboardTextData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to Add ClipBoard!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearClipboardData()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.clearClipboardData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IMiscPolicy;->clearClipboardData(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to Clear ClipBoard!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getClipboardTextData()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.getClipboardTextData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/IMiscPolicy;->getClipboardTextData(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to Get ClipBoard!!!!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->getRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with DeviceSecurityPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->getRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with DeviceSecurityPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExternalStorageEncrypted()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.isExternalStorageEncrypted"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ISecurityPolicy;->isExternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with DeviceSecurityPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInternalStorageEncrypted()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.isInternalStorageEncrypted"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ISecurityPolicy;->isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with DeviceSecurityPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.setExternalStorageEncryption"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->setExternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with DeviceSecurityPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.setInternalStorageEncryption"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->setInternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with DeviceSecurityPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.setRequireDeviceEncryption"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/ISecurityPolicy;->setRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with DeviceSecurityPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.setRequireStorageCardEncryption"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/ISecurityPolicy;->setRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with DeviceSecurityPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public wipeDevice(I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "DeviceSecurityPolicy.wipeDevice"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->getSecurityService()Lcom/samsung/android/knox/ISecurityPolicy;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p1, v1, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->formatStorageCard(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    :cond_1
    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mSecurityService:Lcom/samsung/android/knox/ISecurityPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/ISecurityPolicy;->wipeDevice(Lcom/samsung/android/knox/ContextInfo;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed wipeDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->formatStorageCard(Z)Z

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    :cond_3
    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/devicesecurity/DeviceSecurityPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with DeviceSecurityPolicy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return v0
.end method
