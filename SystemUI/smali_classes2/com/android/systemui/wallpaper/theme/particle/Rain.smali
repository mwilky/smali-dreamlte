.class public Lcom/android/systemui/wallpaper/theme/particle/Rain;
.super Ljava/lang/Object;
.source "Rain.java"


# static fields
.field private static final speed:[D


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRandom:Ljava/util/Random;

.field private mXSpeed:D

.field private mYSpeed:I

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->speed:[D

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3fb999999999999aL    # 0.1
        0x3fb999999999999aL    # 0.1
        0x3fc999999999999aL    # 0.2
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mRandom:Ljava/util/Random;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    sget-object v0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->speed:[D

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mRandom:Ljava/util/Random;

    sget-object v2, Lcom/android/systemui/wallpaper/theme/particle/Rain;->speed:[D

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mXSpeed:D

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mRandom:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mYSpeed:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    return-void
.end method

.method public isVisible()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mXSpeed:D

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->mYSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/particle/Rain;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/particle/Rain;->clear()V

    :cond_0
    return-void
.end method
