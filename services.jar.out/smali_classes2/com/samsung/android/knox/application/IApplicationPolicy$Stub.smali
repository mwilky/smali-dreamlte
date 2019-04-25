.class public abstract Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;
.super Landroid/os/Binder;
.source "IApplicationPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/application/IApplicationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/application/IApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.application.IApplicationPolicy"

.field static final TRANSACTION_addAppNotificationBlackList:I = 0x3c

.field static final TRANSACTION_addAppNotificationWhiteList:I = 0x3f

.field static final TRANSACTION_addAppPackageNameToBlackList:I = 0x2d

.field static final TRANSACTION_addAppPackageNameToWhiteList:I = 0x30

.field static final TRANSACTION_addAppPermissionToBlackList:I = 0x22

.field static final TRANSACTION_addAppSignatureToBlackList:I = 0x25

.field static final TRANSACTION_addAppSignatureToWhiteList:I = 0x58

.field static final TRANSACTION_addHomeShortcut:I = 0x46

.field static final TRANSACTION_addPackageToBatteryOptimizationWhiteList:I = 0xa8

.field static final TRANSACTION_addPackageToBlackList:I = 0xb4

.field static final TRANSACTION_addPackageToWhiteList:I = 0xb1

.field static final TRANSACTION_addPackagesToClearCacheBlackList:I = 0x64

.field static final TRANSACTION_addPackagesToClearCacheWhiteList:I = 0x67

.field static final TRANSACTION_addPackagesToClearDataBlackList:I = 0x5d

.field static final TRANSACTION_addPackagesToClearDataWhiteList:I = 0x60

.field static final TRANSACTION_addPackagesToDisableClipboardBlackList:I = 0x7f

.field static final TRANSACTION_addPackagesToDisableClipboardWhiteList:I = 0x83

.field static final TRANSACTION_addPackagesToDisableUpdateBlackList:I = 0x71

.field static final TRANSACTION_addPackagesToDisableUpdateWhiteList:I = 0x74

.field static final TRANSACTION_addPackagesToFocusMonitoringList:I = 0x8a

.field static final TRANSACTION_addPackagesToForceStopBlackList:I = 0x38

.field static final TRANSACTION_addPackagesToForceStopWhiteList:I = 0x4b

.field static final TRANSACTION_addPackagesToPreventStartBlackList:I = 0x7a

.field static final TRANSACTION_addPackagesToWidgetBlackList:I = 0x50

.field static final TRANSACTION_addPackagesToWidgetWhiteList:I = 0x4e

.field static final TRANSACTION_addUsbDevicesForDefaultAccess:I = 0x93

.field static final TRANSACTION_applyRuntimePermissions:I = 0xa3

.field static final TRANSACTION_backupApplicationData:I = 0xba

.field static final TRANSACTION_changeApplicationIcon:I = 0x1f

.field static final TRANSACTION_changeApplicationName:I = 0x6b

.field static final TRANSACTION_clearDisableClipboardBlackList:I = 0x87

.field static final TRANSACTION_clearDisableClipboardWhiteList:I = 0x88

.field static final TRANSACTION_clearDisableUpdateBlackList:I = 0x78

.field static final TRANSACTION_clearDisableUpdateWhiteList:I = 0x79

.field static final TRANSACTION_clearFocusMonitoringList:I = 0x8d

.field static final TRANSACTION_clearPackagesFromExternalStorageWhiteList:I = 0xb0

.field static final TRANSACTION_clearPreventStartBlackList:I = 0x7d

.field static final TRANSACTION_clearUsbDevicesForDefaultAccess:I = 0x94

.field static final TRANSACTION_deleteHomeShortcut:I = 0x47

.field static final TRANSACTION_deleteManagedAppInfo:I = 0xbb

.field static final TRANSACTION_enableOcspCheck:I = 0x56

.field static final TRANSACTION_enableRevocationCheck:I = 0x54

.field static final TRANSACTION_getAddHomeShorcutRequested:I = 0x9a

.field static final TRANSACTION_getAllAppLastUsage:I = 0x1c

.field static final TRANSACTION_getAllDefaultApplications:I = 0x9e

.field static final TRANSACTION_getAllPackagesFromBatteryOptimizationWhiteList:I = 0xab

.field static final TRANSACTION_getAllWidgets:I = 0x48

.field static final TRANSACTION_getAppInstallToSdCard:I = 0xbd

.field static final TRANSACTION_getAppInstallationMode:I = 0x36

.field static final TRANSACTION_getAppNotificationBlackList:I = 0x3e

