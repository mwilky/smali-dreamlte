.class public abstract Lcom/samsung/android/knox/IMiscPolicy$Stub;
.super Landroid/os/Binder;
.source "IMiscPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/IMiscPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/IMiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/IMiscPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.IMiscPolicy"

.field static final TRANSACTION_addClipboardTextData:I = 0xc

.field static final TRANSACTION_addWebBookmarkBitmap:I = 0x2

.field static final TRANSACTION_addWebBookmarkByteBuffer:I = 0x3

.field static final TRANSACTION_allowNFCStateChange:I = 0x11

.field static final TRANSACTION_changeLockScreenString:I = 0x5

.field static final TRANSACTION_clearClipboardData:I = 0xb

.field static final TRANSACTION_clearGlobalProxyEnableEnforcingFirewallPermission:I = 0x19

.field static final TRANSACTION_clearGlobalProxyEnableEnforcingSecurityPermission:I = 0x1a

.field static final TRANSACTION_deleteWebBookmark:I = 0x4

.field static final TRANSACTION_getClipboardTextData:I = 0xd

.field static final TRANSACTION_getCurrentLockScreenString:I = 0x6

.field static final TRANSACTION_getGlobalProxyEnforcingFirewallPermission:I = 0x17

.field static final TRANSACTION_getGlobalProxyEnforcingSecurityPermission:I = 0x18

.field static final TRANSACTION_getLastSimChangeInfo:I = 0x7

.field static final TRANSACTION_getSystemActiveFont:I = 0x9

.field static final TRANSACTION_getSystemActiveFontSize:I = 0xf

.field static final TRANSACTION_getSystemFontSizes:I = 0x10

.field static final TRANSACTION_getSystemFonts:I = 0xa

.field static final TRANSACTION_isGlobalProxyAllowed:I = 0x1b

.field static final TRANSACTION_isNFCStarted:I = 0x14

.field static final TRANSACTION_isNFCStateChangeAllowed:I = 0x12

.field static final TRANSACTION_setGlobalProxyEnforcingFirewallPermission:I = 0x15

.field static final TRANSACTION_setGlobalProxyEnforcingSecurityPermission:I = 0x16

.field static final TRANSACTION_setRingerBytes:I = 0x1

.field static final TRANSACTION_setSystemActiveFont:I = 0x8

.field static final TRANSACTION_setSystemActiveFontSize:I = 0xe

.field static final TRANSACTION_startNFC:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.IMiscPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.IMiscPolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/IMiscPolicy;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/IMiscPolicy;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/IMiscPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/IMiscPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.samsung.android.knox.IMiscPolicy"

    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_22

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->isGlobalProxyAllowed()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->clearGlobalProxyEnableEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->clearGlobalProxyEnableEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    move-object v1, v2

    invoke-virtual {v7, v1}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->getGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v10, v12}, Lcom/samsung/android/knox/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v12

    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->getGlobalProxyEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5

    :cond_5
    move-object v0, v2

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/android/knox/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/net/ProxyProperties;

    goto :goto_6

    :cond_6
    nop

    :goto_6
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->setGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7

    :cond_7
    nop

    :goto_7
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->setGlobalProxyEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/util/List;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->isNFCStarted()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8

    :cond_8
    nop

    :goto_8
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v0, v12

    nop

    :cond_9
    invoke-virtual {v7, v1, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->startNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->isNFCStateChangeAllowed()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9

    :cond_a
    nop

    :goto_9
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    move v0, v12

    nop

    :cond_b
    invoke-virtual {v7, v1, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->allowNFCStateChange(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a

    :cond_c
    nop

    :goto_a
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->getSystemFontSizes(Lcom/samsung/android/knox/ContextInfo;)[F

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    return v12

    :pswitch_c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b

    :cond_d
    nop

    :goto_b
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->getSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;)F

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeFloat(F)V

    return v12

    :pswitch_d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c

    :cond_e
    nop

    :goto_c
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->setSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;F)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_d

    :cond_f
    nop

    :goto_d
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->getClipboardTextData(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_e

    :cond_10
    nop

    :goto_e
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->addClipboardTextData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_10
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_f

    :cond_11
    nop

    :goto_f
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->clearClipboardData(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_10

    :cond_12
    nop

    :goto_10
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->getSystemFonts(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v12

    :pswitch_12
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_11

    :cond_13
    nop

    :goto_11
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->getSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_13
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_12

    :cond_14
    nop

    :goto_12
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->setSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_14
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_13

    :cond_15
    nop

    :goto_13
    move-object v1, v2

    invoke-virtual {v7, v1}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_16

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v10, v12}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14

    :cond_16
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    return v12

    :pswitch_15
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_15

    :cond_17
    nop

    :goto_15
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_16
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_16

    :cond_18
    nop

    :goto_16
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->changeLockScreenString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_17
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_17

    :cond_19
    move-object v0, v2

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/Uri;

    goto :goto_18

    :cond_1a
    nop

    :goto_18
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->deleteWebBookmark(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_18
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_19

    :cond_1b
    move-object v0, v2

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/Uri;

    goto :goto_1a

    :cond_1c
    nop

    :goto_1a
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->addWebBookmarkByteBuffer(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;[B)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_19
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1b

    :cond_1d
    move-object v0, v2

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_1c

    :cond_1e
    move-object v1, v2

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_1d

    :cond_1f
    nop

    :goto_1d
    invoke-virtual {v7, v0, v1, v3, v2}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->addWebBookmarkBitmap(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_1a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    move-object v1, v0

    goto :goto_1e

    :cond_20
    move-object v1, v2

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v2, v0

    nop

    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object v3, v13

    move-wide v4, v14

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->setRingerBytes(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :cond_22
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_data_0
    .packed-switch 0x1
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
