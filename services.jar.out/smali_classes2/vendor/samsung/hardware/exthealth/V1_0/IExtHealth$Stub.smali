.class public abstract Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;
.super Landroid/os/HwBinder;
.source "IExtHealth.java"

# interfaces
.implements Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x6dt
        -0x7t
        0x75t
        0x1bt
        0x62t
        -0x56t
        0x5dt
        -0x67t
        -0x2bt
        0x52t
        -0x6ct
        0x77t
        0x63t
        -0x73t
        -0x24t
        -0x42t
        0x18t
        -0x1at
        0x27t
        0x27t
        -0x26t
        0x65t
        -0x10t
        0x5bt
        -0x3ft
        -0x5dt
        -0x61t
        -0x53t
        -0x5ct
        0x36t
        -0x65t
        0x7ft
    .end array-data

    :array_1
    .array-data 1
        0x67t
        0x56t
        -0x7et
        -0x23t
        0x30t
        0x7t
        -0x80t
        0x5ct
        -0x68t
        0x5et
        -0x56t
        -0x14t
        -0x6ft
        0x61t
        0x2at
        -0x44t
        -0x78t
        -0xct
        -0x3et
        0x5bt
        0x34t
        0x31t
        -0x5t
        -0x7ct
        0x7t
        0xbt
        0x75t
        -0x7ct
        -0x5ft
        -0x59t
        0x41t
        -0x5t
    .end array-data

    :array_2
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.samsung.hardware.exthealth@1.0::IExtHealth"

    const-string v2, "android.hardware.health@2.0::IHealth"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.exthealth@1.0::IExtHealth"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_c

    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    :cond_0
    if-eqz v1, :cond_2f

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    if-eq v1, v2, :cond_2

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->notifySyspropsChanged()V

    goto/16 :goto_c

    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->ping()V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    :cond_7
    if-eqz v1, :cond_2f

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    :cond_8
    if-eq v1, v2, :cond_9

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->setHALInstrumentation()V

    goto/16 :goto_c

    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    :goto_2
    if-eqz v2, :cond_b

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    nop

    :goto_3
    if-ge v1, v4, :cond_c

    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    :goto_4
    if-eqz v2, :cond_e

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    :goto_5
    if-eqz v2, :cond_10

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    :goto_6
    if-eqz v2, :cond_12

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    :goto_7
    if-eqz v2, :cond_14

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_14
    const-string/jumbo v0, "vendor.samsung.hardware.exthealth@1.0::IExtHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/exthealth/V1_0/IExtHealthInfoCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->unregisterCallbackSec(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealthInfoCallback;)I

    move-result v3

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    :goto_8
    if-eqz v2, :cond_16

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_16
    const-string/jumbo v0, "vendor.samsung.hardware.exthealth@1.0::IExtHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/exthealth/V1_0/IExtHealthInfoCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->registerCallbackSec(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealthInfoCallback;)I

    move-result v3

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    :cond_17
    if-eqz v1, :cond_18

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_18
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$9;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$9;-><init>(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V

    goto/16 :goto_c

    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    :cond_19
    if-eqz v1, :cond_1a

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_1a
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$8;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$8;-><init>(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->getDiskStats(Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;)V

    goto/16 :goto_c

    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    :cond_1b
    if-eqz v1, :cond_1c

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_1c
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$7;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$7;-><init>(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->getStorageInfo(Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;)V

    goto/16 :goto_c

    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    :cond_1d
    if-eqz v1, :cond_1e

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_1e
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$6;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$6;-><init>(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    goto/16 :goto_c

    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    :cond_1f
    if-eqz v1, :cond_20

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_20
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$5;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$5;-><init>(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto/16 :goto_c

    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    :cond_21
    if-eqz v1, :cond_22

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_22
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$4;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$4;-><init>(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    goto/16 :goto_c

    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    :cond_23
    if-eqz v1, :cond_24

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_24
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$3;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$3;-><init>(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    goto/16 :goto_c

    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    :cond_25
    if-eqz v1, :cond_26

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_26
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$2;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$2;-><init>(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    goto/16 :goto_c

    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    :cond_27
    if-eqz v1, :cond_28

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_c

    :cond_28
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$1;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub$1;-><init>(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    goto/16 :goto_c

    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    goto :goto_9

    :cond_29
    move v2, v1

    :goto_9
    if-eqz v2, :cond_2a

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_c

    :cond_2a
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->update()I

    move-result v0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_c

    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    goto :goto_a

    :cond_2b
    move v2, v1

    :goto_a
    if-eqz v2, :cond_2c

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_c

    :cond_2c
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v3

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_c

    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    goto :goto_b

    :cond_2d
    move v2, v1

    :goto_b
    if-eqz v2, :cond_2e

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_c

    :cond_2e
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v3

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    nop

    :cond_2f
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.exthealth@1.0::IExtHealth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
