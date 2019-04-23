.class public Lcom/android/systemui/infinity/util/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# static fields
.field static instance:Lcom/android/systemui/infinity/util/VelocityTracker;


# instance fields
.field beforeXArray:[F

.field beforeYArray:[F

.field public checkCount:I

.field timeArray:[J

.field public totalMoveDistance:I

.field public totalMoveDistanceX:I

.field public totalMoveDistanceY:I

.field trackCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistance:I

    iput v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceX:I

    iput v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceY:I

    iput v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/infinity/util/VelocityTracker;
    .locals 1

    sget-object v0, Lcom/android/systemui/infinity/util/VelocityTracker;->instance:Lcom/android/systemui/infinity/util/VelocityTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/infinity/util/VelocityTracker;

    invoke-direct {v0}, Lcom/android/systemui/infinity/util/VelocityTracker;-><init>()V

    sput-object v0, Lcom/android/systemui/infinity/util/VelocityTracker;->instance:Lcom/android/systemui/infinity/util/VelocityTracker;

    :cond_0
    sget-object v0, Lcom/android/systemui/infinity/util/VelocityTracker;->instance:Lcom/android/systemui/infinity/util/VelocityTracker;

    return-object v0
.end method

.method private printValue()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move-object v3, v0

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    if-ge v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "log"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "valuex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aget v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_1
    iget v2, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "valueY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addHistory(FF)V
    .locals 13

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    iget-object v5, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    add-int/lit8 v6, v0, -0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v0

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    iget-object v5, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    aput v5, v4, v0

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    iget-object v5, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    aput v5, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    iget-object v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aput p1, v0, v4

    iget-object v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aput p2, v0, v4

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistance:I

    int-to-double v5, v0

    iget-object v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aget v0, v0, v4

    iget-object v7, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aget v7, v7, v1

    sub-float/2addr v0, v7

    float-to-double v7, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget-object v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aget v0, v0, v4

    iget-object v11, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aget v11, v11, v1

    sub-float/2addr v0, v11

    float-to-double v11, v0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v0, v5

    iput v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistance:I

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceX:I

    int-to-float v0, v0

    iget-object v5, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aget v5, v5, v4

    iget-object v6, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceX:I

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceY:I

    int-to-float v0, v0

    iget-object v5, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aget v4, v5, v4

    iget-object v5, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aget v1, v5, v1

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceY:I

    return-void
.end method

.method public getAverageVelocityX()F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    int-to-float v1, v1

    div-float v1, v0, v1

    return v1
.end method

.method public getAverageVelocityX(I)F
    .locals 5

    move v0, p1

    iget v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aget v4, v4, v2

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-float v2, v0

    div-float v2, v1, v2

    return v2
.end method

.method public getAverageVelocityY(I)F
    .locals 5

    move v0, p1

    iget v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aget v4, v4, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-float v2, v0

    div-float v2, v1, v2

    return v2
.end method

.method public getAverageX()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aget v2, v2, v1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    int-to-float v1, v1

    div-float v1, v0, v1

    return v1
.end method

.method public getCheckCount()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    return v0
.end method

.method public getHorizontalDragPercent(I)F
    .locals 7

    const/4 v0, 0x0

    move v1, p1

    iget v2, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    if-ge v2, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v0, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    div-float v2, v0, v2

    return v2
.end method

.method public getLastVelocityX(I)F
    .locals 8

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    add-int/lit8 v4, p1, -0x1

    aget-wide v3, v3, v4

    const/4 v5, 0x1

    :goto_0
    if-ge v5, p1, :cond_0

    iget-object v6, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    add-int/lit8 v7, v5, -0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aget v7, v7, v5

    sub-float/2addr v6, v7

    add-float/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sub-long v5, v0, v3

    long-to-float v5, v5

    div-float v5, v2, v5

    return v5
.end method

.method public getLastVelocityY(I)F
    .locals 8

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    add-int/lit8 v4, p1, -0x1

    aget-wide v3, v3, v4

    const/4 v5, 0x1

    :goto_0
    if-ge v5, p1, :cond_0

    iget-object v6, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    add-int/lit8 v7, v5, -0x1

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aget v7, v7, v5

    sub-float/2addr v6, v7

    add-float/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sub-long v5, v0, v3

    long-to-float v5, v5

    div-float v5, v2, v5

    return v5
.end method

.method public getTouchMode(I)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/systemui/infinity/util/VelocityTracker;->getVerticalDragPercent(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/infinity/util/VelocityTracker;->getHorizontalDragPercent(I)F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-lez v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/infinity/util/VelocityTracker;->getAverageVelocityX(I)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x2

    return v2

    :cond_1
    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/infinity/util/VelocityTracker;->getAverageVelocityY(I)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    const/4 v2, 0x3

    return v2

    :cond_2
    const/4 v2, 0x4

    return v2

    :cond_3
    const/4 v2, 0x5

    return v2
.end method

.method public getTrackCount()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    return v0
.end method

.method public getVerticalDragPercent(I)F
    .locals 7

    const/4 v0, 0x0

    move v1, p1

    iget v2, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    if-ge v2, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v0, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    div-float v2, v0, v2

    return v2
.end method

.method public isSlow()Z
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/util/VelocityTracker;->getAverageVelocityY(I)F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetValue(FF)V
    .locals 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->trackCount:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeXArray:[F

    aput p1, v4, v3

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->beforeYArray:[F

    aput p2, v4, v3

    iget-object v4, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->timeArray:[J

    aput-wide v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->checkCount:I

    iput v2, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistance:I

    iput v2, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceX:I

    iput v2, p0, Lcom/android/systemui/infinity/util/VelocityTracker;->totalMoveDistanceY:I

    return-void
.end method
