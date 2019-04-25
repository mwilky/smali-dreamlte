.class public Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;
.super Ljava/lang/Object;
.source "SDCDeviceController.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDexDevicePID:I

.field private mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

.field private mDexStation:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexStation:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    iput p2, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", DexControlLib Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "3.18.1122"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    const v1, 0xa020

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    invoke-direct {v0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexStation:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    const v1, 0xa029

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-direct {v0, p1, p3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;-><init>(Landroid/content/Context;Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController$ControlResponseListener;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDCDeviceController unknown pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexStation:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexStation:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexStation:Lcom/samsung/android/lib/dexcontrol/model/dexstation/DexStation;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-virtual {v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->destroy()V

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    return-void
.end method

.method public requestChargingModeUpdate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->requestChargingModeUpdate()V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    invoke-direct {v0, v1}, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;-><init>(I)V

    throw v0
.end method

.method public requestConnectedPowerChargerInfoUpdate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-virtual {v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->requestConnectedPowerChargerInfoUpdate()V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    invoke-direct {v0, v1}, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;-><init>(I)V

    throw v0
.end method

.method public setFastChargingEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-virtual {v0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->setFastChargingEnable(Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    invoke-direct {v0, v1}, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;-><init>(I)V

    throw v0
.end method

.method public updateDexBinaryDownloadingState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexPad:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-virtual {v0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->updateDexBinaryDownloadingState(Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;

    iget v1, p0, Lcom/samsung/android/lib/dexcontrol/SDCDeviceController;->mDexDevicePID:I

    invoke-direct {v0, v1}, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;-><init>(I)V

    throw v0
.end method
