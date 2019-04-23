.class public Lcom/android/systemui/infinity/common/MatrixHelper;
.super Ljava/lang/Object;
.source "MatrixHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static perspectiveM([FFFFF)V
    .locals 5

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v1, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v1

    double-to-float v1, v3

    div-float v2, v1, p2

    const/4 v3, 0x0

    aput v2, p0, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, p0, v3

    const/4 v3, 0x2

    aput v2, p0, v3

    const/4 v3, 0x3

    aput v2, p0, v3

    const/4 v3, 0x4

    aput v2, p0, v3

    const/4 v3, 0x5

    aput v1, p0, v3

    const/4 v3, 0x6

    aput v2, p0, v3

    const/4 v3, 0x7

    aput v2, p0, v3

    const/16 v3, 0x8

    aput v2, p0, v3

    const/16 v3, 0x9

    aput v2, p0, v3

    add-float v3, p4, p3

    sub-float v4, p4, p3

    div-float/2addr v3, v4

    neg-float v3, v3

    const/16 v4, 0xa

    aput v3, p0, v4

    const/16 v3, 0xb

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, p0, v3

    const/16 v3, 0xc

    aput v2, p0, v3

    const/16 v3, 0xd

    aput v2, p0, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p4

    mul-float/2addr v3, p3

    sub-float v4, p4, p3

    div-float/2addr v3, v4

    neg-float v3, v3

    const/16 v4, 0xe

    aput v3, p0, v4

    const/16 v3, 0xf

    aput v2, p0, v3

    return-void
.end method
