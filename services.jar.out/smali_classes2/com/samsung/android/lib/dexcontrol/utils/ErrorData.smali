.class public Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;
.super Ljava/lang/Object;
.source "ErrorData.java"


# static fields
.field public static final DEX_FAN_ERROR:I = -0x5

.field public static final ERROR_NONE:I = 0x0

.field public static final UVDM_DATA_NULL:I = -0x4

.field public static final UVDM_OPEN_ERROR:I = -0x1

.field public static final UVDM_READ_ERROR:I = -0x3

.field public static final UVDM_WRITE_ERROR:I = -0x2


# instance fields
.field private mDexFanErrorCntr:I

.field private mUvdmOpenErrorCntr:I

.field private mUvdmReadErrorCntr:I

.field private mUvdmWriteErrorCntr:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->reset()V

    return-void
.end method


# virtual methods
.method public count(I)V
    .locals 1

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmOpenErrorCntr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmOpenErrorCntr:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmWriteErrorCntr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmWriteErrorCntr:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmReadErrorCntr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmReadErrorCntr:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mDexFanErrorCntr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mDexFanErrorCntr:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCountNumber(I)I
    .locals 1

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmOpenErrorCntr:I

    return v0

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmWriteErrorCntr:I

    return v0

    :pswitch_2
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmReadErrorCntr:I

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mDexFanErrorCntr:I

    return v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmOpenErrorCntr:I

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmWriteErrorCntr:I

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmReadErrorCntr:I

    iput v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mDexFanErrorCntr:I

    return-void
.end method

.method public reset(I)V
    .locals 2

    const/4 v0, -0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmOpenErrorCntr:I

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmWriteErrorCntr:I

    goto :goto_0

    :pswitch_2
    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmReadErrorCntr:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mDexFanErrorCntr:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
