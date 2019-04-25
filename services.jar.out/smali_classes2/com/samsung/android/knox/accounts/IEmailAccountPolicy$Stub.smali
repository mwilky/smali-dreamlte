.class public abstract Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "IEmailAccountPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.accounts.IEmailAccountPolicy"

.field static final TRANSACTION_addNewAccount:I = 0x1

.field static final TRANSACTION_addNewAccount_ex:I = 0x2

.field static final TRANSACTION_addNewAccount_new:I = 0x19

.field static final TRANSACTION_deleteAccount:I = 0x15

.field static final TRANSACTION_getAccountDetails:I = 0x14

.field static final TRANSACTION_getAccountId:I = 0x13

.field static final TRANSACTION_getAllEmailAccounts:I = 0x17

.field static final TRANSACTION_getSecurityInComingServerPassword:I = 0x1b

.field static final TRANSACTION_getSecurityOutGoingServerPassword:I = 0x1a

.field static final TRANSACTION_removePendingAccount:I = 0x18

.field static final TRANSACTION_sendAccountsChangedBroadcast:I = 0x16

.field static final TRANSACTION_setAccountName:I = 0x3

.field static final TRANSACTION_setAlwaysVibrateOnEmailNotification:I = 0x6

.field static final TRANSACTION_setAsDefaultAccount:I = 0x12

.field static final TRANSACTION_setEmailAddress:I = 0x1e

.field static final TRANSACTION_setInComingProtocol:I = 0x7

.field static final TRANSACTION_setInComingServerAcceptAllCertificates:I = 0xb

.field static final TRANSACTION_setInComingServerAddress:I = 0x8

.field static final TRANSACTION_setInComingServerLogin:I = 0x1f

.field static final TRANSACTION_setInComingServerPassword:I = 0xc

.field static final TRANSACTION_setInComingServerPathPrefix:I = 0x20

.field static final TRANSACTION_setInComingServerPort:I = 0x9

.field static final TRANSACTION_setInComingServerSSL:I = 0xa

.field static final TRANSACTION_setOutGoingProtocol:I = 0x21

.field static final TRANSACTION_setOutGoingServerAcceptAllCertificates:I = 0x10

.field static final TRANSACTION_setOutGoingServerAddress:I = 0xd

.field static final TRANSACTION_setOutGoingServerLogin:I = 0x22

.field static final TRANSACTION_setOutGoingServerPassword:I = 0x11

.field static final TRANSACTION_setOutGoingServerPathPrefix:I = 0x23

.field static final TRANSACTION_setOutGoingServerPort:I = 0xe

.field static final TRANSACTION_setOutGoingServerSSL:I = 0xf

.field static final TRANSACTION_setSecurityInComingServerPassword:I = 0x1d

.field static final TRANSACTION_setSecurityOutGoingServerPassword:I = 0x1c

.field static final TRANSACTION_setSenderName:I = 0x4

.field static final TRANSACTION_setSignature:I = 0x5

.field static final TRANSACTION_setSilentVibrateOnEmailNotification:I = 0x24

