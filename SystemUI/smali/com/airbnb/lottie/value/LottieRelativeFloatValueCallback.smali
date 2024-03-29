.class public Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;
.super Lcom/airbnb/lottie/value/LottieValueCallback;
.source "LottieRelativeFloatValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieValueCallback<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must provide a static value in the constructor , call setValue, or override getValue."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Float;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    nop

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;->getOffset(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/value/LottieRelativeFloatValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
