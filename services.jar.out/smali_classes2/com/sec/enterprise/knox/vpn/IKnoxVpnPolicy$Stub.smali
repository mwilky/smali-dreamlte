.class public abstract Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;
.super Landroid/os/Binder;
.source "IKnoxVpnPolicy.java"

# interfaces
.implements Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.enterprise.knox.vpn.IKnoxVpnPolicy"

.field static final TRANSACTION_activateVpnProfile:I = 0x5

.field static final TRANSACTION_addAllContainerPackagesToVpn:I = 0x18

.field static final TRANSACTION_addAllPackagesToVpn:I = 0x13

.field static final TRANSACTION_addContainerPackagesToVpn:I = 0x15

.field static final TRANSACTION_addPackagesToVpn:I = 0x10

.field static final TRANSACTION_addVpnUidRanges:I = 0x25

.field static final TRANSACTION_bindKnoxVpnInterface:I = 0x1c

.field static final TRANSACTION_checkIfVendorCreatedKnoxProfile:I = 0x22

.field static final TRANSACTION_createVpnProfile:I = 0x1

.field static final TRANSACTION_getAllContainerPackagesInVpnProfile:I = 0x17

.field static final TRANSACTION_getAllPackagesInVpnProfile:I = 0x12

.field static final TRANSACTION_getAllVpnProfiles:I = 0x4

.field static final TRANSACTION_getCACertificate:I = 0x9

.field static final TRANSACTION_getChainingEnabledForProfile:I = 0x1e

.field static final TRANSACTION_getDomainsByProfileName:I = 0x20

.field static final TRANSACTION_getErrorString:I = 0xd

.field static final TRANSACTION_getInterfaceNameForUid:I = 0x24

.field static final TRANSACTION_getKnoxVpnProfileType:I = 0x1f

.field static final TRANSACTION_getProfilesByDomain:I = 0x21

.field static final TRANSACTION_getState:I = 0xc

.field static final TRANSACTION_getUidPidEnabled:I = 0x1d

.field static final TRANSACTION_getUserCertificate:I = 0x7

.field static final TRANSACTION_getVendorNameForProfile:I = 0x23

.field static final TRANSACTION_getVpnModeOfOperation:I = 0xf

.field static final TRANSACTION_getVpnProfile:I = 0x2

.field static final TRANSACTION_isNetworkBlockedForUid:I = 0x28

.field static final TRANSACTION_removeAllContainerPackagesFromVpn:I = 0x19

.field static final TRANSACTION_removeAllPackagesFromVpn:I = 0x14

.field static final TRANSACTION_removeContainerPackagesFromVpn:I = 0x16

.field static final TRANSACTION_removePackagesFromVpn:I = 0x11

.field static final TRANSACTION_removeVpnProfile:I = 0x3

.field static final TRANSACTION_removeVpnUidRanges:I = 0x26

.field static final TRANSACTION_setAutoRetryOnConnectionError:I = 0x1b

.field static final TRANSACTION_setCACertificate:I = 0x8

.field static final TRANSACTION_setDnsPropertyForNetwork:I = 0x27

.field static final TRANSACTION_setServerCertValidationUserAcceptanceCriteria:I = 0x1a

.field static final TRANSACTION_setUserCertificate:I = 0x6

.field static final TRANSACTION_setVpnModeOfOperation:I = 0xe

.field static final TRANSACTION_startConnection:I = 0xa

