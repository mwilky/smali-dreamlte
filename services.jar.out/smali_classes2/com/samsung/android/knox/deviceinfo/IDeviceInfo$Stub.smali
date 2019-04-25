.class public abstract Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;
.super Landroid/os/Binder;
.source "IDeviceInfo.java"

# interfaces
.implements Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.deviceinfo.IDeviceInfo"

.field static final TRANSACTION_clearCallingLog:I = 0x19

.field static final TRANSACTION_clearMMSLog:I = 0x1e

.field static final TRANSACTION_clearSMSLog:I = 0x13

.field static final TRANSACTION_dataUsageTimerActivation:I = 0x20

.field static final TRANSACTION_enableCallingCapture:I = 0x14

.field static final TRANSACTION_enableMMSCapture:I = 0x1a

.field static final TRANSACTION_enableSMSCapture:I = 0xe

.field static final TRANSACTION_getAvailableCapacityExternal:I = 0x4

.field static final TRANSACTION_getAvailableCapacityInternal:I = 0x6

.field static final TRANSACTION_getAvailableRamMemory:I = 0x36

.field static final TRANSACTION_getBytesReceivedNetwork:I = 0x2a

.field static final TRANSACTION_getBytesReceivedWiFi:I = 0x28

.field static final TRANSACTION_getBytesSentNetwork:I = 0x29

.field static final TRANSACTION_getBytesSentWiFi:I = 0x27

.field static final TRANSACTION_getCellTowerCID:I = 0x32

.field static final TRANSACTION_getCellTowerLAC:I = 0x33

.field static final TRANSACTION_getCellTowerPSC:I = 0x34

.field static final TRANSACTION_getCellTowerRSSI:I = 0x35

.field static final TRANSACTION_getDataCallLog:I = 0x31

.field static final TRANSACTION_getDataCallLoggingEnabled:I = 0x2f

.field static final TRANSACTION_getDataCallStatisticsEnabled:I = 0x26

.field static final TRANSACTION_getDataUsageTimer:I = 0x2d

.field static final TRANSACTION_getDeviceMaker:I = 0x37

.field static final TRANSACTION_getDeviceName:I = 0x38

.field static final TRANSACTION_getDeviceOS:I = 0x8

.field static final TRANSACTION_getDeviceOSVersion:I = 0x9

.field static final TRANSACTION_getDevicePlatform:I = 0x39

.field static final TRANSACTION_getDeviceProcessorSpeed:I = 0x3b

.field static final TRANSACTION_getDeviceProcessorType:I = 0x3a

.field static final TRANSACTION_getDroppedCallsCount:I = 0xa

.field static final TRANSACTION_getInboundMMSCaptured:I = 0x1d

.field static final TRANSACTION_getInboundSMSCaptured:I = 0x11

.field static final TRANSACTION_getIncomingCallingCaptured:I = 0x17

.field static final TRANSACTION_getMissedCallsCount:I = 0xb

.field static final TRANSACTION_getModelName:I = 0x3c

.field static final TRANSACTION_getModelNumber:I = 0x3d

.field static final TRANSACTION_getModemFirmware:I = 0x3e

.field static final TRANSACTION_getOutboundMMSCaptured:I = 0x1c

.field static final TRANSACTION_getOutboundSMSCaptured:I = 0x10

.field static final TRANSACTION_getOutgoingCallingCaptured:I = 0x16

.field static final TRANSACTION_getPlatformSDK:I = 0x3f

.field static final TRANSACTION_getPlatformVersion:I = 0x41

.field static final TRANSACTION_getPlatformVersionName:I = 0x40

.field static final TRANSACTION_getSalesCode:I = 0x22

.field static final TRANSACTION_getSerialNumber:I = 0x7

.field static final TRANSACTION_getSuccessCallsCount:I = 0xc

.field static final TRANSACTION_getTotalCapacityExternal:I = 0x3

.field static final TRANSACTION_getTotalCapacityInternal:I = 0x5

.field static final TRANSACTION_getTotalRamMemory:I = 0x42

.field static final TRANSACTION_getWifiStatisticEnabled:I = 0x24

.field static final TRANSACTION_isCallingCaptureEnabled:I = 0x15

.field static final TRANSACTION_isDeviceLocked:I = 0x2

.field static final TRANSACTION_isDeviceRooted:I = 0x21

.field static final TRANSACTION_isDeviceSecure:I = 0x1

.field static final TRANSACTION_isMMSCaptureEnabled:I = 0x1b

.field static final TRANSACTION_isSMSCaptureEnabled:I = 0xf

.field static final TRANSACTION_resetCallsCount:I = 0xd

.field static final TRANSACTION_resetDataCallLogging:I = 0x30

.field static final TRANSACTION_resetDataUsage:I = 0x2b

.field static final TRANSACTION_setDataCallLoggingEnabled:I = 0x2e

.field static final TRANSACTION_setDataCallStatisticsEnabled:I = 0x25

.field static final TRANSACTION_setDataUsageTimer:I = 0x2c

.field static final TRANSACTION_setWifiStatisticEnabled:I = 0x23

.field static final TRANSACTION_storeCalling:I = 0x18

.field static final TRANSACTION_storeMMS:I = 0x1f

