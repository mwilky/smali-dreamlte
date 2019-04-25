.class public abstract Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "IExchangeAccountPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.accounts.IExchangeAccountPolicy"

.field static final TRANSACTION_addNewAccount:I = 0x2

.field static final TRANSACTION_addNewAccount_ex:I = 0x3

.field static final TRANSACTION_addNewAccount_new:I = 0x34

.field static final TRANSACTION_allowEmailSettingsChange:I = 0x24

.field static final TRANSACTION_allowInComingAttachments:I = 0x1e

.field static final TRANSACTION_createAccount:I = 0x1

.field static final TRANSACTION_deleteAccount:I = 0xf

.field static final TRANSACTION_getAccountCertificatePassword:I = 0x36

.field static final TRANSACTION_getAccountDetails:I = 0xe

.field static final TRANSACTION_getAccountEmailPassword:I = 0x35

.field static final TRANSACTION_getAccountId:I = 0xd

.field static final TRANSACTION_getAllEASAccounts:I = 0x14

.field static final TRANSACTION_getDeviceId:I = 0x15

.field static final TRANSACTION_getForceSMIMECertificate:I = 0x1c

.field static final TRANSACTION_getForceSMIMECertificateForEncryption:I = 0x32

.field static final TRANSACTION_getForceSMIMECertificateForSigning:I = 0x2f

.field static final TRANSACTION_getIncomingAttachmentsSize:I = 0x21

.field static final TRANSACTION_getMaxCalendarAgeFilter:I = 0x27

.field static final TRANSACTION_getMaxEmailAgeFilter:I = 0x29

.field static final TRANSACTION_getMaxEmailBodyTruncationSize:I = 0x2b

.field static final TRANSACTION_getMaxEmailHTMLBodyTruncationSize:I = 0x2d

.field static final TRANSACTION_getRequireEncryptedSMIMEMessages:I = 0x1a

.field static final TRANSACTION_getRequireSignedSMIMEMessages:I = 0x18

.field static final TRANSACTION_getSMIMECertificateAlias:I = 0x3a

.field static final TRANSACTION_isEmailNotificationsEnabled:I = 0x23

.field static final TRANSACTION_isEmailSettingsChangeAllowed:I = 0x25

.field static final TRANSACTION_isIncomingAttachmentsAllowed:I = 0x1f

.field static final TRANSACTION_removePendingAccount:I = 0x16

.field static final TRANSACTION_sendAccountsChangedBroadcast:I = 0x10

.field static final TRANSACTION_setAcceptAllCertificates:I = 0x5

.field static final TRANSACTION_setAccountBaseParameters:I = 0x3b

.field static final TRANSACTION_setAccountCertificatePassword:I = 0x38

.field static final TRANSACTION_setAccountEmailPassword:I = 0x37

.field static final TRANSACTION_setAccountName:I = 0xc

.field static final TRANSACTION_setAlwaysVibrateOnEmailNotification:I = 0x6

.field static final TRANSACTION_setAsDefaultAccount:I = 0xb

.field static final TRANSACTION_setClientAuthCert:I = 0x9

.field static final TRANSACTION_setDataSyncs:I = 0x13

.field static final TRANSACTION_setEmailNotificationsState:I = 0x22

.field static final TRANSACTION_setForceSMIMECertificate:I = 0x1b

.field static final TRANSACTION_setForceSMIMECertificateAlias:I = 0x39

.field static final TRANSACTION_setForceSMIMECertificateForEncryption:I = 0x31

.field static final TRANSACTION_setForceSMIMECertificateForSigning:I = 0x2e

.field static final TRANSACTION_setIncomingAttachmentsSize:I = 0x20

.field static final TRANSACTION_setMaxCalendarAgeFilter:I = 0x26

.field static final TRANSACTION_setMaxEmailAgeFilter:I = 0x28

.field static final TRANSACTION_setMaxEmailBodyTruncationSize:I = 0x2a

.field static final TRANSACTION_setMaxEmailHTMLBodyTruncationSize:I = 0x2c

.field static final TRANSACTION_setPassword:I = 0x7

.field static final TRANSACTION_setPastDaysToSync:I = 0xa

.field static final TRANSACTION_setProtocolVersion:I = 0x3c

.field static final TRANSACTION_setReleaseSMIMECertificate:I = 0x1d

.field static final TRANSACTION_setReleaseSMIMECertificateForEncryption:I = 0x33

.field static final TRANSACTION_setReleaseSMIMECertificateForSigning:I = 0x30

.field static final TRANSACTION_setRequireEncryptedSMIMEMessages:I = 0x19

.field static final TRANSACTION_setRequireSignedSMIMEMessages:I = 0x17

.field static final TRANSACTION_setSSL:I = 0x4

.field static final TRANSACTION_setSenderName:I = 0x3d

.field static final TRANSACTION_setSignature:I = 0x8

.field static final TRANSACTION_setSilentVibrateOnEmailNotification:I = 0x3e

.field static final TRANSACTION_setSyncInterval:I = 0x3f

.field static final TRANSACTION_setSyncPeakTimings:I = 0x11

