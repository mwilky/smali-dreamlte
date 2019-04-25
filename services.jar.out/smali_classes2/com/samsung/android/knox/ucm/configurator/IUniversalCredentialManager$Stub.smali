.class public abstract Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;
.super Landroid/os/Binder;
.source "IUniversalCredentialManager.java"

# interfaces
.implements Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ucm.configurator.IUniversalCredentialManager"

.field static final TRANSACTION_addPackagesToExemptList:I = 0x26

.field static final TRANSACTION_addPackagesToWhiteList:I = 0xd

.field static final TRANSACTION_addPackagesToWhiteListInternal:I = 0xe

.field static final TRANSACTION_clearWhiteList:I = 0x12

.field static final TRANSACTION_configureCredentialStorageForODESettings:I = 0x2b

.field static final TRANSACTION_configureCredentialStoragePlugin:I = 0x2

.field static final TRANSACTION_deleteCACertificate:I = 0x20

.field static final TRANSACTION_deleteCertificate:I = 0x19

.field static final TRANSACTION_deleteCertificateInternal:I = 0x1a

.field static final TRANSACTION_enableCredentialStorageForLockType:I = 0x34

.field static final TRANSACTION_enforceCredentialStorageAsLockType:I = 0x31

.field static final TRANSACTION_getAdminForEnforcedCredentialStorageAsUser:I = 0x30

.field static final TRANSACTION_getAliases:I = 0x1b

.field static final TRANSACTION_getAllCertificateAliases:I = 0x1e

.field static final TRANSACTION_getAuthType:I = 0x8

.field static final TRANSACTION_getAvailableCredentialStorages:I = 0x1

.field static final TRANSACTION_getCACertificate:I = 0x22

.field static final TRANSACTION_getCACertificateAliases:I = 0x21

.field static final TRANSACTION_getCertificateAliases:I = 0x1c

.field static final TRANSACTION_getCertificateAliasesAsUser:I = 0x1d

.field static final TRANSACTION_getCredentialStoragePluginConfiguration:I = 0x3

.field static final TRANSACTION_getCredentialStorageProperty:I = 0x25

.field static final TRANSACTION_getCredentialStorages:I = 0x13

.field static final TRANSACTION_getDefaultInstallStorage:I = 0x14

.field static final TRANSACTION_getDefaultInstallStorageAsUser:I = 0x15

.field static final TRANSACTION_getEnforcedCredentialStorageForLockType:I = 0x2e

.field static final TRANSACTION_getEnforcedCredentialStorageForLockTypeAsUser:I = 0x2f

.field static final TRANSACTION_getODESettingsConfiguration:I = 0x2c

.field static final TRANSACTION_getPackagesFromExemptList:I = 0x27

.field static final TRANSACTION_getPackagesFromWhiteList:I = 0x10

.field static final TRANSACTION_getStorageAuthenticationType:I = 0x9

.field static final TRANSACTION_getSupportedAlgorithms:I = 0x23

.field static final TRANSACTION_getWifiCertificateAliasesAsUser:I = 0x2d

.field static final TRANSACTION_installCACertificate:I = 0x1f

.field static final TRANSACTION_installCertificate:I = 0x17

.field static final TRANSACTION_installCertificateInternal:I = 0x18

.field static final TRANSACTION_isAccessAllowed:I = 0x11

.field static final TRANSACTION_isCallerDelegated:I = 0x35

.field static final TRANSACTION_isCredentialStorageEnabledForLockType:I = 0x32

.field static final TRANSACTION_isCredentialStorageEnabledForLockTypeAsUser:I = 0x33

.field static final TRANSACTION_isCredentialStorageLocked:I = 0xb

.field static final TRANSACTION_isCredentialStorageLockedAsUser:I = 0xc

.field static final TRANSACTION_isCredentialStorageManaged:I = 0x5

.field static final TRANSACTION_isCredentialStorageManagedAsUser:I = 0x6

.field static final TRANSACTION_isPackageFromExemptList:I = 0x29

.field static final TRANSACTION_lockCredentialStorage:I = 0xa

.field static final TRANSACTION_manageCredentialStorage:I = 0x4

.field static final TRANSACTION_notifyLicenseStatus:I = 0x2a

.field static final TRANSACTION_removePackagesFromExemptList:I = 0x28

.field static final TRANSACTION_removePackagesFromWhiteList:I = 0xf

.field static final TRANSACTION_setAuthType:I = 0x7

.field static final TRANSACTION_setCredentialStorageProperty:I = 0x24

