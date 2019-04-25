.class public abstract Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;
.super Landroid/os/Binder;
.source "IClientCertificateManager.java"

# interfaces
.implements Lcom/samsung/android/knox/keystore/IClientCertificateManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/IClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.keystore.IClientCertificateManager"

.field static final TRANSACTION_addPackageToExemptList:I = 0x15

.field static final TRANSACTION_deleteCCMProfile:I = 0x8

.field static final TRANSACTION_deleteCSRProfile:I = 0x10

.field static final TRANSACTION_deleteCertificate:I = 0xa

.field static final TRANSACTION_generateCSR:I = 0x2

.field static final TRANSACTION_generateCSRUsingByteArray:I = 0x12

.field static final TRANSACTION_generateCSRUsingString:I = 0x13

.field static final TRANSACTION_generateCSRUsingTemplate:I = 0x11

.field static final TRANSACTION_generateKeyPair:I = 0x5

.field static final TRANSACTION_getAliasesForCaller:I = 0x1a

.field static final TRANSACTION_getAliasesForPackage:I = 0x26

.field static final TRANSACTION_getAliasesForWiFi:I = 0x1c

.field static final TRANSACTION_getCCMProfile:I = 0x7

.field static final TRANSACTION_getCCMVersion:I = 0x17

.field static final TRANSACTION_getCertificateAliases:I = 0x21

.field static final TRANSACTION_getCertificateAliasesHavingPrivateKey:I = 0x22

.field static final TRANSACTION_getDefaultCertificateAlias:I = 0x19

.field static final TRANSACTION_getKeyChainMarkedAliases:I = 0x1f

.field static final TRANSACTION_getSlotIdForCaller:I = 0xd

.field static final TRANSACTION_getSlotIdForPackage:I = 0xe

.field static final TRANSACTION_getWifiAliasPreferredUid:I = 0x2f

.field static final TRANSACTION_hasGrant:I = 0x2b

.field static final TRANSACTION_hasGrantWithCxt:I = 0x2c

.field static final TRANSACTION_insertOrUpdateCCMProfile:I = 0x24

.field static final TRANSACTION_insertOrUpdateCertificateProfile:I = 0x25

.field static final TRANSACTION_installCertificate:I = 0x9

.field static final TRANSACTION_installKeyPair:I = 0x28

.field static final TRANSACTION_installObject:I = 0x4

.field static final TRANSACTION_installObjectWithProfile:I = 0x23

.field static final TRANSACTION_installObjectWithType:I = 0x18

.field static final TRANSACTION_isAccessControlMethodPassword:I = 0x1b

.field static final TRANSACTION_isCCMEmptyForKeyChain:I = 0x20

.field static final TRANSACTION_isCCMPolicyEnabledByAdmin:I = 0x14

.field static final TRANSACTION_isCCMPolicyEnabledForCaller:I = 0xb

.field static final TRANSACTION_isCCMPolicyEnabledForPackage:I = 0xc

.field static final TRANSACTION_isCCMPolicyEnabledForUid:I = 0x1

.field static final TRANSACTION_isKeyChainMarkedAlias:I = 0x1d

.field static final TRANSACTION_keychainMarkedReset:I = 0x1e

.field static final TRANSACTION_notifyLicenseStatus:I = 0x2e

.field static final TRANSACTION_registerForDefaultCertificate:I = 0x3

.field static final TRANSACTION_removeKeyPair:I = 0x29

.field static final TRANSACTION_removePackageFromExemptList:I = 0x16

.field static final TRANSACTION_setCCMProfile:I = 0x6

.field static final TRANSACTION_setCSRProfile:I = 0xf

.field static final TRANSACTION_setDefaultCCMProfile:I = 0x27

.field static final TRANSACTION_setGrant:I = 0x2a

