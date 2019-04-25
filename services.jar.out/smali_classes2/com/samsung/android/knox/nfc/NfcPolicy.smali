.class public Lcom/samsung/android/knox/nfc/NfcPolicy;
.super Ljava/lang/Object;
.source "NfcPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mNfcPolicy:Lcom/samsung/android/knox/nfc/NfcPolicy;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/IMiscPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mSync:Ljava/lang/Object;

    const-string v0, "NfcPolicy"

    sput-object v0, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object v0
.end method


# virtual methods
.method public allowNFCStateChange(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "NfcPolicy.allowNFCStateChange"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/nfc/NfcPolicy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/IMiscPolicy;->allowNFCStateChange(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with MiscPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNFCStarted()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/nfc/NfcPolicy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/IMiscPolicy;->isNFCStarted()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with MiscPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNFCStateChangeAllowed()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/nfc/NfcPolicy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/IMiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with MiscPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public startNFC(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "NfcPolicy.startNFC"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/nfc/NfcPolicy;->getService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/nfc/NfcPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/IMiscPolicy;->startNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/nfc/NfcPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with MiscPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