.field static final TRANSACTION_getAppNotificationWhiteList:I = 0x41

.field static final TRANSACTION_getAppPackageNamesAllBlackLists:I = 0x2f

.field static final TRANSACTION_getAppPackageNamesAllWhiteLists:I = 0x32

.field static final TRANSACTION_getAppPermissionsAllBlackLists:I = 0x33

.field static final TRANSACTION_getAppPermissionsBlackList:I = 0x24

.field static final TRANSACTION_getAppSignatureBlackList:I = 0x27

.field static final TRANSACTION_getAppSignaturesAllBlackLists:I = 0x34

.field static final TRANSACTION_getAppSignaturesAllWhiteLists:I = 0x5b

.field static final TRANSACTION_getAppSignaturesWhiteList:I = 0x5a

.field static final TRANSACTION_getApplicationCacheSize:I = 0x15

.field static final TRANSACTION_getApplicationCodeSize:I = 0x13

.field static final TRANSACTION_getApplicationComponentState:I = 0x6f

.field static final TRANSACTION_getApplicationCpuUsage:I = 0x17

.field static final TRANSACTION_getApplicationDataSize:I = 0x14

.field static final TRANSACTION_getApplicationGrantedPermissions:I = 0xad

.field static final TRANSACTION_getApplicationIconFromDb:I = 0x20

.field static final TRANSACTION_getApplicationInstallationEnabled:I = 0xb

.field static final TRANSACTION_getApplicationMemoryUsage:I = 0x16

.field static final TRANSACTION_getApplicationName:I = 0xe

.field static final TRANSACTION_getApplicationNameFromDb:I = 0x6c

.field static final TRANSACTION_getApplicationNotificationMode:I = 0x43

.field static final TRANSACTION_getApplicationNotificationModeAsUser:I = 0x44

.field static final TRANSACTION_getApplicationStateEnabled:I = 0xa

.field static final TRANSACTION_getApplicationStateList:I = 0x2a

.field static final TRANSACTION_getApplicationTotalSize:I = 0x12

.field static final TRANSACTION_getApplicationUid:I = 0xf

.field static final TRANSACTION_getApplicationUninstallationEnabled:I = 0xc

.field static final TRANSACTION_getApplicationUninstallationMode:I = 0x49

.field static final TRANSACTION_getApplicationVersion:I = 0x10

.field static final TRANSACTION_getApplicationVersionCode:I = 0x11

.field static final TRANSACTION_getApplicationsList:I = 0xbf

.field static final TRANSACTION_getAvgNoAppUsagePerMonth:I = 0x1b

.field static final TRANSACTION_getDefaultApplication:I = 0x9c

.field static final TRANSACTION_getDefaultApplicationInternal:I = 0x9d

.field static final TRANSACTION_getDisabledPackages:I = 0x97

.field static final TRANSACTION_getHomeShortcuts:I = 0x8f

.field static final TRANSACTION_getInstalledApplicationsIDList:I = 0xd

.field static final TRANSACTION_getInstalledManagedApplicationsList:I = 0xbe

.field static final TRANSACTION_getMySinglePackageName:I = 0xa2

.field static final TRANSACTION_getNetworkStats:I = 0x1d

.field static final TRANSACTION_getPackageSignaturesFromExternalStorageWhiteList:I = 0xaf

.field static final TRANSACTION_getPackagesFromBatteryOptimizationWhiteList:I = 0xaa

.field static final TRANSACTION_getPackagesFromBlackList:I = 0xb5

.field static final TRANSACTION_getPackagesFromClearCacheBlackList:I = 0x66

.field static final TRANSACTION_getPackagesFromClearCacheWhiteList:I = 0x68

.field static final TRANSACTION_getPackagesFromClearDataBlackList:I = 0x5f

.field static final TRANSACTION_getPackagesFromClearDataWhiteList:I = 0x61

.field static final TRANSACTION_getPackagesFromDisableClipboardBlackList:I = 0x81

.field static final TRANSACTION_getPackagesFromDisableClipboardBlackListAsUserInternal:I = 0x82

.field static final TRANSACTION_getPackagesFromDisableClipboardWhiteList:I = 0x85

.field static final TRANSACTION_getPackagesFromDisableClipboardWhiteListAsUserInternal:I = 0x86

.field static final TRANSACTION_getPackagesFromDisableUpdateBlackList:I = 0x73

.field static final TRANSACTION_getPackagesFromDisableUpdateWhiteList:I = 0x75

.field static final TRANSACTION_getPackagesFromFocusMonitoringList:I = 0x8b

