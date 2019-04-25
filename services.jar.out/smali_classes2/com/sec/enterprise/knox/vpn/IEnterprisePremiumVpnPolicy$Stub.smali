.class public abstract Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;
.super Landroid/os/Binder;
.source "IEnterprisePremiumVpnPolicy.java"

# interfaces
.implements Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.enterprise.knox.vpn.IEnterprisePremiumVpnPolicy"

.field static final TRANSACTION_addVpnProfileToApp:I = 0x11

.field static final TRANSACTION_bindMocanaVpnInterface:I = 0x1a

.field static final TRANSACTION_containerPackageListFromVpnDatabase:I = 0x18

.field static final TRANSACTION_enableDefaultRoute:I = 0xf

.field static final TRANSACTION_getAllEnterpriseVpnConnections:I = 0x4

.field static final TRANSACTION_getAllPackagesForProfile:I = 0x13

.field static final TRANSACTION_getCACertificate:I = 0x8

.field static final TRANSACTION_getDomainsByProfileName:I = 0x1c

.field static final TRANSACTION_getEnterpriseVpnConnection:I = 0x1

.field static final TRANSACTION_getErrorString:I = 0xc

.field static final TRANSACTION_getForwardRoutes:I = 0xe

.field static final TRANSACTION_getProfilesByDomain:I = 0x1d

.field static final TRANSACTION_getState:I = 0xb

.field static final TRANSACTION_getUserCertificate:I = 0x7

.field static final TRANSACTION_getVpnModeOfOperation:I = 0x15

.field static final TRANSACTION_isDefaultRouteEnabled:I = 0x10

.field static final TRANSACTION_notifyContainerAppLaunch:I = 0x16

.field static final TRANSACTION_removeEnterpriseVpnConnection:I = 0x3

.field static final TRANSACTION_removeVpnForApplication:I = 0x12

.field static final TRANSACTION_setCACertificate:I = 0x6

.field static final TRANSACTION_setDnsToVpn:I = 0x17

.field static final TRANSACTION_setEnterprisePremiumVpnConnection:I = 0x2

.field static final TRANSACTION_setForwardRoutes:I = 0xd

.field static final TRANSACTION_setUserCertificate:I = 0x5

.field static final TRANSACTION_setVpnFrameworkSystemProperty:I = 0x19

.field static final TRANSACTION_setVpnModeOfOperation:I = 0x14

.field static final TRANSACTION_startConnection:I = 0x9

.field static final TRANSACTION_startVpnAfterMigration:I = 0x1b

.field static final TRANSACTION_stopConnection:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.enterprise.knox.vpn.IEnterprisePremiumVpnPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.sec.enterprise.knox.vpn.IEnterprisePremiumVpnPolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object v1

    :cond_1
    new-instance v1, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.sec.enterprise.knox.vpn.IEnterprisePremiumVpnPolicy"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_18

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->startVpnAfterMigration()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->bindMocanaVpnInterface()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->setVpnFrameworkSystemProperty(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->containerPackageListFromVpnDatabase(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->setDnsToVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->notifyContainerAppLaunch(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->getVpnModeOfOperation()Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->setVpnModeOfOperation(Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->getAllPackagesForProfile(ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_3

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->removeVpnForApplication(ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_4

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->addVpnProfileToApp(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_5

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->isDefaultRouteEnabled(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_6

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_7

    :cond_7
    move v5, v1

    :goto_7
    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->enableDefaultRoute(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_8

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v2

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->getForwardRoutes(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_9

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v2

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->setForwardRoutes(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_a

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v2

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_b

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v2

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->getState(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_c

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v2

    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->stopConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_d

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return v2

    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->startConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_e

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v2

    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->getCACertificate(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_f

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    return v2

    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->getUserCertificate(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_10

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_10
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    return v2

    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->setCACertificate(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_11

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    :cond_11
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    return v2

    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->setUserCertificate(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_12

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_12
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    return v2

    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->getAllEnterpriseVpnConnections(Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_13

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_13
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_13
    return v2

    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->removeEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_14

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14

    :cond_14
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    return v2

    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    goto :goto_15

    :cond_15
    const/4 v3, 0x0

    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->setEnterprisePremiumVpnConnection(Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_16

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_16

    :cond_16
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_16
    return v2

    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->getEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_17

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_17
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    return v2

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
