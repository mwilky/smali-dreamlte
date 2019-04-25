.class public abstract Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;
.super Landroid/os/Binder;
.source "IUcmService.java"

# interfaces
.implements Lcom/samsung/android/knox/ucm/core/IUcmService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/core/IUcmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/core/IUcmService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ucm.core.IUcmService"

.field static final TRANSACTION_APDUCommand:I = 0x20

.field static final TRANSACTION_authenticatePin:I = 0x1b

.field static final TRANSACTION_changePin:I = 0x1e

.field static final TRANSACTION_configureKeyguardSettings:I = 0x23

.field static final TRANSACTION_configureODESettings:I = 0x25

.field static final TRANSACTION_containsAlias:I = 0x29

.field static final TRANSACTION_createSecureChannel:I = 0x31

.field static final TRANSACTION_decrypt:I = 0x3

.field static final TRANSACTION_delete:I = 0xd

.field static final TRANSACTION_deleteCertificate:I = 0xe

.field static final TRANSACTION_destroySecureChannel:I = 0x33

.field static final TRANSACTION_generateDek:I = 0x4

.field static final TRANSACTION_generateKeyPair:I = 0xf

.field static final TRANSACTION_generateKeyPairInternal:I = 0x10

.field static final TRANSACTION_generateKeyguardPassword:I = 0x22

.field static final TRANSACTION_generateSecureRandom:I = 0x14

.field static final TRANSACTION_generateWrappedDek:I = 0x5

.field static final TRANSACTION_getAdminConfigureBundleFromCs:I = 0x18

.field static final TRANSACTION_getAgentInfo:I = 0x13

.field static final TRANSACTION_getCertificateChain:I = 0x2

.field static final TRANSACTION_getConfigureBundleFromCs:I = 0x16

.field static final TRANSACTION_getCredentialStorageProperty:I = 0x1a

.field static final TRANSACTION_getDek:I = 0x6

.field static final TRANSACTION_getDetailErrorMessage:I = 0x39

.field static final TRANSACTION_getInfo:I = 0x21

.field static final TRANSACTION_getKeyguardStorageForCurrentUser:I = 0x35

.field static final TRANSACTION_getODESettingsConfiguration:I = 0x26

.field static final TRANSACTION_getStatus:I = 0x2c

.field static final TRANSACTION_grantKeyChainAccess:I = 0x2a

.field static final TRANSACTION_importKeyPair:I = 0xa

.field static final TRANSACTION_installCertificate:I = 0xb

.field static final TRANSACTION_isCredentialStorageLock:I = 0x8

.field static final TRANSACTION_isKeyChainGranted:I = 0x2b

.field static final TRANSACTION_isUserCertificatesExistInUCS:I = 0x30

.field static final TRANSACTION_listAllProviders:I = 0x12

.field static final TRANSACTION_listPasswordSupportedProviders:I = 0x24

.field static final TRANSACTION_listProviders:I = 0x11

.field static final TRANSACTION_notifyChangeToPlugin:I = 0x2e

.field static final TRANSACTION_notifyLicenseStatus:I = 0x2d

.field static final TRANSACTION_processMessage:I = 0x32

.field static final TRANSACTION_registerSystemUICallback:I = 0x38

.field static final TRANSACTION_removeEnforcedLockTypeNotification:I = 0x37

.field static final TRANSACTION_resetNonMdmCertificates:I = 0x2f

.field static final TRANSACTION_resetUid:I = 0x28

.field static final TRANSACTION_resetUser:I = 0x27

.field static final TRANSACTION_saw:I = 0x9

.field static final TRANSACTION_sawInternal:I = 0x34

.field static final TRANSACTION_setAdminConfigureBundleForCs:I = 0x17

.field static final TRANSACTION_setCertificateChain:I = 0xc

.field static final TRANSACTION_setConfigureBundleForCs:I = 0x15

.field static final TRANSACTION_setCredentialStorageProperty:I = 0x19

.field static final TRANSACTION_setState:I = 0x1f

.field static final TRANSACTION_showEnforcedLockTypeNotification:I = 0x36

.field static final TRANSACTION_sign:I = 0x1

.field static final TRANSACTION_unwrapDek:I = 0x7

.field static final TRANSACTION_updateAgentList:I = 0x3a

.field static final TRANSACTION_verifyPin:I = 0x1c