.field static final TRANSACTION_getPackagesFromForceStopBlackList:I = 0x4a

.field static final TRANSACTION_getPackagesFromForceStopWhiteList:I = 0x4c

.field static final TRANSACTION_getPackagesFromPreventStartBlackList:I = 0x7b

.field static final TRANSACTION_getPackagesFromWhiteList:I = 0xb2

.field static final TRANSACTION_getPackagesFromWidgetBlackList:I = 0x4d

.field static final TRANSACTION_getPackagesFromWidgetWhiteList:I = 0x3a

.field static final TRANSACTION_getRuntimePermissions:I = 0xa7

.field static final TRANSACTION_getRuntimePermissionsEnforced:I = 0xa4

.field static final TRANSACTION_getTopNCPUUsageApp:I = 0x1a

.field static final TRANSACTION_getTopNDataUsageApp:I = 0x19

.field static final TRANSACTION_getTopNMemoryUsageApp:I = 0x18

.field static final TRANSACTION_getUsbDevicesForDefaultAccess:I = 0x92

.field static final TRANSACTION_installAppWithCallback:I = 0x90

.field static final TRANSACTION_installApplication:I = 0x5

.field static final TRANSACTION_installExistingApplication:I = 0x95

.field static final TRANSACTION_isAnyApplicationIconChangedAsUser:I = 0x21

.field static final TRANSACTION_isAnyApplicationNameChangedAsUser:I = 0x6d

.field static final TRANSACTION_isApplicationClearCacheDisabled:I = 0x6a

.field static final TRANSACTION_isApplicationClearDataDisabled:I = 0x63

.field static final TRANSACTION_isApplicationFocusMonitoredAsUser:I = 0x8e

.field static final TRANSACTION_isApplicationForceStopDisabled:I = 0x39

.field static final TRANSACTION_isApplicationInstalled:I = 0x3

.field static final TRANSACTION_isApplicationRunning:I = 0x4

.field static final TRANSACTION_isApplicationSetToDefault:I = 0xa0

.field static final TRANSACTION_isApplicationStartDisabledAsUser:I = 0x7e

.field static final TRANSACTION_isIntentDisabled:I = 0x2c

.field static final TRANSACTION_isMetaKeyEventRequested:I = 0x99

.field static final TRANSACTION_isOcspCheckEnabled:I = 0x57

.field static final TRANSACTION_isPackageClipboardAllowed:I = 0x89

.field static final TRANSACTION_isPackageInApprovedInstallerWhiteList:I = 0x5c

.field static final TRANSACTION_isPackageInBlacklistInternal:I = 0xb8

.field static final TRANSACTION_isPackageInWhitelistInternal:I = 0xb7

.field static final TRANSACTION_isPackageUpdateAllowed:I = 0x77

.field static final TRANSACTION_isRevocationCheckEnabled:I = 0x55

.field static final TRANSACTION_isStatusBarNotificationAllowedAsUser:I = 0x45

.field static final TRANSACTION_isWidgetAllowed:I = 0x3b

.field static final TRANSACTION_reapplyRuntimePermissions:I = 0xa6

.field static final TRANSACTION_removeAppNotificationBlackList:I = 0x3d

.field static final TRANSACTION_removeAppNotificationWhiteList:I = 0x40

.field static final TRANSACTION_removeAppPackageNameFromBlackList:I = 0x2e

.field static final TRANSACTION_removeAppPackageNameFromWhiteList:I = 0x31

.field static final TRANSACTION_removeAppPermissionFromBlackList:I = 0x23

.field static final TRANSACTION_removeAppSignatureFromBlackList:I = 0x26

.field static final TRANSACTION_removeAppSignatureFromWhiteList:I = 0x59

.field static final TRANSACTION_removeDefaultApplication:I = 0x9f

.field static final TRANSACTION_removeManagedApplications:I = 0x1

.field static final TRANSACTION_removePackageFromBatteryOptimizationWhiteList:I = 0xa9

.field static final TRANSACTION_removePackageFromBlackList:I = 0xb6

.field static final TRANSACTION_removePackageFromWhiteList:I = 0xb3

.field static final TRANSACTION_removePackagesFromClearCacheBlackList:I = 0x65

.field static final TRANSACTION_removePackagesFromClearCacheWhiteList:I = 0x69

.field static final TRANSACTION_removePackagesFromClearDataBlackList:I = 0x5e

.field static final TRANSACTION_removePackagesFromClearDataWhiteList:I = 0x62

.field static final TRANSACTION_removePackagesFromDisableClipboardBlackList:I = 0x80