.field static final TRANSACTION_stopConnection:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.enterprise.knox.vpn.IKnoxVpnPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.sec.enterprise.knox.vpn.IKnoxVpnPolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    return-object v1

    :cond_1
    new-instance v1, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.sec.enterprise.knox.vpn.IKnoxVpnPolicy"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_3d

    const/4 v12, 0x0

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->isNetworkBlockedForUid(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->setDnsPropertyForNetwork(Landroid/net/NetworkInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->removeVpnUidRanges(Landroid/net/NetworkInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->addVpnUidRanges(Landroid/net/NetworkInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getInterfaceNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getVendorNameForProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->checkIfVendorCreatedKnoxProfile(Ljava/lang/String;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getKnoxVpnProfileType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getChainingEnabledForProfile(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getUidPidEnabled(ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->bindKnoxVpnInterface(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v11

    goto :goto_5

    :cond_5
    move v2, v12

    :goto_5
    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->setAutoRetryOnConnectionError(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_6
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v11

    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    :goto_7
    move-object v1, v0

    goto :goto_8

    :cond_7
    goto :goto_7

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v3, v11

    goto :goto_9

    :cond_8
    move v3, v12

    :goto_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v6

    move-object v2, v13

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->setServerCertValidationUserAcceptanceCriteria(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;ZLjava/util/List;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_9
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v11

    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_b

    :cond_a
    nop

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->removeAllContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_b

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_b
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v11

    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_d

    :cond_c
    nop

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->addAllContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_d

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_d
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v11

    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_f

    :cond_e
    nop

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getAllContainerPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;ILjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_f

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_f
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    return v11

    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_11

    :cond_10
    nop

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->removeContainerPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_11

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_11
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    return v11

    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_13

    :cond_12
    nop

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->addContainerPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_13

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14

    :cond_13
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    return v11

    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_15

    :cond_14
    nop

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->removeAllPackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_15

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_16

    :cond_15
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_16
    return v11

    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_17

    :cond_16
    nop

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->addAllPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_17

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_17
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_18
    return v11

    :pswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_19

    :cond_18
    nop

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getAllPackagesInVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_19

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_19
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    return v11

    :pswitch_17
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_1b

    :cond_1a
    nop

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->removePackagesFromVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1b

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    :cond_1b
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1c
    return v11

    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_1d

    :cond_1c
    nop

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->addPackagesToVpn(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1d

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    :cond_1d
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e
    return v11

    :pswitch_19
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_1f

    :cond_1e
    nop

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1f

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    :cond_1f
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20
    return v11

    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_21

    :cond_20
    nop

    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->setVpnModeOfOperation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_21

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    :cond_21
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_22
    return v11

    :pswitch_1b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_23

    :cond_22
    nop

    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getErrorString(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_23

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_24

    :cond_23
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_24
    return v11

    :pswitch_1c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_25

    :cond_24
    nop

    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getState(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_25

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_25
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    return v11

    :pswitch_1d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_27

    :cond_26
    nop

    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->stopConnection(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_27

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_28

    :cond_27
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_28
    return v11

    :pswitch_1e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_29

    :cond_28
    nop

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->startConnection(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_29

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2a

    :cond_29
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2a
    return v11

    :pswitch_1f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_2b

    :cond_2a
    nop

    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2b

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2c

    :cond_2b
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2c
    return v11

    :pswitch_20
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_2d

    :cond_2c
    nop

    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->setCACertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[B)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2d

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2e

    :cond_2d
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2e
    return v11

    :pswitch_21
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_2f

    :cond_2e
    nop

    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2f

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_30

    :cond_2f
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_30
    return v11

    :pswitch_22
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_31

    :cond_30
    nop

    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->setUserCertificate(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_31

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_32

    :cond_31
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_32
    return v11

    :pswitch_23
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_32

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_33

    :cond_32
    nop

    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_33

    move v2, v11

    goto :goto_34

    :cond_33
    move v2, v12

    :goto_34
    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->activateVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_34

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35

    :cond_34
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_35
    return v11

    :pswitch_24
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_36

    :cond_35
    nop

    :goto_36
    invoke-virtual {v6, v0}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getAllVpnProfiles(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_36

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_37

    :cond_36
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_37
    return v11

    :pswitch_25
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_37

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_38

    :cond_37
    nop

    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->removeVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_38

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_39

    :cond_38
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_39
    return v11

    :pswitch_26
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_39

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_3a

    :cond_39
    nop

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->getVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3a

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3b

    :cond_3a
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3b
    return v11

    :pswitch_27
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3b

    sget-object v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;

    goto :goto_3c

    :cond_3b
    nop

    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->createVpnProfile(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3c

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3d

    :cond_3c
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3d
    return v11

    :cond_3d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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