.field static final TRANSACTION_storeSMS:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.deviceinfo.IDeviceInfo"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.deviceinfo.IDeviceInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.knox.deviceinfo.IDeviceInfo"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_48

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getTotalRamMemory(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getPlatformVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getPlatformVersionName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getPlatformSDK(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getModemFirmware(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5

    :cond_5
    nop

    :goto_5
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getModelNumber(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6

    :cond_6
    nop

    :goto_6
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getModelName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7

    :cond_7
    nop

    :goto_7
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDeviceProcessorSpeed(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8

    :cond_8
    nop

    :goto_8
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDeviceProcessorType(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9

    :cond_9
    nop

    :goto_9
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDevicePlatform(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a

    :cond_a
    nop

    :goto_a
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDeviceName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b

    :cond_b
    nop

    :goto_b
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDeviceMaker(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c

    :cond_c
    nop

    :goto_c
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getAvailableRamMemory(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_d

    :cond_d
    nop

    :goto_d
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getCellTowerRSSI(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_e

    :cond_e
    nop

    :goto_e
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getCellTowerPSC(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_f

    :cond_f
    nop

    :goto_f
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getCellTowerLAC(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_10

    :cond_10
    nop

    :goto_10
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getCellTowerCID(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_11

    :cond_11
    nop

    :goto_11
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDataCallLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_12

    :cond_12
    nop

    :goto_12
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->resetDataCallLogging(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_13

    :cond_13
    nop

    :goto_13
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_14

    :cond_14
    nop

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    move v0, v11

    nop

    :cond_15
    invoke-virtual {v6, v1, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->setDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_15

    :cond_16
    nop

    :goto_15
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDataUsageTimer(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_16

    :cond_17
    nop

    :goto_16
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->setDataUsageTimer(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_17
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_17

    :cond_18
    nop

    :goto_17
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->resetDataUsage(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_18

    :cond_19
    nop

    :goto_18
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getBytesReceivedNetwork(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_19
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_19

    :cond_1a
    nop

    :goto_19
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getBytesSentNetwork(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1a

    :cond_1b
    nop

    :goto_1a
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getBytesReceivedWiFi(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_1b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1b

    :cond_1c
    nop

    :goto_1b
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getBytesSentWiFi(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_1c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1c

    :cond_1d
    nop

    :goto_1c
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_1d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1d

    :cond_1e
    nop

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    move v0, v11

    nop

    :cond_1f
    invoke-virtual {v6, v1, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->setDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_1e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1e

    :cond_20
    nop

    :goto_1e
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_1f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_21

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1f

    :cond_21
    nop

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    move v0, v11

    nop

    :cond_22
    invoke-virtual {v6, v1, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->setWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_20
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_20

    :cond_23
    nop

    :goto_20
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getSalesCode(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_21
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_21

    :cond_24
    nop

    :goto_21
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->isDeviceRooted(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_22
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_22

    :cond_25
    nop

    :goto_22
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_23
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    move v0, v11

    nop

    :cond_26
    invoke-virtual {v6, v1, v2, v3, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_24
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_23

    :cond_27
    nop

    :goto_23
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->clearMMSLog(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_25
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_24

    :cond_28
    nop

    :goto_24
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getInboundMMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_26
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_25

    :cond_29
    nop

    :goto_25
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getOutboundMMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_27
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_26

    :cond_2a
    nop

    :goto_26
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->isMMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_28
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_27

    :cond_2b
    nop

    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    move v0, v11

    nop

    :cond_2c
    invoke-virtual {v6, v1, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->enableMMSCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_29
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_28

    :cond_2d
    nop

    :goto_28
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->clearCallingLog(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_2a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e

    move v5, v11

    goto :goto_29

    :cond_2e
    move v5, v0

    :goto_29
    move-object v0, v6

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_2b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2a

    :cond_2f
    nop

    :goto_2a
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getIncomingCallingCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_2c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2b

    :cond_30
    nop

    :goto_2b
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getOutgoingCallingCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_2d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2c

    :cond_31
    nop

    :goto_2c
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->isCallingCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_2e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_32

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2d

    :cond_32
    nop

    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_33

    move v0, v11

    nop

    :cond_33
    invoke-virtual {v6, v1, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->enableCallingCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_2f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2e

    :cond_34
    nop

    :goto_2e
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->clearSMSLog(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_30
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    move v0, v11

    nop

    :cond_35
    invoke-virtual {v6, v1, v2, v3, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_31
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2f

    :cond_36
    nop

    :goto_2f
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getInboundSMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_32
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_30

    :cond_37
    nop

    :goto_30
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getOutboundSMSCaptured(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v11

    :pswitch_33
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_31

    :cond_38
    nop

    :goto_31
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->isSMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_34
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_32

    :cond_39
    nop

    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3a

    move v0, v11

    nop

    :cond_3a
    invoke-virtual {v6, v1, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->enableSMSCapture(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_35
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_33

    :cond_3b
    nop

    :goto_33
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_36
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_34

    :cond_3c
    nop

    :goto_34
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getSuccessCallsCount(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_37
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_35

    :cond_3d
    nop

    :goto_35
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getMissedCallsCount(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_38
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_36

    :cond_3e
    nop

    :goto_36
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDroppedCallsCount(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_39
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_37

    :cond_3f
    nop

    :goto_37
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDeviceOSVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_3a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_38

    :cond_40
    nop

    :goto_38
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getDeviceOS(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_3b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_39

    :cond_41
    nop

    :goto_39
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getSerialNumber(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_3c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3a

    :cond_42
    nop

    :goto_3a
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getAvailableCapacityInternal(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_3d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3b

    :cond_43
    nop

    :goto_3b
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getTotalCapacityInternal(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_3e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3c

    :cond_44
    nop

    :goto_3c
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getAvailableCapacityExternal(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_3f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3d

    :cond_45
    nop

    :goto_3d
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->getTotalCapacityExternal(Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return v11

    :pswitch_40
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3e

    :cond_46
    nop

    :goto_3e
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->isDeviceLocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :pswitch_41
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3f

    :cond_47
    nop

    :goto_3f
    move-object v0, v1

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/deviceinfo/IDeviceInfo$Stub;->isDeviceSecure(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    :cond_48
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_41
        :pswitch_40
        :pswitch_3f
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
