.class public Lcom/airbnb/lottie/value/LottieInterpolatedFloatValue;
.super Lcom/airbnb/lottie/value/LottieInterpolatedValue;
.source "LottieInterpolatedFloatValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieInterpolatedValue<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# virtual methods
.method interpolateValue(Ljava/lang/Float;Ljava/lang/Float;F)Ljava/lang/Float;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic interpolateValue(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/value/LottieInterpolatedFloatValue;->interpolateValue(Ljava/lang/Float;Ljava/lang/Float;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
