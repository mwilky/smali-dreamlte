.class Lcom/android/server/desktopmode/HardwareManager$DockState;
.super Ljava/lang/Object;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DockState"
.end annotation


# static fields
.field static final TYPE_DEX_CABLE:I = 0x271a

.field static final TYPE_DEX_PAD:I = 0x2714

.field static final TYPE_DEX_PAD_RECOVERY:I = 0x2716

.field static final TYPE_DEX_RESERVED:I = 0x2715

.field static final TYPE_DEX_STATION:I = 0x2711

.field static final TYPE_HDMI_ADAPTER:I = 0x2719

.field static final TYPE_INTERNAL_SCREEN:I = 0x2713

.field static final TYPE_MULTIPORT_ADAPTER_1:I = 0x2717

.field static final TYPE_MULTIPORT_ADAPTER_2:I = 0x2718

.field static final TYPE_UNDOCKED:I = 0x2710

.field static final TYPE_UNOFFICIAL_ADAPTER:I = 0x2712


# instance fields
.field private final mDesktopModeSupported:Z

.field private final mRawDockUsbpdIds:Ljava/lang/String;

.field private final mType:I


# direct methods
.method constructor <init>()V
    .locals 3

    const-string v0, ""

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    iput-boolean p2, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    iput-object p3, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    return-void
.end method

.method static dockTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "TYPE_DEX_CABLE"

    return-object v0

    :pswitch_1
    const-string v0, "TYPE_HDMI_ADAPTER"

    return-object v0

    :pswitch_2
    const-string v0, "TYPE_MULTIPORT_ADAPTER_2"

    return-object v0

    :pswitch_3
    const-string v0, "TYPE_MULTIPORT_ADAPTER_1"

    return-object v0

    :pswitch_4
    const-string v0, "TYPE_DEX_PAD_RECOVERY"

    return-object v0

    :pswitch_5
    const-string v0, "TYPE_DEX_RESERVED"

    return-object v0

    :pswitch_6
    const-string v0, "TYPE_DEX_PAD"

    return-object v0

    :pswitch_7
    const-string v0, "TYPE_INTERNAL_SCREEN"

    return-object v0

    :pswitch_8
    const-string v0, "TYPE_UNOFFICIAL_ADAPTER"

    return-object v0

    :pswitch_9
    const-string v0, "TYPE_DEX_STATION"

    return-object v0

    :pswitch_a
    const-string v0, "TYPE_UNDOCKED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2710
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


# virtual methods
.method getType()I
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    return v0
.end method

.method isAdapter()Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2712

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2717

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2718

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2719

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x271a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isDesktopModeSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    return v0
.end method

.method isDexPad()Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2714

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2716

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isDexStation()Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isGenuine()Z
    .locals 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2717

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v4, 0x2714

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v3, 0x2711

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v3, 0x2716

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isRawDockUsbpdIdSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isRawDockUsbpdIdSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method isRawDockUsbpdIdSupported()Z
    .locals 2

    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$1600()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isUndocked()Z
    .locals 2

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DockState(mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDesktopModeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRawDockUsbpdIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