.field static final TRANSACTION_removePackagesFromDisableClipboardWhiteList:I = 0x84

.field static final TRANSACTION_removePackagesFromDisableUpdateBlackList:I = 0x72

.field static final TRANSACTION_removePackagesFromDisableUpdateWhiteList:I = 0x76

.field static final TRANSACTION_removePackagesFromFocusMonitoringList:I = 0x8c

.field static final TRANSACTION_removePackagesFromForceStopBlackList:I = 0x53

.field static final TRANSACTION_removePackagesFromForceStopWhiteList:I = 0x52

.field static final TRANSACTION_removePackagesFromPreventStartBlackList:I = 0x7c

.field static final TRANSACTION_removePackagesFromWidgetBlackList:I = 0x51

.field static final TRANSACTION_removePackagesFromWidgetWhiteList:I = 0x4f

.field static final TRANSACTION_requestMetaKeyEvent:I = 0x98

.field static final TRANSACTION_restoreApplicationData:I = 0xb9

.field static final TRANSACTION_setAfWProxy:I = 0xac

.field static final TRANSACTION_setAndroidMarketState:I = 0xae

.field static final TRANSACTION_setAppInstallToSdCard:I = 0xbc

.field static final TRANSACTION_setAppInstallationMode:I = 0x35

.field static final TRANSACTION_setApplicationComponentState:I = 0x6e

.field static final TRANSACTION_setApplicationInstallationDisabled:I = 0x8

.field static final TRANSACTION_setApplicationNotificationMode:I = 0x42

.field static final TRANSACTION_setApplicationState:I = 0x7

.field static final TRANSACTION_setApplicationStateList:I = 0x2b

.field static final TRANSACTION_setApplicationUninstallationDisabled:I = 0x9

.field static final TRANSACTION_setApplicationUninstallationMode:I = 0x37

.field static final TRANSACTION_setAsManagedApp:I = 0xc0

.field static final TRANSACTION_setDefaultApplication:I = 0x9b

.field static final TRANSACTION_setMySinglePackageName:I = 0xa1

.field static final TRANSACTION_startApp:I = 0x29

.field static final TRANSACTION_stopApp:I = 0x28

.field static final TRANSACTION_uninstallApplication:I = 0x6

.field static final TRANSACTION_updateApplicationTable:I = 0x96

.field static final TRANSACTION_updateDataUsageDb:I = 0x1e

.field static final TRANSACTION_updateWidgetStatus:I = 0x91

.field static final TRANSACTION_verifyRuntimePermissionPackageSignature:I = 0xa5

.field static final TRANSACTION_wipeApplicationData:I = 0x2