.field static final TRANSACTION_setSyncInterval:I = 0x25


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.accounts.IEmailAccountPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.accounts.IEmailAccountPolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v11, p1

    move-object/from16 v10, p2

    move-object/from16 v9, p3

    const-string v8, "com.samsung.android.knox.accounts.IEmailAccountPolicy"

    const v0, 0x5f4e5446

    const/4 v7, 0x1

    if-eq v11, v0, :cond_34

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v11, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_1
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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

    move v0, v7

    nop

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v1, v0, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_2
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setOutGoingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_3
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setOutGoingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    return v7

    :pswitch_4
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4

    :cond_5
    nop

    :goto_4
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setOutGoingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_5
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5

    :cond_6
    nop

    :goto_5
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setInComingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_6
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6

    :cond_7
    nop

    :goto_6
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setInComingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    return v7

    :pswitch_7
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7

    :cond_8
    nop

    :goto_7
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setEmailAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    return v7

    :pswitch_8
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8

    :cond_9
    nop

    :goto_8
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v7

    :pswitch_9
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9

    :cond_a
    nop

    :goto_9
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v7

    :pswitch_a
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a

    :cond_b
    nop

    :goto_a
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v12, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :pswitch_b
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b

    :cond_c
    nop

    :goto_b
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v12, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :pswitch_c
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c

    :cond_d
    move-object v0, v1

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    sget-object v1, Lcom/samsung/android/knox/accounts/EmailAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/accounts/EmailAccount;

    goto :goto_d

    :cond_e
    nop

    :goto_d
    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/EmailAccount;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v7

    :pswitch_d
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_e

    :cond_f
    nop

    :goto_e
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_e
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_f

    :cond_10
    nop

    :goto_f
    move-object v0, v1

    invoke-virtual {v12, v0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->getAllEmailAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v7

    :pswitch_f
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_10

    :cond_11
    nop

    :goto_10
    move-object v0, v1

    invoke-virtual {v12, v0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_10
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_11

    :cond_12
    nop

    :goto_11
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v12, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_11
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_12

    :cond_13
    nop

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_14

    invoke-virtual {v9, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, v9, v7}, Lcom/samsung/android/knox/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_14
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_13
    return v7

    :pswitch_12
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_14

    :cond_15
    nop

    :goto_14
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    return v7

    :pswitch_13
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_15

    :cond_16
    nop

    :goto_15
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v12, v0, v1, v2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_14
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_16

    :cond_17
    nop

    :goto_16
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_15
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_17

    :cond_18
    nop

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    move v0, v7

    nop

    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v1, v0, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setOutGoingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_16
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_18

    :cond_1a
    nop

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1b

    move v0, v7

    nop

    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v1, v0, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setOutGoingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_17
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_19

    :cond_1c
    nop

    :goto_19
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setOutGoingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_18
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1a

    :cond_1d
    nop

    :goto_1a
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setOutGoingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    return v7

    :pswitch_19
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1b

    :cond_1e
    nop

    :goto_1b
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_1a
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1c

    :cond_1f
    nop

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    move v0, v7

    nop

    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v1, v0, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setInComingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_1b
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1d

    :cond_21
    nop

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    move v0, v7

    nop

    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v1, v0, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setInComingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_1c
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1e

    :cond_23
    nop

    :goto_1e
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setInComingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_1d
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1f

    :cond_24
    nop

    :goto_1f
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setInComingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    return v7

    :pswitch_1e
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_20

    :cond_25
    nop

    :goto_20
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setInComingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_1f
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_26

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_21

    :cond_26
    nop

    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    move v0, v7

    nop

    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v1, v0, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_20
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_22

    :cond_28
    nop

    :goto_22
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_21
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_23

    :cond_29
    nop

    :goto_23
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_22
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_24

    :cond_2a
    nop

    :goto_24
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :pswitch_23
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_25

    :cond_2b
    nop

    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    move v13, v7

    goto :goto_26

    :cond_2c
    move v13, v0

    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    move v14, v7

    goto :goto_27

    :cond_2d
    move v14, v0

    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    move v15, v7

    goto :goto_28

    :cond_2e
    move v15, v0

    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f

    move/from16 v16, v7

    goto :goto_29

    :cond_2f
    move/from16 v16, v0

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_30

    move/from16 v17, v7

    goto :goto_2a

    :cond_30
    move/from16 v17, v0

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31

    move/from16 v18, v7

    goto :goto_2b

    :cond_31
    move/from16 v18, v0

    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    move/from16 v20, v7

    goto :goto_2c

    :cond_32
    move/from16 v20, v0

    :goto_2c
    move-object v0, v12

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move/from16 v5, v24

    move-object/from16 v6, v25

    move/from16 v33, v7

    move-object/from16 v7, v26

    move-object/from16 v34, v8

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    move/from16 v10, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v19, v32

    invoke-virtual/range {v0 .. v20}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v12, p3

    invoke-virtual {v12, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v33

    :pswitch_24
    move/from16 v33, v7

    move-object/from16 v34, v8

    move-object v12, v9

    move-object/from16 v14, v34

    move-object/from16 v13, p2

    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    nop

    :cond_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    invoke-virtual/range {v0 .. v12}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v33

    :cond_34
    move/from16 v33, v7

    move-object v14, v8

    move-object v0, v9

    move-object v13, v10

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v33

    :pswitch_data_0
    .packed-switch 0x1
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