.field static final TRANSACTION_setSyncSchedules:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.accounts.IExchangeAccountPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.accounts.IExchangeAccountPolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 59
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v14, p0

    move/from16 v11, p1

    move-object/from16 v10, p2

    move-object/from16 v9, p3

    const-string v15, "com.samsung.android.knox.accounts.IExchangeAccountPolicy"

    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v11, v0, :cond_5b

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v11, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v13

    nop

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v1, v0, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_2
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2

    :cond_3
    nop

    :goto_2
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_3
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3

    :cond_4
    nop

    :goto_3
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setProtocolVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_4
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    nop

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    move-object v0, v14

    move-object v2, v8

    move-object v3, v12

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-wide/from16 v6, v18

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setAccountBaseParameters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v13

    :pswitch_5
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4

    :cond_6
    nop

    :goto_4
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_6
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    nop

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object v0, v14

    move-wide v2, v7

    move-object v4, v12

    move-object/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setForceSMIMECertificateAlias(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_7
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5

    :cond_8
    nop

    :goto_5
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v13

    :pswitch_8
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6

    :cond_9
    nop

    :goto_6
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v13

    :pswitch_9
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7

    :cond_a
    nop

    :goto_7
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_a
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8

    :cond_b
    nop

    :goto_8
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_b
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9

    :cond_c
    move-object v0, v1

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    sget-object v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/accounts/ExchangeAccount;

    goto :goto_a

    :cond_d
    nop

    :goto_a
    invoke-virtual {v14, v0, v1}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/ExchangeAccount;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v13

    :pswitch_c
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b

    :cond_e
    nop

    :goto_b
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setReleaseSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_d
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c

    :cond_f
    nop

    :goto_c
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_e
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    nop

    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v14

    move-wide v2, v6

    move-object v4, v8

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_f
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_d

    :cond_11
    nop

    :goto_d
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setReleaseSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_10
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_e

    :cond_12
    nop

    :goto_e
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_11
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    nop

    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v14

    move-wide v2, v6

    move-object v4, v8

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_12
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_f

    :cond_14
    nop

    :goto_f
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_13
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_10

    :cond_15
    nop

    :goto_10
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_14
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_11

    :cond_16
    nop

    :goto_11
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_15
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_12

    :cond_17
    nop

    :goto_12
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_16
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_13

    :cond_18
    nop

    :goto_13
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_17
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_14

    :cond_19
    nop

    :goto_14
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_18
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_15

    :cond_1a
    nop

    :goto_15
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_19
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_16

    :cond_1b
    nop

    :goto_16
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1a
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_17

    :cond_1c
    nop

    :goto_17
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1b
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_18

    :cond_1d
    nop

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    move v0, v13

    nop

    :cond_1e
    invoke-virtual {v14, v1, v2, v3, v0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1c
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_19

    :cond_1f
    nop

    :goto_19
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1d
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1a

    :cond_20
    nop

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    move v0, v13

    nop

    :cond_21
    invoke-virtual {v14, v1, v2, v3, v0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1e
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1b

    :cond_22
    nop

    :goto_1b
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1f
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1c

    :cond_23
    nop

    :goto_1c
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_20
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1d

    :cond_24
    nop

    :goto_1d
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_21
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1e

    :cond_25
    nop

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    move v0, v13

    nop

    :cond_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v1, v0, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->allowInComingAttachments(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_22
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1f

    :cond_27
    nop

    :goto_1f
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setReleaseSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_23
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_20

    :cond_28
    nop

    :goto_20
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_24
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    nop

    :cond_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v14

    move-wide v2, v6

    move-object v4, v8

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_25
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_21

    :cond_2a
    nop

    :goto_21
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_26
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_22

    :cond_2b
    nop

    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    move v0, v13

    nop

    :cond_2c
    invoke-virtual {v14, v1, v2, v3, v0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_27
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_23

    :cond_2d
    nop

    :goto_23
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_28
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_24

    :cond_2e
    nop

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    move v0, v13

    nop

    :cond_2f
    invoke-virtual {v14, v1, v2, v3, v0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;JZ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_29
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    nop

    :cond_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v14

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_2a
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_25

    :cond_31
    nop

    :goto_25
    move-object v0, v1

    invoke-virtual {v14, v0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getDeviceId(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    :pswitch_2b
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_26

    :cond_32
    nop

    :goto_26
    move-object v0, v1

    invoke-virtual {v14, v0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getAllEASAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v13

    :pswitch_2c
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_33

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_27

    :cond_33
    nop

    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_34

    move v2, v13

    goto :goto_28

    :cond_34
    move v2, v0

    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    move v3, v13

    goto :goto_29

    :cond_35
    move v3, v0

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    move v4, v13

    goto :goto_2a

    :cond_36
    move v4, v0

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_37

    move v5, v13

    goto :goto_2b

    :cond_37
    move v5, v0

    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    move-object v0, v14

    move-wide/from16 v6, v16

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setDataSyncs(Lcom/samsung/android/knox/ContextInfo;ZZZZJ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_2d
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    nop

    :cond_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    move-object v0, v14

    move v2, v7

    move v3, v8

    move v4, v12

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setSyncSchedules(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_2e
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    nop

    :cond_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    move-object v0, v14

    move v2, v7

    move v3, v8

    move v4, v12

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setSyncPeakTimings(Lcom/samsung/android/knox/ContextInfo;IIIJ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_2f
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2c

    :cond_3a
    nop

    :goto_2c
    move-object v0, v1

    invoke-virtual {v14, v0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_30
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2d

    :cond_3b
    nop

    :goto_2d
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_31
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3c

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2e

    :cond_3c
    nop

    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_3d

    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v13}, Lcom/samsung/android/knox/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2f

    :cond_3d
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2f
    return v13

    :pswitch_32
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_30

    :cond_3e
    nop

    :goto_30
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    return v13

    :pswitch_33
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_31

    :cond_3f
    nop

    :goto_31
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_34
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_32

    :cond_40
    nop

    :goto_32
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_35
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_33

    :cond_41
    nop

    :goto_33
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setPastDaysToSync(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_36
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    nop

    :cond_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    move-object v0, v14

    move-object v2, v6

    move-object v3, v7

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setClientAuthCert(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_37
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_34

    :cond_43
    nop

    :goto_34
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_38
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_35

    :cond_44
    nop

    :goto_35
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_39
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_36

    :cond_45
    nop

    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_46

    move v0, v13

    nop

    :cond_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v1, v0, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_3a
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_47

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_37

    :cond_47
    nop

    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_48

    move v0, v13

    nop

    :cond_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v1, v0, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_3b
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_49

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_38

    :cond_49
    nop

    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4a

    move v0, v13

    nop

    :cond_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v1, v0, v2, v3}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->setSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_3c
    invoke-virtual {v10, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4b

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_39

    :cond_4b
    nop

    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4c

    move v8, v13

    goto :goto_3a

    :cond_4c
    move v8, v0

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4d

    move v12, v13

    goto :goto_3b

    :cond_4d
    move v12, v0

    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4e

    move v2, v13

    goto :goto_3c

    :cond_4e
    move v2, v0

    :goto_3c
    move/from16 v41, v13

    move v13, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4f

    move/from16 v2, v41

    goto :goto_3d

    :cond_4f
    move v2, v0

    :goto_3d
    move-object v7, v15

    move v15, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_50

    move/from16 v16, v41

    goto :goto_3e

    :cond_50
    move/from16 v16, v0

    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_51

    move/from16 v17, v41

    goto :goto_3f

    :cond_51
    move/from16 v17, v0

    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v49

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_52

    move/from16 v27, v41

    goto :goto_40

    :cond_52
    move/from16 v27, v0

    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v52

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v54

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object v0, v14

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    move-object/from16 v5, v35

    move/from16 v6, v36

    move-object/from16 v56, v7

    move/from16 v7, v37

    move-object/from16 v9, v38

    move-object/from16 v10, v39

    move-object/from16 v11, v40

    move-object/from16 v14, v42

    move-object/from16 v18, v43

    move-object/from16 v19, v44

    move/from16 v20, v45

    move/from16 v21, v46

    move/from16 v22, v47

    move/from16 v23, v48

    move/from16 v24, v49

    move/from16 v25, v50

    move/from16 v26, v51

    move/from16 v28, v52

    move/from16 v29, v53

    move-object/from16 v30, v54

    move-object/from16 v31, v55

    invoke-virtual/range {v0 .. v31}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v14, p3

    invoke-virtual {v14, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v41

    :pswitch_3d
    move-object v14, v9

    move/from16 v41, v13

    move-object/from16 v56, v15

    move-object/from16 v10, v56

    move-object/from16 v11, p2

    invoke-virtual {v11, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_53

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_41

    :cond_53
    nop

    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_54

    move/from16 v8, v41

    goto :goto_42

    :cond_54
    move v8, v0

    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_55

    move/from16 v12, v41

    goto :goto_43

    :cond_55
    move v12, v0

    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_56

    move/from16 v13, v41

    goto :goto_44

    :cond_56
    move v13, v0

    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_57

    move/from16 v15, v41

    goto :goto_45

    :cond_57
    move v15, v0

    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_58

    move/from16 v16, v41

    goto :goto_46

    :cond_58
    move/from16 v16, v0

    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_59

    move/from16 v17, v41

    goto :goto_47

    :cond_59
    move/from16 v17, v0

    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    move-object/from16 v57, v10

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    move-object/from16 v14, v29

    move-object/from16 v18, v30

    move-object/from16 v19, v31

    invoke-virtual/range {v0 .. v19}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v7, p3

    invoke-virtual {v7, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v41

    :pswitch_3e
    move-object v7, v9

    move/from16 v41, v13

    move-object/from16 v57, v15

    move-object/from16 v9, v57

    move-object/from16 v8, p2

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    nop

    :cond_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->createAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v7, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v41

    :cond_5b
    move-object v7, v9

    move-object v8, v10

    move/from16 v41, v13

    move-object v9, v15

    invoke-virtual {v7, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v41

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
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
