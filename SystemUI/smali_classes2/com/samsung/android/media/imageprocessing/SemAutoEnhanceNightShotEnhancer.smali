.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;
.super Ljava/lang/Object;
.source "SemAutoEnhanceNightShotEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;
    }
.end annotation


# instance fields
.field private mImageRestorerPtr:J

.field private mRestoreFiltersEstimatorPtr:J

.field private mShotInfo:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "saiv_nightshot"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->MULTICORE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;

    invoke-direct {p0, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;-><init>(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->initRestoreFiltersEstimator()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mRestoreFiltersEstimatorPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$LevelSpeedUp;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->initImageRestorer(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mImageRestorerPtr:J

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mShotInfo:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;

    return-void
.end method

.method private native initImageRestorer(I)J
.end method

.method private native initRestoreFiltersEstimator()J
.end method

.method private native releaseImageRestorer(J)V
.end method

.method private native releaseRestoreFiltersEstimator(J)V
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mRestoreFiltersEstimatorPtr:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->releaseRestoreFiltersEstimator(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mRestoreFiltersEstimatorPtr:J

    iget-wide v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mImageRestorerPtr:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->releaseImageRestorer(J)V

    iput-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->mImageRestorerPtr:J

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;->destroy()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
