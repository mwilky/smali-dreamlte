.class public Lcom/samsung/android/knox/net/wifi/WifiPolicy;
.super Ljava/lang/Object;
.source "WifiPolicy.java"


# static fields
.field public static final ACTION_ENABLE_NETWORK_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ENABLE_NETWORK_INTERNAL"

.field public static final ENGINE_ID_SECPKCS11:Ljava/lang/String; = "secpkcs11"

.field public static final ENGINE_ID_UCMENGINE:Ljava/lang/String; = "ucsengine"

.field public static final SECURITY_LEVEL_EAP_AKA:I = 0x19

.field public static final SECURITY_LEVEL_EAP_AKA_CCKM:I = 0x1b

.field public static final SECURITY_LEVEL_EAP_AKA_FT:I = 0x1a

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME:I = 0x1c

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME_CCKM:I = 0x1e

.field public static final SECURITY_LEVEL_EAP_AKA_PRIME_FT:I = 0x1d

.field public static final SECURITY_LEVEL_EAP_FAST:I = 0x4

.field public static final SECURITY_LEVEL_EAP_FAST_CCKM:I = 0x12

.field public static final SECURITY_LEVEL_EAP_FAST_FT:I = 0x11

.field public static final SECURITY_LEVEL_EAP_LEAP:I = 0x3

.field public static final SECURITY_LEVEL_EAP_LEAP_CCKM:I = 0x10

.field public static final SECURITY_LEVEL_EAP_LEAP_FT:I = 0xf

.field public static final SECURITY_LEVEL_EAP_PEAP:I = 0x5

.field public static final SECURITY_LEVEL_EAP_PEAP_CCKM:I = 0xa

.field public static final SECURITY_LEVEL_EAP_PEAP_FT:I = 0x9

.field public static final SECURITY_LEVEL_EAP_PWD:I = 0x13

.field public static final SECURITY_LEVEL_EAP_PWD_CCKM:I = 0x15

.field public static final SECURITY_LEVEL_EAP_PWD_FT:I = 0x14

.field public static final SECURITY_LEVEL_EAP_SIM:I = 0x16

.field public static final SECURITY_LEVEL_EAP_SIM_CCKM:I = 0x18

.field public static final SECURITY_LEVEL_EAP_SIM_FT:I = 0x17

.field public static final SECURITY_LEVEL_EAP_TLS:I = 0x7

.field public static final SECURITY_LEVEL_EAP_TLS_CCKM:I = 0xe

.field public static final SECURITY_LEVEL_EAP_TLS_FT:I = 0xd

.field public static final SECURITY_LEVEL_EAP_TTLS:I = 0x6

.field public static final SECURITY_LEVEL_EAP_TTLS_CCKM:I = 0xc

.field public static final SECURITY_LEVEL_EAP_TTLS_FT:I = 0xb

.field public static final SECURITY_LEVEL_FT_PSK:I = 0x8

.field public static final SECURITY_LEVEL_OPEN:I = 0x0

.field public static final SECURITY_LEVEL_WEP:I = 0x1

.field public static final SECURITY_LEVEL_WPA:I = 0x2

.field public static final SECURITY_TYPE_OPEN:Ljava/lang/String; = "Open"

.field public static final SECURITY_TYPE_WPA2_PSK:Ljava/lang/String; = "WPA2_PSK"

.field public static final SECURITY_TYPE_WPA_PSK:Ljava/lang/String; = "WPA_PSK"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WifiPolicy"

    sput-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    return-object v0
.end method