.field static final TRANSACTION_updateDBdata:I = 0x2d


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.keystore.IClientCertificateManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.keystore.IClientCertificateManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "com.samsung.android.knox.keystore.IClientCertificateManager"

    const v0, 0x5f4e5446

    const/4 v15, 0x1

    if-eq v11, v0, :cond_31

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v11, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getWifiAliasPreferredUid(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_1
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->notifyLicenseStatus()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_2
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->updateDBdata(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_3
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    move-object v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->hasGrantWithCxt(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_4
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->hasGrant(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_5
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v15

    nop

    :cond_3
    invoke-virtual {v10, v1, v2, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setGrant(ILjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v15

    :pswitch_6
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3

    :cond_4
    nop

    :goto_3
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->removeKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_7
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v10

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installKeyPair(Lcom/samsung/android/knox/ContextInfo;[B[B[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_8
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setDefaultCCMProfile()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_9
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5

    :cond_6
    nop

    :goto_5
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v15

    :pswitch_a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6

    :cond_7
    move-object v0, v2

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/keystore/CertificateProfile;

    goto :goto_7

    :cond_8
    nop

    :goto_7
    move-object v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->insertOrUpdateCertificateProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8

    :cond_9
    move-object v0, v2

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/keystore/CCMProfile;

    goto :goto_9

    :cond_a
    nop

    :goto_9
    move-object v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->insertOrUpdateCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    goto :goto_a

    :cond_b
    move-object v1, v2

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/keystore/CertificateProfile;

    move-object v2, v0

    nop

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v10

    move v3, v6

    move-object v4, v7

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObjectWithProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b

    :cond_d
    nop

    :goto_b
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCertificateAliasesHavingPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v15

    :pswitch_e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c

    :cond_e
    nop

    :goto_c
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCertificateAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v15

    :pswitch_f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_d

    :cond_f
    nop

    :goto_d
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMEmptyForKeyChain(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_10
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_e

    :cond_10
    nop

    :goto_e
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getKeyChainMarkedAliases(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v15

    :pswitch_11
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_f

    :cond_11
    nop

    :goto_f
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_12
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_10

    :cond_12
    nop

    :goto_10
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isKeyChainMarkedAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_13
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v15

    :pswitch_14
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_11

    :cond_13
    nop

    :goto_11
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isAccessControlMethodPassword(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_15
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_12

    :cond_14
    nop

    :goto_12
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getAliasesForCaller(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v15

    :pswitch_16
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getDefaultCertificateAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :pswitch_17
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    goto :goto_13

    :cond_15
    move-object v1, v2

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v10

    move-object v2, v6

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObjectWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I[BLjava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_18
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCCMVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    :pswitch_19
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_14

    :cond_16
    nop

    :goto_14
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->removePackageFromExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_1a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_15

    :cond_17
    nop

    :goto_15
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->addPackageToExemptList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_1b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_1c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    goto :goto_16

    :cond_18
    move-object v1, v2

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v0, v10

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v15

    :pswitch_1d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    goto :goto_17

    :cond_19
    move-object v1, v2

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v0, v10

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingByteArray(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BI)[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v15

    :pswitch_1e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_18

    :cond_1a
    nop

    :goto_18
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSRUsingTemplate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    return v15

    :pswitch_1f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_19

    :cond_1b
    nop

    :goto_19
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCSRProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_20
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1a

    :cond_1c
    move-object v0, v2

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/samsung/android/knox/keystore/CSRProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/keystore/CSRProfile;

    goto :goto_1b

    :cond_1d
    nop

    :goto_1b
    move-object v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setCSRProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CSRProfile;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_21
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1c

    :cond_1e
    nop

    :goto_1c
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getSlotIdForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    return v15

    :pswitch_22
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1d

    :cond_1f
    nop

    :goto_1d
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getSlotIdForCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v15

    :pswitch_23
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1e

    :cond_20
    nop

    :goto_1e
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_24
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1f

    :cond_21
    nop

    :goto_1f
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledForCaller(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_25
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_20

    :cond_22
    nop

    :goto_20
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_26
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_21

    :cond_23
    move-object v0, v2

    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Lcom/samsung/android/knox/keystore/CertificateProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/keystore/CertificateProfile;

    goto :goto_22

    :cond_24
    nop

    :goto_22
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_27
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_23

    :cond_25
    nop

    :goto_23
    move-object v0, v2

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->deleteCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_28
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_24

    :cond_26
    nop

    :goto_24
    move-object v1, v2

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->getCCMProfile(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/keystore/CCMProfile;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_27

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v13, v15}, Lcom/samsung/android/knox/keystore/CCMProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_25

    :cond_27
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_25
    return v15

    :pswitch_29
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_26

    :cond_28
    move-object v0, v2

    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lcom/samsung/android/knox/keystore/CCMProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/keystore/CCMProfile;

    goto :goto_27

    :cond_29
    nop

    :goto_27
    move-object v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->setCCMProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CCMProfile;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_2a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_28

    :cond_2a
    nop

    :goto_28
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateKeyPair(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)[B

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    return v15

    :pswitch_2b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_29

    :cond_2b
    move-object v1, v2

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    move v9, v15

    goto :goto_2a

    :cond_2c
    move v9, v0

    :goto_2a
    move-object v0, v10

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->installObject(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_2c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2b

    :cond_2d
    move-object v1, v2

    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    move v5, v15

    goto :goto_2c

    :cond_2e
    move v5, v0

    :goto_2c
    move-object v0, v10

    move v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->registerForDefaultCertificate(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :pswitch_2d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2d

    :cond_2f
    move-object v1, v2

    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    move v6, v15

    goto :goto_2e

    :cond_30
    move v6, v0

    :goto_2e
    move-object v0, v10

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->generateCSR(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v15

    :pswitch_2e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->isCCMPolicyEnabledForUid(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v15

    :cond_31
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
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
