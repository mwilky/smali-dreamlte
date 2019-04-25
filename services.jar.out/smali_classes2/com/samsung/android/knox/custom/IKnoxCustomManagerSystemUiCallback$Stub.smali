.class public abstract Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;
.super Landroid/os/Binder;
.source "IKnoxCustomManagerSystemUiCallback.java"

# interfaces
.implements Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.custom.IKnoxCustomManagerSystemUiCallback"

.field static final TRANSACTION_setBatteryLevelColourItem:I = 0x9

.field static final TRANSACTION_setChargerConnectionSoundEnabledState:I = 0xe

.field static final TRANSACTION_setHideNotificationMessages:I = 0xa

.field static final TRANSACTION_setLockScreenHiddenItems:I = 0x1

.field static final TRANSACTION_setLockScreenOverrideMode:I = 0x2

.field static final TRANSACTION_setQuickPanelButtonUsers:I = 0x11

.field static final TRANSACTION_setQuickPanelButtons:I = 0x3

.field static final TRANSACTION_setQuickPanelEditMode:I = 0x4

.field static final TRANSACTION_setQuickPanelItems:I = 0x5

.field static final TRANSACTION_setScreenOffOnStatusBarDoubleTapState:I = 0x6

.field static final TRANSACTION_setStatusBarHidden:I = 0x10

.field static final TRANSACTION_setStatusBarIconsState:I = 0x8

.field static final TRANSACTION_setStatusBarNotificationsState:I = 0xb

.field static final TRANSACTION_setStatusBarTextInfo:I = 0x7

.field static final TRANSACTION_setUnlockSimOnBootState:I = 0xc

.field static final TRANSACTION_setUnlockSimPin:I = 0xd

.field static final TRANSACTION_setVolumePanelEnabledState:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManagerSystemUiCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManagerSystemUiCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManagerSystemUiCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setQuickPanelButtonUsers(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setStatusBarHidden(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setVolumePanelEnabledState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setChargerConnectionSoundEnabledState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setUnlockSimPin(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setUnlockSimOnBootState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    nop

    :cond_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setStatusBarNotificationsState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setHideNotificationMessages(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/android/knox/custom/StatusbarIconItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/custom/StatusbarIconItem;

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    nop

    :cond_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setStatusBarIconsState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setStatusBarTextInfo(Ljava/lang/String;III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    nop

    :cond_8
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setScreenOffOnStatusBarDoubleTapState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setQuickPanelItems(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setQuickPanelEditMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setQuickPanelButtons(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setLockScreenOverrideMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->setLockScreenHiddenItems(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