.field static final TRANSACTION_setDefaultInstallStorage:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.ucm.configurator.IUniversalCredentialManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.ucm.configurator.IUniversalCredentialManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.samsung.android.knox.ucm.configurator.IUniversalCredentialManager"

    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_68

    const/4 v0, 0x0

    const/4 v4, 0x0

    packed-switch v9, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move-object v1, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->isCallerDelegated(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2

    :cond_2
    move-object v1, v4

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    move-object v2, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v0, v13

    nop

    :cond_4
    invoke-virtual {v8, v1, v2, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->enableCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_4

    :cond_5
    nop

    :goto_4
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->isCredentialStorageEnabledForLockTypeAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5

    :cond_6
    move-object v0, v4

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_6

    :cond_7
    nop

    :goto_6
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->isCredentialStorageEnabledForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7

    :cond_8
    move-object v0, v4

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_8

    :cond_9
    move-object v1, v4

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/Bundle;

    goto :goto_9

    :cond_a
    nop

    :goto_9
    move-object v2, v4

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getAdminForEnforcedCredentialStorageAsUser(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getEnforcedCredentialStorageForLockTypeAsUser(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_b

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v11, v13}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_b
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v13

    :pswitch_7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b

    :cond_c
    nop

    :goto_b
    move-object v1, v4

    invoke-virtual {v8, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getEnforcedCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_d

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v11, v13}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_d
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v13

    :pswitch_8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_d

    :cond_e
    nop

    :goto_d
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getWifiCertificateAliasesAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v13

    :pswitch_9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_e

    :cond_f
    nop

    :goto_e
    move-object v1, v4

    invoke-virtual {v8, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getODESettingsConfiguration(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_10

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v11, v13}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    :cond_10
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    return v13

    :pswitch_a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_10

    :cond_11
    move-object v0, v4

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_11

    :cond_12
    move-object v1, v4

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/Bundle;

    goto :goto_12

    :cond_13
    nop

    :goto_12
    move-object v2, v4

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->configureCredentialStorageForODESettings(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->notifyLicenseStatus(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_13

    :cond_14
    nop

    :goto_13
    move-object v1, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->isPackageFromExemptList(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_14

    :cond_15
    move-object v0, v4

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_15

    :cond_16
    nop

    :goto_15
    move-object v1, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->removePackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_16

    :cond_17
    move-object v0, v4

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_17

    :cond_18
    nop

    :goto_17
    move-object v1, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getPackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v13

    :pswitch_f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_18

    :cond_19
    move-object v0, v4

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_19

    :cond_1a
    nop

    :goto_19
    move-object v1, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->addPackagesToExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_10
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1a

    :cond_1b
    move-object v1, v4

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_1b

    :cond_1c
    move-object v2, v4

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    goto :goto_1c

    :cond_1d
    nop

    :goto_1c
    move-object v3, v4

    invoke-virtual {v8, v1, v2, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1e

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :cond_1e
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    return v13

    :pswitch_11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1e

    :cond_1f
    move-object v1, v4

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_1f

    :cond_20
    move-object v2, v4

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    goto :goto_20

    :cond_21
    nop

    :goto_20
    move-object v3, v4

    invoke-virtual {v8, v1, v2, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->setCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_22

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v11, v13}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    :cond_22
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_21
    return v13

    :pswitch_12
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_22

    :cond_23
    move-object v0, v4

    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_23

    :cond_24
    nop

    :goto_23
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getSupportedAlgorithms(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v13

    :pswitch_13
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_24

    :cond_25
    nop

    :goto_24
    move-object v1, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_26

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v11, v13}, Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_25

    :cond_26
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_25
    return v13

    :pswitch_14
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_26

    :cond_27
    move-object v0, v4

    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/Bundle;

    goto :goto_27

    :cond_28
    nop

    :goto_27
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getCACertificateAliases(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v13

    :pswitch_15
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_28

    :cond_29
    nop

    :goto_28
    move-object v0, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->deleteCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_16
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_29

    :cond_2a
    move-object v0, v4

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    goto :goto_2a

    :cond_2b
    nop

    :goto_2a
    move-object v3, v4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->installCACertificate(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;Landroid/os/Bundle;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_17
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_2b

    :cond_2c
    nop

    :goto_2b
    move-object v0, v4

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getAllCertificateAliases(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v13

    :pswitch_18
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_2c

    :cond_2d
    nop

    :goto_2c
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getCertificateAliasesAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v13

    :pswitch_19
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_2d

    :cond_2e
    nop

    :goto_2d
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getCertificateAliases(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v13

    :pswitch_1a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2e

    :cond_2f
    move-object v0, v4

    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_2f

    :cond_30
    nop

    :goto_2f
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getAliases(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v13

    :pswitch_1b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_30

    :cond_31
    nop

    :goto_30
    move-object v2, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->deleteCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_31

    :cond_32
    move-object v0, v4

    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_33

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_32

    :cond_33
    nop

    :goto_32
    move-object v1, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_34

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-object v3, v1

    goto :goto_33

    :cond_34
    move-object v3, v4

    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object v6, v1

    goto :goto_34

    :cond_35
    move-object v6, v4

    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_36

    move v7, v13

    goto :goto_35

    :cond_36
    move v7, v0

    :goto_35
    move-object v0, v8

    move v1, v14

    move v2, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->installCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Landroid/os/Bundle;Z)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    goto :goto_36

    :cond_37
    move-object v1, v4

    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-object v2, v0

    goto :goto_37

    :cond_38
    move-object v2, v4

    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v6, v0

    goto :goto_38

    :cond_39
    move-object v6, v4

    :goto_38
    move-object v0, v8

    move-object v3, v7

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_39

    :cond_3a
    move-object v0, v4

    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3b

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_3a

    :cond_3b
    nop

    :goto_3a
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->setDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_20
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getDefaultInstallStorageAsUser(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3c

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v11, v13}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3b

    :cond_3c
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3b
    return v13

    :pswitch_21
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3c

    :cond_3d
    nop

    :goto_3c
    move-object v1, v4

    invoke-virtual {v8, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3e

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v11, v13}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3d

    :cond_3e
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3d
    return v13

    :pswitch_22
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3e

    :cond_3f
    nop

    :goto_3e
    move-object v0, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v13

    :pswitch_23
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3f

    :cond_40
    move-object v0, v4

    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_40

    :cond_41
    move-object v1, v4

    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_42

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/Bundle;

    goto :goto_41

    :cond_42
    nop

    :goto_41
    move-object v2, v4

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->clearWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_24
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_43

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_42

    :cond_43
    move-object v1, v4

    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_44

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/Bundle;

    goto :goto_43

    :cond_44
    nop

    :goto_43
    move-object v2, v4

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->isAccessAllowed(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_25
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_44

    :cond_45
    move-object v0, v4

    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_46

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_45

    :cond_46
    move-object v1, v4

    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_47

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/Bundle;

    goto :goto_46

    :cond_47
    nop

    :goto_46
    move-object v2, v4

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v13

    :pswitch_26
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_47

    :cond_48
    move-object v0, v4

    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_49

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_48

    :cond_49
    move-object v1, v4

    :goto_48
    sget-object v2, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4a

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    goto :goto_49

    :cond_4a
    nop

    :goto_49
    move-object v3, v4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->removePackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_27
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-object v3, v0

    goto :goto_4a

    :cond_4b
    move-object v3, v4

    :goto_4a
    sget-object v0, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v5, v0

    goto :goto_4b

    :cond_4c
    move-object v5, v4

    :goto_4b
    move-object v0, v8

    move v1, v6

    move v2, v7

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->addPackagesToWhiteListInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_28
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4c

    :cond_4d
    move-object v0, v4

    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_4d

    :cond_4e
    move-object v1, v4

    :goto_4d
    sget-object v2, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4f

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    goto :goto_4e

    :cond_4f
    nop

    :goto_4e
    move-object v3, v4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->addPackagesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_29
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_50

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_4f

    :cond_50
    nop

    :goto_4f
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->isCredentialStorageLockedAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_2a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_50

    :cond_51
    move-object v0, v4

    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_52

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_51

    :cond_52
    nop

    :goto_51
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->isCredentialStorageLocked(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_2b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_53

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_52

    :cond_53
    move-object v1, v4

    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_54

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_53

    :cond_54
    nop

    :goto_53
    move-object v2, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_55

    move v0, v13

    nop

    :cond_55
    invoke-virtual {v8, v1, v2, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->lockCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_2c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_56

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_54

    :cond_56
    nop

    :goto_54
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getStorageAuthenticationType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_2d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_55

    :cond_57
    move-object v0, v4

    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_58

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_56

    :cond_58
    nop

    :goto_56
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_2e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_57

    :cond_59
    move-object v0, v4

    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5a

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_58

    :cond_5a
    nop

    :goto_58
    move-object v1, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->setAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_2f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5b

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_59

    :cond_5b
    nop

    :goto_59
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->isCredentialStorageManagedAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_30
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5a

    :cond_5c
    move-object v0, v4

    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5d

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_5b

    :cond_5d
    nop

    :goto_5b
    move-object v1, v4

    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_31
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5e

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5c

    :cond_5e
    move-object v1, v4

    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5f

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_5d

    :cond_5f
    nop

    :goto_5d
    move-object v2, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_60

    move v0, v13

    nop

    :cond_60
    invoke-virtual {v8, v1, v2, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_32
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_61

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5e

    :cond_61
    move-object v1, v4

    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_62

    sget-object v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_5f

    :cond_62
    nop

    :goto_5f
    move-object v2, v4

    invoke-virtual {v8, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getCredentialStoragePluginConfiguration(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_63

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v11, v13}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_60

    :cond_63
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_60
    return v13

    :pswitch_33
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_64

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_61

    :cond_64
    move-object v0, v4

    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_65

    sget-object v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_62

    :cond_65
    move-object v1, v4

    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_66

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/Bundle;

    goto :goto_63

    :cond_66
    nop

    :goto_63
    move-object v2, v4

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->configureCredentialStoragePlugin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_34
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_67

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_64

    :cond_67
    nop

    :goto_64
    move-object v0, v4

    invoke-virtual {v8, v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v13

    :cond_68
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
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