.field static final TRANSACTION_verifyPuk:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.ucm.core.IUcmService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.ucm.core.IUcmService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/ucm/core/IUcmService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ucm/core/IUcmService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v10, "com.samsung.android.knox.ucm.core.IUcmService"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_36

    const/4 v0, 0x0

    const/4 v12, 0x0

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->updateAgentList()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->removeEnforcedLockTypeNotification(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->showEnforcedLockTypeNotification(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

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

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->sawInternal(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v11

    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->destroySecureChannel()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->processMessage(I[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/ucm/core/ApduMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v11

    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {v6, v1, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->createSecureChannel(ILandroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/ucm/core/ApduMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v11

    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->isUserCertificatesExistInUCS()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->resetNonMdmCertificates()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-virtual {v6, v1, v2, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_5

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v11

    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_6

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_6
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v11

    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->isKeyChainGranted(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->grantKeyChainAccess(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->containsAlias(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_7

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_7
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v11

    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->resetUid(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_8

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_8
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v11

    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->resetUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_9

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_9
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v11

    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->getODESettingsConfiguration()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_a
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v11

    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_b

    :cond_b
    nop

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v0, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->configureODESettings(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->listPasswordSupportedProviders(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v11

    :pswitch_17
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->configureKeyguardSettings(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_c

    :cond_c
    nop

    :goto_c
    invoke-virtual {v6, v1, v2, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_d

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_d
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return v11

    :pswitch_19
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->getInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_e

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_e
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v11

    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_f

    :cond_f
    nop

    :goto_f
    invoke-virtual {v6, v1, v2, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_10

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_10
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    return v11

    :pswitch_1b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->setState(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_11

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    :cond_11
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    return v11

    :pswitch_1c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_12

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_12
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    return v11

    :pswitch_1d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_13

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_13
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_13
    return v11

    :pswitch_1e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_14

    :cond_14
    nop

    :goto_14
    invoke-virtual {v6, v1, v2, v3, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_15

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_15

    :cond_15
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_15
    return v11

    :pswitch_1f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->authenticatePin(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_20
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_16

    :cond_16
    nop

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v1, v2, v0, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->getCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_17

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_17
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    return v11

    :pswitch_21
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_18

    :cond_18
    nop

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v6, v1, v2, v0, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->setCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_19

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    :cond_19
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_19
    return v11

    :pswitch_22
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->getAdminConfigureBundleFromCs(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1a

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    :cond_1a
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    return v11

    :pswitch_23
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_1b
    move-object v4, v0

    goto :goto_1c

    :cond_1b
    goto :goto_1b

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v6

    move v1, v13

    move v2, v14

    move-object v3, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->setAdminConfigureBundleForCs(IILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1c

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :cond_1c
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    return v11

    :pswitch_24
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->getConfigureBundleFromCs(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1d

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    :cond_1d
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e
    return v11

    :pswitch_25
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_1f

    :cond_1e
    nop

    :goto_1f
    invoke-virtual {v6, v1, v2, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->setConfigureBundleForCs(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1f

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    :cond_1f
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20
    return v11

    :pswitch_26
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_20

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    :cond_20
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_21
    return v11

    :pswitch_27
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_21

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    :cond_21
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_22
    return v11

    :pswitch_28
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->listAllProviders()[Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v11

    :pswitch_29
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->listProviders()[Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v11

    :pswitch_2a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_23

    :cond_22
    nop

    :goto_23
    invoke-virtual {v6, v1, v2, v3, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_23

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_24

    :cond_23
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_24
    return v11

    :pswitch_2b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_25

    :cond_24
    nop

    :goto_25
    invoke-virtual {v6, v1, v2, v3, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_25

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    :cond_25
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_26
    return v11

    :pswitch_2c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->deleteCertificate(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_26

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    :cond_26
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_27
    return v11

    :pswitch_2d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->delete(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_27

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_28

    :cond_27
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_28
    return v11

    :pswitch_2e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_28

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_29

    :cond_28
    nop

    :goto_29
    invoke-virtual {v6, v1, v2, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_29

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2a

    :cond_29
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2a
    return v11

    :pswitch_2f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_2b

    :cond_2a
    nop

    :goto_2b
    invoke-virtual {v6, v1, v2, v3, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2b

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2c

    :cond_2b
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2c
    return v11

    :pswitch_30
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_2d

    :cond_2c
    nop

    :goto_2d
    invoke-virtual {v6, v1, v2, v3, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2d

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2e

    :cond_2d
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2e
    return v11

    :pswitch_31
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2e

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2f

    :cond_2e
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2f
    return v11

    :pswitch_32
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->isCredentialStorageLock(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_33
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->unwrapDek(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2f

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_30

    :cond_2f
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_30
    return v11

    :pswitch_34
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->getDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_30

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v9, v11}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31

    :cond_30
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_31
    return v11

    :pswitch_35
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->generateWrappedDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_31

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v9, v11}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_32

    :cond_31
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_32
    return v11

    :pswitch_36
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->generateDek(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_32

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v9, v11}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_33

    :cond_32
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_33
    return v11

    :pswitch_37
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->decrypt(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_33

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_34

    :cond_33
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_34
    return v11

    :pswitch_38
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_34

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v9, v11}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35

    :cond_34
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_35
    return v11

    :pswitch_39
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->sign(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_35

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_36

    :cond_35
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_36
    return v11

    :cond_36
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
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