.field static final TRANSACTION_writeData:I = 0x70


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.application.IApplicationPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.application.IApplicationPolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.samsung.android.knox.application.IApplicationPolicy"

    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_d9

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setAsManagedApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_1
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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationsList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getInstalledManagedApplicationsList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v12

    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAppInstallToSdCard(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v12

    nop

    :cond_5
    invoke-virtual {v7, v1, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setAppInstallToSdCard(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

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

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->deleteManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

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

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6

    :cond_7
    move-object v0, v2

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    goto :goto_7

    :cond_8
    nop

    :goto_7
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->backupApplicationData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8

    :cond_9
    move-object v0, v2

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    goto :goto_9

    :cond_a
    nop

    :goto_9
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->restoreApplicationData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isPackageInBlacklistInternal(III)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isPackageInWhitelistInternal(III)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a

    :cond_b
    nop

    :goto_a
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackageFromBlackList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

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

    goto :goto_b

    :cond_c
    nop

    :goto_b
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromBlackList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c

    :cond_d
    move-object v0, v2

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    sget-object v2, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    goto :goto_d

    :cond_e
    nop

    :goto_d
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackageToBlackList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_e

    :cond_f
    nop

    :goto_e
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackageFromWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_f

    :cond_10
    nop

    :goto_f
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_10

    :cond_11
    move-object v0, v2

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    sget-object v2, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    goto :goto_11

    :cond_12
    nop

    :goto_11
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_10
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_12

    :cond_13
    nop

    :goto_12
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->clearPackagesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_13

    :cond_14
    nop

    :goto_13
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackageSignaturesFromExternalStorageWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    :pswitch_12
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_14

    :cond_15
    nop

    :goto_14
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    move v0, v12

    nop

    :cond_16
    invoke-virtual {v7, v1, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setAndroidMarketState(Lcom/samsung/android/knox/ContextInfo;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_13
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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationGrantedPermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_14
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_16

    :cond_18
    move-object v1, v2

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    move v0, v12

    nop

    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v3, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/AppIdentity;

    goto :goto_17

    :cond_1a
    move-object v3, v2

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    goto :goto_18

    :cond_1b
    nop

    :goto_18
    invoke-virtual {v7, v1, v0, v3, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setAfWProxy(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/AppIdentity;Landroid/os/Bundle;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_15
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAllPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_16
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_19

    :cond_1c
    nop

    :goto_19
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_17
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1a

    :cond_1d
    move-object v0, v2

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    goto :goto_1b

    :cond_1e
    nop

    :goto_1b
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackageFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_18
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1c

    :cond_1f
    move-object v0, v2

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    goto :goto_1d

    :cond_20
    nop

    :goto_1d
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackageToBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_19
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1e

    :cond_21
    nop

    :goto_1e
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getRuntimePermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_1a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->reapplyRuntimePermissions(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->verifyRuntimePermissionPackageSignature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_1c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_1d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_1f

    :cond_22
    move-object v0, v2

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/samsung/android/knox/AppIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    goto :goto_20

    :cond_23
    nop

    :goto_20
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->applyRuntimePermissions(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;I)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_1e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_21

    :cond_24
    nop

    :goto_21
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getMySinglePackageName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_1f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_22

    :cond_25
    nop

    :goto_22
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setMySinglePackageName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_20
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_21
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_23

    :cond_26
    move-object v0, v2

    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    goto :goto_24

    :cond_27
    move-object v1, v2

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_28

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    goto :goto_25

    :cond_28
    nop

    :goto_25
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removeDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_22
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_26

    :cond_29
    nop

    :goto_26
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAllDefaultApplications(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_23
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Intent;

    goto :goto_27

    :cond_2a
    nop

    :goto_27
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2b

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v10, v12}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_28

    :cond_2b
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_28
    return v12

    :pswitch_24
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_29

    :cond_2c
    move-object v1, v2

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_2a

    :cond_2d
    nop

    :goto_2a
    invoke-virtual {v7, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2e

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v10, v12}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2b

    :cond_2e
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2b
    return v12

    :pswitch_25
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2c

    :cond_2f
    move-object v0, v2

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_30

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    goto :goto_2d

    :cond_30
    move-object v1, v2

    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    goto :goto_2e

    :cond_31
    nop

    :goto_2e
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_26
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAddHomeShorcutRequested()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_27
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_2f

    :cond_32
    move-object v0, v2

    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_33

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/ComponentName;

    goto :goto_30

    :cond_33
    nop

    :goto_30
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isMetaKeyEventRequested(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_28
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_34

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_31

    :cond_34
    move-object v1, v2

    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    goto :goto_32

    :cond_35
    nop

    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    move v0, v12

    nop

    :cond_36
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->requestMetaKeyEvent(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_29
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getDisabledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_2a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->updateApplicationTable(III)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_2b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_33

    :cond_37
    nop

    :goto_33
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->installExistingApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_2c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_34

    :cond_38
    nop

    :goto_34
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->clearUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_2d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_35

    :cond_39
    nop

    :goto_35
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/application/UsbDeviceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_2e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_36

    :cond_3a
    nop

    :goto_36
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_2f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    goto :goto_37

    :cond_3b
    nop

    :goto_37
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->updateWidgetStatus(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_30
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3c

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_38

    :cond_3c
    move-object v1, v2

    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3d

    move v3, v12

    goto :goto_39

    :cond_3d
    move v3, v0

    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    move-object v5, v0

    goto :goto_3a

    :cond_3e
    move-object v5, v2

    :goto_3a
    move-object v0, v7

    move-object v2, v6

    move-object v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->installAppWithCallback(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLcom/samsung/android/knox/IEnterpriseContainerCallback;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_31
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3f

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3b

    :cond_3f
    nop

    :goto_3b
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_40

    move v0, v12

    nop

    :cond_40
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getHomeShortcuts(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_32
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isApplicationFocusMonitoredAsUser(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_33
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3c

    :cond_41
    nop

    :goto_3c
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->clearFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_34
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3d

    :cond_42
    nop

    :goto_3d
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_35
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3e

    :cond_43
    nop

    :goto_3e
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_36
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_3f

    :cond_44
    nop

    :goto_3f
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_37
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isPackageClipboardAllowed(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_38
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_40

    :cond_45
    nop

    :goto_40
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->clearDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_39
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_41

    :cond_46
    nop

    :goto_41
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->clearDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_3a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_42

    :cond_47
    nop

    :goto_42
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromDisableClipboardWhiteListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_3b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_43

    :cond_48
    nop

    :goto_43
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_3c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_44

    :cond_49
    nop

    :goto_44
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_3d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_45

    :cond_4a
    nop

    :goto_45
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_3e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_46

    :cond_4b
    nop

    :goto_46
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromDisableClipboardBlackListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_3f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_47

    :cond_4c
    nop

    :goto_47
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_40
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_48

    :cond_4d
    nop

    :goto_48
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_41
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_49

    :cond_4e
    nop

    :goto_49
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_42
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_43
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4a

    :cond_4f
    nop

    :goto_4a
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->clearPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_44
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4b

    :cond_50
    nop

    :goto_4b
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_45
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4c

    :cond_51
    nop

    :goto_4c
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_46
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4d

    :cond_52
    nop

    :goto_4d
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_47
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4e

    :cond_53
    nop

    :goto_4e
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->clearDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_48
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_4f

    :cond_54
    nop

    :goto_4f
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->clearDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_49
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_55

    move v0, v12

    nop

    :cond_55
    invoke-virtual {v7, v1, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_4a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_50

    :cond_56
    nop

    :goto_50
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_4b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_51

    :cond_57
    nop

    :goto_51
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_4c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_52

    :cond_58
    nop

    :goto_52
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_4d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_53

    :cond_59
    nop

    :goto_53
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_4e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_54

    :cond_5a
    nop

    :goto_54
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_4f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_55

    :cond_5b
    nop

    :goto_55
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_50
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5c

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_56

    :cond_5c
    move-object v1, v2

    :goto_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5d

    move v5, v12

    goto :goto_57

    :cond_5d
    move v5, v0

    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v7

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->writeData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BZI)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_51
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_58

    :cond_5e
    move-object v0, v2

    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5f

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/ComponentName;

    goto :goto_59

    :cond_5f
    nop

    :goto_59
    move-object v1, v2

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_52
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_60

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5a

    :cond_60
    move-object v1, v2

    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_61

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    goto :goto_5b

    :cond_61
    nop

    :goto_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_62

    move v0, v12

    nop

    :cond_62
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_53
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isAnyApplicationNameChangedAsUser(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_54
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_55
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5c

    :cond_63
    nop

    :goto_5c
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->changeApplicationName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_56
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_64

    move v0, v12

    nop

    :cond_64
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_57
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5d

    :cond_65
    nop

    :goto_5d
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_58
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_66

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5e

    :cond_66
    nop

    :goto_5e
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_59
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_67

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_5f

    :cond_67
    nop

    :goto_5f
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_5a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_60

    :cond_68
    nop

    :goto_60
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_5b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_61

    :cond_69
    nop

    :goto_61
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_5c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_62

    :cond_6a
    nop

    :goto_62
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_5d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6b

    move v0, v12

    nop

    :cond_6b
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_5e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_63

    :cond_6c
    nop

    :goto_63
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_5f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_64

    :cond_6d
    nop

    :goto_64
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_60
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_65

    :cond_6e
    nop

    :goto_65
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_61
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_66

    :cond_6f
    nop

    :goto_66
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_62
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_70

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_67

    :cond_70
    nop

    :goto_67
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_63
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_71

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_68

    :cond_71
    nop

    :goto_68
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_64
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_69

    :cond_72
    nop

    :goto_69
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isPackageInApprovedInstallerWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_65
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_73

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6a

    :cond_73
    nop

    :goto_6a
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAppSignaturesAllWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_66
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_74

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6b

    :cond_74
    nop

    :goto_6b
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAppSignaturesWhiteList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v12

    :pswitch_67
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_75

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6c

    :cond_75
    nop

    :goto_6c
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removeAppSignatureFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_68
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6d

    :cond_76
    nop

    :goto_6d
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addAppSignatureToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_69
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_77

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6e

    :cond_77
    nop

    :goto_6e
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_6a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_78

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_6f

    :cond_78
    nop

    :goto_6f
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_79

    move v0, v12

    nop

    :cond_79
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->enableOcspCheck(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_6b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_70

    :cond_7a
    nop

    :goto_70
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_6c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7b

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_71

    :cond_7b
    nop

    :goto_71
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7c

    move v0, v12

    nop

    :cond_7c
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->enableRevocationCheck(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_6d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_72

    :cond_7d
    nop

    :goto_72
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_6e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_73

    :cond_7e
    nop

    :goto_73
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_6f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_74

    :cond_7f
    nop

    :goto_74
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_70
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_80

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_75

    :cond_80
    nop

    :goto_75
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_71
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_81

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_76

    :cond_81
    nop

    :goto_76
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removePackagesFromWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_72
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_82

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_77

    :cond_82
    nop

    :goto_77
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_73
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_83

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_78

    :cond_83
    nop

    :goto_78
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_74
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_84

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_79

    :cond_84
    nop

    :goto_79
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_75
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_85

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7a

    :cond_85
    nop

    :goto_7a
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_76
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_86

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7b

    :cond_86
    nop

    :goto_7b
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_77
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_87

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7c

    :cond_87
    nop

    :goto_7c
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_78
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_88

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7d

    :cond_88
    nop

    :goto_7d
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAllWidgets(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v12

    :pswitch_79
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_89

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7e

    :cond_89
    nop

    :goto_7e
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->deleteHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_7a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_7f

    :cond_8a
    nop

    :goto_7f
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_7b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_7c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationNotificationModeAsUser(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_7d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8b

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_80

    :cond_8b
    nop

    :goto_80
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8c

    move v0, v12

    nop

    :cond_8c
    invoke-virtual {v7, v1, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_7e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_81

    :cond_8d
    nop

    :goto_81
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_7f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8e

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_82

    :cond_8e
    nop

    :goto_82
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8f

    move v0, v12

    nop

    :cond_8f
    invoke-virtual {v7, v1, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_80
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_90

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_83

    :cond_90
    nop

    :goto_83
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removeAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_81
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_91

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_84

    :cond_91
    nop

    :goto_84
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_82
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_92

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_85

    :cond_92
    nop

    :goto_85
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_93

    move v0, v12

    nop

    :cond_93
    invoke-virtual {v7, v1, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_83
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_94

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_86

    :cond_94
    nop

    :goto_86
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removeAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_84
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_95

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_87

    :cond_95
    nop

    :goto_87
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_85
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_96

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_88

    :cond_96
    nop

    :goto_88
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isWidgetAllowed(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_86
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_97

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_89

    :cond_97
    nop

    :goto_89
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getPackagesFromWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :pswitch_87
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_98

    move v6, v12

    goto :goto_8a

    :cond_98
    move v6, v0

    :goto_8a
    move-object v0, v7

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_88
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_99

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8b

    :cond_99
    nop

    :goto_8b
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addPackagesToForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_89
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9a

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8c

    :cond_9a
    nop

    :goto_8c
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_8a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9b

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8d

    :cond_9b
    nop

    :goto_8d
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_8b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9c

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8e

    :cond_9c
    nop

    :goto_8e
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_8c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9d

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_8f

    :cond_9d
    nop

    :goto_8f
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAppSignaturesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_8d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9e

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_90

    :cond_9e
    nop

    :goto_90
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAppPermissionsAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_8e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9f

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_91

    :cond_9f
    nop

    :goto_91
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAppPackageNamesAllWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_8f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a0

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_92

    :cond_a0
    nop

    :goto_92
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removeAppPackageNameFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_90
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a1

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_93

    :cond_a1
    nop

    :goto_93
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addAppPackageNameToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_91
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a2

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_94

    :cond_a2
    nop

    :goto_94
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAppPackageNamesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_92
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a3

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_95

    :cond_a3
    nop

    :goto_95
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removeAppPackageNameFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_93
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a4

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_96

    :cond_a4
    nop

    :goto_96
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addAppPackageNameToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_94
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a5

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    goto :goto_97

    :cond_a5
    nop

    :goto_97
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_95
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a6

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_98

    :cond_a6
    nop

    :goto_98
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a7

    move v0, v12

    nop

    :cond_a7
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setApplicationStateList(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v12

    :pswitch_96
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a8

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_99

    :cond_a8
    nop

    :goto_99
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a9

    move v0, v12

    nop

    :cond_a9
    invoke-virtual {v7, v1, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationStateList(Lcom/samsung/android/knox/ContextInfo;Z)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v12

    :pswitch_97
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_aa

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9a

    :cond_aa
    nop

    :goto_9a
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->startApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_98
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ab

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9b

    :cond_ab
    nop

    :goto_9b
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->stopApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_99
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ac

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9c

    :cond_ac
    nop

    :goto_9c
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAppSignatureBlackList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v12

    :pswitch_9a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ad

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9d

    :cond_ad
    nop

    :goto_9d
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removeAppSignatureFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_9b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ae

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9e

    :cond_ae
    nop

    :goto_9e
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addAppSignatureToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_9c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_af

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_9f

    :cond_af
    nop

    :goto_9f
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAppPermissionsBlackList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v12

    :pswitch_9d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b0

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a0

    :cond_b0
    nop

    :goto_a0
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removeAppPermissionFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_9e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b1

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a1

    :cond_b1
    nop

    :goto_a1
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->addAppPermissionToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_9f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isAnyApplicationIconChangedAsUser(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_a0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b2

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a2

    :cond_b2
    nop

    :goto_a2
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationIconFromDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    return v12

    :pswitch_a1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b3

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a3

    :cond_b3
    nop

    :goto_a3
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->changeApplicationIcon(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_a2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->updateDataUsageDb()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_a3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b4

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a4

    :cond_b4
    nop

    :goto_a4
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getNetworkStats(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_a4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b5

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a5

    :cond_b5
    nop

    :goto_a5
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAllAppLastUsage(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    :pswitch_a5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b6

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a6

    :cond_b6
    nop

    :goto_a6
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getAvgNoAppUsagePerMonth(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    :pswitch_a6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b7

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a7

    :cond_b7
    nop

    :goto_a7
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b8

    move v0, v12

    nop

    :cond_b8
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getTopNCPUUsageApp(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_a7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b9

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a8

    :cond_b9
    nop

    :goto_a8
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getTopNDataUsageApp(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_a8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ba

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_a9

    :cond_ba
    nop

    :goto_a9
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_bb

    move v0, v12

    nop

    :cond_bb
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getTopNMemoryUsageApp(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    :pswitch_a9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bc

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_aa

    :cond_bc
    nop

    :goto_aa
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationCpuUsage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    :pswitch_aa
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bd

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_ab

    :cond_bd
    nop

    :goto_ab
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationMemoryUsage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    :pswitch_ab
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_be

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_ac

    :cond_be
    nop

    :goto_ac
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationCacheSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    :pswitch_ac
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bf

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_ad

    :cond_bf
    nop

    :goto_ad
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationDataSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    :pswitch_ad
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c0

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_ae

    :cond_c0
    nop

    :goto_ae
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationCodeSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    :pswitch_ae
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c1

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_af

    :cond_c1
    nop

    :goto_af
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationTotalSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    :pswitch_af
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c2

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b0

    :cond_c2
    nop

    :goto_b0
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationVersionCode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_b0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c3

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b1

    :cond_c3
    nop

    :goto_b1
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_b1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c4

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b2

    :cond_c4
    nop

    :goto_b2
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationUid(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_b2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c5

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b3

    :cond_c5
    nop

    :goto_b3
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_b3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c6

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b4

    :cond_c6
    nop

    :goto_b4
    move-object v0, v2

    invoke-virtual {v7, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getInstalledApplicationsIDList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v12

    :pswitch_b4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c7

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b5

    :cond_c7
    nop

    :goto_b5
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_b5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c8

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b6

    :cond_c8
    nop

    :goto_b6
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_b6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c9

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b7

    :cond_c9
    nop

    :goto_b7
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_b7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ca

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b8

    :cond_ca
    nop

    :goto_b8
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_cb

    move v0, v12

    nop

    :cond_cb
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setApplicationUninstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_cc

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_b9

    :cond_cc
    nop

    :goto_b9
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_cd

    move v0, v12

    nop

    :cond_cd
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setApplicationInstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ce

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_ba

    :cond_ce
    nop

    :goto_ba
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_cf

    move v0, v12

    nop

    :cond_cf
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_ba
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d0

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_bb

    :cond_d0
    nop

    :goto_bb
    move-object v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d1

    move v0, v12

    nop

    :cond_d1
    invoke-virtual {v7, v1, v2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->uninstallApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_bb
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d2

    sget-object v1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_bc

    :cond_d2
    move-object v1, v2

    :goto_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d3

    move v0, v12

    nop

    :cond_d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d4

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    goto :goto_bd

    :cond_d4
    nop

    :goto_bd
    invoke-virtual {v7, v1, v3, v0, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->installApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLandroid/os/ParcelFileDescriptor;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_bc
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d5

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_be

    :cond_d5
    nop

    :goto_be
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isApplicationRunning(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_bd
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d6

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_bf

    :cond_d6
    nop

    :goto_bf
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_be
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d7

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c0

    :cond_d7
    nop

    :goto_c0
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->wipeApplicationData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_bf
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d8

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    goto :goto_c1

    :cond_d8
    nop

    :goto_c1
    move-object v0, v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->removeManagedApplications(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v12

    :cond_d9
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
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
