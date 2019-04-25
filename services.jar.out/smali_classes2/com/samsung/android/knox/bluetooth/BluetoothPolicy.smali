.class public Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;
.super Ljava/lang/Object;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/bluetooth/BluetoothPolicy$BluetoothProfile;,
        Lcom/samsung/android/knox/bluetooth/BluetoothPolicy$BluetoothUUID;
    }
.end annotation


# static fields
.field public static final NO_PROFILE:I = -0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BluetoothPolicy"

    sput-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private convertBluetoothProfile(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "Profile: PBAP\n"

    return-object v0

    :pswitch_1
    const-string v0, "Profile: PAN\n"

    return-object v0

    :pswitch_2
    const-string v0, "Profile: INPUT DEVICE\n"

    return-object v0

    :pswitch_3
    const-string v0, "Profile: HEALTH\n"

    return-object v0

    :pswitch_4
    const-string v0, "Profile: A2DP\n"

    return-object v0

    :pswitch_5
    const-string v0, "Profile: Headset and Handsfree\n"

    return-object v0

    :cond_0
    const-string v0, "Profile: MAP\n"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    if-nez v0, :cond_0

    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    return-object v0
.end method


# virtual methods
.method public activateBluetoothDeviceRestriction(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.activateBluetoothDeviceRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->activateBluetoothDeviceRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public activateBluetoothUUIDRestriction(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.activateBluetoothUUIDRestriction"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->activateBluetoothUUIDRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addBluetoothDevicesToBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.addBluetoothDevicesToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->addBluetoothDevicesToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addBluetoothDevicesToWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.addBluetoothDevicesToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->addBluetoothDevicesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addBluetoothDevicesToWhiteList(Ljava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.addBluetoothDevicesToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->addBluetoothDevicesToBlackList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to update WildCard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->addBluetoothDevicesToWhiteList(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public addBluetoothUUIDsToBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.addBluetoothUUIDsToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->addBluetoothUUIDsToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addBluetoothUUIDsToWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.addBluetoothUUIDsToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->addBluetoothUUIDsToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addBluetoothUUIDsToWhiteList(Ljava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.addBluetoothUUIDsToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->addBluetoothUUIDsToBlackList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to update wildCard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->addBluetoothUUIDsToWhiteList(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public allowBLE(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowBLE(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowBluetooth(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowBluetooth(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowCallerIDDisplay(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.allowCallerIDDisplay"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowCallerIDDisplay(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed to block caller id display "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowOutgoingCalls(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.allowOutgoingCalls"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->allowOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 8

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, -0x1

    if-eq p2, v6, :cond_2

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->convertBluetoothProfile(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v6, 0xa

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    const-string v7, "Remote Address: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    const-string v7, "Remote Name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    const-string v7, "Local Address: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    const-string v7, "Local Name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public clearBluetoothDevicesFromBlackList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.clearBluetoothDevicesFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->clearBluetoothDevicesFromBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearBluetoothDevicesFromList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.clearBluetoothDevicesFromList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->clearBluetoothDevicesFromBlackList()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->clearBluetoothDevicesFromWhiteList()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public clearBluetoothDevicesFromWhiteList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.clearBluetoothDevicesFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->clearBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearBluetoothUUIDsFromBlackList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.clearBluetoothUUIDsFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->clearBluetoothUUIDsFromBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearBluetoothUUIDsFromList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.clearBluetoothUUIDsFromList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->clearBluetoothUUIDsFromBlackList()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->clearBluetoothUUIDsFromWhiteList()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public clearBluetoothUUIDsFromWhiteList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.clearBluetoothUUIDsFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->clearBluetoothUUIDsFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowBluetoothDataTransfer()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllowBluetoothDataTransfer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBluetoothDevicesFromBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.getBluetoothDevicesFromBlackLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllBluetoothDevicesBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getBluetoothDevicesFromWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.getBluetoothDevicesFromWhiteLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllBluetoothDevicesWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getBluetoothLog()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.getBluetoothLog"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getBluetoothLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothUUIDsFromBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.getBluetoothUUIDsFromBlackLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllBluetoothUUIDsBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getBluetoothUUIDsFromWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/bluetooth/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.getBluetoothUUIDsFromWhiteLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getAllBluetoothUUIDsWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEffectiveBluetoothDevicesBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getEffectiveBluetoothDevicesBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEffectiveBluetoothDevicesWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getEffectiveBluetoothDevicesWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getEffectiveBluetoothUUIDsBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->getEffectiveBluetoothUUIDsWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isBLEAllowed()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothDeviceAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isBluetoothDeviceRestrictionActive()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.isBluetoothDeviceRestrictionActive"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothDeviceRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const/4 v0, 0x1

    return v0
.end method

.method public isBluetoothEnabled(Z)Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const/4 v0, 0x1

    return v0
.end method

.method public isBluetoothLogEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothUUIDAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isBluetoothUUIDRestrictionActive()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.isBluetoothUUIDRestrictionActive"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isBluetoothUUIDRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCallerIDDisplayAllowed()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getting caller id display status"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDesktopConnectivityEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isDesktopConnectivityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDiscoverableEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLimitedDiscoverableEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isLimitedDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOutgoingCallsAllowed()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isOutgoingCallsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPairingEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isPairingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isProfileEnabled(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->isProfileEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isRequiredPasswordForDiscovery()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRequiredPasswordForEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeBluetoothDevicesFromBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.removeBluetoothDevicesFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->removeBluetoothDevicesFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeBluetoothDevicesFromWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.removeBluetoothDevicesFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeBluetoothUUIDsFromBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.removeBluetoothUUIDsFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->removeBluetoothUUIDsFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeBluetoothUUIDsFromWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.removeBluetoothUUIDsFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->removeBluetoothUUIDsFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowBluetoothDataTransfer(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setAllowBluetoothDataTransfer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setAllowBluetoothDataTransfer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBluetoothLogEnabled(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setBluetoothLogEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBluetoothState(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setBluetooth(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDesktopConnectivityState(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setDesktopConnectivityState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setDesktopConnectivityState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDiscoverableState(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setDiscoverableState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setDiscoverableState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setLimitedDiscoverableState(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setLimitedDiscoverableState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setLimitedDiscoverableState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPairingState(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setPairingState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setPairingState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setProfileState(ZI)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BluetoothPolicy.setProfileState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->getService()Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mService:Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/bluetooth/IBluetoothPolicy;->setProfileState(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/bluetooth/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRequiredPasswordForDiscovery(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setRequiredPasswordForEnable(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