# virtual methods
.method public activateWifiSsidRestriction(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.activateWifiSsidRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->activateWifiSsidRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addBlockedNetwork(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.addBlockedNetwork"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->addBlockedNetwork(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "addBlockedNetwork - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addWifiSsidsToBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.addWifiSsidsToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->addWifiSsidToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addWifiSsidsToWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.addWifiSsidsToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->addWifiSsidToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addWifiSsidsToWhiteList(Ljava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.addWifiSsidsToWhiteList(ssid, defaultBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->addWifiSsidsToBlackList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to update wildCard in Blacklist, Wildcard may be already present!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->addWifiSsidsToWhiteList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public allowOpenWifiAp(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.allowOpenWifiAp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->allowOpenWifiAp(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowWifiApSettingUserModification(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.allowWifiApSettingUserModification"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->allowWifiApSettingUserModification(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowWifiScanning(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->allowWifiScanning(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearWifiSsidsFromBlackList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.clearWifiSsidsFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->clearWifiSsidBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearWifiSsidsFromList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.clearWifiSsidsFromList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->clearWifiSsidsFromWhiteList()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->clearWifiSsidsFromBlackList()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public clearWifiSsidsFromWhiteList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.clearWifiSsidsFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->clearWifiSsidWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API edmAddOrUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getAllowUserPolicyChanges()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getAllowUserPolicyChanges"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAllowUserProfiles(Z)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getAllowUserProfilesInternal(ZI)Z

    move-result v0

    return v0
.end method

.method public getAllowUserProfilesInternal(ZI)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getAllowUserProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAutomaticConnectionToWifi()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getAutomaticConnectionToWifi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.getBlockedNetworks"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getBlockedNetworks(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getBlockedNetworks - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getMinimumRequiredSecurity()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getSupportedSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.getNetworkSSIDList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getNetworkSSIDList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkSSID"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getPasswordHidden()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getPasswordHidden"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPromptCredentialsEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getPromptCredentialsEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getWifiApSetting()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.getWifiApSetting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getWifiApSetting(Lcom/samsung/android/knox/ContextInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiProfile(Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.getWifiProfile"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getWifiProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getWifiProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiSsidRestrictionList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getWifiSsidRestrictionList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getWifiSsidRestrictionList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getWifiSsidsFromBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.getWifiSsidsFromBlackLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAllWifiSsidBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiSsidsFromWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/wifi/WifiControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.getWifiSsidsFromWhiteLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->getAllWifiSsidWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API isEnterpriseNetwork"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkBlocked(Ljava/lang/String;Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isNetworkBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "isNetworkBlocked - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkSecure(IZ)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isNetworkSecure(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with isNetworkSecure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOpenWifiApAllowed()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isWifiAllowed(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with isWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isWifiApSettingUserModificationAllowed()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isWifiScanningAllowed()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiSsidRestrictionActive()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.isWifiSsidRestrictionActive"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiStateChangeAllowed()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with isWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeBlockedNetwork(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.removeBlockedNetwork"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->removeBlockedNetwork(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeBlockedNetwork - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.removeNetworkConfiguration"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->removeNetworkConfiguration(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API removeNetworkConfiguration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeWifiSsidsFromBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.removeWifiSsidsFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->removeWifiSsidFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeWifiSsidsFromWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.removeWifiSsidsFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->removeWifiSsidFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with wifi policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowUserPolicyChanges(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setAllowUserPolicyChanges"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setAllowUserPolicyChanges"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowUserProfiles(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setAllowUserProfiles"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setAllowUserProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAutomaticConnectionToWifi(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setAutomaticConnectionToWifi"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setAutomaticConnectionToWifi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMinimumRequiredSecurity(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setMinimumRequiredSecurity"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setMinimumRequiredSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setNetworkSSID(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setNetworkSSID"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, v0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setNetworkSSID(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at WiFi policy API setNetworkSSID"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public setPasswordHidden(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setPasswordHidden"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setPasswordHidden(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setPasswordHidden"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPromptCredentialsEnabled(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setPromptCredentialsEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setPromptCredentialsEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWifi(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiAllowed(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiApSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setWifiApSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiApSetting(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Wifi Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiProfile(Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setWifiProfile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "24"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getStorageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x11

    if-ge v0, v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at WiFi policy API setWifiProfile"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public setWifiStateChangeAllowed(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "WifiPolicy.setWifiStateChangeAllowed"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
