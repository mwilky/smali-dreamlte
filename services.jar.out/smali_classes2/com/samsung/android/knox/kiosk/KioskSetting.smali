.class public Lcom/samsung/android/knox/kiosk/KioskSetting;
.super Ljava/lang/Object;
.source "KioskSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/kiosk/KioskSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public airCommand:Z

.field public airView:Z

.field public blockedEdgeFunctions:I

.field public clearAllNotifications:Z

.field public hardwareKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public homeKey:Z

.field public multiWindow:Z

.field public navigationBar:Z

.field public settingsChanges:Z

.field public smartClip:Z

.field public statusBar:Z

.field public statusBarExpansion:Z

.field public systemBar:Z

.field public taskManager:Z

.field public wipeRecentTasks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/kiosk/KioskSetting$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/kiosk/KioskSetting$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kiosk/KioskSetting;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    move v4, v1

    :goto_6
    array-length v5, v3

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    new-instance v6, Ljava/lang/Integer;

    aget v7, v3, v4

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    move v3, v1

    :goto_7
    iput-boolean v3, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_8

    :cond_8
    move v3, v1

    :goto_8
    iput-boolean v3, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_9

    :cond_9
    move v3, v1

    :goto_9
    iput-boolean v3, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v2

    goto :goto_a

    :cond_a
    move v3, v1

    :goto_a
    iput-boolean v3, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    goto :goto_b

    :cond_b
    move v3, v1

    :goto_b
    iput-boolean v3, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_c

    :cond_c
    move v3, v1

    :goto_c
    iput-boolean v3, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v2

    goto :goto_d

    :cond_d
    move v3, v1

    :goto_d
    iput-boolean v3, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    move v1, v2

    nop

    :cond_e
    iput-boolean v1, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    nop

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
